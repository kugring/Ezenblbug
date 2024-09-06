package com.zenblbug.ezen.service.implement;

import com.zenblbug.ezen.mapper.*;
import com.zenblbug.ezen.vo.*;
import com.zenblbug.ezen.service.ProjectService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImplement implements ProjectService {

    @Autowired
    LikesMapper likesMapper;
    @Autowired
    ProjectMapper projectMapper;
    @Autowired
    UserMapper userMapper;
    @Autowired
    ProjectPlanMapper projectPlanMapper;
    @Autowired
    PackageMapper packageMapper;
    @Autowired
    VirtualPackageMapper virtualPackageMapper;
    @Autowired
    ProductMapper productMapper;
    @Autowired
    SearchTagMapper searchTagMapper;
    @Autowired
    BackersMapper backersMapper;
    @Autowired
    ThumbnailMapper thumbnailMapper;


    @Override
    public ProjectVO getProjectDetails(ProjectVO vo) {

        // 프로젝트 모든 데이터 담기!
        ProjectVO projectVO = projectMapper.findByProjectId(vo);
        // 총 후원 금액 담기!
        int totalDonation;
        if(backersMapper.sumTotalGoalAmount(vo.getProjectId()) == null){
            totalDonation = 0;
        } else {
            totalDonation = backersMapper.sumTotalGoalAmount(vo.getProjectId());
        }
        projectVO.setTotalDonation(totalDonation);
        // 창작자 모든 데이터 가져오기
        projectVO.setUserVO(userMapper.findByUserId(projectVO.getUserId()));
        // projectId로 pakcage의 모든 데이터를 list로 담는다.
        List<BackersPackageVO> backersPackageVOList = packageMapper.findByProjectId(projectVO);
        // 패키지의 갯수에 따라 반복하며 product리스트를 담는다.
        for (BackersPackageVO packageItem : backersPackageVOList) {
            // 패키지에서 productId로 가상패키지를 찾는다.
            List<ProductVO> virtualPackageVOList = virtualPackageMapper.findByPackageId(packageItem);
            // 제대로된 제품리스트를 받을 리스트를 생성한다.
            List<ProductVO> productVOList = new ArrayList<ProductVO>();
            // 가상 패키지의 productId로 진짜 제품정보를 가져온다.
            for (ProductVO virtualPackageItem : virtualPackageVOList) {
                System.out.println("이거 제품 아이디: " + virtualPackageItem.getProductId());

                ProductVO productVO = productMapper.findByProductId(virtualPackageItem);
                // 가상 패키지에 담겨있는 제품의 수량을 set한다.
                productVO.setProductQuantity(virtualPackageItem.getProductQuantity());
                // 수집된 제품 정보를 진짜 제품 정보 리스트에 담는다.
                productVOList.add(productVO);
            }
            // 수집된 제품 리스트를 패키지VO에 담는다.
            packageItem.setProductVOList(productVOList);
        }
        // 프로젝트의 패키지를 담는다.
        projectVO.setBackersPackageVOList(backersPackageVOList);
        // 썸네일 리스트 가져오기
        projectVO.setThumbnailVOList(thumbnailMapper.findByProjectId(vo));

            // 프로젝트 플랜 데이터를 담는다.
        projectVO.setProjectPlanVO(projectPlanMapper.findByProjectId(vo));

        return projectVO;
    }

    @Override // 프로젝트 id로 모든 정보 가져옴
    public ProjectVO getProject(ProjectVO vo) {
        // projectId로 모든 데이터 담음
        ProjectVO projectVO = projectMapper.findByProjectId(vo);
        // projectId로 pakcage의 모든 데이터를 list로 담는다.
        List<BackersPackageVO> backersPackageVOList = packageMapper.findByProjectId(projectVO);
        // 패키지의 갯수에 따라 반복하며 product리스트를 담는다.
        for (BackersPackageVO packageItem : backersPackageVOList) {
            // 패키지에서 productId로 가상패키지를 찾는다.
            List<ProductVO> virtualPackageVOList = virtualPackageMapper.findByPackageId(packageItem);
            // 제대로된 제품리스트를 받을 리스트를 생성한다.
            List<ProductVO> productVOList = new ArrayList<ProductVO>();
            // 가상 패키지의 productId로 진짜 제품정보를 가져온다.
            for (ProductVO virtualPackageItem : virtualPackageVOList) {
                System.out.println("이거 제품 아이디: " + virtualPackageItem.getProductId());

                ProductVO productVO = productMapper.findByProductId(virtualPackageItem);
                // 가상 패키지에 담겨있는 제품의 수량을 set한다.
                productVO.setProductQuantity(virtualPackageItem.getProductQuantity());
                // 수집된 제품 정보를 진짜 제품 정보 리스트에 담는다.
                productVOList.add(productVO);
            }
            // 수집된 제품 리스트를 패키지VO에 담는다.
            packageItem.setProductVOList(productVOList);
        }

        // 프로젝트의 패키지를 담는다.
        projectVO.setBackersPackageVOList(backersPackageVOList);

        // 프로젝트의 검색태그 단어를 담는다.
        projectVO.setSearchTagVOList(searchTagMapper.findByProjectId(vo));

        // 프로젝트 플랜 데이터를 담는다.
        projectVO.setProjectPlanVO(projectPlanMapper.findByProjectId(vo));

        // 프로젝트 창작자에 대한 데이터를 담는다.
        projectVO.setUserVO(userMapper.findByUserId(vo.getUserId()));

        // 프로젝트에 등록된 제품들을 담는다.
        projectVO.setProductVOList(productMapper.findByProjectId(vo));

        return projectVO;
    }

    @Override // 로그인 유저와 프로젝트 생성자가 동일한지 확인하는 코드
    public int hasPermission(ProjectVO vo) {
        return projectMapper.findByProjectIdANDUserId(vo);
    }

    @Override // 프로젝트 기본정보를 저장하는 코드
    public int saveInfo(ProjectVO vo) {
        // 프로젝트 내용 수정하는 코드
        int saveProject = projectMapper.saveInfo(vo);
        System.out.println("프로젝트 저장 결과: " + saveProject);

        // 프로젝트 검색 태그 삭제하고 다시 넣는 코드
        int deleteSearchTag = searchTagMapper.deleteByProjectId(vo);
        System.out.println("검색태그 삭제 결과: " + deleteSearchTag);
        for (SearchTagVO searchTagVO : vo.getSearchTagVOList()) {
            searchTagVO.setProjectId(vo.getProjectId());
            searchTagMapper.insertByTagWord(searchTagVO);
            System.out.println("검색태그 저장 결과: " + searchTagVO.getTagWord());
        }
        return saveProject;
    }

    @Override // 프로젝트 펀딩계획을 저장하는 코드
    public int saveFunding(ProjectVO vo) {
        return projectMapper.saveFunding(vo);
    }

    @Override // 좋아요
    public int putFavorite(LikesVO likesVO) {
        ProjectVO projectVO = new ProjectVO();
        projectVO.setProjectId(likesVO.getProjectId());

        int result = likesMapper.existedByUserIdANDProjectId(likesVO);

        if (result == 0) {
            likesMapper.insertLike(likesVO);
            projectMapper.increaseFavoriteCount(projectVO);
            return result;
        } else {
            likesMapper.deleteByUserIdANDProjectId(likesVO);
            projectMapper.decreaseFavoriteCount(projectVO);
            return result;
        }
    }

    @Override // 조회수
    public int increaseViewCount(ProjectVO vo) {
        return projectMapper.increaseViewCount(vo);
    }

    @Override // 새롭게 프로젝트 생성
    public int createProject(ProjectVO vo) {
        // UserId와 프로젝트 요약으로 프로젝트를 생성한다.
        projectMapper.createProject(vo);

        // 생성하고 해당 데이터는 파라미터로 받은 vo로 set처리가 되어짐으로 그대로 출력하면 된다.
        System.out.println(vo.getProjectId());

        return vo.getProjectId();
    }

    @Override // 작성중인 프로젝트 불러옴
    public List<ProjectVO> progressProject(ProjectVO vo) {
        return projectMapper.findByUserIdANDStatus(vo);
    }

    @Override // 조회수 8개
    public List<ProjectVO> mainGetViewProject() {
        return projectMapper.mainGetViewProject();
    }

    @Override // 좋아요 8개
    public List<ProjectVO> mainGetFavoriteProject() {
        return projectMapper.mainGetFavoriteProject();
    }


}

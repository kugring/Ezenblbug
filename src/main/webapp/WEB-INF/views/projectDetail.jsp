<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>[ 프로젝트 ]- Ezenblbug</title>
    <link rel="icon"
          href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png"
          type="image/png">
    <link href="../resources/projectDetail/style.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/projectDetail/script.js"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


</head>
<body>



<jsp:include page="/WEB-INF/views/header/header.jsp"/>

<div class="project-page">

    <div class="project-top-container">
        <div class="project-first-layer">
            <div class="project-top-header">
                <div class="project-header-bundle">
                    <div class="project-header-bundle-category">${projectVO.category}</div>
                    <h1 class="project-title">${projectVO.projectTitle}</h1>
                </div>
            </div>
        </div>
        <div class="project-second-layer">
            <div class="project-detail-carousel-container">
                <div class="carousel-control-prev img-left-button">
                    <div class="left-arrow icon-32"></div>
                </div>
                <div class="project-top-left carousel-item">
                    <div class="carousel-img-box">
                        <div class="project-title-img-box-layer">
                            <c:forEach var="thumbnailVO" items="${projectVO.getThumbnailVOList()}">
                                <div class="img-items">
                                    <img class="project-title-img move" src="${thumbnailVO.getPath()}">
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="project-title-img-box-mark">
                        <div class="img-box-mark-items img-mark"></div>
                        <c:forEach var="i" begin="0" end="${projectVO.getThumbnailVOList().size()}">
                            <div class="img-box-mark-items"></div>
                        </c:forEach>
                    </div>
                </div>
                <div class="carousel-control-next img-right-button">
                    <div class="right-arrow icon-32"></div>
                </div>
            </div>
            <aside class="project-top-right">
                <div class="project-funding-current">
                    <div class="funding-current-box">
                        <div class="funding-text">모인금액</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">
                                <fmt:formatNumber value="${projectVO.totalDonation}" type="number" groupingUsed="true"/><span class="funding-item">원</span>
                            </div>
                            <div class="funding-current-percent">${Math.toIntExact((projectVO.totalDonation / projectVO.getGoalBudgetNum()) * 100)}%</div>
                        </div>
                    </div>
                    <div class="funding-current-box">
                        <div class="funding-text">남은 시간</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">
                                ${projectVO.getDaysDifference()}<span class="funding-item">일</span>
                            </div>
                        </div>
                    </div>
                    <div class="funding-current-box">
                        <div class="funding-text">후원자</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">
                                49<span class="funding-item">명</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="funding-from-intro">
                    <div class="funding-from-intro-box">
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">목표금액</dt>
                                <dd class="funding-from-intro-item">
                                    <fmt:formatNumber value="${projectVO.goalBudget}" type="number" groupingUsed="true"/>
                                    원
                                </dd>
                        </dl>
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">펀딩 기간</dt>

                                <dd class="funding-from-intro-item">
                                    ${projectVO.getStartTimelineYYYY()}
                                    ~
                                    ${projectVO.getTimelineYYYY()}
                                </dd>
                            <span class="text-red">${projectVO.getDaysDifference()}일 남음</span>
                        </dl>
                        <dl class="funding-from-intro-items goal-price">
                            <dt class="funding-from-intro-text">결제</dt>
                                <dd class="funding-from-intro-item">
                                <dd class="funding-from-intro-item">
                                    목표금액 달성시
                                    ${projectVO.getDaysDifference() + 1}
                                    에 결제진행
                                </dd>
                                </dd>
                        </dl>
                    </div>
                </div>

                <div class="funding-title-button-box">
                    <div class="funding-title-button-layer">
                        <div class="funding-title-likes-button">
                            <div class="funding-title-likes-button-items">
                                <div class="funding-title-likes-button-item">
                                    <div class="likes-button-img empty-heart icon-16"></div>
                                    <span class="likes-button-count">${projectVO.favoriteCount}</span>
                                </div>
                            </div>
                        </div>
                        <div class="funding-title-link-button">
                            <div class="funding-title-link-button-items">
                                <div class="funding-title-link-button-item">
                                    <div class="link-button-img link icon-16"></div>
                                    <span class="link-button-count">11</span>
                                </div>
                            </div>
                        </div>
                        <div class="funding-title-project-funding-button">
                            <div class="funding-title-project-funding-button-item">이
                                프로젝트 후원하기
                            </div>
                        </div>
                    </div>
                </div>
            </aside>

        </div>
    </div>


    <div class="project-nav-container">
        <nav class="project-nav-bundle">
            <div class="project-nav-box">
                <div class="project-nav-items">
                    <div class="project-nav-item select">프로젝트 계획</div>
                    <div class="project-nav-item">
                        업데이트<sup class="update-count">1</sup>
                    </div>
                    <div class="project-nav-item">커뮤니티</div>
                    <div class="project-nav-item">후기</div>
                </div>
            </div>
        </nav>
    </div>


    <div class="project-main-container">
        <div class="project-main-box">
            <div class="project-main-layer">
                <div class="project-main-left-layer">
                    <div class="project-main-left-box">

                        <div class="project-main-left-badge-bundle">
                            <ul class="project-main-left-badge-items">
                                <li>
                                    <div id="purpose"
                                         class="project-main-left-badge-item introduction-badge current-badge">소개
                                    </div>
                                </li>
                                <li>
                                    <div id="budget" class="project-main-left-badge-item">예산</div>
                                </li>
                                <li>
                                    <div id="schedule" class="project-main-left-badge-item">일정</div>
                                </li>
                                <li>
                                    <div id="team-intro" class="project-main-left-badge-item">팀
                                        소개
                                    </div>
                                </li>
                                <li>
                                    <div id="gift-intro" class="project-main-left-badge-item">선물
                                        설명
                                    </div>
                                </li>
                                <li>
                                    <div class="project-main-left-badge-item">신뢰와 안전</div>
                                </li>
                            </ul>
                        </div>
                        <div class="project-main-left-contents">
                            <div class="project-main-left-content purpose-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker purpose"></div>
                                    프로젝트 소개
                                </div>
                                    ${projectVO.getProjectPlanVO().projectIntroduction}
                            </div>
                            <div class="project-main-left-content budget-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker budget"></div>
                                    프로젝트 예산
                                </div>
                                ${projectVO.projectPlanVO.projectBudget}
                            </div>

                            <div class="project-main-left-content schedule-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker schedule"></div>
                                    프로젝트 일정
                                </div>
                                ${projectVO.projectPlanVO.projectSchedule}
                            </div>

                            <div class="project-main-left-content team-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker team-intro"></div>
                                    프로젝트 팀 소개
                                </div>
                                ${projectVO.projectPlanVO.teamIntroduction}
                            </div>

                            <div class="project-main-left-content gift-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker gift-intro"></div>
                                    선물 설명
                                </div>
                                ${projectVO.projectPlanVO.projectGiftExplain}
                            </div>

                            <div class="project-main-left-content gift-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker gift-intro"></div>
                                    신뢰와 안전
                                </div>
                                ${projectVO.projectPlanVO.projectExchangePolicy}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="project-main-right-layer">
                    <div class="project-main-right-box">
                        <div class="project-main-right-creater-intro">
                            <div class="project-main-right-creater-intro-title">창작자 소개</div>
                            <div class="project-main-right-creater-profile-box">
                                <div class="project-main-right-creater-profile-items">
                                    <div class="project-main-right-creater-profile-item white-default-profile" style="background-image: url('${projectVO.userVO.profileImage}')"></div>
                                </div>
                                <div class="project-main-right-creater-profile-text">
                                    <div class="project-main-right-creater-name">${projectVO.userVO.nickname}</div>
                                </div>
                            </div>
                            <div class="project-main-right-creater-profile-self-intro-box">
                                ${projectVO.userVO.selfIntro}
                            </div>
                            <div class="project-main-right-creater-profile-follow-box">
                                <div class="project-main-right-creater-profile-follow-button">
                                    <button class="project-main-right-creater-profile-follow-button-items">
                                        <div class="project-main-right-creater-profile-follow-button-items-frame">
                                            <div class="project-main-right-creater-profile-follow-button-item black-plus icon-10"></div>
                                            <div class="project-main-right-creater-profile-follow-button-item-text">팔로우</div>
                                        </div>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="project-main-right-funding-package">
                            <div class="project-main-right-funding-package-bundle">
                                <div class="project-main-right-funding-package-bundle-title">선물 선택</div>
                                <div class="project-main-right-funding select-package">
                                    <div class="select-package content-box">
                                    </div>
                                    <div class="select-package select-button-box">
                                        <button class="select-button gift-select">선물 선택하기</button>
                                        <button class="select-button funding-select">
                                            <div class="funding-select-text">총 <b class="bold">0 원</b> 후원하기</div>
                                        </button>
                                    </div>
                                </div>
                                <div class="project-main-right-funding-package-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    1,000 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                선물 없이 후원하기
                                            </div>
                                        </div>
                                    </section>
                                </div>

                                <c:forEach var="packageVO" items="${projectVO.backersPackageVOList}">
                                    <%-- 새로운 패키지 섹션 시작 --%>
                                    <div class="project-main-right-funding-package-category-box"
                                         data-packageId="${packageVO.packageId}"
                                         style="border: 1px solid #ddd; padding: 10px; margin: 10px 0; border-radius: 5px;">
                                        <section class="project-main-right-funding-package-section">
                                            <input type="hidden" name="personMaxCount" value="${packageVO.personMaxAmount}"/>
                                            <div class="project-main-right-funding-package-current-amount-box">
                                                <div class="project-main-right-funding-package-current-choose-amount">
                                                    <div class="black-check icon-10"></div>
                                                        ${packageVO.maxProductAmount - packageVO.remaining}개 선택
                                                </div>
                                                <div class="project-main-right-funding-package-current-have-amount">
                                                        ${packageVO.remaining}개 남음
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-items">
                                                <div class="project-main-right-funding-package-main-section-item-price-box">
                                                    <div class="project-main-right-funding-package-main-section-item-price">
                                                        <fmt:formatNumber value="${packageVO.packagePrice}" type="number" groupingUsed="true"/>원
                                                        <div class="black-bold-plus icon-12"></div>
                                                    </div>
                                                </div>
                                                <div class="project-main-right-funding-package-main-section-item-content-box">
                                                        ${packageVO.packageTitle}
                                                </div>
                                            </div>
                                            <ul class="project-main-right-funding-package-main-section-ul">
                                                <c:forEach var="productVO" items="${packageVO.productVOList}">
                                                    <%-- 동일한 packageId에 대한 제품 리스트 --%>
                                                    <li class="project-main-right-funding-package-main-section-li">
                                                        <div class="list-mark">•</div>
                                                            ${productVO.productName} (x ${productVO.productQuantity})
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </section>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    //.project-main-right-funding-package-category-box를 클릭했을 때 display 변경

    $('.project-main-right-funding-package-category-box').on('click', function (event) {

        var packageTitle = $(this).find(".project-main-right-funding-package-main-section-item-content-box").text();
        var packageCost = $(this).find(".project-main-right-funding-package-main-section-item-price").text();
        var packageCount = $(this).find(".select-count-number").text();
        var productName = $(this).find(".project-main-right-funding-package-main-section-ul").html();
        var packageId = $(this).attr("data-packageId");
        var target_obj = $('.select-package.content-box');


        var isPackage = false;

        target_obj.find(".content-items").each(function () {
            var packageId2 = $(this).attr("data-packageId");
            if (packageId == packageId2) {
                isPackage = true;
            }
        });


        if (!isPackage) {
            target_obj.html(target_obj.html() + `
             <div class="content-items" data-packageId=\${packageId}>
                <div class="content-item package-title">
                   \${packageTitle}
                </div>
                <div class="content-item package-content">

                   <div class="package-content-text">
                      <ul class="package-content-ul">
                         <li>
                            <div class="package-content-li-text">
                               <div class="package-content-li composition-text">
                                     \${productName}
                               </div>
                            </div>
                         </li>
                      </ul>
                      <div class="package-content-count-price">
                      <div class="package-content-count">
                      <input type="hidden" name="personMaxCount" value="${vo.personMaxAmount}"/>
                         <button type="button" class="count-button minus" onclick="unitButton(this, -1)">
                            <div class="black-minus icon-10"></div>
                         </button>
                         <div class="select-count-number">1</div>
                         <button type="button" class="count-button plus" onclick="unitButton(this, 1)">
                            <div class="black-bold-plus icon-10"></div>
                         </button>
                      </div>
                      <div class="package-content-price">
                         \${packageCost}
                      </div>
                   </div>
                   <button class="content-item select-cancle" onclick="hideBox(this)">
                         <div class="black-x icon-12"></div>
                   </button>
                </div>

             </div>
          `);

        }

        showDis();                // showDis() 함수 호출
        event.stopPropagation(); // 이벤트 버블링을 막아 클릭 시 다른 이벤트로 전달되지 않도록 함
        // 총합계를 출력하는 함수
        totalDonation();
    });


    $('.project-main-right-funding-package-box').on('click', function (event) {
        event.stopPropagation(); // 이벤트 버블링을 막아 클릭 시 다른 이벤트로 전달되지 않도록 함
    });


    $('.project-main-right-funding').on('click', '*', function (event) {
        event.stopPropagation(); // 이벤트 버블링을 막아 클릭 시 다른 이벤트로 전달되지 않도록 함
    });

    $('.project-main-right-funding').on('click', function (event) {
        event.stopPropagation(); // 여백 클릭 시에도 이벤트가 상위로 전달되지 않도록 함
    });

    // 서버에서 데이터를 불러와 maxCount를 설정하는 부분
    maxCount = parseInt($("input[name='personMaxCount']").val(), 10); // 문자열을 정수로 변환

    // maxCount 값이 유효한지 확인
    if (isNaN(maxCount) || maxCount <= 0) {
        maxCount = 1; // 기본값 설정 (필요에 따라 조정)
        console.warn('maxCount 값이 유효하지 않으므로 기본값을 사용합니다.');
    }


    // .black-bold-plus 버튼 클릭 시 실행 (숫자 증가)
    function unitButton(element, num) {
// 현재 요소의 수량 텍스트를 가져오기 위한 가장 가까운 .package-content-count 내의 .select-count-number 요소를 찾습니다.
        const currentElement = $(element).closest(".package-content-count").find(".select-count-number");

        // 현재 수량을 숫자로 변환하여 가져옵니다.
        let currentQuantity = parseInt(currentElement.text().trim(), 10);
        // 최대 수량을 input[name='personMaxCount']에서 가져와 숫자로 변환합니다.


        // 증가 및 감소 버튼 요소를 가져옵니다.
        const plusButton = $(element).closest(".package-content-count").find(".plus");
        const minusButton = $(element).closest(".package-content-count").find(".minus");

        // 수량을 증가하거나 감소시키기 전에 경계를 체크합니다.
        if ((currentQuantity <= 1 && num < 0) || (currentQuantity >= maxCount && num > 0)) {
            return; // 수량이 최소값 이하 또는 최대값 이상이면 함수 종료
        }

        // 수량을 증가 또는 감소시킵니다.
        currentQuantity += num;
        currentElement.text(currentQuantity);

        // 수량에 따른 버튼의 상태를 업데이트합니다.
        minusButton.css("opacity", currentQuantity <= 1 ? "0.2" : "1");
        plusButton.css("opacity", currentQuantity >= maxCount ? "0.2" : "1");

        // 총합계를 출력하는 함수
        totalDonation();
    }
</script>

</body>
</html>



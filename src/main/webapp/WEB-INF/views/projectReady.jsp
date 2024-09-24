<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>[ 프로젝트 준비 ]- Ezenblbug</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png" type="image/png">
    <link href="${path}/resources/projectReady/projectReady.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp"/>
<div class="container">
    <div class="img-box">
        <div class="editor-badge-image"></div>
    </div>
    <div class="main-box">
        <c:if test="${projectVoList != null}">
            <div class="progress-project-box">
                <div class="progress-project-message">
                    <svg viewBox="0 0 48 48">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                              d="M44 24C44 35.0457 35.0457 44 24 44C12.9543 44 4 35.0457 4 24C4 12.9543 12.9543 4 24 4C35.0457 4 44 12.9543 44 24ZM21.0099 15.1091C21.0046 15.0505 21.0507 15 21.1095 15H26.8905C26.9493 15 26.9954 15.0505 26.9901 15.1091L26.0083 25.9091C26.0036 25.9606 25.9604 26 25.9087 26H22.0913C22.0396 26 21.9964 25.9606 21.9917 25.9091L21.0099 15.1091ZM24 29C22.3431 29 21 30.3431 21 32C21 33.6569 22.3431 35 24 35C25.6569 35 27 33.6569 27 32C27 30.3431 25.6569 29 24 29Z"></path>
                    </svg>
                    <div>작성 중인 프로젝트가 있습니다.</div>
                </div>
                <c:forEach var="projectVo" items="${projectVoList}">
                    <div class="progress-project-card">
                        <div class="progress-project-card-img" style="background-image: url('${projectVo.getProjectThumbnail()}')"></div>
                        <div class="progress-project-card-title">${projectVo.getProjectSummary()}</div>
                        <div class="progress-project-card-button" onclick="window.location.href = realPath+'/project/create/${projectVo.getProjectId()}'">이어서 작성
                            <svg viewBox="0 0 48 48">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M4.29858 26.2811L37.8779 26.2811L22.7872 40.9312C21.8888 41.8405 21.7878 43.3561 22.6873 44.2654C23.5867 45.1747 25.0858 45.2757 25.9852 44.3664L45.2734 25.5738C46.1728 24.6645 46.2728 23.25 45.3733 22.2396H45.2734L25.9852 3.54807C25.0858 2.73979 23.5867 2.84082 22.7872 3.75014C21.9877 4.65946 21.9877 6.07396 22.8881 6.98328L37.9779 21.5324L4.29858 21.5324C2.99938 21.5324 2 22.5428 2 23.8562C2 25.1697 2.99938 26.2811 4.29858 26.2811Z"></path>
                            </svg>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
        <div class="main-layer">

            <div class="main-content">
                <div class="title-bundle">
                    <h2 class="main-title">
                        멋진 아이디어가 있으시군요!
                        <br>
                        어떤 프로젝트를 계획 중이신가요?
                    </h2>
                    <div class="main-title-intro">나중에 변경 가능하니 너무 걱정마세요.</div>
                </div>
                <div>
                    <ul class="badge-items">
                        <li class="badge-item">
                            <button class="badge select">보드게임 · TRPG</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">디지털 게임</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">웹툰 · 만화</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">웹툰 리소스</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">디자인 문구</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">캐릭터 · 굿즈</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">홈 · 리빙</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">테크 · 가전</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">반려동물</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">푸드</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">향수 · 뷰티</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">의류</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">잡화</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">주얼리</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">출판</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">디자인</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">예술</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">사진</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">음악</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">영화 · 비디오</button>
                        </li>
                        <li class="badge-item">
                            <button class="badge">공연</button>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="main-content">
                <div class="title-bundle">
                    <h2 class="main-title">
                        프로젝트를 간단하게 소개해주세요.
                    </h2>
                    <div class="main-title-intro">나중에 수정 가능하니 편하게 적어주세요.</div>
                </div>

                <div class="project-short-intro-box">
                    <div class="gift-explain-textarea-box">
                        <div class="input-one-box">
                            <div class="input-one-padding">
                                <textarea type="text" class="input-one" placeholder="프로젝트 요약을 입력해주세요"></textarea>
                            </div>
                            <div class="input-one-information">
                                <div class="input-one-message"></div>
                                <div class="input-one-count-box">
                                    <div class="charCount">0/</div>
                                    <div class="charMax">50</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="next-button-items">
                        <button class="next-button">다음</button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
</body>
<script>
    $(".badge").on("click", function () {
        $(".badge").removeClass("select")
        $(this).addClass("select")
    })

    $(".next-button").on("click", function () {
        if ($(".input-one").val().length < 10) {
            alert("프로젝트 요약을 10자 이상 작성해주세요")
            return;
        }
        let category = $(".badge.select").text()
        let projectSummary = $(".input-one").val()
        $.ajax({
            url: realPath+'/project/ready', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({
                category: category,
                projectSummary: projectSummary
            }),
            success: function (data) {
                window.location.href = realPath +'/project/create/' + data
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });
    })


</script>
<script src="${path}/resources/projectCreate/block_input.js"></script>
</html>
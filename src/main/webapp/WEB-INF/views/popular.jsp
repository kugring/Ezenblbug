<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css" />
    <link href="${path}/resources/popular/style.css" rel="stylesheet"
          type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/popular/script.js"></script>
</head>
<body>

<jsp:include page="/WEB-INF/views/header/header.jsp" />

<div class="container">

    <div class="main-top">
        <div class="top-bundle">
            <div class="top-box">
                <div class="top-items">
                    <div class="button-box">
                        <div class="dalseonglyul-button">
                            <button class="dalseonglyul-button-text-box">
                                <span class="dalseonglyul-button-text">달성률</span> <span
                                    class="black-down-arrow-box">
                              <div class="black-down-arrow icon-8"></div>
                           </span>
                            </button>
                            <div class="page-layer">
                                <div class="dalseonglyul-option-items">
                                    <div class="dalseonglyul-option-item option-all">전체보기</div>
                                    <div class="dalseonglyul-option-item option-percent">75%
                                        이하</div>
                                    <div class="dalseonglyul-option-item option-percent">75%
                                        ~ 100%</div>
                                    <div class="dalseonglyul-option-item option-percent">100%
                                        이상</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="popular-main-container">
        <div class="popular-main-box">

            <div class="total-count-items">
                <span class="total-count">569</span> 개의 프로젝트가 있습니다.
            </div>
            <div class="popular-main-content">

                <c:forEach var="vo" items="${mainGetFavoriteProject}">
                    <div class="popular-content-items">
                        <div class="project-box">

                            <div class="project-img-items">
                                <img class="project-img" src="${vo.projectThumbnail}"></img>
                                <div class="project-likes black-empty-heart icon-18"></div>
                            </div>
                            <div class="project-intro-items">
                                <dl class="project-intro">
                                    <dd class="project-team">
                                        <span class="project-team-span">${vo.userVO.nickname}</span>
                                    </dd>
                                    <dt class="project-title">${vo.projectTitle}</dt>
                                    <dd class="project-text">${vo.projectSummary}</dd>

                                </dl>
                                <div class="project-number-intro">
                                    <div>
                                        <span class="project-percent">198%</span> <span
                                            class="project-funding-amount">494,643,625원</span>
                                    </div>
                                    <span class="project-Dday">12일 남음</span>
                                </div>
                                <div class="project-red-bar">
                                    <div class="project-red-bar-content"></div>
                                </div>
                            </div>

                        </div>
                    </div>

                </c:forEach>

            </div>

        </div>
    </div>

</div>

<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
</html>
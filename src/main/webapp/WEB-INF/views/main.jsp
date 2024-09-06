<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>[ 메인 ]- Ezenblbug</title>
    <link rel="icon"
          href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png"
          type="image/png">
    <link href="${path}/resources/main/style.css" rel="stylesheet"
          type="text/css" />
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/main/main.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp" />


<div class="container">

    <div class="main-container">
        <div class="main-left-box">
            <div class="carousel-container">
                <div class="carousel-slides">
                    <img class="cody-img carousel-slide"
                         src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1hc3NldHMiLCJrZXkiOiJoZXJvZXMvbWFpbl9wY193YXRlcmJlYWRzXygxKS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1NDIsImhlaWdodCI6NTYwLCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0="
                         class=""> <img class="cody-img carousel-slide"
                                        src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1hc3NldHMiLCJrZXkiOiJoZXJvZXMvbWFpbl9wY18yMDI0ZmFuY2FsbF8oMSkuanBnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxNTQyLCJoZWlnaHQiOjU2MCwid2l0aG91dEVubGFyZ2VtZW50Ijp0cnVlfX19"
                                        class="carousel-slide"> <img
                        class="cody-img carousel-slide"
                        src="https://img.tumblbug.com/eyJidWNrZXQiOiJ0dW1ibGJ1Zy1hc3NldHMiLCJrZXkiOiJoZXJvZXMvbWFpbl9wY19kZXVtb29uX2ZjMi5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1NDIsImhlaWdodCI6NTYwLCJ3aXRob3V0RW5sYXJnZW1lbnQiOnRydWV9fX0="
                        class="carousel-slide">
                </div>
                <div class="next-button-box">
                    <div class="page-number">1 / 3</div>
                    <div class="arrow-box">
                        <div
                                class="img-button-circle white-left-arrow icon-30 color-button"
                                onclick="moveSlide(-1)"></div>
                        <div
                                class="img-button-circle white-right-arrow icon-30 color-button"
                                onclick="moveSlide(1)"></div>
                    </div>
                </div>
            </div>


            <div class="left-box-category-box">

                <div class="category-box-items cursor">
                    <div class="category-box-img game-pad icon-65"></div>
                    <div class="category-box-text">게임</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img food icon-65"></div>
                    <div class="category-box-text">푸드</div>
                </div>


                <div class="category-box-items cursor">
                    <div class="category-box-img color-box icon-65"></div>
                    <div class="category-box-text">소상공인</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img taro icon-65"></div>
                    <div class="category-box-text">타로</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img diary icon-65"></div>
                    <div class="category-box-text">디자인.문구</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img comic icon-65"></div>
                    <div class="category-box-text">웹툰.만화</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img else icon-65"></div>
                    <div class="category-box-text">잡화</div>
                </div>

                <div class="category-box-items cursor">
                    <div class="category-box-img goods icon-65"></div>
                    <div class="category-box-text">캐릭터.굿즈</div>
                </div>
            </div>

            <div class="attention-container">

                <div class="attention-title">주목할 만한 프로젝트</div>
                <!-- /////////////////////////나중에 foreach 사용///////////////////////// -->
                <div class="attention-card-box">

                    <c:forEach var="vo" items="${mainGetViewProject}">
                        <div class="attention-card">
                            <div class="attention-card-img-box">
                                <a href="project/${vo.getProjectId()}"> <img
                                        class="attention-card-img" src="${vo.getProjectThumbnail()}" />
                                </a>
                                <div class="empty-heart project-like"></div>
                            </div>
                            <div class="attention-card-body">
                                <div class="attention-card-company line-cursor">${vo.userVO.getNickname()}</div>
                                <a style="text-decoration: none" href="project/1">
                                    <div class="attention-card-title">${vo.getProjectTitle()}</div>
                                </a>
                                <div class="attention-card-progress-rate">979% 달성</div>
                            </div>
                            <input name="project-id" type="hidden"
                                   value="${vo.getProjectId()}">
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>


        <div class="main-right-box">

            <div class="main-right-box-title">
                <div class="right-box-title-bundle">
                    <div class="right-box-title-first-bundle">
                        <div class="title-first-bundle-item-left">인기 프로젝트</div>
                        <div class="title-first-bundle-item-right op-8 cursor">전체보기</div>
                    </div>
                    <div class="op-9">24.07.31 11:33 기준</div>
                </div>
            </div>

            <div class="main-right-hit-box">

                <c:forEach var="vo" items="${mainGetFavoriteProject}"
                           varStatus="status">
                    <div class="hit-box-bundle">
                        <div class="hit-img-items cursor">
                            <a href="project/${vo.getProjectId()}"> <img
                                    class="hit-img-item" src="${vo.getProjectThumbnail()}"></img>
                            </a>
                        </div>
                        <div class="hit-number red">
                            <c:out value="${status.index + 1}" />
                        </div>
                        <div class="hit-text-box">
                            <div class="op-8 line-cursor">${vo.userVO.getNickname()}</div>
                            <div class="hit-text-box-title cursor">${vo.getProjectTitle()}</div>
                            <div class="hit-text-box-percentage">89606% 달성</div>
                        </div>
                        <input name="project-id" type="hidden"
                               value="${vo.getProjectId()}">
                    </div>
                </c:forEach>

                <div class="main-right-box-badge">인기 프로젝트 전체보기</div>

            </div>
        </div>


    </div>

</div>

<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>
</html>

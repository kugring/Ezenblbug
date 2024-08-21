<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <link href="./../resources/css/app.css" rel="stylesheet" type="text/css" />
    <link href="./../resources/header/header.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/header/header.js"></script>
</head>
<body>

<div class="header">
    <div class="header-container">
        <div class="header-box">

            <div class="header-bundle">
                <div class="title">Tumblbug</div>
                <div class="header-right-items">

                    <div class="header-items project-item">프로젝트 올리기</div>

                    <div class="header-items path-item">
                        <div class="empty-heart icon-28"></div>
                    </div>

                    <div class="header-items bell-item">
                        <div class="black-bell icon-24"></div>
                    </div>

                    <div class="header-items profile-item change-switch">
                        <div class="profile-button">
                            <div class="profile-img fox icon-35"></div>
                            <div class="user-nick">별빛눈물</div>
                        </div>
                    </div>

                    <div class="header-items login-item change-switch">
                        <div class="login-button">
                            <div class="profile-img white-default-profile icon-24"></div>
                            <div class="user-nick">로그인/회원가입</div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="header-bundle">
                <div class="menu-box">
                    <div class="menu-items home-menu">홈</div>
                    <div class="menu-items popular-menu">인기</div>
                    <div class="menu-items startup-menu">신규</div>
                    <div class="menu-items coming-soon-menu">공개예정</div>
                    <div class="menu-items digital-menu">디지털에셋</div>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="검색어를 입력해주세요" class="search-input"/>
                    <div class="empty-black-reading-glass icon-22 cursor"></div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>

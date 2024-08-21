<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <link href="../resources/projectUpload/style.css" rel="stylesheet" type="text/css"/>
    <link href="../resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/projectUpload/script.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp"/>

<div class="container">
    <div class="main-top">
        <div class="main-intro-text">
            누구나 쉽고 빠르게
            <br>
            프로젝트를 시작할 수 있습니다.
        </div>
        <div class="main-intro-sub-text">취향이 모여 세상을 바꾸는 텀블벅에서</div>
        <div class="main-button-box">
            <button class="main-button now-start">지금 시작하기</button>
            <button class="main-button guide" onclick="window.location.href='https://creator.tumblbug.com/'">창작자 가이드</button>
        </div>
    </div>

    <div class="swiper-container">
        <div class="card-list">
            <c:set var="cards" value="${fn:split('1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', ',')}"/>

            <c:forEach var="item" items="${cards}">
                <div class="card-box ${item}  ${item == 8 ? "active" : ""}">
                    <div class="card-img">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqT5fyQiu6B2CbfK6oR49HHIvnRQKWGijSVQ&s">
                    </div>
                    <div class="card-content">
                        <div class="card-tag">고먐고먐미</div>
                        <div class="card-title">네모네모빔믈 맞믄 고먐미를 즐겨보세묘</div>
                        <div class="card-text">지금까지 미런 고먐미는 멊멌다 지금까지 미런 고먐미는 멊멌다 지금까지 미런 고먐미는 멊멌다</div>
                        <div class="card-completion">${item} 달성</div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/footer/footer.jsp"/>
</body>
</html>

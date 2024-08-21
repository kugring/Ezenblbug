<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <link href="../resources/projectTip/style.css" rel="stylesheet" type="text/css"/>
    <link href="../resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%--    <script src="${path}/resources/projectTip/script.js"></script>--%>

</head>
<body>
<div id="tip-page">
    <div class="tip-header">
        <div class="header-left"></div>
        <div class="tip-header-title">home</div>
        <div class="tip-header-right">
            <div class="tip-header-search">돋보기</div>
            <div class="tip-header-more">점점점</div>
        </div>
    </div>
    <div class="tip-sub">
        <div class="tip-sub-img"></div>
        <div class="tip-sub-text">시작을 쉽게, 창작자 가이드!</div>
    </div>
    <div class="tip-container">
        <div class="tip-top-background-img">
            <div class="user-profile-img"></div>
        </div>
    </div>
</div>


</body>
</html>

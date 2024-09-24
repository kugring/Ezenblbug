<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/resources/search/style.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/search/script.js"></script>
    <title>Insert title here</title>
</head>
<body>
<div class="search-container">
    <div class="search-wrap">
        <div class="search-left">
            <div class="search-icon icon-22"></div>
            <input class="search-input" type="text" placeholder="검색어를 입력해주세요.">
        </div>
        <div class="close-button">
            <svg width="17" height="17" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M4.28544 5.00257L2.01916 2.73642C1.82521 2.54248 1.82974 2.23083 2.01598 2.02765C2.21448 1.81131 2.5294 1.8394 2.72795 2.02108L2.72969 2.02268L4.99738 4.2905L7.26357 2.02431C7.4575 1.83056 7.7691 1.83508 7.97226 2.02115C8.1886 2.21946 8.16077 2.53473 7.97878 2.73311L7.97723 2.73479L5.70945 5.00257L7.97564 7.26876C8.16953 7.46283 8.16504 7.77425 7.97884 7.97756L7.97724 7.9793L7.97557 7.98097C7.78164 8.17472 7.47008 8.17023 7.26691 7.98417L7.26519 7.98259L4.99738 5.71465L2.73129 7.981C2.53725 8.17469 2.22572 8.17025 2.02253 7.98417L2.01908 7.98101L2.01592 7.97756C1.82971 7.77425 1.82526 7.46279 2.01916 7.26872L4.28544 5.00257Z"
                      fill="#6D6D6D"></path>
            </svg>
        </div>
    </div>
    <div class="divider"></div>
    <div class="main-box">
        <div class="main-content">
            <div class="recent-word-container">
                <div class="recent-word-title">
                    <div class="recent-word-title-text">최근 검색어</div>
                    <div class="recent-word-all-delete">전체삭제</div>
                </div>
                <div class="recent-word-wrapper">
                    <%--자바스크립트에서 따로 들어올 인기검색어--%>
                </div>
            </div>

            <c:choose>
                <c:when test="${relationWordList != null}">
                    <div class="relation-word-container">
                        <div class="relation-word-title">추천 검색어</div>
                        <div class="relation-word-wrapper">
                            <c:forEach var="item" items="${relationWordList}">
                                <div class="relation-word-item search-item">
                                        ${item}
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </c:when>
            </c:choose>
            <div class="popular-search-bundle">
                <div class="popular-search-title-items">
                    <div class="popular-search-title-item popular-title">인기 검색어</div>
                    <!-- 현재 날짜 객체를 생성하여 포맷팅 -->
                    <%
                        java.util.Date now = new java.util.Date();
                        request.setAttribute("now", now);
                    %>
                    <fmt:formatDate value="${now}" type="date" pattern="MM.dd hh:00" var="formattedDate"/>
                    <div class="popular-search-title-item popular-title-date">${formattedDate} 기준</div>
                </div>
                <ul class="popular-search-text-ul">
                    <%--자바스크립트에서 따로 들어올 인기검색어--%>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
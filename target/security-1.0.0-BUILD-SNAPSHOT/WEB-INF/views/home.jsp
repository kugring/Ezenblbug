<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 스프링 시큐리티가 제공하는 태그 라이브러리 -->
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<!-- 로그인한 사람만 보이게 권한을 검증한다. -->
	<sec:authorize access="isAuthenticated()">
		<div>로그인 한 사용자</div>
		<!-- 스프링 시큐리티가 저장하고 있는 유저 객체에서 username 데이터를 거내온다. -->
		<p>환영합니다 <sec:authentication property="principal.username"/></p>
	</sec:authorize>

	<!-- 어드민 역할이 있는 사람만 보이게 권하능ㄹ 검증한다. -->
	<sec:authorize access="hasRole('ADMIN')">
		<div>관리자만 보이는 화면</div>
	</sec:authorize>

	<!-- 어드민 역할이 없는 사람만 보이게 권한을 검증한다. -->
	<sec:authorize access="hasRole('ADMIN')">
		<div>관리자가 아닌 사람만 보이는 화면</div>
	</sec:authorize>

	<!-- 유저 권한이 있는 사람만 보이게 검증한다. -->
	<sec:authorize access="hasAuthority('USER')">
		<div>일반 유저만 보이는 화면</div>
	</sec:authorize>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css" />
    <link href="${path}/resources/searchResult/style.css" rel="stylesheet"
          type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
<jsp:include page="/WEB-INF/views/header/header.jsp"/>
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

    <div class="main-container">
        <div class="main-box">

            <div class="total-count-items">
                <span class="total-count">569</span> 개의 프로젝트가 있습니다.
            </div>
            <div class="search-main-content">

                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                            <!-- <div class="project-likes pink-heart icon-18"></div> -->
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                            <!-- <div class="project-likes pink-heart icon-18"></div> -->
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="content-items">
                    <div class="project-box">

                        <div class="project-img-items">
                            <div class="project-img kuromi-bag"></div>
                            <div class="project-likes black-empty-heart icon-18"></div>
                        </div>
                        <div class="project-intro-items">
                            <dl class="project-intro">
                                <dd class="project-team">
                                    <span class="project-team-span">OvB 어버버</span>
                                </dd>
                                <dt class="project-title">오프에 진심인 덕후가 만든 [콘서트 가방]</dt>
                                <dd class="project-text">콘서트 필수템 수납 기능부터 가꾸까지! 그 어디에도 없던,
                                    덕후들의 오프를 혁명할 가방</dd>
                            </dl>
                            <div class="project-number-intro">
                                <div>
                                    <span class="project-percent">98928%</span> <span
                                        class="project-funding-amount">494,643,625원</span>
                                </div>
                                <span class="project-Dday">5일 남음</span>
                            </div>
                            <div class="project-red-bar">
                                <div class="project-red-bar-content"></div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>

</div>

<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>[ 프로젝트 올리기 ]- Ezenblbug</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png" type="image/png">
    <link href="${path}/resources/projectUpload/style.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/projectUpload/script.js"></script>

</head>
<script>
    let realPath = "${path}"
</script>
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
            <button class="main-button now-start" onclick="window.location.href=realPath+'/project/ready'">지금 시작하기</button>
            <button class="main-button guide" onclick="window.location.href=realPath+'https://creator.tumblbug.com/'">창작자 가이드</button>
        </div>
    </div>

    <div class="swiper-container">
        <div class="swiper-card-list">

            <c:forEach var="projectVO" items="${projectVOList}" varStatus="status">
                <div class="swiper-card-box ${status.index} ${status.index == 8 ? "active" : ""}">
                    <div class="swiper-card-img">
                        <img src="${projectVO.projectThumbnail}">
                    </div>
                    <div class="swiper-card-content">
                        <div class="swiper-card-tag">${projectVO.category}</div>
                        <div class="swiper-card-title">${projectVO.projectTitle}</div>
                        <div class="swiper-card-text">${projectVO.projectSummary}</div>
                        <div class="swiper-card-completion"><fmt:formatNumber value="${projectVO.goalBudget}" type="number" groupingUsed="true"/>원</div>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <div class="reason-container">
        <div class="reason-box">
            <div class="reason-title-text">창작자라면 텀블벅을<br>선택해야하는 이유</div>
            <div class="reason-item-box">
                <div class="reason-item">
                    <div class="reason-item-title">후원</div>
                    <div class="reason-item-body">
                        <div class="reason-item-front">800</div>
                        <div class="reason-item-text">만 건+</div>
                    </div>
                </div>
                <div class="reason-item">
                    <div class="reason-item-title">회원</div>
                    <div class="reason-item-body">
                        <div class="reason-item-front">340</div>
                        <div class="reason-item-text">만 명+</div>
                    </div>
                </div>
                <div class="reason-item">
                    <div class="reason-item-title">프로젝트 평균 달성율</div>
                    <div class="reason-item-body">
                        <div class="reason-item-front">690</div>
                        <div class="reason-item-text">%</div>
                    </div>
                </div>
                <div class="reason-item">
                    <div class="reason-item-title">목표액까지 평균</div>
                    <div class="reason-item-body">
                        <div class="reason-item-front">5</div>
                        <div class="reason-item-text">일 내 달성</div>
                    </div>
                </div>
                <div class="reason-item">
                    <div class="reason-item-title">크라우드 펀딩</div>
                    <div class="reason-item-body">
                        <div class="reason-item-text">월 방문자 수</div>
                        <div class="reason-item-front">&nbsp;1</div>
                        <div class="reason-item-text">위</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="reason-background-img">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="200 0 1300 480" width="1300" height="480" preserveAspectRatio="xMidYMid meet"
                 style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px); content-visibility: visible;">
                <defs>
                    <clipPath id="__lottie_element_2">
                        <rect width="1300" height="480" x="0" y="0"></rect>
                    </clipPath>
                </defs>
                <g clip-path="url(#__lottie_element_2)">
                    <g transform="matrix(1,0,0,1,0,0)" opacity="1" style="display: block;">
                        <rect width="1300" height="480" fill="#ffffff"></rect>
                    </g>
                    <g transform="matrix(0.835669994354248,0,0,0.9748899936676025,740,266)" opacity="1" style="display: block;">
                        <g opacity="1" transform="matrix(0.9999989867210388,0.0014137162361294031,-0.0014137162361294031,0.9999989867210388,0,0)">
                            <path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(248,100,83)" stroke-opacity="1"
                                  stroke-width="5"
                                  d=" M-574.4219970703125,227.71200561523438 C-568.4219970703125,227.71200561523438 -354.5400085449219,191.29800415039062 -354.5400085449219,191.29800415039062 C-354.5400085449219,191.29800415039062 -244.0659942626953,129.5970001220703 -244.0659942626953,129.5970001220703 C-244.0659942626953,129.5970001220703 -189.74200439453125,157.0500030517578 -189.74200439453125,157.0500030517578 C-189.74200439453125,157.0500030517578 -102.13800048828125,150.64999389648438 -102.13800048828125,150.64999389648438 C-102.13800048828125,150.64999389648438 29.166000366210938,86.48600006103516 29.166000366210938,86.48600006103516 C29.166000366210938,86.48600006103516 118.98400115966797,121.0250015258789 118.98400115966797,121.0250015258789 C118.98400115966797,121.0250015258789 166.12399291992188,111.5479965209961 166.12399291992188,111.5479965209961 C166.12399291992188,111.5479965209961 277.9840087890625,-26.31800079345703 277.9840087890625,-26.31800079345703 C277.9840087890625,-26.31800079345703 322.6520080566406,-12.199000358581543 322.6520080566406,-12.199000358581543 C322.6520080566406,-12.199000358581543 405.114990234375,-80.19999694824219 405.114990234375,-80.19999694824219 C405.114990234375,-80.19999694824219 466.0350036621094,-57.24399948120117 466.0350036621094,-57.24399948120117 C466.0350036621094,-57.24399948120117 697.5390014648438,-276.6319885253906 697.5390014648438,-276.6319885253906"></path>
                        </g>
                        <g opacity="1" transform="matrix(1,0,0,1,0,0)">
                            <path fill="rgb(255,255,255)" fill-opacity="1" d=" M-1158.3580322265625,363.1180114746094"></path>
                            <path stroke-linecap="butt" stroke-linejoin="miter" fill-opacity="0" stroke-miterlimit="4" stroke="rgb(248,100,83)" stroke-opacity="1"
                                  stroke-width="5" d=" M-1158.3580322265625,363.1180114746094"></path>
                        </g>
                    </g>
                </g>
            </svg>
        </div>
    </div>

    <div class="funding-container">
        <div class="funding-title-text">창작자를 위한<br>클라우드 펀딩</div>
        <div class="funding-card-list">
            <div class="funding-card-box">
                <div class="funding-card-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/interview-compressed-x2-card1.jpg')">
                </div>
                <div class="funding-card-content" style="background-color:  rgb(187, 173, 155)">
                    <div class="funding-card-title">누구나<br>쉽게 자금을<br>모을 수 있어요.</div>
                    <br>
                    <div class="funding-card-text">
                        1인 창작자부터 소상공인, <br>
                        브랜드까지 독창적인 <br>
                        아이디어가 있다면 누구나<br>
                        프로젝트를 시작해 보세요.<br>
                        창작자를 위해 마련된 <br>
                        분야별 창작자 가이드와 <br>
                        친절한 헬프 센터, 유용한<br>
                        에디터를 활용해 보세요.<br>
                    </div>
                </div>
            </div>
            <div class="funding-card-box move-down">
                <div class="funding-card-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/interview-compressed-x2-card2.jpg')">
                </div>
                <div class="funding-card-content" style="background-color: rgb(151, 154, 167)">
                    <div class="funding-card-title">나만의<br>아이디어, 브랜드를<br>널리 알릴 수 있어요.</div>
                    <br>
                    <div class="funding-card-text">
                        프로젝트 정식오픈 전에 홍보를<br>
                        돕는 ‘공개예정’ 기능으로<br>
                        먼저 후원자들을 모아보세요.<br>
                        다양한 메인 노출 구좌와 <br>
                        텀블벅 공식 SNS 채널을 통해 <br>
                        많은 후원자들을 만날 수 있도록<br>
                        지원해 드려요.<br>
                    </div>
                </div>
            </div>
            <div class="funding-card-box">
                <div class="funding-card-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/interview-compressed-x2-card3.jpg')">
                </div>
                <div class="funding-card-content" style="background-color: rgb(171, 173, 172);">
                    <div class="funding-card-title">특별한 후원자를 만나<br>팬 커뮤니티를<br>만들 수 있어요.</div>
                    <br>
                    <div class="funding-card-text">
                        창작자를 신뢰하는 후원자들과 <br>
                        프로젝트의 시작을 함께 하세요.<br>
                        창작자의 새로운 시도를 응원하는<br>
                        많은 후원자들이 텀블벅을 <br>
                        이용하고 있습니다.<br>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="function-container">
        <div class="function-title-text">창작자에게<br>날개를 달어줄 기능</div>
        <div class="function-item-box">
            <div class="function-item">
                <div class="function-item-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/function-img-x2-01.jpg')"></div>
                <div class="function-item-content">
                    <div class="function-item-title">✏️ 직관적인 프로젝트 에디터</div>
                    <div class="function-item-text">편리한 편집 도구로 프로젝트를 쉽게 작성할 수 있습니다.<br>이미지나 동영상 업로드까지 다방면으로 활용하세요.</div>
                </div>
            </div>
            <div class="function-item">
                <div class="function-item-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/function-img-x2-02.jpg')"></div>
                <div class="function-item-content">
                    <div class="function-item-title">📊 데이터 분석 대시보드</div>
                    <div class="function-item-text">진행중인 프로젝트의 후원자 성별, 연령 비율 등으로<br>창작자님의 고객층을 확인하세요.</div>
                </div>
            </div>
            <div class="function-item">
                <div class="function-item-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/function-img-x2-03.jpg')"></div>
                <div class="function-item-content">
                    <div class="function-item-title">🔔 공개예정 서비스</div>
                    <div class="function-item-text">프로젝트 공개 전 알림신청을 통해 수요를 미리 파악하세요. <br>(Pro 또는 Premium 요금제에서 사용 가능)</div>
                </div>
            </div>
            <div class="function-item">
                <div class="function-item-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/function-img-x2-04.jpg')"></div>
                <div class="function-item-content">
                    <div class="function-item-title">📫 후원자 1:1 메시지</div>
                    <div class="function-item-text">후원자들과 긴밀히 소통해 피드백을 받아보세요.</div>
                </div>
            </div>
            <div class="function-item">
                <div class="function-item-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/function-img-x2-05.jpg')"></div>
                <div class="function-item-content">
                    <div class="function-item-title">💬 커뮤니티</div>
                    <div class="function-item-text">이벤트를 열거나 일정 관련 공지 사항을 전달할 수 있어요. <br>후원자들의 응원글과 후기는 덤!</div>
                </div>
            </div>
            <div class="function-item">
                <div class="function-item-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/function-img-x2-06.jpg')"></div>
                <div class="function-item-content">
                    <div class="function-item-title">🎉 응원권</div>
                    <div class="function-item-text">공개예정 또는 진행중인 프로젝트에 응원권을 발급하여 <br>후원을 유도할 수 있어요.</div>
                </div>
            </div>
        </div>
    </div>

    <div class="progress-container">
        <div class="progress-title-text">펀딩은 어떻게 진행하나요?</div>

        <div class="progress-item-box">
            <div class="progress-item">
                <div class="progress-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/process-img-pc-01.png')"></div>
                <div class="progress-title">프로젝트 작성</div>
            </div>
            <div class="progress-item">
                <div class="progress-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/process-img-pc-02.png')"></div>
                <div class="progress-title">프로젝트 심사 및 승인</div>
            </div>
            <div class="progress-item">
                <div class="progress-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/process-img-pc-03.png')"></div>
                <div class="progress-title">프로젝트 공개예정 (선택)</div>
            </div>
            <div class="progress-item">
                <div class="progress-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/process-img-pc-04.png')"></div>
                <div class="progress-title">프로젝트 오픈</div>
            </div>
            <div class="progress-item">
                <div class="progress-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/process-img-pc-05.png')"></div>
                <div class="progress-title">후원 성사 및 정산</div>
            </div>
            <div class="progress-item">
                <div class="progress-img" style="background-image: url('https://d1ohqa58xvigdz.cloudfront.net/start/process-img-pc-06.png')"></div>
                <div class="progress-title">후원자 선물 전달</div>
            </div>
        </div>

        <div class="progress-detailed-button">
            <span>자세한 일정이 궁금하시다면 <strong style="color: red">여기</strong>를 눌러주세요.</span>
        </div>
    </div>

    <div class="sns-container">
        <div class="sns-content-box">
            <div class="sns-title">
                텀블벅 창작자 전용<br>
                <strong style="box-shadow: inset 0 -8px 0 0 #ffe251;">카카오톡 채널</strong> 을 추가해보세요.
            </div>
            <div class="sns-content-text">
                모집중인 기획전 소식부터 실용적인 노하우까지<br>
                펀딩에 도움이 되는 정보를 보내드립니다.
            </div>
            <div class="sns-chanel-add">
                카카오톡 채널 추가하기 +
            </div>
        </div>
        <img width="302" height="204" src="https://d1ohqa58xvigdz.cloudfront.net/start/kakao-img-01.png">
    </div>

    <div class="roller-container">
        <div class="roller-title-text" onclick="badgeRightMove()">다양한 분야의 창작자님을 찾습니다</div>

        <div class="roller-badge-box">
            <div class="roller-top-badge-list">
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/board.svg" alt="">
                    <div class="roller-badge-text">보드게임 · TRPG</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/digital-game.svg" alt="">
                    <div class="roller-badge-text">디지털 게임</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/comics.svg" alt="">
                    <div class="roller-badge-text">웹툰 · 만화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/webtoon-resource.svg" alt="">
                    <div class="roller-badge-text">웹툰 리소스</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/stationary.svg" alt="">
                    <div class="roller-badge-text">디자인 문구</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/charactor-goods.svg" alt="">
                    <div class="roller-badge-text">캐릭터 · 굿즈</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/home-living.svg" alt="">
                    <div class="roller-badge-text">홈 · 리빙</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/tech-electronics.svg" alt="">
                    <div class="roller-badge-text">테크 · 가전</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/pet.svg" alt="">
                    <div class="roller-badge-text">반려동물</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/food.svg" alt="">
                    <div class="roller-badge-text">푸드</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/perfumes-cosmetics.svg" alt="">
                    <div class="roller-badge-text">향수 · 뷰티</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/board.svg" alt="">
                    <div class="roller-badge-text">보드게임 · TRPG</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/digital-game.svg" alt="">
                    <div class="roller-badge-text">디지털 게임</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/comics.svg" alt="">
                    <div class="roller-badge-text">웹툰 · 만화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/webtoon-resource.svg" alt="">
                    <div class="roller-badge-text">웹툰 리소스</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/stationary.svg" alt="">
                    <div class="roller-badge-text">디자인 문구</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/charactor-goods.svg" alt="">
                    <div class="roller-badge-text">캐릭터 · 굿즈</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/home-living.svg" alt="">
                    <div class="roller-badge-text">홈 · 리빙</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/tech-electronics.svg" alt="">
                    <div class="roller-badge-text">테크 · 가전</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/pet.svg" alt="">
                    <div class="roller-badge-text">반려동물</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/food.svg" alt="">
                    <div class="roller-badge-text">푸드</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/perfumes-cosmetics.svg" alt="">
                    <div class="roller-badge-text">향수 · 뷰티</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/board.svg" alt="">
                    <div class="roller-badge-text">보드게임 · TRPG</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/digital-game.svg" alt="">
                    <div class="roller-badge-text">디지털 게임</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/comics.svg" alt="">
                    <div class="roller-badge-text">웹툰 · 만화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/webtoon-resource.svg" alt="">
                    <div class="roller-badge-text">웹툰 리소스</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/stationary.svg" alt="">
                    <div class="roller-badge-text">디자인 문구</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/charactor-goods.svg" alt="">
                    <div class="roller-badge-text">캐릭터 · 굿즈</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/home-living.svg" alt="">
                    <div class="roller-badge-text">홈 · 리빙</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/tech-electronics.svg" alt="">
                    <div class="roller-badge-text">테크 · 가전</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/pet.svg" alt="">
                    <div class="roller-badge-text">반려동물</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/food.svg" alt="">
                    <div class="roller-badge-text">푸드</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/perfumes-cosmetics.svg" alt="">
                    <div class="roller-badge-text">향수 · 뷰티</div>
                </div>
            </div>
            <div class="roller-bottom-badge-list">
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/fashion.svg" alt="">
                    <div class="roller-badge-text">의류</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/accessories.svg" alt="">
                    <div class="roller-badge-text">잡화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/jewerly.svg" alt="">
                    <div class="roller-badge-text">주얼리</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/publishing.svg" alt="">
                    <div class="roller-badge-text">출판</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/design.svg" alt="">
                    <div class="roller-badge-text">디자인</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/art.svg" alt="">
                    <div class="roller-badge-text">예술</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/photography.svg" alt="">
                    <div class="roller-badge-text">사진</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/music.svg" alt="">
                    <div class="roller-badge-text">음악</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/film.svg" alt="">
                    <div class="roller-badge-text">영화 · 비디오</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/performing-art.svg" alt="">
                    <div class="roller-badge-text">공연</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/fashion.svg" alt="">
                    <div class="roller-badge-text">의류</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/accessories.svg" alt="">
                    <div class="roller-badge-text">잡화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/jewerly.svg" alt="">
                    <div class="roller-badge-text">주얼리</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/publishing.svg" alt="">
                    <div class="roller-badge-text">출판</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/design.svg" alt="">
                    <div class="roller-badge-text">디자인</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/art.svg" alt="">
                    <div class="roller-badge-text">예술</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/photography.svg" alt="">
                    <div class="roller-badge-text">사진</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/music.svg" alt="">
                    <div class="roller-badge-text">음악</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/film.svg" alt="">
                    <div class="roller-badge-text">영화 · 비디오</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/performing-art.svg" alt="">
                    <div class="roller-badge-text">공연</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/fashion.svg" alt="">
                    <div class="roller-badge-text">의류</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/accessories.svg" alt="">
                    <div class="roller-badge-text">잡화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/jewerly.svg" alt="">
                    <div class="roller-badge-text">주얼리</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/publishing.svg" alt="">
                    <div class="roller-badge-text">출판</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/design.svg" alt="">
                    <div class="roller-badge-text">디자인</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/art.svg" alt="">
                    <div class="roller-badge-text">예술</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/photography.svg" alt="">
                    <div class="roller-badge-text">사진</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/music.svg" alt="">
                    <div class="roller-badge-text">음악</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/film.svg" alt="">
                    <div class="roller-badge-text">영화 · 비디오</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/performing-art.svg" alt="">
                    <div class="roller-badge-text">공연</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/fashion.svg" alt="">
                    <div class="roller-badge-text">의류</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/accessories.svg" alt="">
                    <div class="roller-badge-text">잡화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/jewerly.svg" alt="">
                    <div class="roller-badge-text">주얼리</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/publishing.svg" alt="">
                    <div class="roller-badge-text">출판</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/design.svg" alt="">
                    <div class="roller-badge-text">디자인</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/art.svg" alt="">
                    <div class="roller-badge-text">예술</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/photography.svg" alt="">
                    <div class="roller-badge-text">사진</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/music.svg" alt="">
                    <div class="roller-badge-text">음악</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/film.svg" alt="">
                    <div class="roller-badge-text">영화 · 비디오</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/performing-art.svg" alt="">
                    <div class="roller-badge-text">공연</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/fashion.svg" alt="">
                    <div class="roller-badge-text">의류</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/accessories.svg" alt="">
                    <div class="roller-badge-text">잡화</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/jewerly.svg" alt="">
                    <div class="roller-badge-text">주얼리</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/publishing.svg" alt="">
                    <div class="roller-badge-text">출판</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/design.svg" alt="">
                    <div class="roller-badge-text">디자인</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/art.svg" alt="">
                    <div class="roller-badge-text">예술</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/photography.svg" alt="">
                    <div class="roller-badge-text">사진</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/music.svg" alt="">
                    <div class="roller-badge-text">음악</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/film.svg" alt="">
                    <div class="roller-badge-text">영화 · 비디오</div>
                </div>
                <div class="roller-badge">
                    <img width="22" height="22" src="https://tumblbug-assets.imgix.net/categories/svg/performing-art.svg" alt="">
                    <div class="roller-badge-text">공연</div>
                </div>
            </div>
        </div>
    </div>

    <div class="exhibition-container">
        <div class="exhibition-title">기획전도 참여해보세요!</div>
        <div class="exhibition-text">텀블벅 메인페이지 노출과<br>공식 SNS 채널을 통한 프로모션 등<br>다양한 프로모션 혜택을 받을 수 있습니다.</div>
        <div class="exhibition-move-button">기획전 확인하기</div>
        <img class="exhibition-img" alt="" src="https://d1ohqa58xvigdz.cloudfront.net/start/collection-img-01.png">
    </div>

    <div class="banner-container">
        <div class="banner-title">지금 바로<br>프로젝트를 만들어 보세요!</div>
        <div class="main-button-box">
            <button class="main-button now-start">지금 시작하기</button>
            <button class="main-button guide" onclick="window.location.href='https://creator.tumblbug.com/'">창작자 가이드</button>
        </div>
    </div>

    <div class="QnA-container">
        <div class="QnA-title">자주 묻는 질문</div>
        <div class="QnA-box">
            <div class="Q-wrap">
                <div class="Q-item">
                    <div class="Q-bullet">Q</div>
                    <div class="Question-text">수수료는 어떻게 되나요?</div>
                </div>
                <img class="toggle-icon" src="../../resources/assets/arrow.png" alt=""/>
            </div>
            <div class="A-wrap">
                <div class="A-item">
                    <div class="A-bullet">A</div>
                    <div class="Answer-text">수수료는 Basic, Pro, Premium 총 3가지 요금제로 창작자님께 제공하는 기능 및 혜택이 추가됩니다.<br>
                        요금제별 서비스가 궁금하시다면 <a href="https://tumblbug.com/plans" target="_blank">여기</a>를 눌러주세요.
                    </div>
                </div>
            </div>
        </div>
        <div class="QnA-box">
            <div class="Q-wrap">
                <div class="Q-item">
                    <div class="Q-bullet">Q</div>
                    <div class="Question-text">어떤 프로젝트를 진행할 수 있나요?</div>
                </div>
                <img class="toggle-icon" src="../../resources/assets/arrow.png" alt=""/>
            </div>
            <div class="A-wrap">
                <div class="A-item">
                    <div class="A-bullet">A</div>
                    <div class="Answer-text">텀블벅은 창조적인 모든 분야에서 활동하는 창작자들이 자유롭게 프로젝트를 올리고 모금을 시작할 수 있는 열린 공간이지만,<br>
                        커뮤니티의 신뢰와 안전을 위해 모든 프로젝트는 심사 기준에 따라 심사하고 있습니다.<br>
                    <br>
                    자세한 심사 기준이 궁금하시다면 <a href="https://url.kr/b25cwp" target="_blank">여기</a>를 눌러주세요.
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<jsp:include page="/WEB-INF/views/footer/footer.jsp"/>
</body>
</html>

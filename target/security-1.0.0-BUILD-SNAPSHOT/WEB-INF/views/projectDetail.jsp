<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>[ 프로젝트 ]- Ezentlbug</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png" type="image/png">
    <link href="../resources/projectDetail/style.css" rel="stylesheet" type="text/css"/>
    <link href="../resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${path}/resources/projectDetail/script.js"></script>

</head>
<body>

<jsp:include page="/WEB-INF/views/header/header.jsp"/>

<div class="project-page">

    <div class="project-top-container">
        <div class="project-first-layer">
            <div class="project-top-header">
                <div class="project-header-bundle">
                    <div class="project-header-bundle-category">베이킹 · 디저트</div>
                    <h1 class="project-title">[추석 맞춤선물]격식있는 화과자, 수제양갱</h1>
                </div>
            </div>
        </div>
        <div class="project-second-layer">
            <div class="img-left-button">
                <div class="left-arrow icon-32"></div>
            </div>
            <div class="project-top-left">
                <div class="project-title-img-box">
                    <div class="project-title-img-box-layer">
                        <div class="project-title-img hwaguaja"></div>
                        <div class="project-title-img-box-mark">
                            <div class="img-box-mark-items img-mark"></div>
                            <div class="img-box-mark-items"></div>
                            <div class="img-box-mark-items"></div>
                            <div class="img-box-mark-items"></div>
                            <div class="img-box-mark-items"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="img-right-button">
                <div class="right-arrow icon-32"></div>
            </div>
            <aside class="project-top-right">
                <div class="project-funding-current">
                    <div class="funding-current-box">
                        <div class="funding-text">모인금액</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">4,905,400<span class="funding-item">원</span></div>
                            <div class="funding-current-percent">981%</div>
                        </div>
                    </div>
                    <div class="funding-current-box">
                        <div class="funding-text">남은 시간</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">16<span class="funding-item">일</span></div>
                        </div>
                    </div>
                    <div class="funding-current-box">
                        <div class="funding-text">후원자</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">49<span class="funding-item">명</span></div>
                        </div>
                    </div>
                </div>

                <div class="funding-from-intro">
                    <div class="funding-from-intro-box">
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">목표금액</dt>
                            <dd class="funding-from-intro-item">500,000원</dd>
                        </dl>
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">펀딩 기간</dt>
                            <dd class="funding-from-intro-item">2024.08.06 ~ 2024.09.01<span class="text-red">16일 남음</span></dd>
                        </dl>
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">결제</dt>
                            <dd class="funding-from-intro-item">목표금액 달성시 2024.09.02에 결제 진행</dd>
                        </dl>
                    </div>
                </div>

                <div class="funding-title-button-box">
                    <div class="funding-title-button-layer">
                        <div class="funding-title-likes-button">
                            <div class="funding-title-likes-button-items">
                                <div class="funding-title-likes-button-item">
                                    <div class="likes-button-img empty-heart icon-16"></div>
                                    <span class="likes-button-count">207</span>
                                </div>
                            </div>
                        </div>
                        <div class="funding-title-link-button">
                            <div class="funding-title-link-button-items">
                                <div class="funding-title-link-button-item">
                                    <div class="link-button-img link icon-16"></div>
                                    <span class="link-button-count">11</span>
                                </div>
                            </div>
                        </div>
                        <div class="funding-title-project-funding-button">
                            <div class="funding-title-project-funding-button-item">이 프로젝트 후원하기</div>
                        </div>
                    </div>
                </div>

            </aside>

        </div>
    </div>


    <div class="project-nav-container">
        <nav class="project-nav-bundle">
            <div class="project-nav-box">
                <div class="project-nav-items">
                    <div class="project-nav-item select">프로젝트 계획</div>
                    <div class="project-nav-item">업데이트<sup class="update-count">1</sup></div>
                    <div class="project-nav-item">커뮤니티</div>
                    <div class="project-nav-item">후기</div>
                </div>
            </div>
        </nav>
    </div>


    <div class="project-main-container">
        <div class="project-main-box">
            <div class="project-main-layer">

                <div class="project-main-left-layer">
                    <div class="project-main-left-box">

                        <div class="project-main-left-badge-bundle">
                            <ul class="project-main-left-badge-items">
                                <li>
                                    <div id="purpose" class="project-main-left-badge-item introduction-badge current-badge">소개</div>
                                </li>
                                <li>
                                    <div id="budget" class="project-main-left-badge-item">예산</div>
                                </li>
                                <li>
                                    <div id="schedule" class="project-main-left-badge-item">일정</div>
                                </li>
                                <li>
                                    <div id="team-intro" class="project-main-left-badge-item">팀 소개</div>
                                </li>
                                <li>
                                    <div id="gift-intro" class="project-main-left-badge-item">선물 설명</div>
                                </li>
                                <li>
                                    <div class="project-main-left-badge-item">신뢰와 안전</div>
                                </li>
                            </ul>
                        </div>
                        <div class="project-main-left-contents">

                            <div class="project-main-left-content purpose-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker purpose"></div>
                                    프로젝트 소개
                                </div>
                                <div class="project-main-left-content-intro-content">

                                    <p class="spring-arang-intro"></p>
                                    <p>&nbsp;</p>
                                    <p>봄아랑을 사랑해주시는 후원자님들을 위해</p>
                                    <p>텀블벅에서만
                                        <u><strong>최초 </strong><strong>할인 및 무료배송 혜택 </strong></u>
                                        과 함께
                                    </p>
                                    <p>&nbsp;</p>
                                    <p>즐겁고 행복한 추석을 소망하며 연구한</p>
                                    <p>추석 화과자 라인업을 텀블벅에서 첫 공개합니다❤️</p>
                                    <p>&nbsp;</p>
                                    <p class="spring-arang-chusuck"></p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <hr>
                                    <h2>[추석 화과자 혼합 선물세트 15구]</h2>
                                    <p class="hwaguaja-2"></p>
                                    <p>&nbsp;</p>
                                    <p>
                                        쫀득쫀득한 겉 반죽이 특징인 고나시
                                        <strong> 화과자 6종</strong>
                                    </p>
                                    <p>
                                        고급스러운
                                        <strong> 수제 양갱 3종</strong>
                                    </p>
                                    <p>
                                        그리고 매니아층이 많은
                                        <strong> 밤 화과자(쿠리킨톤) 6종을</strong>
                                    </p>
                                    <p>&nbsp;</p>
                                    <p>
                                        다채롭게 만나보실 수 있는 풍성한 선물세트에요👏🏻
                                    </p>
                                    <p>&nbsp;</p>
                                    <p class="hwaguaja-3"></p>
                                    <p>&nbsp;</p>
                                    <p>추석 느낌이 물씬 풍기는 한복 모양부터</p>
                                    <p>맛스럽게 생긴 감과 단풍</p>
                                    <p>가을 하면 빠질 수 없는 잠자리까지</p>
                                    <p>하나하나 너무 예쁘답니다❤️</p>
                                    <p>&nbsp;</p>
                                    <p>이번에 새롭게 선보이는 봄아랑 수제 양갱은</p>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong><u>1. </u>여왕의 과일 무화과 블루베리 투톤 양갱</strong>
                                    </p>
                                    <p>
                                        <strong><u>2. </u>추석 밤하늘의 보름달을 표현한 사과 튤립 양갱</strong>
                                    </p>
                                    <p>
                                        <strong><u>3. </u> 쫀쫀한 적팥 위에 밤, 무화과, 호두가</strong>
                                    </p>
                                    <p>
                                        <strong><u>4. </u> 아낌없이 들어가있는 단풍 양갱까지</strong>
                                    </p>
                                    <p>&nbsp;</p>
                                    <p>예쁘고 맛있는 고급스러운 구성으로</p>
                                    <p>더욱 더 특별한 선물이 되실거에요!!</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>특히 튤립양갱은 밤하늘 같은 사과맛 양갱 안에</p>
                                    <p>은은하게 비치는 노란 보름달을 닮은 앙금의 아름다움이</p>
                                    <p>실물로 보시면 정말 환호성을 자아낸답니다👏🏻</p>
                                    <p>&nbsp;</p>
                                </div>

                            </div>

                            <div class="project-main-left-content budget-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker budget"></div>
                                    프로젝트 예산
                                </div>
                                <div>
                                    <div>목표 금액은 아래의 지출 항목으로 사용할 예정입니다.</div>
                                    <ul>
                                        <li>인건비 50%
                                            <br>
                                            배송비 10%
                                            <br>
                                            재료비 30%
                                            <br>
                                            수수료 10%
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="project-main-left-content schedule-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker schedule"></div>
                                    프로젝트 일정
                                </div>
                                <ul>
                                    <li>7월 26일: 현재 제품 시안 및 1차 샘플 제작</li>
                                    <li>8월 8일: 펀딩 시작일</li>
                                    <li>9월 1일: 펀딩 종료일</li>
                                    <li>9월 3일: 주문건 취합 및 정리</li>
                                    <li>9월 4일: 제품 발주 시작</li>
                                    <li>9월 7일 : 포장재 및 전처리 작업
                                        <div>&nbsp;</div>
                                        9월 8일 : 선물 제작
                                        <br>
                                        9월 9~10일: 선물 발송일
                                    </li>
                                </ul>
                            </div>

                            <div class="project-main-left-content team-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker team-intro"></div>
                                    프로젝트 팀 소개
                                </div>
                                <p>&nbsp;</p>
                                <p>
                                    <strong>안녕하세요 봄아랑입니다🌸</strong>
                                    <br>
                                    <strong>&nbsp; &nbsp;</strong>
                                    <br>
                                    <strong>&nbsp; 봄아랑은 떡케이크 및 화과자, 답례떡, 쌀 휘낭시에</strong>
                                    <br>
                                    <strong>등을 만드는 1:1 주문제작 공방입니다.</strong>
                                </p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p><strong>전 메뉴 글루텐 Free</strong></p>
                                <p><strong>방부제X 젤라틴X 인공향X 사용하지 않으며</strong></p>
                                <p>&nbsp;</p>
                                <p>
                                    <br>
                                    <strong>저당 앙금 사용 및 저당 레시피로 설탕함량을 낮춰</strong>
                                </p>
                                <p><strong>딱 알맞은 당도로 남녀노소 부담없이 드시기 좋습니다.</strong></p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p><strong>선물을 받는 순간부터 드시고 난 뒤 까지</strong></p>
                                <p><strong>행복하고 만족스러울 수 있도록</strong></p>
                                <p><strong>고급스럽고 아름다운 겉모습 뿐만 아니라</strong></p>
                                <p>&nbsp;</p>
                                <p>
                                    <br>
                                    <strong>언제나 최고의 맛을 선사하기 위해</strong>
                                </p>
                                <p><strong>노력하고 연구하는 봄아랑을 찾아주신 모든 분들께</strong></p>
                                <p><strong>항상 행복이 가득하길 바랍니다❤️</strong></p>
                            </div>

                            <div class="project-main-left-content gift-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker gift-intro"></div>
                                    선물 설명
                                </div>
                                <div>
                                    <h2><strong>🌸선물 설명🌸</strong></h2>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong>[추석 화과자 혼합 선물세트 15구]</strong>
                                    </p>
                                    <div>
                                        <p class="hwaguaja-2"></p>
                                    </div>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong>고나시 6구 + 수제양갱 3구 + 쿠리킨톤 6구 + 보자기 포장</strong>
                                    </p>
                                    <p>&nbsp;</p>
                                    <hr>
                                    <p>
                                        <strong>[추석 화과자 혼합 선물세트 9구]</strong>
                                    </p>
                                    <p class="hwaguaja-3"></p>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong>고나시 6구 + 수제양갱 3구 + 보자기 포장</strong>
                                    </p>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong>[추석 밤 화과자 선물세트 10구]</strong>
                                    </p>
                                    <p class="yangeng"></p>
                                    <p>쿠리킨톤 10구 + 보자기 포장</p>
                                    <p>&nbsp;</p>
                                    <hr>
                                    <p>&nbsp;</p>
                                    <h2>[ 선물포장 안내 ]</h2>
                                    <p class="gift-box"></p>
                                    <p>&nbsp;</p>
                                    <p>텀블벅 전용 혜택으로 모든 선물 구성에 포함된</p>
                                    <p>우아한 화이트 컬러의 보자기에</p>
                                    <p>추석 택과 '기쁠 희' 팬던트</p>
                                    <p>그리고 명절 느낌 가득한 색동 리본입니다.</p>
                                    <p>&nbsp;</p>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong>선물 하시는 분과 받아보시는 분들</strong>
                                    </p>
                                    <p>
                                        <strong>모두에게 이번 추석은 기쁘고 즐거운 일만</strong>
                                    </p>
                                    <p>&nbsp;</p>
                                    <p>
                                        <strong>가득하시길 바랍니다❤️</strong>
                                    </p>
                                    <p>&nbsp;</p>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>

                <div class="project-main-right-layer">
                    <div class="project-main-right-box">

                        <div class="project-main-right-creater-intro">

                            <div class="project-main-right-creater-intro-title">창작자 소개</div>
                            <div class="project-main-right-creater-profile-box">
                                <div class="project-main-right-creater-profile-items">
                                    <div class="project-main-right-creater-profile-item white-default-profile"></div>
                                </div>
                                <div class="project-main-right-creater-profile-text">
                                    <div class="project-main-right-creater-name">봄아랑</div>
                                </div>
                            </div>
                            <div class="project-main-right-creater-profile-self-intro-box">
                                국내산 상급 이상의 쌀을 100% 직접 불리고, 빻아 정성스럽고 아름다운 떡케이크와 건강한 디저트를
                                <br>
                                만들어요 :)
                                <br>
                                <br>
                                고급스러운 겉모습에 기대, 그 이상의 선물이 되는 만족감까지
                                <br>
                                <br>
                                선물 하시는 분과 받으시는 분 모두에게 잊지 못할 행복한 경험을 선사해 드립니다!
                            </div>
                            <div class="project-main-right-creater-profile-follow-box">
                                <div class="project-main-right-creater-profile-follow-button">
                                    <button class="project-main-right-creater-profile-follow-button-items">
                                        <div class="project-main-right-creater-profile-follow-button-items-frame">
                                            <div class="project-main-right-creater-profile-follow-button-item black-plus icon-10"></div>
                                            <div class="project-main-right-creater-profile-follow-button-item-text">팔로우</div>
                                        </div>
                                    </button>
                                </div>
                            </div>
                            <div class="">
                                <div></div>
                                <div></div>
                            </div>

                        </div>

                        <div class="project-main-right-funding-package">
                            <div class="project-main-right-funding-package-bundle">

                                <div class="project-main-right-funding-package-bundle-title">선물 선택</div>

                                <div class="project-main-right-funding-package-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    1,000 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                선물 없이 후원하기
                                            </div>
                                        </div>
                                    </section>
                                </div>

                                <div class="project-main-right-funding-package-category-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-current-amount-box">
                                            <div class="project-main-right-funding-package-current-choose-amount">
                                                <div class="black-check icon-10"></div>
                                                21개 선택
                                            </div>
                                            <div class="project-main-right-funding-package-current-have-amount">29개 남음</div>
                                        </div>
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    53,000 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                [9구 1세트] 화과자 6구+수제양갱 3구+보자기포장+추석택+쇼핑백 1개
                                            </div>
                                        </div>
                                        <ul class="project-main-right-funding-package-main-section-ul">
                                            <li class="project-main-right-funding-package-main-section-li">
                                                <div class="list-mark">.</div>
                                                [9구 1세트] 화과자 6구+수제양갱 3구+보자기포장+추석택+쇼핑백 1개+무료배송 (x1)
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="project-main-right-funding-package-category-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-current-amount-box">
                                            <div class="project-main-right-funding-package-current-choose-amount">
                                                <div class="black-check icon-10"></div>
                                                28개 선택
                                            </div>
                                            <div class="project-main-right-funding-package-current-have-amount">12개 남음</div>
                                        </div>
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    68,000 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                [15구 1세트] 화과자 6구+수제양갱 3구+쿠리킨톤6구+보자기+추석택+쇼핑백
                                            </div>
                                        </div>
                                        <ul class="project-main-right-funding-package-main-section-ul">
                                            <li class="project-main-right-funding-package-main-section-li">
                                                <div class="list-mark">.</div>
                                                [15구 1세트] 화과자 6구+수제양갱 3구+쿠리킨톤6구+보자기포장+추석택+쇼핑백+무료배송 (x1)
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="project-main-right-funding-package-category-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-current-amount-box">
                                            <div class="project-main-right-funding-package-current-choose-amount">
                                                <div class="black-check icon-10"></div>
                                                4개 선택
                                            </div>
                                            <div class="project-main-right-funding-package-current-have-amount">10개 남음</div>
                                        </div>
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    96,000 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                [밤 화과자 2세트] (쿠리킨톤 10구+보자기포장+추석택+쇼핑백)*2
                                            </div>
                                        </div>
                                        <ul class="project-main-right-funding-package-main-section-ul">
                                            <li class="project-main-right-funding-package-main-section-li">
                                                <div class="list-mark">.</div>
                                                [밤 화과자 2세트] (쿠리킨톤 10구+보자기포장+추석택+쇼핑백)*2+무료배송 (x1)
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="project-main-right-funding-package-category-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-current-amount-box">
                                            <div class="project-main-right-funding-package-current-choose-amount">
                                                <div class="black-check icon-10"></div>
                                                4개 선택
                                            </div>
                                            <div class="project-main-right-funding-package-current-have-amount">16개 남음</div>
                                        </div>
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    100,700 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                5%할인 [9구 2세트] (화과자 6구+수제양갱 3구+보자기포장+추석택+쇼핑백)*2
                                            </div>
                                        </div>
                                        <ul class="project-main-right-funding-package-main-section-ul">
                                            <li class="project-main-right-funding-package-main-section-li">
                                                <div class="list-mark">.</div>
                                                [9구 2세트] (화과자 6구+수제양갱 3구+보자기포장+추석택+쇼핑백)*2+무료배송 (x1)
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="project-main-right-funding-package-category-box">
                                    <section class="project-main-right-funding-package-section">
                                        <div class="project-main-right-funding-package-current-amount-box">
                                            <div class="project-main-right-funding-package-current-choose-amount">
                                                <div class="black-check icon-10"></div>
                                                9개 선택
                                            </div>
                                            <div class="project-main-right-funding-package-current-have-amount">11개 남음</div>
                                        </div>
                                        <div class="project-main-right-funding-package-main-section-items">
                                            <div class="project-main-right-funding-package-main-section-item-price-box">
                                                <div class="project-main-right-funding-package-main-section-item-price">
                                                    129,200 원
                                                    <div class="black-bold-plus icon-12"></div>
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-item-content-box">
                                                5%할인 [15구 2세트] (화과자 6구+양갱 3구+쿠리킨톤6구+보자기+추석택+쇼핑백)*2
                                            </div>
                                        </div>
                                        <ul class="project-main-right-funding-package-main-section-ul">
                                            <li class="project-main-right-funding-package-main-section-li">
                                                <div class="list-mark">.</div>
                                                [15구2세트](화과자 6구+수제양갱 3구+쿠리킨톤6구+보자기+추석택+쇼핑백)*2+무료배송 (x1)
                                            </li>
                                        </ul>
                                    </section>
                                </div>

                            </div>
                        </div>
                        <div></div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</div>

<%--<jsp:include page="/WEB-INF/views/footer/project_footer.jsp"/>--%>


</body>
</html>



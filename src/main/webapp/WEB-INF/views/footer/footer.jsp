<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css" />
    <link href="${path}/resources/footer/style.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%--    <script src="${path}/resources/footer/footer.js"></script>--%>
</head>
<body>

<div class="footer">

    <div class="footer-menu-bundle">

        <div class="footer-menu-frame">
            <div class="footer-menu-box">

                <div class="footer-menu-items tumblbug-menu">
                    <div class="footer-menu-item">텀블벅</div>
                    <div class="footer-menu-text">공지사항</div>
                    <div class="footer-menu-text">서비스 소개</div>
                    <div class="footer-menu-text">채용</div>
                    <div class="footer-menu-text">2023 텀블벅 결산</div>
                    <div class="footer-menu-text">텀블벅 광고센터</div>
                </div>

                <div class="footer-menu-items guide-menu">
                    <div class="footer-menu-item">이용안내</div>
                    <div class="footer-menu-text">헬프 센터</div>
                    <div class="footer-menu-text">첫 후원 가이드</div>
                    <div class="footer-menu-text">창작자 가이드</div>
                    <div class="footer-menu-text">수수료 안내</div>
                    <div class="footer-menu-text">제휴.협력</div>
                </div>

                <div class="footer-menu-items policy-menu">
                    <div class="footer-menu-item">정책</div>
                    <div class="footer-menu-text">이용약관</div>
                    <div class="footer-menu-text">개인정보처리방침</div>
                    <div class="footer-menu-text">프로젝트 심사 기준</div>
                </div>

            </div>

            <div class="footer-app-box">
                <div class="footer-menu-item">APP</div>
                <div class="android-button color-button">
                    <div class="android-button-item google-play icon-12"></div>
                    <div class="android-button-item">안드로이드</div>
                </div>

                <div class="ios-button color-button">
                    <div class="ios-button-item apple icon-14"></div>
                    <div class="ios-button-item">ios</div>
                </div>
            </div>

        </div>
        <div class="footer-consulting-box">
            <div class="footer-menu-item">고객지원</div>
            <div class="footer-consulting-time">평일 9:30 ~ 17:00 (12:00 ~14:00 제외)</div>
            <div class="footer-consulting-button">텀블벅에 문의</div>
        </div>

    </div>

    <div class="footer-link-bundle">

        <div class="footer-link-text-box">
            <div class="footer-link-text-items">회사명 (주) 백패커</div>
            <div class="footer-link-text-items">주소 서울특별시 서초구 서초대로 398, 20층(서초동, BNK디지털타워)</div>
            <div class="footer-link-text-items">대표 김동환</div>
            <div class="footer-link-text-items">사업자등록번호 107-87-83297</div>
            <div class="footer-link-text-items">통신판매업 신고번호 2023-서울서초-2114호</div>
            <div class="footer-link-text-items">대표번호 02-6080-0760</div>
            <div class="footer-link-text-items">메일주소 support_tumblbug@backpac.kr</div>
            <div class="footer-link-text-items">© 2024 Backpackr Inc.</div>
        </div>

        <div class="footer-link-box">

            <div class="circle-div">
                <div class="black-speech-bubble icon-16"></div>
            </div>

            <div class="circle-div">
                <div class="facebook icon-16"></div>
            </div>

            <div class="circle-div">
                <div class="twitter-black-shape icon-16"></div>
            </div>

            <div class="circle-div">
                <div class="instagram icon-16"></div>
            </div>

            <div class="circle-div">
                <div class="square-n icon-16"></div>
            </div>

        </div>

    </div>

    <div class="footer-explan-bundle">
    </div>

</div>


</body>
</html>

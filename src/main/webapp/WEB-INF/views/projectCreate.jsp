<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>[ 프로젝트 생성 ]- Ezenblbug</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png" type="image/png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="${path}/resources/projectCreate/projectCreate.css" rel="stylesheet"
          type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <%-- screen Item 움직여주는 코드 --%>
    <script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <!-- Quill CSS -->
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <!-- Quill JS -->
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Moment.js -->
    <script src="https://cdn.jsdelivr.net/npm/moment@2.29.1/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/moment@2.29.1/locale/ko.js"></script>

    <!-- Date Range Picker -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker@3.1/daterangepicker.css"/>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker@3.1/daterangepicker.min.js"></script>


    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
</head>
<script>
        let realPath = "${path}"
</script>
<body>
<div id="project-create-page">

    <div class="preview-wrapper">
        <div class="preview-box">
            <svg viewBox="0 0 48 48" onclick="window.location.href= realPath +'/project/upload'">
                <path fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M43.7014 21.7189L10.1221 21.7189L25.2128 7.06878C26.1112 6.15946 26.2122 4.64393 25.3127 3.73461C24.4133 2.82529 22.9142 2.72425 22.0148 3.63357L2.72663 22.4262C1.82719 23.3355 1.72725 24.75 2.62669 25.7604H2.72663L22.0148 44.4519C22.9142 45.2602 24.4133 45.1592 25.2128 44.2499C26.0123 43.3405 26.0123 41.926 25.1119 41.0167L10.0221 26.4676L43.7014 26.4676C45.0006 26.4676 46 25.4572 46 24.1438C46 22.8303 45.0006 21.7189 43.7014 21.7189Z"></path>
            </svg>
            <div class="preview-button-box">
                <div class="project-create-save-button disable" onclick="allCounter();">
                </div>
                <input id="project-id" type="hidden" value="${projectVO.getProjectId()}">
            </div>
        </div>
    </div>
    <div class="header-title">
        <div class="header-title-text">프로젝트 기획</div>
    </div>
    <div class="header-menu-wrapper">
        <div class="header-menu-box">
            <div class="header-menu rate select">
                <div>요금제 선택</div>
                <div class="input-alarm-count">0</div>
            </div>
            <div class="header-menu info">
                <div>기본정보</div>
                <div class="input-alarm-count">2</div>
            </div>
            <div class="header-menu funding">
                <div>펀딩 계획</div>
                <div class="input-alarm-count">3</div>
            </div>
            <div class="header-menu gift">
                <div>선물 구성</div>
                <div class="input-alarm-count">4</div>
            </div>
            <div class="header-menu plan">
                <div>프로젝트 계획</div>
                <div class="input-alarm-count">5</div>
            </div>
            <div class="header-menu creator">
                <div>창작자 정보</div>
                <div class="input-alarm-count">6</div>
            </div>
            <div class="header-menu trust">
                <div>신뢰와 안전</div>
                <div class="input-alarm-count">7</div>
            </div>
        </div>
    </div>

    <div class="create-container rate-container">
        <div class="rate-wrapper">
            <div class="rate-explain-box">
                <div class="rate-explain-title">요금제
                    <svg viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="rate-explain-info">
                    프로젝트 진행 목적에 적합한 요금제를 선택해 주세요.<br>
                    프로젝트가 승인된 이후에는 요금제를 변경할 수 없으니<br>
                    신중히 선택해주세요.
                </div>
                <div class="rate-explain-img-box">
                    <div class="ratePlan-Advertisement">
                        <img class="ratePlan-Advertisement-img" alt="" src="https://d1ohqa58xvigdz.cloudfront.net/service-plan/img-long-banner-content.png"
                             class="PricingPageLinkBanner__DesktopImg-z8he32-2 gbOziH">
                    </div>
                    <div class="ratePlan-Experience">
                        <img alt="월간 클럽 펀딩 자세히 보기" src="https://static.tumblbug.com/static/banners/banner-monthly-funding-club.png"
                             class="ExternalLinkBanner__BannerImage-sc-1iu7qxf-1 jZLgaq">
                    </div>
                </div>
            </div>
            <div class="rate-select-box">
                <!-- Basic 수수료 결제 박스 -->
                <div class="basic-PlatformFee rate-item select ">
                    <div class="basic-PlatformFee-Box">
                        <div class="basic-PlatformFee-Box-Left">
                            <div class="basic-PlatformFee-Name">Basic</div>
                            <div class="basic-PlatformFee-Charge">플랫폼 수수료<span>5%</span></div>
                            <div class="basic-PlatformFee-Payment">+ 결제 수수료 3%</div>
                            <div class="basic-PlatformFee-Complete">
                                <div class="rate-select-button select">
                                    <div>
                                        <svg class="rate-select-button-svg select" viewBox="0 0 12 9" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12 0.988498L4.94669 8.66667L0 3.21373L1.13951 2.23213L4.95382 6.43681L10.8668 0L12 0.988498Z" fill="#3D3D3D"></path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="basic-PlatformFee-box-right">
                            <div class="basic-PlatformFee-Info-Skill">✍️ 텀블벅 펀딩의 <span>기본 기능</span>으로<br> 나만의 프로젝트를 실현하세요</div>
                            <div class="basic-PlatformFee-Info-Check">
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        프로젝트 펀딩
                                    </div>
                                </div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        프로젝트 응원권 발급
                                    </div>
                                </div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        데이터 분석 대시보드 Basic
                                    </div>
                                </div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        물류·제작 파트너 연결
                                    </div>
                                </div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        후원자 1:1 메시지
                                    </div>
                                </div>
                            </div>
                            <div class="advertising-Products">
                                <div>📣</div>
                                <div class="advertising-Products-Name">광고<br>상품</div>
                                <div>
                                    <div class="advertising-Products-Line">
                                        <div class="advertising-Products-Line-color"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="advertising-Type">
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">SNS 광고 대행</div>
                                </div>
                                <div class="advertising-charge">
                                    <div>
                                        <li>광고 대행 수수료 15% (최소 100만원 예산 필요)</li>
                                    </div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">CRM 타겟 광고</div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">디스플레이 광고</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pro 수수료 결제 박스 -->
                <div class="pro-PlatformFee rate-item">
                    <div class="basic-PlatformFee-Box">
                        <div class="basic-PlatformFee-Box-Left">
                            <div class="platformFee-Name">Pro</div>
                            <div class="basic-PlatformFee-Charge">플랫폼 수수료<span>9%</span></div>
                            <div class="basic-PlatformFee-Payment">+ 결제 수수료 3%</div>
                            <div class="platformFee-NonComplete">
                                <div class="rate-select-button">
                                    <div>
                                        <svg class="rate-select-button-svg " viewBox="0 0 12 9" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12 0.988498L4.94669 8.66667L0 3.21373L1.13951 2.23213L4.95382 6.43681L10.8668 0L12 0.988498Z" fill="#3D3D3D"></path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="basic-PlatformFee-box-right">
                            <div class="basic-PlatformFee-Info-Skill">🎉 <span>공개예정</span>을 통해 펀딩 초반<br> 후원액을 부스트업 하세요</div>
                            <div class="basic-PlatformFee-Info-Check">
                                <div class="basic-service">Basic의 모든 서비스 +</div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        공개예정 기능
                                    </div>
                                </div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Svgwidth">
                                        <svg viewBox="0 0 48 48">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                        </svg>
                                    </div>
                                    <div class="check-Punding-Name">
                                        데이터 분석 대시보드 Pro
                                    </div>
                                </div>
                            </div>
                            <div class="advertising-Products">
                                <div>📣</div>
                                <div class="advertising-Products-Name">광고<br>상품</div>
                                <div>
                                    <div class="advertising-Products-Line">
                                        <div class="advertising-Products-Line-color"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="advertising-Type">
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">SNS 광고 대행</div>
                                </div>
                                <div class="advertising-charge">
                                    <div>
                                        <li>광고 대행 수수료 15% (최소 100만원 예산 필요)</li>
                                        <li>최소 50만원 공개예정 테스트 광고 가능</li>
                                    </div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">CRM 타겟 광고</div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">디스플레이 광고</div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">체험단 기획전 참여시 홍보</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Premium 수수료 결제 박스 -->
                <div class="premium-PlatformFee rate-item">
                    <div class="basic-PlatformFee-Box">
                        <div class="basic-PlatformFee-Box-Left">
                            <div class="paltformFee-Audit">
                                <div class="paltformFee-Audit-position">
                                    심사 필요
                                </div>
                            </div>
                            <div class="platformFee-Name">Premium</div>
                            <div class="basic-PlatformFee-Charge">플랫폼 수수료<span>15%</span></div>
                            <div class="basic-PlatformFee-Payment">+ 결제 수수료 3%</div>
                            <div class="platformFee-NonComplete">
                                <div class="rate-select-button">
                                    <div>
                                        <svg class="rate-select-button-svg" viewBox="0 0 12 9" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12 0.988498L4.94669 8.66667L0 3.21373L1.13951 2.23213L4.95382 6.43681L10.8668 0L12 0.988498Z" fill="#3D3D3D"></path>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="basic-PlatformFee-box-right">
                            <div class="basic-PlatformFee-Info-Skill">💪 <span>텀블벅 통합 마케팅으로</span><br> 최고의 성과를 달성하세요</div>
                            <div class="basic-PlatformFee-Info-Check">
                                <div class="basic-service">Pro의 모든 서비스 +</div>
                                <div class="check-Punding">
                                    <div class="check-Punding-Name">
                                        📈텀블벅 통합 마케팅 서비스 제공
                                    </div>
                                </div>
                                <div class="advertising-charge">
                                    <div>
                                        <li>프로젝트 특성에 맞춘 텀블벅 채널 및 구좌 홍보 제공 <br>&ensp;&ensp;&ensp;(아래 상품 일부 포함)</li>
                                        <li>상세페이지 피드백 1회 제공</li>
                                    </div>
                                </div>
                            </div>
                            <div class="check-Punding">
                                <div class="check-Punding-Name">
                                    🎯페이스북 맞춤 자산 제공
                                </div>
                            </div>
                            <div class="advertising-charge">
                                <div>
                                    <li>별도 신청 필요</li>
                                </div>
                            </div>
                            <div class="advertising-Products">
                                <div>📣</div>
                                <div class="advertising-Products-Name">광고<br>상품</div>
                                <div>
                                    <div class="advertising-Products-Line">
                                        <div class="advertising-Products-Line-color"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="advertising-Type">
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">SNS 광고 대행</div>
                                </div>
                                <div class="advertising-charge">
                                    <div>
                                        <li>광고 대행 수수료 15% (최소 100만원 예산 필요)</li>
                                        <li>최소 50만원 공개예정 테스트 광고 가능</li>
                                        <li>후원액 규모에 따라 광고 대행 창작자 예산 매칭 서비<br>&emsp;&nbsp;&nbsp;스</li>
                                    </div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">CRM 타겟 광고</div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">디스플레이 광고</div>
                                </div>
                                <div class="advertising-Type-Agency">
                                    <div class="advertising-Type-Agency-position">
                                        <svg width="14" height="14" viewBox="0 0 13 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M12.375 1.77084L5.44204 9.875L0 4.68038L1.34434 3.26653L5.29911 7.0415L10.8952 0.5L12.375 1.77084Z" fill="#F86453"></path>
                                        </svg>
                                    </div>
                                    <div class="advertising-Type-Agency-Name">체험단 기획전 참여시 홍보</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="PlatformFee-Explanation">
                    <p>* 플랫폼 수수료와 결제 수수료는 모두
                        <strong>VAT 별도</strong>
                        입니다.
                        <br>
                        * 프로젝트가 승인된 후에는 요금제를 변경하실 수 없습니다.
                        <br>
                        * 각 광고 상품은 별도 신청이 필요하며, 광고 집행 비용이 별도로 부과됩니다.
                    </p>
                </div>
            </div>
        </div>
    </div>


    <div class="create-container info-container">

        <!-- 프로젝트 카테고리 -->
        <div class="info-wrapper project-Category">
            <div class="project-Category-left">
                <div class="project-Category-Title">
                    프로젝트 카테고리
                    <svg viewBox="0 0 48 48">
                        <path
                                d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="project-Category-Explanation">
                    프로젝트 성격과 가장 일치하는 카테고리를<br>
                    선택해주세요. 적합하지 않을 경우 운영자에<br>
                    의해 조정될 수 있습니다.
                </div>
            </div>
            <div class="project-Category-right">
                <div class="project-Category-Position">
                    <div class="project-Category-Subtitle category">카테고리</div>
                    <div class="project-Category-subSelect-Box">
                        <input class="project-Category-subSelect category" readonly type="text" placeholder="카테고리" value="${projectVO.getCategory()}">
                        <div class="svg-Arrow-width">
                            <svg viewBox="0 0 48 48">
                                <path fill-rule="evenodd"
                                      clip-rule="evenodd"
                                      d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"></path>
                            </svg>
                        </div>
                        <div class="category-option-box">
                            <div class="category-option-item board-games-trpg">보드게임 · TRPG</div>
                            <div class="category-option-item webtoons-comics">웹툰 · 만화</div>
                            <div class="category-option-item webtoon-resources">웹툰 리소스</div>
                            <div class="category-option-item design-stationery">디자인 문구</div>
                            <div class="category-option-item character-merchandise">캐릭터 · 굿즈</div>
                            <div class="category-option-item home-living">홈 · 리빙</div>
                            <div class="category-option-item tech-electronics">테크 · 가전</div>
                            <div class="category-option-item pets">반려동물</div>
                            <div class="category-option-item food">푸드</div>
                            <div class="category-option-item perfume">향수</div>
                            <div class="category-option-item clothing">의류</div>
                            <div class="category-option-item accessories">잡화</div>
                            <div class="category-option-item jewelry">주얼리</div>
                            <div class="category-option-item publishing">출판</div>
                            <div class="category-option-item design">디자인</div>
                            <div class="category-option-item art">예술</div>
                            <div class="category-option-item photography">사진</div>
                            <div class="category-option-item music">음악</div>
                            <div class="category-option-item film">영화</div>
                            <div class="category-option-item performances">공연</div>
                        </div>
                    </div>
                </div>
                <div class="project-Category-Position">
                    <div class="project-Category-Subtitle category-detail">세부 카테고리</div>
                    <div class="project-Category-detail-subSelect-Box">
                        <input class="project-Category-subSelect category-detail" readonly type="text" placeholder="상세 카테고리" value="${projectVO.getCategoryDetail()}">
                        <div class="svg-Arrow-width">
                            <svg viewBox="0 0 48 48">
                                <path fill-rule="evenodd"
                                      clip-rule="evenodd"
                                      d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"></path>
                            </svg>
                        </div>
                        <div class="category-detail-option-box">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 프로젝트 제목  -->
        <div class="info-wrapper project-Title">
            <div class="project-Category-left">
                <div class="project-Category-Title">
                    프로젝트 제목
                    <svg viewBox="0 0 48 48">
                        <path
                                d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="project-Category-Explanation">
                    프로젝트의 주제, 창작물의 품목이 명확하게 드러나는 멋<br>진 제목을 붙여주세요.
                </div>
            </div>
            <div class="project-Title-Right">
                <div class="project-Title-Box">
                    <div class="project-Title-Box-Cursor">
                        긴 제목
                        <div class="project-Title-SvgPosition">
                            <svg viewBox="0 0 48 48">
                                <path
                                        d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                <path
                                        d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="project-Long-Title-Info">
                        <div class="project-Long-Title-Question">
                            긴 제목은<br> 어디에 쓰이나요?
                        </div>
                        <img class="long-title-img" alt="long-title"
                             src="https://static.tumblbug.com/wpa/6fba6805d11c8a7afd0fa62e3bbdadd9.png">
                        <div class="info-exit-box">
                            <svg class="info-exit-svg" width="20" height="20"
                                 viewBox="0 0 20 20" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path
                                        fill-rule="evenodd" clip-rule="evenodd"
                                        d="M10.064 7.8927L2.13314 0L0.0311185 2.09192L7.96193 9.98462L0 17.9083L2.10202 20.0002L10.064 12.0765L17.8983 19.8732L20.0003 17.7813L12.166 9.98462L19.9692 2.21889L17.8672 0.126967L10.064 7.8927Z"
                                        fill="#3D3D3D"></path>
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="project-long-subject-input-box">
                    <div class="input-one-box">
                        <div class="input-one-padding">
                            <input type="text" class="input-one long-title" placeholder="긴 제목을 입력해주세요" value="${projectVO.getProjectTitle()}">
                        </div>
                        <div class="input-one-information">
                            <div class="input-one-message"></div>
                            <div class="input-one-count-box">
                                <div class="charCount">0/</div>
                                <div class="charMax">23</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="project-Title-Box">
                    <div class="project-Title-Box-Cursor">
                        짧은 제목
                        <div class="project-Title-SvgPosition">
                            <svg viewBox="0 0 48 48">
                                <path
                                        d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                <path
                                        d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="project-Long-Title-Info">
                        <div class="project-Long-Title-Question">
                            짧은 제목은<br> 어디에 쓰이나요?
                        </div>
                        <img alt="short-title"
                             src="https://static.tumblbug.com/wpa/f73a1d2501848eb0a80c419212711819.png">
                        <div class="info-exit-box">
                            <svg class="info-exit-svg" width="20" height="20"
                                 viewBox="0 0 20 20" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path
                                        fill-rule="evenodd" clip-rule="evenodd"
                                        d="M10.064 7.8927L2.13314 0L0.0311185 2.09192L7.96193 9.98462L0 17.9083L2.10202 20.0002L10.064 12.0765L17.8983 19.8732L20.0003 17.7813L12.166 9.98462L19.9692 2.21889L17.8672 0.126967L10.064 7.8927Z"
                                        fill="#3D3D3D"></path>
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="project-short-subject-input-box">
                    <div class="input-one-box">
                        <div class="input-one-padding">
                            <input type="text" id="short-title-input" class="input-one short-title" placeholder="짧은 제목을 입력해주세요" value="${projectVO.getProjectShortTitle()}">
                        </div>
                        <div class="input-one-information">
                            <div class="input-one-message"></div>
                            <div class="input-one-count-box">
                                <div class="charCount">0/</div>
                                <div class="charMax">7</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 프로젝트 요약 -->
        <div class="info-wrapper info-summation">
            <div class="project-Category-left">
                <div class="project-Category-Title">
                    프로젝트 요약
                    <svg viewBox="0 0 48 48">
                        <path
                                d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="project-Category-Explanation">
                    프로젝트의 주제, 창작물의 품목이 명확하게 드러나는 멋<br>진 제목을 붙여주세요.
                </div>
            </div>
            <div class="info-summary-content">
                <div class="info-question-mark-width">
                    <div class="info-question-mark">
                        <svg viewBox="0 0 48 48">
                            <path
                                    d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                            <path
                                    d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                        </svg>
                    </div>
                </div>
                <div class="project-summary-input-box">
                    <div class="input-one-box">
                        <div class="input-one-padding">
                            <textarea type="text" class="input-one project-summary" placeholder="프로젝트의 간단한 요약 부탁드립니다.">${projectVO.getProjectSummary()}</textarea>
                        </div>
                        <div class="input-one-information">
                            <div class="input-one-message"></div>
                            <div class="input-one-count-box">
                                <div class="charCount">0/</div>
                                <div class="charMax">300</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 프로젝트 대표 이미지 올리기 -->
        <div class="info-wrapper info-representative-image">
            <div class="info-representative-image-box">
                <div class="info-representative-image-item">
                    <div class="info-subject">
                        <div class="info-subject-content">
                            프로젝트 대표 이미지
                            <svg class="info-svg-star" viewBox="0 0 48 48">
                                <path
                                        d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="info-content">
                        후원자들이 프로젝트의 내용을 쉽게 파악하고 좋은 인상<br>을 받을 수 있도록 이미지 가이드라인을 따라
                        주세요.
                    </div>
                    <div class="info-details-back">
                        <svg class="info-details-svg" viewBox="0 0 48 48">
                            <path
                                    d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                            <path
                                    d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                        </svg>
                        <div class="info-details-red">
                            1개 이상의 이미지를 등록하면 이미지 슬라이더 형태<br>로 제공됩니다.
                        </div>
                        <div class="info-details-black">
                            푸시 메시지 등 이미지가 1개만 제공되는 상황에서 대<br>표 이미지가 활용됩니다.
                        </div>
                    </div>
                </div>
                <div class="info-image-upload-box">

                    <!-- tooltip 이미지 들어가야하는 구간 -->
                    <div class="project-Title-Box">
                        <div class="project-Title-Box-Cursor">
                            <div class="project-Title-SvgPosition">
                                <svg viewBox="0 0 48 48">
                                    <path
                                            d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path
                                            d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="project-Long-Title-Info">
                            <img class="info-representative-image-upload" alt="long-title"
                                 src="https://static.tumblbug.com/wpa/ad06fa936e446e674bb438b552afce76.png">
                            <div class="info-exit-box">
                                <svg class="info-exit-svg" width="20" height="20"
                                     viewBox="0 0 20 20" fill="none"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path
                                            fill-rule="evenodd" clip-rule="evenodd"
                                            d="M10.064 7.8927L2.13314 0L0.0311185 2.09192L7.96193 9.98462L0 17.9083L2.10202 20.0002L10.064 12.0765L17.8983 19.8732L20.0003 17.7813L12.166 9.98462L19.9692 2.21889L17.8672 0.126967L10.064 7.8927Z"
                                            fill="#3D3D3D"></path>
                                </svg>
                            </div>
                        </div>
                    </div>

                    <div class="info-sequence-change">
                        <div class="info-image-uploader-change">
                            <svg viewBox="0 0 48 48">
                                <path
                                        d="M8 8.1C8 8.04477 8.04477 8 8.1 8H39.9C39.9552 8 40 8.04477 40 8.1V11.9C40 11.9552 39.9552 12 39.9 12H8.1C8.04477 12 8 11.9552 8 11.9V8.1Z"></path>
                                <path
                                        d="M8 19.1C8 19.0448 8.04477 19 8.1 19H23.9C23.9552 19 24 19.0448 24 19.1V22.9C24 22.9552 23.9552 23 23.9 23H8.1C8.04477 23 8 22.9552 8 22.9V19.1Z"></path>
                                <path
                                        d="M8 29.1C8 29.0448 8.04477 29 8.1 29H19.9C19.9552 29 20 29.0448 20 29.1V32.9C20 32.9552 19.9552 33 19.9 33H8.1C8.04477 33 8 32.9552 8 32.9V29.1Z"></path>
                                <path
                                        d="M34.3222 42.1445C34.3213 42.1454 34.3198 42.1454 34.3189 42.1445C34.3191 42.1446 34.3187 42.1443 34.3189 42.1445C34.3187 42.1445 34.3179 42.144 34.3178 42.144C34.3141 42.1443 34.3102 42.1469 34.3076 42.1443L24.073 31.8987C24.034 31.8596 24.034 31.7963 24.073 31.7573L26.7601 29.0702C26.7991 29.0312 26.8624 29.0312 26.9015 29.0702L32.3013 34.4701V18.0974C32.3013 18.0422 32.3461 17.9974 32.4013 17.9974H36.2013C36.2566 17.9974 36.3013 18.0422 36.3013 18.0974V34.5046L41.6213 29.1846C41.6604 29.1456 41.7237 29.1456 41.7628 29.1846L44.4498 31.8716C44.4888 31.9107 44.4888 31.974 44.4498 32.0131L34.3222 42.1445Z"></path>
                            </svg>
                        </div>
                        <div class="info-arrow-back">
                            <div class="info-up-arrow">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd"
                                          clip-rule="evenodd" d="M24 11L2 38H46.001L24 11Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="info-arrow-back">
                            <div class="info-up-arrow">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd"
                                          clip-rule="evenodd" d="M2 10L24 37L46 10H2Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="info-sequence-name">를 이용하여 순서를 변경하세요.</div>
                        <div class="info-exit">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path
                                        fill-rule="evenodd" clip-rule="evenodd"
                                        d="M10.064 7.8927L2.13314 0L0.0311185 2.09192L7.96193 9.98462L0 17.9083L2.10202 20.0002L10.064 12.0765L17.8983 19.8732L20.0003 17.7813L12.166 9.98462L19.9692 2.21889L17.8672 0.126967L10.064 7.8927Z"
                                        fill="#3D3D3D"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="info-upload-select">
                        <div class="info-upload-count">
                            <div class="info-upload-image">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd"
                                          clip-rule="evenodd"
                                          d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path>
                                </svg>
                            </div>
                            <div class="info-image-upload-color">이미지 업로드</div>
                            <div class="info-image-upload-color"></div>
                        </div>
                        <div class="info-image-upload-explanation">최소 1개, 최대 5개까지
                            업로드 가능
                        </div>
                        <div class="info-image-upload-explanation">
                            파일 형식: jpg 또는 png / 용량: 5MB 이하 / 사이즈: 가로 세로 각각 1,000px 이상<span>가로
                       세로 비율 1:1</span>
                        </div>
                        <div class="info-image-upload-explanation-red">※ 이미지를 등록하면
                            즉시 반영됩니다.
                        </div>
                    </div>
                    <input id="project-thumbnail-input" type="file" accept="image/*" multiple style="display: none;">
                    <div id="info-thumbnail-screen-box">
                        <%--자바스크립트에서 들어가는 구간--%>
                        <c:forEach var="thumbnailVO" items="${projectVO.getThumbnailVOList()}">
                            <div class="info-thumbnail-screen-item" draggable="true" onclick="moveScreenItem()">
                                <div class="info-thumbnail-move-btn-box">
                                    <svg viewBox="0 0 48 48">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M24 11L2 38H46.001L24 11Z"></path>
                                    </svg>
                                    <div class="screen-item-count">${thumbnailVO.getSequence()}</div>
                                    <svg viewBox="0 0 48 48">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M2 10L24 37L46 10H2Z"></path>
                                    </svg>
                                </div>
                                <div class="info-thumbnail-content">
                                    <div class="info-thumbnail-img" style="background-image: url('${thumbnailVO.getPath()}')"></div>
                                    <div class="info-thumbnail-edit-button-box">
                                        <div class="info-thumbnail-change-button">
                                            <svg viewBox="0 0 48 48">
                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                      d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path>
                                            </svg>
                                        </div>
                                        <div class="info-thumbnail-delete-button">
                                            <svg width="1rem" height="1rem" fill="rgb(248, 100, 83);" viewBox="0 0 48 48">
                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                      d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path>
                                            </svg>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <!-- 프로젝트 검색 태그 -->
        <div class="info-wrapper info-search-tag">
            <div class="info-explain-box">
                <div class="info-explain-title">
                    검색 태그
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="info-explain-info">
                    잠재 후원자의 관심사를 고려한 검색 태그를<br>
                    입력해주세요. 외부 검색엔진이나 텀블벅에서 해당 태그로<br>
                    검색한 후원자가 프로젝트를 발견할 수 있습니다.
                </div>
                <div class="info-warning-box">
                    <div class="info-warning-title">
                        <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                            <path d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                            <path d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                        </svg>
                        무관한 태그는 후원자의 불편을 초래합니다!
                    </div>
                    <div class="info-warning-list">
                        반드시 프로젝트에 관련된 태그만 사용해 주세요.<br>
                        프로젝트와 무관한 태그 설정으로 후원자 신고가<br>
                        누적될 시 프로젝트에 제재가 가해질 수 있습니다.
                    </div>
                </div>
            </div>
            <div class="info-search-tag-input-box">
                <div class="input-search-tag-box">
                    <div class="input-search-tag-padding">
                        <input type="text" class="input-search-tag" placeholder="Enter를 눌러 핵심 키워드를 등록해주세요.">
                    </div>
                    <div class="input-search-tag-information">
                        <div class="input-search-tag-message"></div>
                        <div class="input-search-tag-count-box">
                            <div class="search-tag-count">0</div>
                            <div class="count-max">/10</div>
                        </div>
                    </div>
                </div>
                <div class="info-search-tag-badge-box">
                    <%-- 자바스크립트에서 넣어줄 구간 --%>
                    <c:forEach var="tagItem" items="${projectVO.getSearchTagVOList()}">
                        <div class="info-search-tag-badge-item">
                                ${tagItem.getTagWord()}
                            <svg class="info-search-tag-badge-delete-button" onclick="deleteSearchTag(this)" width="10" height="10" viewBox="0 0 10 10" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                      d="M4.28544 5.00257L2.01916 2.73642C1.82521 2.54248 1.82974 2.23083 2.01598 2.02765C2.21448 1.81131 2.5294 1.8394 2.72795 2.02108L2.72969 2.02268L4.99738 4.2905L7.26357 2.02431C7.4575 1.83056 7.7691 1.83508 7.97226 2.02115C8.1886 2.21946 8.16077 2.53473 7.97878 2.73311L7.97723 2.73479L5.70945 5.00257L7.97564 7.26876C8.16953 7.46283 8.16504 7.77425 7.97884 7.97756L7.97724 7.9793L7.97557 7.98097C7.78164 8.17472 7.47008 8.17023 7.26691 7.98417L7.26519 7.98259L4.99738 5.71465L2.73129 7.981C2.53725 8.17469 2.22572 8.17025 2.02253 7.98417L2.01908 7.98101L2.01592 7.97756C1.82971 7.77425 1.82526 7.46279 2.01916 7.26872L4.28544 5.00257Z"
                                      fill="#6D6D6D"></path>
                            </svg>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <div class="create-container funding-container">
        <div class="funding-wrapper">
            <div class="funding-explain-box">
                <div class="funding-explain-title">
                    목표 금액
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="funding-explain-info">
                    프로젝트를 완수하기 위해 필요한 금액을 설정해주세요.
                </div>
                <div class="funding-warning-box">
                    <div class="funding-warning-title">
                        <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                            <path d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                            <path d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                        </svg>
                        목표 금액 설정 시 꼭 알아두세요!
                    </div>
                    <div class="funding-warning-list">
                        <p>종료일까지 목표금액을 달성하지<br> 못하면 후원자 결제가 진행되지 않습니다.</p>
                        <p>후원 취소 및 결제 누락을 대비해<br> 10% 이상 초과 달성을 목표로 해주세요.</p>
                        <p>제작비, 선물 배송비, 인건비, 예비 비용 등을<br> 함께 고려해주세요</p>
                    </div>
                </div>
            </div>


            <c:choose>
                <c:when test="${not empty projectVO.getGoalBudget() and projectVO.getGoalBudget() != ''}">
                    <fmt:formatNumber value="${Integer.parseInt(projectVO.goalBudget)}" type="number" pattern="#,###" var="formattedGoalBudget"/>
                </c:when>
                <c:otherwise>
                    <!-- 빈 문자열이나 null인 경우의 처리 -->
                    <fmt:formatNumber value="0" type="number" pattern="#,###" var="formattedGoalBudget"/>
                </c:otherwise>
            </c:choose>

            <div class="funding-goal-amount-box">
                <div class="funding-goal-amount-title">목표금액</div>
                <div class="funding-goal-amount-input-padding">
                    <%-- 포맷된 금액을 변수로 저장 --%>
                    <input class="funding-goal-amount-input" type="text" placeholder="목표 금액을 입력해주세요" value="${formattedGoalBudget}">원
                </div>
                <div class="funding-goal-amount-message"></div>
                <div class="funding-gaol-fee-box">
                    <div class="funding-goal-fee-title-box">
                        <div class="funding-goal-fee-title">
                            목표 금액 달성 시 예상 수령액
                        </div>
                        <div class="funding-goal-fee-title-text">0원</div>
                    </div>
                    <div class="funding-goal-fee-detail-list">
                        <div class="funding-goal-fee-detail-box total">
                            <div class="funding-goal-fee-detail-title total">총 수수료</div>
                            <div class="funding-goal-fee-detail-num total">0원</div>
                        </div>
                        <div class="funding-goal-fee-detail-box agency">
                            <div class="funding-goal-fee-detail-title agency">결제대행 수수료 (총 결제 성공 금액의 3% + VAT)</div>
                            <div class="funding-goal-fee-detail-num agency">0원</div>
                        </div>
                        <div class="funding-goal-fee-detail-box rate">
                            <div class="funding-goal-fee-detail-title rate">Pro 요금제 수수료 (총 결제 성공 금액의 9% + VAT)</div>
                            <div class="funding-goal-fee-detail-num rate">0원</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="funding-wrapper">
            <div class="funding-explain-box">
                <div class="funding-explain-title">
                    펀딩 일정
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="funding-explain-info">
                    설정한 일시가 되면 펀딩이 자동 시작됩니다.<br> 펀딩 시작 전까지 날짜를 변경할 수 있고,<br> 즉시 펀딩을 시작할 수도 있습니다.
                </div>
            </div>
            <div class="funding-schedule-box">
                <div class="funding-schedule-item-box">
                    <div class="funding-schedule-item">
                        <div class="date-range-details">
                            <div class="funding-date-selector-box start">
                                <input style="height: 0; padding: 0; border: none;" name="daterange" id="daterange" placeholder="Select date range"/>
                                <div class="funding-date-selector-title">
                                    시작일
                                </div>
                                <div class="funding-date-selector start">
                                    <svg width="14px" height="14px" viewBox="0 0 48 48">
                                        <path d="M43.5 13.6H4.5V11.8C4.5 10.4 5.6 9.3 7 9.3H41.2C42.6 9.3 43.7 10.4 43.7 11.8L43.5 13.6ZM43.5 41.1C43.5 42.5 42.4 43.6 41 43.6H6.9C5.5 43.6 4.4 42.5 4.4 41.1V16.1H43.5V41.1ZM41.1 6.9H38.6V2H36.1V6.9H11.8V2H9.3V6.9H6.9C4.2 6.9 2 9.1 2 11.8V41.1C2 43.8 4.2 46 6.9 46H41.1C43.8 46 46 43.8 46 41.1V11.8C46 9.1 43.8 6.9 41.1 6.9ZM11.2002 27.7001H14.9002C15.3002 27.7001 15.5002 27.4001 15.5002 27.0991V23.4001C15.5002 23.0001 15.2002 22.8001 14.9002 22.8001H11.2002C10.8002 22.8001 10.6002 23.1001 10.6002 23.4001V27.0001C10.5002 27.4001 10.8002 27.7001 11.2002 27.7001ZM25.9002 27.7001H22.2002C21.8002 27.7001 21.5002 27.4001 21.6002 27.0001V23.4001C21.6002 23.1001 21.8002 22.8001 22.2002 22.8001H25.9002C26.2002 22.8001 26.5002 23.0001 26.5002 23.4001V27.0991C26.5002 27.4001 26.3002 27.7001 25.9002 27.7001ZM33.2002 27.7001H36.9002C37.3002 27.7001 37.5002 27.4001 37.5002 27.0991V23.4001C37.5002 23.0001 37.2002 22.8001 36.9002 22.8001H33.2002C32.8002 22.8001 32.5992 23.1001 32.5992 23.4001V27.0001C32.5002 27.4001 32.8002 27.7001 33.2002 27.7001ZM14.9002 37.4999H11.2002C10.8002 37.4999 10.5002 37.1999 10.6002 36.8999V33.1999C10.6002 32.8999 10.8002 32.5999 11.2002 32.5999H14.9002C15.2002 32.5999 15.5002 32.7999 15.5002 33.1999V36.8999C15.5002 37.1999 15.3002 37.4999 14.9002 37.4999ZM22.2002 37.4999H25.9002C26.3002 37.4999 26.5002 37.1999 26.5002 36.8999V33.1999C26.5002 32.7999 26.2002 32.5999 25.9002 32.5999H22.2002C21.8002 32.5999 21.6002 32.8999 21.6002 33.1999V36.8999C21.5002 37.1999 21.8002 37.4999 22.2002 37.4999ZM36.9002 37.4999H33.2002C32.8002 37.4999 32.5002 37.1999 32.5992 36.8999V33.1999C32.5992 32.8999 32.8002 32.5999 33.2002 32.5999H36.9002C37.2002 32.5999 37.5002 32.7999 37.5002 33.1999V36.8999C37.5002 37.1999 37.3002 37.4999 36.9002 37.4999Z"></path>
                                    </svg>
                                    <input type="text" class="start-date" placeholder="시작 날짜를 선택해주세요" value="${projectVO.getStartTimelineDate()}">
<%--                                    <input type="text" class="start-date" placeholder="시작 날짜를 선택해주세요" value="24/09/21">--%>
                                </div>
                            </div>
                            <div class="funding-date-box">
                                <div class="funding-date-title">펀딩 기간</div>
                                <div id="funding-date-text" class="funding-date-text">최대 60일</div>
                            </div>
                        </div>
                    </div>
                    <div class="funding-schedule-item">

                        <div class="date-range-details">
                            <div class="funding-date-selector-box end">
                                <div class="funding-date-selector-title">
                                    종료일
                                    <svg width="16px" height="16px" fill="#F86453" viewBox="0 0 48 48">
                                        <path d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                                        <path d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                    </svg>
                                </div>
                                <div class="funding-date-selector end">
                                    <svg width="14px" height="14px" viewBox="0 0 48 48">
                                        <path d="M43.5 13.6H4.5V11.8C4.5 10.4 5.6 9.3 7 9.3H41.2C42.6 9.3 43.7 10.4 43.7 11.8L43.5 13.6ZM43.5 41.1C43.5 42.5 42.4 43.6 41 43.6H6.9C5.5 43.6 4.4 42.5 4.4 41.1V16.1H43.5V41.1ZM41.1 6.9H38.6V2H36.1V6.9H11.8V2H9.3V6.9H6.9C4.2 6.9 2 9.1 2 11.8V41.1C2 43.8 4.2 46 6.9 46H41.1C43.8 46 46 43.8 46 41.1V11.8C46 9.1 43.8 6.9 41.1 6.9ZM11.2002 27.7001H14.9002C15.3002 27.7001 15.5002 27.4001 15.5002 27.0991V23.4001C15.5002 23.0001 15.2002 22.8001 14.9002 22.8001H11.2002C10.8002 22.8001 10.6002 23.1001 10.6002 23.4001V27.0001C10.5002 27.4001 10.8002 27.7001 11.2002 27.7001ZM25.9002 27.7001H22.2002C21.8002 27.7001 21.5002 27.4001 21.6002 27.0001V23.4001C21.6002 23.1001 21.8002 22.8001 22.2002 22.8001H25.9002C26.2002 22.8001 26.5002 23.0001 26.5002 23.4001V27.0991C26.5002 27.4001 26.3002 27.7001 25.9002 27.7001ZM33.2002 27.7001H36.9002C37.3002 27.7001 37.5002 27.4001 37.5002 27.0991V23.4001C37.5002 23.0001 37.2002 22.8001 36.9002 22.8001H33.2002C32.8002 22.8001 32.5992 23.1001 32.5992 23.4001V27.0001C32.5002 27.4001 32.8002 27.7001 33.2002 27.7001ZM14.9002 37.4999H11.2002C10.8002 37.4999 10.5002 37.1999 10.6002 36.8999V33.1999C10.6002 32.8999 10.8002 32.5999 11.2002 32.5999H14.9002C15.2002 32.5999 15.5002 32.7999 15.5002 33.1999V36.8999C15.5002 37.1999 15.3002 37.4999 14.9002 37.4999ZM22.2002 37.4999H25.9002C26.3002 37.4999 26.5002 37.1999 26.5002 36.8999V33.1999C26.5002 32.7999 26.2002 32.5999 25.9002 32.5999H22.2002C21.8002 32.5999 21.6002 32.8999 21.6002 33.1999V36.8999C21.5002 37.1999 21.8002 37.4999 22.2002 37.4999ZM36.9002 37.4999H33.2002C32.8002 37.4999 32.5002 37.1999 32.5992 36.8999V33.1999C32.5992 32.8999 32.8002 32.5999 33.2002 32.5999H36.9002C37.2002 32.5999 37.5002 32.7999 37.5002 33.1999V36.8999C37.5002 37.1999 37.3002 37.4999 36.9002 37.4999Z"></path>
                                    </svg>
                                    <input class="end-date" placeholder="종료 날짜를 선택해주세요" value="${projectVO.getTimelineDate()}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="funding-schedule-item">
                        <div class="funding-date-box">
                            <div class="funding-date-title">
                                후원자 결제 종료
                                <svg width="16px" height="16px" fill="#F86453" viewBox="0 0 48 48">
                                    <path d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                                    <path d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                            <div class="funding-date-text">종료일 다음 날부터 7일</div>
                        </div>
                    </div>
                    <div class="funding-schedule-item">
                        <div class="funding-date-box">
                            <div class="funding-date-title">
                                정산일
                                <svg width="16px" height="16px" fill="#F86453" viewBox="0 0 48 48">
                                    <path d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                                    <path d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                            <div class="funding-date-text">후원자 결제 종료 다음 날부터 7영업일</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="create-container plan-container">
        <div class="plan-wrapper">
            <div class="plan-explain-box">
                <div class="plan-explain-title">
                    프로젝트 계획
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="plan-warning-box">
                    <div class="plan-warning-title">
                        <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                            <path d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"></path>
                            <path d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                        </svg>
                        텍스트 에디터 사용법
                    </div>
                    <div class="plan-warning-list">
                        · Enter( )를 누르면 문단이 구분됩니다.<br>
                        문단 내에서 간격 없이 줄바꿈 하려면<br>
                        shift(⇧) + enter(↵) 를 사용해주세요.<br>
                        · ctrl+c/v를 이용해 선택한 이미지를<br>
                        입력창 내에서 복사/붙여넣기 할 수 있습니다.<br>
                        · 본문 텍스트와 이미지는 되도록 분리해서<br>
                        작성해주세요.<br>
                        통 이미지 사용은 불가합니다.
                    </div>
                </div>
            </div>
            <div class="plan-editor-box">
                <!-- 프로젝트 소개 -->
                <div class="projectPlan-right-body-list introduction">
                    <div class="projectPlan-right-body-list-arrow-position">
                        <div>프로젝트 소개</div>
                        <div class="editor-toggle">
                            <div class="projectPlan-right-body-list-chatGPT">
                                <div class="project-plan-message-toggle">
                                    <div class="projectPlan-right-body-list-chatGPT-radius">ChatGPT로 초안 작성</div>
                                    <svg onclick="GPTwriteInfoFn()" width="14px" height="14px" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M6 11C8.76142 11 11 8.76142 11 6C11 3.23858 8.76142 1 6 1C3.23858 1 1 3.23858 1 6C1 8.76142 3.23858 11 6 11ZM6 12C9.31371 12 12 9.31371 12 6C12 2.68629 9.31371 0 6 0C2.68629 0 0 2.68629 0 6C0 9.31371 2.68629 12 6 12Z"
                                              fill="#F86453"></path>
                                        <path d="M6.06887 4.5C6.56802 4.5 6.93624 4.09904 6.93624 3.59171C6.93624 3.09257 6.56802 2.69161 6.06887 2.69161C5.56154 2.69161 5.2015 3.09257 5.2015 3.59171C5.2015 4.09904 5.56154 4.5 6.06887 4.5Z"
                                              fill="#F86453"></path>
                                        <path d="M5.33333 5.33333H6.8V9H5.33333V5.33333Z" fill="#F86453"></path>
                                    </svg>
                                </div>
                                <div class="redInfo-explanation-box">
                                    <div class="redInfo-explanation">
                                        <div class="redInfo-explanation-title">‘ChatGPT로 초안 작성’ 안내</div>
                                        <ul>
                                            <li>작성된 소개글은 OpenAI에서 제공하는 ChatGP<br>T가 작성한 것입니다. 참고용으로만 활용해 주<br>세요.</li>
                                            <li>프로젝트의 목적과 일정, 예산 등은 사실에 기<br>반하여 작성해 주세요. 프로젝트 계획 내용에<br> 대한 책임은 창작자에게 있습니다.</li>
                                            <li>본 서비스는 베타 서비스로, 사전 고지 없이 종<br>료될 수 있습니다.</li>
                                        </ul>
                                    </div>
                                    <svg class="message-tail" width="16" height="12" viewBox="0 0 16 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M8.83205 10.7519C8.43623 11.3457 7.56377 11.3457 7.16795 10.7519L3.48799e-07 -4.35057e-07L16 -2.86102e-06L8.83205 10.7519Z"
                                              fill="white"></path>
                                    </svg>
                                </div>
                            </div>
                            <ion-icon name="chevron-down-outline" class="editor-toggle-arrow"></ion-icon>
                        </div>
                    </div>
                    <div class="editor-container project-introduction">
                        <p>무엇을 만들기 위한 프로젝트인지 분명히 알려주세요.</p>
                        <div id="editor1">${projectVO.getProjectPlanVO().getProjectIntroduction()}</div>
                    </div>
                </div>
                <!-- 프로젝트 예산 -->
                <div class="projectPlan-right-body-list budget">
                    <div class="projectPlan-right-body-list-arrow-position">
                        <div>프로젝트 예산</div>
                        <div class="editor-toggle">
                            <ion-icon name="chevron-down-outline" class="editor-toggle-arrow"></ion-icon>
                        </div>
                    </div>
                    <div class="editor-container project-budget" data-editor="2">
                        <p>펀딩 목표 금액을 제작에 어떻게 사용할 것인지 구체적으로 알려주세요. ‘인건비', ‘배송비’,<br> ‘인쇄비’, ‘대관료’ 등 세부 항목별로 작성해야 합니다.</p>
                        <div id="editor2">${projectVO.getProjectPlanVO().getProjectBudget()}</div>
                    </div>
                </div>

                <!-- 프로젝트 일정 -->
                <div class="projectPlan-right-body-list schedule">
                    <div class="projectPlan-right-body-list-arrow-position">
                        <div>프로젝트 일정</div>
                        <div class="editor-toggle">
                            <ion-icon name="chevron-down-outline" class="editor-toggle-arrow"></ion-icon>
                        </div>
                    </div>
                    <div class="editor-container project-schedule" data-editor="3">
                        <p>작업 일정을 구체적인 날짜와 함께 작성하세요. 후원자가 일정을 보면서 어떤 작업이 진행될<br>지 알 수 있어야 합니다. 펀딩 종료 이후의 제작 일정을 반드시 포함하세요.</p>
                        <div id="editor3">${projectVO.getProjectPlanVO().getProjectSchedule()}</div>
                    </div>
                </div>

                <!-- 프로젝트 팀 소개 -->
                <div class="projectPlan-right-body-list team-introduction">
                    <div class="projectPlan-right-body-list-arrow-position">
                        <div>프로젝트 팀 소개</div>
                        <div class="editor-toggle">
                            <ion-icon name="chevron-down-outline" class="editor-toggle-arrow"></ion-icon>
                        </div>
                    </div>
                    <div class="editor-container team-introduction" data-editor="4">
                        <p>프로젝트를 진행하는 팀(혹은 개인)을 알려주세요. 이 프로젝트를 완수할 수 있다는 점을 후원<br>자가 알 수 있어야 합니다. 이전 프로젝트, 기타 활동 내용, SNS 등을 공개해보세요.</p>
                        <div id="editor4">${projectVO.getProjectPlanVO().getTeamIntroduction()}</div>
                    </div>
                </div>

                <!-- 선물 설명 -->
                <div class="projectPlan-right-body-list gift">
                    <div class="projectPlan-right-body-list-arrow-position">
                        <div>선물 설명</div>
                        <div class="editor-toggle">
                            <ion-icon name="chevron-down-outline" class="editor-toggle-arrow"></ion-icon>
                        </div>
                    </div>
                    <div class="editor-container project-gift" data-editor="5">
                        <p>후원자가 후원 금액별로 받을 수 있는 선물을 상세하게 알려주세요. 표로 정리하거나 예시<br> 이미지를 포함하는 것도 방법입니다.</p>
                        <div id="editor5">${projectVO.getProjectPlanVO().getProjectGiftExplain()}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="create-container gift-container">
        <div class="gift-wrapper-header-box">
            <div class="gift-wrapper-header">
                <div class="gift-header-item package select">
                    <div class="gift-header-icon">
                        <svg viewBox="0 0 48 48">
                            <path d="M6.1 14.9994C6.04477 14.9994 6 15.0442 6 15.0994L6 26.3066C6 26.3618 6.04477 26.4066 6.1 26.4066H9.5V41.8994C9.5 41.9547 9.54477 41.9994 9.6 41.9994H21.9C21.9552 41.9994 22 41.9547 22 41.8994V26.4066L26 26.4066V41.8994C26 41.9547 26.0448 41.9994 26.1 41.9994H38.4C38.4552 41.9994 38.5 41.9547 38.5 41.8994V26.4066H41.9C41.9552 26.4066 42 26.3618 42 26.3066V15.0994C42 15.0442 41.9552 14.9994 41.9 14.9994L6.1 14.9994Z"></path>
                            <path d="M21.9125 11.8069L18.4181 4.11919C18.3907 4.05899 18.3135 4.04145 18.2628 4.08393L12.1476 9.2091C12.0855 9.26112 12.1078 9.3615 12.186 9.38236L21.7957 11.9449C21.8773 11.9667 21.9474 11.8838 21.9125 11.8069Z"></path>
                            <path d="M26.0875 11.8069L29.5819 4.11919C29.6093 4.05899 29.6865 4.04145 29.7372 4.08393L35.8524 9.2091C35.9145 9.26112 35.8922 9.3615 35.814 9.38236L26.2043 11.9449C26.1227 11.9667 26.0526 11.8838 26.0875 11.8069Z"></path>
                        </svg>
                    </div>
                </div>
                <div class="gift-header-item gift">
                    <div class="gift-header-icon">
                        <svg viewBox="0 0 48 48">
                            <rect x="8" y="10" width="5.81818" height="5.81818"></rect>
                            <rect x="8" y="20.6666" width="5.81818" height="5.81818"></rect>
                            <rect x="8" y="31.3334" width="5.81818" height="5.81818"></rect>
                            <rect x="18.668" y="10" width="21.3333" height="5.81818"></rect>
                            <rect x="18.668" y="20.666" width="21.3333" height="5.81818"></rect>
                            <rect x="18.668" y="31.334" width="21.3333" height="5.81818"></rect>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <div class="gift-wrapper-package">
            <div class="package-make-result-box">
                <div class="package-make-result-title">
                    <div class="package-make-result-count">${projectVO.getBackersPackageVOList().size()}</div>
                </div>
                <c:forEach var="packageVO" items="${projectVO.getBackersPackageVOList()}">
                    <div class="package-make-result-card">
                        <input type="hidden" name="package-id" value="${packageVO.getPackageId()}">
                        <div class="package-make-result-card-title">
                            <c:choose>
                                <c:when test="${not empty packageVO.getPackagePrice() and packageVO.getPackagePrice() != ''}">
                                    <fmt:formatNumber value="${packageVO.getPackagePrice()}" type="number" pattern="#,###" var="formattedPackagePrice"/>
                                </c:when>
                                <c:otherwise>
                                    <!-- 빈 문자열이나 null인 경우의 처리 -->
                                    <fmt:formatNumber value="0" type="number" pattern="#,###" var="formattedPackagePrice"/>
                                </c:otherwise>
                            </c:choose>

                            <div class="package-make-result-card-price">${formattedPackagePrice}원+</div>
                            <div class="package-make-result-card-delete">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-make-result-card-name">${packageVO.getPackageTitle()}</div>
                        <c:forEach var="productVO" items="${packageVO.getProductVOList()}">
                            <div class="package-make-result-item-name">· ${productVO.getProductName()} (x${productVO.getProductQuantity()})
                                <input type="hidden" name="product-id" value="${productVO.getProductId()}"></div>
                        </c:forEach>
                        <div class="package-make-result-information-box">
                            <div class="package-make-result-pick-counter">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                </svg>
                            </div>
                            <c:choose>
                                <c:when test="${packageVO.getMaxProductAmount() > 0}">
                                    <div class="package-make-result-stock-counter">${packageVO.getMaxProductAmount()}개 남음</div>
                                </c:when>
                            </c:choose>
                        </div>
                    </div>
                </c:forEach>

            </div>

            <div class="package-custom-box">
                <div class="package-custom-title-box">
                    <div class="package-custom-title">
                        <svg viewBox="0 0 48 48">
                            <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                        </svg>
                    </div>
                    <div class="package-custom-title-text">
                        선물은 후원자에게 프로젝트의 가치를 전달하는 수단입니다.<br>
                        펀딩 성공률이 높아지고, 더 많은 후원 금액을 모금할 수 있어요.<br>
                        다양한 금액대로 여러 개의 선물을 만들어주세요.
                    </div>
                </div>
                <div class="package-custom-item-box package-item">
                    <div class="package-custom-item-top">
                        <div class="package-custom-item-title">
                            <div class="package-custom-item-title-text">선물 아이템 (선택)</div>
                            <div class="package-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-custom-info">선물을 구성하는 아이템을 추가해주세요.</div>
                    </div>
                    <div class="package-custom-gift-item-selector-input-box">
                        <div class="gift-item-selector-box">
                            <div class="gift-item-selector-padding-box">
                                <input class="gift-selector-input" type="text" readonly placeholder="아이템을 선택해주세요">
                                <svg class="rotate-svg" viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"></path>
                                </svg>
                            </div>
                            <div class="gift-item-pick-box">
                                <div class="gift-item-pick-list">
                                    <c:forEach var="productVO" items="${projectVO.getProductVOList()}">
                                        <div class="gift-item-box">
                                            <div class="gift-item-label select">
                                                <div class="gift-item-checkbox">
                                                    <svg viewBox="0 0 48 48">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                                    </svg>
                                                </div>
                                                <div class="gift-item-name">${productVO.getProductName()}
                                                    <input type="hidden" name="product-id" value="${productVO.getProductId()}">
                                                </div>
                                            </div>
                                            <div class="gift-item-use-count">${productVO.getProductExplain()}</div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="gift-item-current-pick-box">
                                    <div class="gift-item-total-pick-count">0</div>
                                    <div class="gift-item-pick-complete-button">선택완료</div>
                                </div>
                            </div>
                            <div class="gift-item-select-card-box">
                                <%-- 자바스크립트에서 들어옴 --%>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="package-custom-item-box gift-name">
                    <div class="package-custom-item-top">
                        <div class="package-custom-item-title">
                            <div class="package-custom-item-title-text">선물 이름</div>
                            <div class="package-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-custom-info">어떤 아이템으로 구성되었는지 쉽게 알 수 있는 선물 이름을 붙여주세요.</div>
                    </div>
                    <div class="gift-name-input-box">
                        <div class="input-one-box">
                            <div class="input-one-padding" style="height: 40px">
                                <input type="text" class="input-one package-name" placeholder="타로카드 A세트 / [얼리버드]향수 + 엽서">
                            </div>
                            <div class="input-one-information">
                                <div class="input-one-message"></div>
                                <div class="input-one-count-box">
                                    <div class="charCount">0/</div>
                                    <div class="charMax">50</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="package-custom-item-box max-quantity-limit">
                    <div class="package-custom-item-top">
                        <div class="package-custom-item-title">
                            <div class="package-custom-item-title-text">수량 제한</div>
                            <div class="package-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-custom-info">선착순으로 선물을 제공하는 경우 총 선물 수량을 설정해주세요.</div>
                    </div>
                    <div class="gift-radio-input-box">
                        <div class="radio-input-box">
                            <div class="radio-item-box yes">
                                <div class="radio-item">
                                    <div class="radio-icon"></div>
                                    <div class="radio-text">있음</div>
                                </div>
                                <div class="radio-count-box">
                                    <input class="radio-count-input max-quantity" type="number" value="1">
                                    <div class="radio-count-unit">개</div>
                                </div>
                            </div>
                            <div class="radio-item-box no">
                                <div class="radio-item">
                                    <div class="radio-icon"></div>
                                    <div class="radio-text">없음</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="package-custom-item-box person-quantity-limit">
                    <div class="package-custom-item-top">
                        <div class="package-custom-item-title">
                            <div class="package-custom-item-title-text">1인당 최대 선택 수량</div>
                            <div class="package-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-custom-info">후원자 1명이 이 선물을 몇 개까지 선택할 수 있는지 설정해주세요.</div>
                    </div>
                    <div class="gift-radio-input-box">
                        <div class="radio-input-box">
                            <div class="radio-item-box yes">
                                <div class="radio-item">
                                    <div class="radio-icon"></div>
                                    <div class="radio-text">있음</div>
                                </div>
                                <div class="radio-count-box">
                                    <input class="radio-count-input max-person-quantity" type="number" value="1">
                                    <div class="radio-count-unit">개</div>
                                </div>
                            </div>
                            <div class="radio-item-box no">
                                <div class="radio-item">
                                    <div class="radio-icon"></div>
                                    <div class="radio-text">없음</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="package-custom-item-box gift-price">
                    <div class="package-custom-item-top">
                        <div class="package-custom-item-title">
                            <div class="package-custom-item-title-text">선물 금액</div>
                            <div class="package-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-custom-info">
                            선물 제작 및 전달에 필요한 모든 비용(포장비, 배송비 등)이<br>
                            포함된 금액으로 입력해주세요.
                        </div>
                    </div>
                    <div class="gift-price-input-box">
                        <div class="price-input-box">
                            <div class="price-input-padding">
                                <input type="text" class="price-input gift" placeholder="1000원 이상의 금액을 입력해주세요">
                                <div class="price-input-unit">원</div>
                            </div>
                            <div class="price-input-message">1,000원 이상의 금액을 입력해주세요.</div>
                        </div>
                    </div>
                </div>
                <div class="package-custom-item-save-box">
                    <div class="package-custom-reset">초기화</div>
                    <div class="package-custom-save disable">저장</div>
                </div>
            </div>
        </div>
        <div class="gift-wrapper-gift">
            <div class="gift-make-result-box">
                <div class="gift-make-result-title">
                    <div class="gift-make-result-count">${projectVO.getProductVOList().size()}</div>
                </div>
                <c:forEach var="productVO" items="${projectVO.getProductVOList()}">
                    <div class="gift-make-result-card">
                        <input type="hidden" name="product-id" value="${productVO.getProductId()}">
                        <div class="gift-make-result-card-title">
                            <div class="gift-make-result-card-name">${productVO.getProductName()}</div>
                            <div class="gift-make-result-card-delete">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="gift-make-result-item-name">· ${productVO.getProductExplain()}</div>
                    </div>
                </c:forEach>
            </div>
            <div class="gift-custom-box">
                <div class="gift-custom-title-box">
                    <div class="gift-custom-title">
                        아이템 만들기
                    </div>
                    <div class="gift-custom-title-text">
                        아이템은 선물에 포함되는 구성 품목을 말합니다.<br>
                        특별한 물건부터 의미있는 경험까지 선물을 구성할 아이템을 만들어 보세요.
                    </div>
                </div>
                <div class="gift-custom-item-box gift-name">
                    <div class="gift-custom-item-top">
                        <div class="gift-custom-item-title">
                            <div class="gift-custom-item-title-text">아이템 이름</div>
                            <div class="gift-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="gift-name-input-box">
                        <div class="input-one-box">
                            <div class="input-one-padding" style="height: 40px">
                                <input type="text" class="input-one product-name" placeholder="아이템 이름을 입력해주세요">
                            </div>
                            <div class="input-one-information">
                                <div class="input-one-message"></div>
                                <div class="input-one-count-box">
                                    <div class="charCount">0/</div>
                                    <div class="charMax">15</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gift-custom-item-box gift-explain">
                    <div class="gift-custom-item-top">
                        <div class="gift-custom-item-title">
                            <div class="gift-custom-item-title-text">아이템 설명</div>
                            <div class="gift-custom-item-title-icon">
                                <svg viewBox="0 0 48 48">
                                    <path d="M21 32C21 30.3431 22.3431 29 24 29C25.6569 29 27 30.3431 27 32C27 33.6569 25.6569 35 24 35C22.3431 35 21 33.6569 21 32Z"></path>
                                    <path d="M21.9348 26.9132C21.9415 26.9622 21.9838 27 22.0333 27H26.0227C26.0817 27 26.1276 26.9473 26.1235 26.8885C25.8753 23.3015 30.3992 22.3538 30.3992 18.5189C30.3992 14.6445 26.5708 13 24.4315 13C22.3011 13 19.2378 13 17.224 17.9579C17.2092 17.9945 17.2169 18.0376 17.2444 18.066L19.8 20.704C19.8484 20.7539 19.9321 20.7395 19.9628 20.6771C21.2872 17.9873 22.4684 16.9859 23.8375 16.9859C24.6647 16.9859 25.7817 17.627 25.7817 18.8534C25.7817 21.1235 21.3597 22.6862 21.9348 26.9132Z"></path>
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"></path>
                                </svg>
                            </div>
                        </div>
                    </div>
                    <div class="gift-explain-select-box">
                        <div class="gift-explain-button empty select">없음</div>
                        <div class="gift-explain-button exists">있음</div>
                    </div>
                    <div class="gift-explain-textarea-box">
                        <div class="gift-custom-item-title-text">
                            설명
                        </div>
                        <div class="input-one-box">
                            <div class="input-one-padding">
                                <input type="text" class="input-one product-explain" placeholder="간단한 설명과 주의점을 써주세요">
                            </div>
                            <div class="input-one-information">
                                <div class="input-one-message"></div>
                                <div class="input-one-count-box">
                                    <div class="charCount">0/</div>
                                    <div class="charMax">15</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gift-custom-item-save-box">
                    <div class="gift-custom-reset">초기화</div>
                    <div class="gift-custom-save disable">저장</div>
                </div>
            </div>
        </div>
    </div>

    <%-- 창작자 정보 --%>
    <div class="create-container creator-container">
        <div class="creator-wrapper name">
            <div class="creator-explain-box">
                <div class="creator-explain-title">
                    창작자 이름
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="creator-explain-info">
                    창작자 개인이나 팀을 대표할 수 있는 이름을 써주세요.
                </div>
            </div>
            <div class="creator-name-input">
                <div class="input-one-box">
                    <div class="input-one-padding">
                        <input type="text" id="" class="input-one creator-name" placeholder="창작자님의 이름을 입력해주세요" value="${projectVO.getUserVO().getNickname()}">
                    </div>
                    <div class="input-one-information">
                        <div class="input-one-message"></div>
                        <div class="input-one-count-box">
                            <div class="charCount">0/</div>
                            <div class="charMax">20</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="creator-wrapper profileImg">
            <div class="creator-explain-box">
                <div class="creator-explain-title">
                    프로필 이미지
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="creator-explain-info">
                    창작자 개인이나 팀의 사진을 올려주세요.
                </div>
            </div>
            <div class="creator-img-box">
                <div class="creator-img" style="background-image: url('${projectVO.getUserVO().getProfileImage()}')">
                </div>
                <div class="creator-img-input-box">
                    <div class="creator-img-input-button">
                        <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path>
                        </svg>
                        <div>이미지 파일 업로드</div>
                    </div>
                    <input id="profile-img-input" type="file" accept="image/*" style="display: none;">
                    <div class="creator-img-input-info">
                        파일 형식은 jpg 또는 png 또는 gif로,<br>
                        사이즈는 가로 200px, 세로 200px 이상으로 올려주세요.
                    </div>
                </div>
            </div>
        </div>

        <div class="creator-wrapper introduce">
            <div class="creator-explain-box">
                <div class="creator-explain-title">
                    창작자 소개
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="creator-explain-info">
                    2~3문장으로 창작자님의 이력과 간단한 소개를 써주세요.
                </div>
            </div>
            <div class="creator-introduce-box">
                <div class="input-one-box">
                    <div class="input-one-padding">
                        <textarea type="text" class="input-one creator-introduce" placeholder="간단한 이력과 소개를 써주세요">${projectVO.getUserVO().getSelfIntro()}</textarea>
                    </div>
                    <div class="input-one-information">
                        <div class="input-one-message"></div>
                        <div class="input-one-count-box">
                            <div class="charCount">0/</div>
                            <div class="charMax">300</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="creator-wrapper local">
            <div class="creator-explain-box">
                <div class="creator-explain-title">
                    창작자 주 활동 지역
                </div>
                <div class="creator-explain-info">
                    창작자님의 주 활동 지역을 선택해주세요.
                </div>
            </div>
            <div class="creator-local-box">
                <div class="sido-selector-box selector-box">
                    <div class="selector-item sido-selector">
                        <input type="text" readonly class="sido selector-input" placeholder="시/도를 선택해주세요" value="">
                        <svg class="rotate-svg" viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"></path>
                        </svg>
                        <div class="option-box sido-option-box">
                            <div class="sido-item option-item seoul">서울특별시</div>
                            <div class="sido-item option-item busan">부산광역시</div>
                            <div class="sido-item option-item daegu">대구광역시</div>
                            <div class="sido-item option-item incheon">인천광역시</div>
                            <div class="sido-item option-item gwangju">광주광역시</div>
                            <div class="sido-item option-item daejeon">대전광역시</div>
                            <div class="sido-item option-item ulsan">울산광역시</div>
                            <div class="sido-item option-item sejong">세종특별자치시</div>
                            <div class="sido-item option-item gyeonggi">경기도</div>
                            <div class="sido-item option-item gangwon">강원도</div>
                            <div class="sido-item option-item chungbuk">충청북도</div>
                            <div class="sido-item option-item chungnam">충청남도</div>
                            <div class="sido-item option-item jeonbuk">전라북도</div>
                            <div class="sido-item option-item jeonnam">전라남도</div>
                            <div class="sido-item option-item gyeongbuk">경상북도</div>
                            <div class="sido-item option-item gyeongnam">경상남도</div>
                            <div class="sido-item option-item jeju">제주특별자치도</div>
                        </div>
                    </div>
                </div>

                <div class="sigungu-selector-box selector-box">
                    <div class="disable selector-item sigungu-selector">
                        <input type="text" readonly class="sigungu selector-input" placeholder="시/군/구를 선택해주세요" value="">
                        <svg class="rotate-svg" viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"></path>
                        </svg>
                        <div class="option-box sigungu-option-box">
                            <%--스크립트 옵션값이 들어갈곳--%>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <div class="creator-wrapper account">
            <div class="creator-explain-box">
                <div class="creator-explain-title">
                    입금 계좌
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="creator-explain-info">
                    후원금을 전달받을 계좌를 등록해주세요.<br> 법인사업자는 법인계좌로만 정산받을 수 있습니다.
                </div>
            </div>
            <div class="trust-card-box">
                <div class="trust-card-content">
                    <div class="trust-card-title">
                        <svg width="1.2rem" height="1.2rem" fill="rgb(248, 100, 83)" viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M8 4.1C8 4.04477 8.04477 4 8.1 4H31.9586C31.9851 4 32.0105 4.01054 32.0293 4.02929L39.9707 11.9707C39.9895 11.9895 40 12.0149 40 12.0414V43.9C40 43.9552 39.9552 44 39.9 44H8.1C8.04477 44 8 43.9552 8 43.9V4.1ZM15 20.1C15 20.0448 15.0448 20 15.1 20H32.9C32.9552 20 33 20.0448 33 20.1V22.9C33 22.9552 32.9552 23 32.9 23H15.1C15.0448 23 15 22.9552 15 22.9V20.1ZM15.1 27C15.0448 27 15 27.0448 15 27.1V29.9C15 29.9552 15.0448 30 15.1 30H32.9C32.9552 30 33 29.9552 33 29.9V27.1C33 27.0448 32.9552 27 32.9 27H15.1ZM15 34.1C15 34.0448 15.0448 34 15.1 34H32.9C32.9552 34 33 34.0448 33 34.1V36.9C33 36.9552 32.9552 37 32.9 37H15.1C15.0448 37 15 36.9552 15 36.9V34.1ZM29.669 6.67066L36.8298 13.8295C36.8927 13.8924 36.8483 14 36.7594 14.0002L29.6008 14.0222C29.5454 14.0224 29.5005 13.9776 29.5005 13.9222L29.4983 6.74141C29.4982 6.65231 29.606 6.60767 29.669 6.67066Z"></path>
                        </svg>
                        입금 계좌
                    </div>
                    <div class="trust-card-text">후원금을 수령할 계좌를 등록해주세요.</div>
                </div>
                <div class="trust-card-write-button">등록하기</div>
                <div class="input-textarea">
                    <textarea class="trust-card-textarea account">${projectVO.getAccount()}</textarea>
                    <div class="input-textarea-count-box">
                        <div class="charCount">0/</div>
                        <div class="charMax">1100</div>
                    </div>
                </div>

                <div class="trust-card-textarea-buttons">
                    <div class="trust-card-textarea-button cancel">취소</div>
                    <div class="trust-card-textarea-button save">저장</div>
                </div>
            </div>

        </div>

        <div class="creator-wrapper tax">
            <div class="creator-explain-box">
                <div class="creator-explain-title">
                    세금 계산서 발행
                    <svg width="12px" height="12px" fill="#F86453" viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="creator-explain-info">
                    수수료 세금계산서 발행에 필요한 정보를 등록해주세요.
                </div>
            </div>
            <div class="trust-card-box">
                <div class="trust-card-content">
                    <div class="trust-card-title">
                        <svg width="1.2rem" height="1.2rem" fill="rgb(248, 100, 83)" viewBox="0 0 48 48">
                            <path d="M19.9243 31.5809L19.428 29H20.4915L19.9243 31.5809Z"></path>
                            <path d="M23.9885 24.8008L23.5184 27H24.4585L23.9885 24.8008Z"></path>
                            <path d="M28.5751 29H27.488L28.0788 31.5809L28.5751 29Z"></path>
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M8 4.1C8 4.04477 8.04477 4 8.1 4H31.9586C31.9851 4 32.0105 4.01054 32.0293 4.02929L39.9707 11.9707C39.9895 11.9895 40 12.0149 40 12.0414V43.9C40 43.9552 39.9552 44 39.9 44H8.1C8.04477 44 8 43.9552 8 43.9V4.1ZM36.8298 13.8295L29.669 6.67066C29.606 6.60767 29.4982 6.65231 29.4983 6.74141L29.5005 13.9222C29.5005 13.9776 29.5454 14.0224 29.6008 14.0222L36.7594 14.0002C36.8483 14 36.8927 13.8924 36.8298 13.8295ZM17.9117 33.9259L16.5914 29H14.1C14.0448 29 14 28.9552 14 28.9V27.1C14 27.0448 14.0448 27 14.1 27H16.0712L14.87 22.3751C14.8536 22.3118 14.9014 22.25 14.9668 22.25H17.722C17.768 22.25 17.8082 22.2815 17.8191 22.3262L18.963 27H21.0317L22.3164 22.3235C22.3283 22.2801 22.3678 22.25 22.4128 22.25H25.59C25.6352 22.25 25.6747 22.2803 25.6865 22.324L26.9477 27H29.0377L30.1581 22.3267C30.1689 22.2817 30.2091 22.25 30.2553 22.25H33.0101C33.0755 22.25 33.1233 22.3118 33.1069 22.3751L31.9057 27H33.9C33.9552 27 34 27.0448 34 27.1V28.9C34 28.9552 33.9552 29 33.9 29H31.3855L30.0652 33.9259C30.0535 33.9696 30.0139 34 29.9686 34H26.4491C26.4048 34 26.3659 33.9709 26.3532 33.9285L24.8854 29H23.0929L21.6497 33.9281C21.6372 33.9707 21.5981 34 21.5537 34H18.0083C17.963 34 17.9234 33.9696 17.9117 33.9259Z"></path>
                        </svg>
                        세금 계산서
                    </div>
                    <div class="trust-card-text">세금계산서 발행을 위한 정보를 등록해주세요</div>
                </div>
                <div class="trust-card-write-button">등록하기</div>
                <div class="input-textarea">
                    <textarea class="trust-card-textarea tax">(-- 대략 세금 관련 서류가 들어갈곳 --)</textarea>
                    <div class="input-textarea-count-box">
                        <div class="charCount">0/</div>
                        <div class="charMax">1100</div>
                    </div>
                </div>

                <div class="trust-card-textarea-buttons">
                    <div class="trust-card-textarea-button cancel">취소</div>
                    <div class="trust-card-textarea-button save">저장</div>
                </div>
            </div>

        </div>

    </div>

    <div class="create-container trust-container">
        <div class="trust-wrapper">
            <div class="trust-explain-box">
                <div class="trust-explain-title">
                    프로젝트 정책
                    <svg viewBox="0 0 48 48">
                        <path d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"></path>
                    </svg>
                </div>
                <div class="trust-explain-info">
                    펀딩 종료 후 후원자의 불만 또는 분쟁 발생 시<br>
                    중요한 기준이 될 수 있습니다. 신중히 작성해주세요.
                </div>
            </div>
            <div class="trust-card-box policy">
                <div class="trust-card-content">
                    <div class="trust-card-title">
                        <svg width="1.2rem" height="1.2rem" fill="rgb(248, 100, 83)" viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M8 4.1C8 4.04477 8.04477 4 8.1 4H31.9586C31.9851 4 32.0105 4.01054 32.0293 4.02929L39.9707 11.9707C39.9895 11.9895 40 12.0149 40 12.0414V43.9C40 43.9552 39.9552 44 39.9 44H8.1C8.04477 44 8 43.9552 8 43.9V4.1ZM15 20.1C15 20.0448 15.0448 20 15.1 20H32.9C32.9552 20 33 20.0448 33 20.1V22.9C33 22.9552 32.9552 23 32.9 23H15.1C15.0448 23 15 22.9552 15 22.9V20.1ZM15.1 27C15.0448 27 15 27.0448 15 27.1V29.9C15 29.9552 15.0448 30 15.1 30H32.9C32.9552 30 33 29.9552 33 29.9V27.1C33 27.0448 32.9552 27 32.9 27H15.1ZM15 34.1C15 34.0448 15.0448 34 15.1 34H32.9C32.9552 34 33 34.0448 33 34.1V36.9C33 36.9552 32.9552 37 32.9 37H15.1C15.0448 37 15 36.9552 15 36.9V34.1ZM29.669 6.67066L36.8298 13.8295C36.8927 13.8924 36.8483 14 36.7594 14.0002L29.6008 14.0222C29.5454 14.0224 29.5005 13.9776 29.5005 13.9222L29.4983 6.74141C29.4982 6.65231 29.606 6.60767 29.669 6.67066Z"></path>
                        </svg>
                        프로젝트 정책
                    </div>
                    <div class="trust-card-text">이 프로젝트의 정책을 기입해주세요.</div>
                </div>
                <div class="trust-card-write-button">작성하기</div>
                <div class="input-textarea">
                    <textarea class="trust-card-textarea policy">
(예시) 아래와 같은 사항을 고려해서 작성해주세요. 진행하는 프로젝트에 해당되지 않는 항목은 삭제해주세요.

· 펀딩 마감 이후에는 후원금액이 창작자에게 전달되기에 텀블벅을 통해 환불이 불가합니다. 환불은 창작자가 환불계좌를 받아 반환하는 방식으로만 가능하며, 어떤 경우에 환불이 가능한지를 기재해주세요.
· 펀딩 성사 후 지연 또는 선물 전달에 문제가 발생했을 때에 어떤 식으로 대응하시겠어요? 이 프로젝트 특성상 발생할 수 있는 문제에 대한 추가적인 정책이나 약속이 있다면 기재해주세요. (후원금 환불, 대체 보상 등)
· 배송이 필요한 선물에 문제가 발생한 경우 교환, A/S는 어떻게 진행되나요?
· 디지털 콘텐츠 리워드는 타인에게 양도가 가능한가요?
· 오프라인으로 전달되는 선물(공연, 전시 등)은 타인에게 양도가 가능한가요?
                    </textarea>
                    <div class="input-textarea-count-box">
                        <div class="charCount">0/</div>
                        <div class="charMax">1100</div>
                    </div>
                </div>

                <div class="trust-card-textarea-buttons">
                    <div class="trust-card-textarea-button cancel">취소</div>
                    <div class="trust-card-textarea-button save">저장</div>
                </div>
            </div>
        </div>

        <div class="trust-wrapper">
            <div class="trust-explain-box">
                <div class="trust-explain-title">
                    예상되는 어려움
                    <svg viewBox="0 0 48 48">
                        <path fill-rule="evenodd" clip-rule="evenodd"
                              d="M44 24C44 35.0457 35.0457 44 24 44C12.9543 44 4 35.0457 4 24C4 12.9543 12.9543 4 24 4C35.0457 4 44 12.9543 44 24ZM21.0099 15.1091C21.0046 15.0505 21.0507 15 21.1095 15H26.8905C26.9493 15 26.9954 15.0505 26.9901 15.1091L26.0083 25.9091C26.0036 25.9606 25.9604 26 25.9087 26H22.0913C22.0396 26 21.9964 25.9606 21.9917 25.9091L21.0099 15.1091ZM24 29C22.3431 29 21 30.3431 21 32C21 33.6569 22.3431 35 24 35C25.6569 35 27 33.6569 27 32C27 30.3431 25.6569 29 24 29Z"></path>
                    </svg>
                </div>
                <div class="trust-explain-info">
                    펀딩 진행 및 선물 전달 과정에서 발생 가능한<br> 문제가 있다면 후원자에게 명확하게 알려주세요.<br> 대응 계획을 함께 적는다면 후원자에게 신뢰를 줄 수 있습니다.
                </div>
            </div>
            <div class="trust-card-box problem">
                <div class="trust-card-content">
                    <div class="trust-card-title">
                        <svg width="1.2rem" height="1.2rem" fill="rgb(248, 100, 83)" viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                  d="M44 24C44 35.0457 35.0457 44 24 44C12.9543 44 4 35.0457 4 24C4 12.9543 12.9543 4 24 4C35.0457 4 44 12.9543 44 24ZM21.0099 15.1091C21.0046 15.0505 21.0507 15 21.1095 15H26.8905C26.9493 15 26.9954 15.0505 26.9901 15.1091L26.0083 25.9091C26.0036 25.9606 25.9604 26 25.9087 26H22.0913C22.0396 26 21.9964 25.9606 21.9917 25.9091L21.0099 15.1091ZM24 29C22.3431 29 21 30.3431 21 32C21 33.6569 22.3431 35 24 35C25.6569 35 27 33.6569 27 32C27 30.3431 25.6569 29 24 29Z"></path>
                        </svg>
                        예상되는 어려움
                    </div>
                    <div class="trust-card-text">프로젝트의 진행 및 선물 전달 과정에서 예상되는 어려움을 기입해주세요.</div>
                </div>
                <div class="trust-card-write-button">작성하기</div>
                <div class="input-textarea">
                    <textarea class="trust-card-textarea problem">
아래와 같은 사항을 고려해서 작성해보세요.

· 제작 과정에서 발생할 수 있는 변동사항이 있다면 무엇인가요? (예산, 선물 내용 등)
· 선물 전달 일정이 지연될 가능성이 있나요 ?
· 펀딩 자금이 고갈돼 선물을 전달하지 못한다면 어떤 조치를 취할 수 있을까요?
· 이외에 발생가능한 문제는 무엇이 있으며 어떻게 대응할 예정인가요?
                    </textarea>
                    <div class="input-textarea-count-box">
                        <div class="charCount">0/</div>
                        <div class="charMax">1100</div>
                    </div>
                </div>

                <div class="trust-card-textarea-buttons">
                    <div class="trust-card-textarea-button cancel">취소</div>
                    <div class="trust-card-textarea-button save">저장</div>
                </div>
            </div>
        </div>
    </div>


    <script>


    </script>
    <script src="${path}/resources/projectCreate/profile_image_input.js"></script>
    <script src="${path}/resources/projectCreate/header_menu_select.js"></script>
    <script src="${path}/resources/projectCreate/trust_container.js"></script>
    <script src="${path}/resources/projectCreate/rate_container.js"></script>
    <script src="${path}/resources/projectCreate/sido_selector.js"></script>
    <script src="${path}/resources/projectCreate/block_input.js"></script>
    <script src="${path}/resources/projectCreate/date_input.js"></script>
    <script src="${path}/resources/projectCreate/category_selector.js"></script>
    <script src="${path}/resources/projectCreate/search_tag_input.js"></script>
    <script src="${path}/resources/projectCreate/info-img-tooltip.js"></script>
    <script src="${path}/resources/projectCreate/thumbnail_input.js"></script>
    <script src="${path}/resources/projectCreate/smart_editor.js"></script>
    <script src="${path}/resources/projectCreate/amount_input.js"></script>
    <script src="${path}/resources/projectCreate/update_project.js"></script>
    <script src="${path}/resources/projectCreate/data_validator.js"></script>
    <script src="${path}/resources/projectCreate/menu_check_alert.js"></script>
    <script src="${path}/resources/projectCreate/menu_check_counter.js"></script>
    <script src="${path}/resources/projectCreate/package_make_selector.js"></script>
    <script src="${path}/resources/projectCreate/radio_input.js"></script>
    <script src="${path}/resources/projectCreate/gift_explain_textarea.js"></script>
    <script src="${path}/resources/projectCreate/package_price_input.js"></script>
    <script src="${path}/resources/projectCreate/gift_header.js"></script>
    <script src="${path}/resources/projectCreate/ready_save_button.js"></script>
    <script src="${path}/resources/projectCreate/ajax_info_data.js"></script>
    <script src="${path}/resources/projectCreate/ajax_funding_data.js"></script>
    <script src="${path}/resources/projectCreate/ajax_gift_data.js"></script>
    <script src="${path}/resources/projectCreate/ajax_package_data.js"></script>
    <script src="${path}/resources/projectCreate/ajax_plan_data.js"></script>
    <script src="${path}/resources/projectCreate/ajax_creator_data.js"></script>
    <script src="${path}/resources/projectCreate/ajax_trust_data.js"></script>
</body>
</html>
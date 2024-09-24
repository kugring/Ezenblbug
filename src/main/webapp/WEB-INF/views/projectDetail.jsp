<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>[ 프로젝트 ]- Ezenblbug</title>
    <link rel="icon"
          href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png"
          type="image/png">
    <link href="../resources/projectDetail/style.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path}/resources/app.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


</head>
<body>
<jsp:include page="/WEB-INF/views/header/header.jsp"/>

<div class="pay-container">
    <div class="pay-header">
        <svg width="120" height="30" viewBox="0 0 811 208" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M68.5103 67.0749H46.9539L54.9823 47.1166C55.5746 45.6313 54.4841 44.0237 52.8859 44.0237H40.7587C39.8374 44.0237 39.0101 44.5878 38.6623 45.4339L29.957 67.0749H14.2856C13.3643 67.0749 12.537 67.6295 12.1986 68.485L8.03393 78.7697C7.43227 80.255 8.52278 81.872 10.1209 81.872H24.025C24.025 81.872 10.1397 116.082 4.54617 130.325C-1.0474 144.567 -0.868773 151.655 3.22065 156.854C6.39817 160.887 12.1986 162.899 20.4526 162.871C34.3472 162.814 45.3934 156.976 54.9823 144.379C58.9213 139.199 61.0083 133.079 62.4655 129.478C63.0672 127.993 61.9767 126.376 60.3691 126.376H48.3641C47.471 126.376 46.6719 126.865 46.3147 127.692C44.6131 131.622 38.8033 143.223 28.2836 146.494C18.1682 149.644 16.1658 143.298 20.7628 131.885C25.3599 120.472 40.8715 81.8814 40.8715 81.8814H64.3833C65.3046 81.8814 66.1319 81.3173 66.4797 80.4618L70.5973 70.1772C71.199 68.6919 70.1085 67.0749 68.5103 67.0749Z"
                  fill="black"></path>
            <path d="M329.283 145.319L323.587 139.584C322.609 138.606 320.982 138.71 320.174 139.838C316.771 144.538 309.372 150.809 306.787 148.355C305.085 146.748 305.424 145.93 308.479 138.334C311.281 131.377 316.79 117.661 323.502 100.965C330.797 82.8304 327.779 63.2482 304.409 63.2482C287.252 63.2482 277.165 72.3201 273.827 75.9207C271.947 68.8887 265.742 63.2482 254.405 63.2482C243.97 63.2576 235.217 64.8745 223.523 73.185C224.688 70.2613 223.043 67.0838 218.399 67.0838H203.743C202.822 67.0838 201.985 67.6102 201.647 68.4657L197.538 78.8068C196.946 80.2921 197.971 81.8997 199.569 81.8997H210.634L182.29 152.482C181.688 153.967 182.732 155.584 184.33 155.584H196.297C197.209 155.584 198.037 155.03 198.385 154.193C198.385 154.193 212.552 118.798 215.739 111.306C229.803 78.2051 248.379 77.4906 252.938 78.4495C263.712 80.7058 257.629 94.1773 252.788 106.06C252.788 106.07 252.797 106.06 252.807 106.07C247.194 119.974 237.549 144.021 234.484 151.692C233.892 153.178 234.992 154.767 236.59 154.767H248.586C249.507 154.767 250.334 154.212 250.682 153.356L271.374 101.877C281.132 79.8503 295.487 76.3437 304.785 78.4495C316.038 80.9972 308.855 95.4841 303.938 107.762C297.433 124.007 296.201 127.222 291.266 139.443C284.093 157.22 293.043 162.889 302.143 162.889C311.675 162.889 323.295 157.831 329.603 148.195C330.139 147.33 330.007 146.042 329.283 145.319Z"
                  fill="black"></path>
            <path d="M177.787 70.1398C178.389 68.6544 177.28 67.0845 175.681 67.0845H163.658C162.736 67.0845 161.909 67.6485 161.561 68.4946L145.213 109.144C135.765 132.647 126.185 142.132 109.264 146.325C96.8732 149.399 96.3374 140.252 99.7499 131.904C103.642 122.4 119.934 81.75 124.587 70.1774C125.18 68.6921 124.089 67.0845 122.491 67.0845H96.1212C95.1999 67.0845 94.3726 67.6391 94.0247 68.4946L89.8789 78.7887C89.2773 80.274 90.3678 81.8816 91.9659 81.891L102.984 81.9004C102.984 81.9004 86.4852 122.917 84.0503 128.98C81.0326 136.501 77.5825 148.083 82.612 154.617C86.5228 159.693 91.5241 162.89 102.965 162.89C109.941 162.89 119.971 159.223 130.547 153.329C131.76 160.323 137.843 162.89 143.925 162.89C153.467 162.89 165.096 157.823 171.404 148.168C171.987 147.275 171.818 146.062 171.075 145.31L165.387 139.585C164.41 138.598 162.812 138.71 161.994 139.829C158.591 144.53 152.8 150.123 148.964 148.506C147.037 147.698 147.563 145.329 150.318 138.353C151.681 134.959 173.651 80.3962 177.787 70.1398Z"
                  fill="black"></path>
            <path d="M693.12 70.1398C693.722 68.6544 692.612 67.0845 691.014 67.0845H678.99C678.069 67.0845 677.242 67.6485 676.894 68.4946L660.545 109.144C651.098 132.647 641.518 142.132 624.596 146.325C612.206 149.399 611.67 140.252 615.082 131.904C618.974 122.4 635.266 81.75 639.92 70.1774C640.512 68.6921 639.422 67.0845 637.823 67.0845H611.454C610.532 67.0845 609.705 67.6391 609.357 68.4946L605.211 78.7887C604.61 80.274 605.7 81.8816 607.298 81.891L618.316 81.9004C618.316 81.9004 601.818 122.917 599.383 128.98C596.365 136.501 592.915 148.083 597.945 154.617C601.855 159.693 606.857 162.89 618.298 162.89C625.273 162.89 635.304 159.223 645.88 153.329C647.093 160.323 653.175 162.89 659.258 162.89C668.8 162.89 680.429 157.823 686.737 148.168C687.319 147.275 687.15 146.062 686.408 145.31L680.72 139.585C679.742 138.598 678.144 138.71 677.336 139.829C673.933 144.53 668.141 150.123 664.306 148.506C662.379 147.698 662.896 145.329 665.66 138.353C667.013 134.959 688.983 80.3962 693.12 70.1398Z"
                  fill="black"></path>
            <path d="M418.79 65.7494C403.448 54.1487 384.693 62.9949 384.693 62.9949L408.393 3.91931C408.985 2.43395 407.894 0.816995 406.287 0.826396L379.71 0.920404C378.789 0.920404 377.971 1.48446 377.623 2.33055L372.904 14.0441C372.302 15.5295 373.402 17.1465 375 17.1465L386.47 17.1089L349.956 107.753C339.361 134.076 344.607 147.651 356.067 156.732C368.175 166.33 383.161 161.818 387.842 160.21C411.175 152.238 430.57 125.361 431.999 99.0382C432.751 84.7958 427.937 72.6685 418.79 65.7494ZM366.389 142.743C362.309 139.378 357.675 130.071 361.745 119.946C366.004 109.36 373.628 90.3424 373.628 90.3424C379.08 76.8802 401.088 72.4899 409.182 78.4501C414.09 82.0601 416.562 89.3082 416.083 98.164C415.002 118.169 400.016 139.885 383.349 145.592C381.365 146.269 373.299 148.44 366.389 142.743Z"
                  fill="black"></path>
            <path d="M458.424 147.34C451.712 147.04 454.25 138.992 455.679 135.589L508.625 3.91942C509.227 2.43407 508.127 0.817109 506.529 0.82651L479.953 0.911115C479.031 0.911115 478.213 1.47517 477.866 2.32126L473.146 14.0349C472.545 15.5202 473.644 17.1372 475.243 17.1372L486.392 17.0996L449.879 107.744C445.131 119.542 438.833 135.288 438.833 135.288C438.419 136.464 433.634 148.346 439.763 155.999C442.997 160.041 447.106 162.89 453.837 162.89C466.124 162.89 474.34 152.624 477.076 148.628C477.687 147.735 477.555 146.541 476.794 145.78L470.758 139.763C469.762 138.776 468.107 138.908 467.318 140.074C465.353 142.941 461.724 147.491 458.424 147.34Z"
                  fill="black"></path>
            <path d="M571.151 65.7496C555.809 54.1488 537.054 62.9951 537.054 62.9951L560.754 3.91942C561.346 2.43407 560.255 0.817109 558.648 0.82651L532.175 0.920518C531.253 0.920518 530.435 1.48458 530.088 2.33066L525.368 14.0443C524.767 15.5296 525.867 17.1466 527.465 17.1466L538.586 17.109L502.073 107.753C491.478 134.076 496.959 147.651 508.418 156.732C520.527 166.33 535.512 161.818 540.194 160.21C563.527 152.238 582.921 125.361 584.35 99.0384C585.111 84.7959 580.298 72.6687 571.151 65.7496ZM518.759 142.743C514.679 139.378 510.045 130.071 514.115 119.946C518.374 109.361 525.998 90.3425 525.998 90.3425C531.451 76.8803 553.458 72.49 561.553 78.4502C566.46 82.0602 568.932 89.3084 568.453 98.1641C567.372 118.169 552.387 139.886 535.719 145.592C533.735 146.269 525.669 148.44 518.759 142.743Z"
                  fill="black"></path>
            <path d="M495.671 176.182C493.02 174.819 490.688 175.674 489.805 177.667C487.342 183.261 481.09 193.066 467.515 193.132C453.508 193.197 444.097 186.626 439.519 179.547C438.344 177.733 435.975 177.141 434.189 178.363L428.322 182.405C426.705 183.524 426.188 185.695 427.175 187.397C433.145 197.653 447.698 207.553 466.678 207.553C489.109 207.553 498.961 193.038 503.004 183.984C503.822 182.142 503.107 179.998 501.311 179.077L495.671 176.182Z"
                  fill="black"></path>
            <path d="M803.346 63.9901C791.623 58.0957 782.344 70.8904 782.335 70.8998C782.335 70.8998 773.93 59.8254 756.698 59.8254C737.304 59.8254 718.634 75.0268 716.481 93.6783C715.87 98.9805 716.359 103.878 717.571 108.165C715.494 108.889 706.591 112.405 702.426 120.612C695.714 133.839 702.426 146.324 704.147 148.166C690.036 156.279 686.511 168.557 686.746 176.463C687 185.084 690.337 192.454 696.4 197.775C705.369 205.644 718.85 207.872 731.24 207.872C735.461 207.872 739.56 207.609 743.321 207.233C785.71 202.899 791.219 178.56 790.946 168.303C790.739 160.651 788.285 155.33 782.523 149.717C773.893 141.313 762.856 137.365 745.436 139.508C736.054 140.664 729.153 144.415 722.93 141.294C718.004 138.822 716.265 133.04 719.405 126.657C720.589 124.25 723.983 122.21 725.421 121.552C731.673 128.029 739.4 131.245 750.334 131.583C768.487 132.156 788.53 118.516 790.73 99.6855C792.102 87.9249 788.257 80.3289 788.257 80.3289C788.267 80.3195 796.135 70.1007 798.88 76.4746C799.388 77.6497 798.739 79.6803 798.119 81.175C797.668 82.2655 798.166 83.5159 799.219 84.0329L805.235 86.9754C806.373 87.5301 807.736 87.0506 808.272 85.9037C810.491 81.222 814.495 69.6025 803.346 63.9901ZM775.162 168.002C776.798 185.874 754.169 190.649 741.723 191.994C708.274 195.594 701.966 182.32 701.956 175.598C701.947 167.607 710.041 160.463 720.711 157.238C727.264 158.583 735.424 158.46 744.928 155.208C748.219 154.079 751.725 153.703 755.185 154.098C762.696 154.963 774.231 157.924 775.162 168.002ZM775.218 96.4328C774.005 106.83 763.373 115.658 750.353 115.658C740.698 115.658 730.394 108.626 732.453 95.2107C734.568 81.4289 749.234 75.1584 758.428 75.7977C769.249 76.5498 776.619 84.409 775.218 96.4328Z"
                  fill="black"></path>
        </svg>
        <div class="pay-header-title">&nbsp; · &nbsp;프로젝트 후원하기</div>
        <div class="pay-project-close-box">
            <svg class="pay-close-button" width="24" height="24" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M4.28544 5.00257L2.01916 2.73642C1.82521 2.54248 1.82974 2.23083 2.01598 2.02765C2.21448 1.81131 2.5294 1.8394 2.72795 2.02108L2.72969 2.02268L4.99738 4.2905L7.26357 2.02431C7.4575 1.83056 7.7691 1.83508 7.97226 2.02115C8.1886 2.21946 8.16077 2.53473 7.97878 2.73311L7.97723 2.73479L5.70945 5.00257L7.97564 7.26876C8.16953 7.46283 8.16504 7.77425 7.97884 7.97756L7.97724 7.9793L7.97557 7.98097C7.78164 8.17472 7.47008 8.17023 7.26691 7.98417L7.26519 7.98259L4.99738 5.71465L2.73129 7.981C2.53725 8.17469 2.22572 8.17025 2.02253 7.98417L2.01908 7.98101L2.01592 7.97756C1.82971 7.77425 1.82526 7.46279 2.01916 7.26872L4.28544 5.00257Z"
                      fill="#6D6D6D"></path>
            </svg>
        </div>
    </div>
    <div class="pay-project-info-box">
        <div class="pay-project-info-item">
            <div class="pay-project-thumbnail-img" style="background-image: url(${projectVO.getProjectThumbnail()})"></div>
            <div class="pay-project-info">
                <div class="pay-project-category">${projectVO.getCategory()} | ${projectVO.getUserVO().getNickname()}</div>
                <div class="pay-project-title">${projectVO.getProjectTitle()}</div>
                <div class="pay-project-num">
                    <div class="pay-project-current-donation"><fmt:formatNumber value="${projectVO.totalDonation}" type="number" groupingUsed="true"/>원</div>
                    <div class="pay-project-current-percent">${Math.toIntExact((projectVO.totalDonation / projectVO.getGoalBudgetNum()) * 100)}%</div>
                    <div class="pay-project-current-countdown">· ${projectVO.getDaysDifference()}일 남음</div>
                </div>
            </div>
        </div>
    </div>
    <div class="pay-project-bottom">
        <div class="pay-project-content">
            <div class="pay-package-info-title">선물 정보</div>
            <div class="pay-package-info-box">
                <div class="pay-package-content-box">
                    <div class="pay-package-content-title">선물 구성</div>
                    <div class="pay-package-content-item-box">
                        <%-- 자바스크립트에서 들어옴 --%>
                    </div>
                </div>
                <div class="pay-package-total-price-box">
                    <div class="pay-package-total-price-title">선물 금액</div>
                    <div class="pay-package-total-price">144,000원</div>
                </div>
            </div>
            <div class="pay-project-backer-info-title">후원자 정보</div>
            <div class="pay-project-backer-info-box">
                <div class="pay-project-backers-phone-number-box">
                    <div class="pay-project-backers-phone-number-title">연락처</div>
                    <div class="pay-project-backers-phone-number">${projectVO.getUserVO().getPhoneNumber()}</div>
                </div>
                <div class="pay-project-backers-email-box">
                    <div class="pay-project-backers-email-title">이메일</div>
                    <div class="pay-project-backers-email">${projectVO.getUserVO().getEmail()}</div>
                </div>
                <div class="pay-project-backers-info-explain">
                    * 위 연락처와 이메일로 후원 관련 소식이 전달됩니다.<br>
                    * 연락처 및 이메일 변경은 설정 > 계정 설정에서 가능합니다.
                </div>
            </div>
            <div class="pay-project-delivery-address-info-title">배송지</div>
            <div class="pay-project-delivery-address-info-box">
                <div class="pay-project-delivery-backer-info">
                    <div class="pay-project-delivery-backer-name">${userInfoVO.getNickname()}</div>
                    <div class="pay-project-delivery-backer-address">${userInfoVO.getAddress()} ${userInfoVO.getAddressDetail()}</div>
                    <div class="pay-project-delivery-backer-phone-number">${userInfoVO.getPhoneNumber()}</div>
                </div>
                <div class="pay-project-delivery-info-change-button">
                    변경
                </div>
            </div>
        </div>
        <div class="pay-project-donation-box">
            <div class="final-donation-price-box">
                <div class="final-donation-price-title">최종 후원 금액</div>
                <div class="final-donation-price">144,000 원</div>
                <input type="hidden" name="total-price">
            </div>
            <div class="pay-project-donation-agree-item-box">
                <div class="pay-project-donation-agree-box">
                    <div class="pay-project-donation-agree-checkbox">
                        <svg viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                        </svg>
                    </div>
                    <div class="pay-project-donation-agree-content">개인정보 제 3자 제공 동의</div>
                </div>
                <div class="pay-project-donation-agree-box">
                    <div class="pay-project-donation-agree-checkbox">
                        <svg viewBox="0 0 48 48">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                        </svg>
                    </div>
                    <div class="pay-project-donation-agree-content">후원 유의사항 확인</div>
                </div>
            </div>
            <div class="pay-project-donation-explain-box">
                <div class="pay-project-donation-explain">
                    후원은 구매가 아닌 창의적인 계획에 자금을 지원하는 일입니다.<br>
                    텀블벅에서의 후원은 아직 실현되지 않은 프로젝트가 실현될 수 있도록 제작비를<br>
                    후원하는 과정으로, 기존의 상품 또는 용역을 거래의 대상으로 하는<br>
                    매매와는 차이가 있습니다. 따라서 전자상거래법상<br>
                    청약철회 등의 규정이 적용되지 않습니다.
                </div>
                <div class="pay-project-donation-explain">
                    프로젝트는 계획과 달리 진행될 수 있습니다.<br>
                    예상을 뛰어넘는 멋진 결과가 나올 수 있지만 진행 과정에서 계획이 지연,<br>
                    변경되거나 무산될 수도 있습니다. 본 프로젝트를<br>
                    완수할 책임과 권리는 창작자에게 있습니다.
                </div>
            </div>
            <div class="pay-project-donation-push-button">후원하기</div>
        </div>
    </div>
</div>


<div class="project-page">


    <div class="project-top-container">
        <div class="project-first-layer">
            <div class="project-top-header">
                <div class="project-header-bundle">
                    <div class="project-header-bundle-category">${projectVO.category}</div>
                    <h1 class="project-title">${projectVO.projectTitle}</h1>
                </div>
            </div>
        </div>
        <div class="project-second-layer">
            <div class="project-detail-carousel-container">
                <div class="carousel-control-prev img-left-button">
                    <div class="left-arrow icon-32"></div>
                </div>
                <div class="project-top-left carousel-item">
                    <div class="carousel-img-box">
                        <div class="project-title-img-box-layer">
                            <c:forEach var="thumbnailVO" items="${projectVO.getThumbnailVOList()}">
                                <div class="img-items">
                                    <img class="project-title-img move" src="${thumbnailVO.getPath()}">
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="project-title-img-box-mark">
                        <c:forEach var="i" begin="0" end="${projectVO.getThumbnailVOList().size()-1}">
                            <c:choose>
                                <c:when test="${i == 0}">
                                    <div class="img-box-mark-items img-mark"></div>
                                </c:when>
                                <c:otherwise>
                                    <div class="img-box-mark-items"></div>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
                <div class="carousel-control-next img-right-button">
                    <div class="right-arrow icon-32"></div>
                </div>
            </div>
            <aside class="project-top-right">
                <div class="project-funding-current">
                    <div class="funding-current-box">
                        <div class="funding-text">모인금액</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">
                                <fmt:formatNumber value="${projectVO.totalDonation}" type="number" groupingUsed="true"/><span class="funding-item">원</span>
                            </div>

                            <div class="funding-current-percent"><fmt:formatNumber value="${(projectVO.totalDonation / projectVO.getGoalBudgetNum()) * 100}" type="number" maxFractionDigits="0" />%</div>
                        </div>
                    </div>
                    <div class="funding-current-box">
                        <div class="funding-text">남은 시간</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">
                                ${projectVO.getDaysDifference()}<span class="funding-item">일</span>
                            </div>
                        </div>
                    </div>
                    <div class="funding-current-box">
                        <div class="funding-text">후원자</div>
                        <div class="funding-current-items">
                            <div class="funding-current-number">
                                49<span class="funding-item">명</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="funding-from-intro">
                    <div class="funding-from-intro-box">
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">목표금액</dt>
                            <dd class="funding-from-intro-item">
                                <fmt:formatNumber value="${projectVO.goalBudget}" type="number" groupingUsed="true"/>
                                원
                            </dd>
                        </dl>
                        <dl class="funding-from-intro-items">
                            <dt class="funding-from-intro-text">펀딩 기간</dt>

                            <dd class="funding-from-intro-item">
                                ${projectVO.getStartTimelineYYYY()}
                                ~
                                ${projectVO.getTimelineYYYY()}
                            </dd>
                            <span class="text-red">${projectVO.getDaysDifference()}일 남음</span>
                        </dl>
                        <dl class="funding-from-intro-items goal-price">
                            <dt class="funding-from-intro-text">결제</dt>
                            <dd class="funding-from-intro-item">
                            <dd class="funding-from-intro-item">
                                목표금액 달성시
                                후원 종료 1일 후에
                                결제진행
                            </dd>
                            </dd>
                        </dl>
                    </div>
                </div>

                <div class="funding-title-button-box">
                    <div class="funding-title-button-layer">
                        <div class="funding-title-likes-button">
                            <div class="funding-title-likes-button-items">
                                <div class="funding-title-likes-button-item">
                                    <div class="likes-button-img empty-heart icon-16"></div>
                                    <span class="likes-button-count">${projectVO.favoriteCount}</span>
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
                            <div class="funding-title-project-funding-button-item">이
                                프로젝트 후원하기
                            </div>
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
                    <div class="project-nav-item">
                        업데이트<sup class="update-count">1</sup>
                    </div>
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
                                    <div id="purpose"
                                         class="project-main-left-badge-item introduction-badge current-badge">소개
                                    </div>
                                </li>
                                <li>
                                    <div id="budget" class="project-main-left-badge-item">예산</div>
                                </li>
                                <li>
                                    <div id="schedule" class="project-main-left-badge-item">일정</div>
                                </li>
                                <li>
                                    <div id="team-intro" class="project-main-left-badge-item">팀
                                        소개
                                    </div>
                                </li>
                                <li>
                                    <div id="gift-intro" class="project-main-left-badge-item">선물
                                        설명
                                    </div>
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
                                ${projectVO.getProjectPlanVO().projectIntroduction}
                            </div>
                            <div class="project-main-left-content budget-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker budget"></div>
                                    프로젝트 예산
                                </div>
                                ${projectVO.projectPlanVO.projectBudget}
                            </div>

                            <div class="project-main-left-content schedule-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker schedule"></div>
                                    프로젝트 일정
                                </div>
                                ${projectVO.projectPlanVO.projectSchedule}
                            </div>

                            <div class="project-main-left-content team-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker team-intro"></div>
                                    프로젝트 팀 소개
                                </div>
                                ${projectVO.projectPlanVO.teamIntroduction}
                            </div>

                            <div class="project-main-left-content gift-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker gift-intro"></div>
                                    선물 설명
                                </div>
                                ${projectVO.projectPlanVO.projectGiftExplain}
                            </div>

                            <div class="project-main-left-content gift-intro-content">
                                <div class="project-main-left-content-intro-title">
                                    <div class="title-marker gift-intro"></div>
                                    신뢰와 안전
                                </div>
                                ${projectVO.projectPlanVO.projectExchangePolicy}
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
                                    <div class="project-main-right-creater-profile-item white-default-profile"
                                         style="background-image: url('${projectVO.userVO.profileImage}')"></div>
                                </div>
                                <div class="project-main-right-creater-profile-text">
                                    <div class="project-main-right-creater-name">${projectVO.userVO.nickname}</div>
                                </div>
                            </div>
                            <div class="project-main-right-creater-profile-self-intro-box">
                                ${projectVO.userVO.selfIntro}
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
                        </div>
                        <div class="project-main-right-funding-package">
                            <div class="project-main-right-funding-package-bundle">
                                <div class="project-main-right-funding-package-bundle-title">선물 선택</div>
                                <div class="project-main-right-funding select-package">
                                    <div class="select-package content-box">
                                    </div>
                                    <div class="select-package select-button-box">
                                        <button class="select-button gift-select">선물 선택하기</button>
                                        <button class="select-button funding-select">
                                            <div class="funding-select-text">총 <b class="bold">0 원</b> 후원하기</div>
                                        </button>
                                    </div>
                                </div>
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

                                <c:forEach var="packageVO" items="${projectVO.backersPackageVOList}">
                                    <%-- 새로운 패키지 섹션 시작 --%>
                                    <div class="project-main-right-funding-package-category-box"
                                         data-packageId="${packageVO.packageId}"
                                         style="border: 1px solid #ddd; padding: 10px; margin: 10px 0; border-radius: 5px;">
                                        <section class="project-main-right-funding-package-section">
                                            <input type="hidden" name="personMaxCount" value="${packageVO.personMaxAmount}"/>
                                            <div class="project-main-right-funding-package-current-amount-box">
                                                <div class="project-main-right-funding-package-current-choose-amount">
                                                    <div class="black-check icon-10"></div>
                                                        ${packageVO.maxProductAmount - packageVO.remaining}개 선택
                                                </div>
                                                <div class="project-main-right-funding-package-current-have-amount">
                                                        ${packageVO.remaining}개 남음
                                                </div>
                                            </div>
                                            <div class="project-main-right-funding-package-main-section-items">
                                                <div class="project-main-right-funding-package-main-section-item-price-box">
                                                    <div class="project-main-right-funding-package-main-section-item-price">
                                                        <fmt:formatNumber value="${packageVO.packagePrice}" type="number" groupingUsed="true"/>원
                                                        <div class="black-bold-plus icon-12"></div>
                                                    </div>
                                                </div>
                                                <div class="project-main-right-funding-package-main-section-item-content-box">
                                                        ${packageVO.packageTitle}
                                                </div>
                                            </div>
                                            <ul class="project-main-right-funding-package-main-section-ul">
                                                <c:forEach var="productVO" items="${packageVO.productVOList}">
                                                    <%-- 동일한 packageId에 대한 제품 리스트 --%>
                                                    <li class="project-main-right-funding-package-main-section-li">
                                                        <div class="list-mark">•</div>
                                                            ${productVO.productName} (x ${productVO.productQuantity})
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </section>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    //.project-main-right-funding-package-category-box를 클릭했을 때 display 변경

    $('.project-main-right-funding-package-category-box').on('click', function (event) {

        var packageTitle = $(this).find(".project-main-right-funding-package-main-section-item-content-box").text();
        var packageCost = $(this).find(".project-main-right-funding-package-main-section-item-price").text();
        var packageCount = $(this).find(".select-count-number").text();
        var productName = $(this).find(".project-main-right-funding-package-main-section-ul").html();
        var packageId = $(this).attr("data-packageId");
        var target_obj = $('.select-package.content-box');


        var isPackage = false;

        target_obj.find(".content-items").each(function () {
            var packageId2 = $(this).attr("data-packageId");
            if (packageId == packageId2) {
                isPackage = true;
            }
        });


        if (!isPackage) {
            target_obj.html(target_obj.html() + `
             <div class="content-items" data-packageId=\${packageId}>
                <div class="content-item package-title">
                   \${packageTitle}
                </div>
                <div class="content-item package-content">

                   <div class="package-content-text">
                      <ul class="package-content-ul">
                         <li>
                            <div class="package-content-li-text">
                               <div class="package-content-li composition-text">
                                     \${productName}
                               </div>
                            </div>
                         </li>
                      </ul>
                      <div class="package-content-count-price">
                      <div class="package-content-count">
                      <input type="hidden" name="personMaxCount" value="${vo.personMaxAmount}"/>
                         <button type="button" class="count-button minus" onclick="unitButton(this, -1)">
                            <div class="black-minus icon-10"></div>
                         </button>
                         <div class="select-count-number">1</div>
                         <button type="button" class="count-button plus" onclick="unitButton(this, 1)">
                            <div class="black-bold-plus icon-10"></div>
                         </button>
                      </div>
                      <div class="package-content-price">
                         \${packageCost}
                      </div>
                   </div>
                   <button class="content-item select-cancle" onclick="hideBox(this)">
                         <div class="black-x icon-12"></div>
                   </button>
                </div>

             </div>
          `);

        }

        showDis();                // showDis() 함수 호출
        event.stopPropagation(); // 이벤트 버블링을 막아 클릭 시 다른 이벤트로 전달되지 않도록 함
        // 총합계를 출력하는 함수
        totalDonation();
    });


    $('.project-main-right-funding-package-box').on('click', function (event) {
        event.stopPropagation(); // 이벤트 버블링을 막아 클릭 시 다른 이벤트로 전달되지 않도록 함
    });


    $('.project-main-right-funding').on('click', '*', function (event) {
        event.stopPropagation(); // 이벤트 버블링을 막아 클릭 시 다른 이벤트로 전달되지 않도록 함
    });

    $('.project-main-right-funding').on('click', function (event) {
        event.stopPropagation(); // 여백 클릭 시에도 이벤트가 상위로 전달되지 않도록 함
    });

    // 서버에서 데이터를 불러와 maxCount를 설정하는 부분
    maxCount = parseInt($("input[name='personMaxCount']").val(), 10); // 문자열을 정수로 변환

    // maxCount 값이 유효한지 확인
    if (isNaN(maxCount) || maxCount <= 0) {
        maxCount = 1; // 기본값 설정 (필요에 따라 조정)
        console.warn('maxCount 값이 유효하지 않으므로 기본값을 사용합니다.');
    }


    // .black-bold-plus 버튼 클릭 시 실행 (숫자 증가)
    function unitButton(element, num) {
// 현재 요소의 수량 텍스트를 가져오기 위한 가장 가까운 .package-content-count 내의 .select-count-number 요소를 찾습니다.
        const currentElement = $(element).closest(".package-content-count").find(".select-count-number");

        // 현재 수량을 숫자로 변환하여 가져옵니다.
        let currentQuantity = parseInt(currentElement.text().trim(), 10);
        // 최대 수량을 input[name='personMaxCount']에서 가져와 숫자로 변환합니다.


        // 증가 및 감소 버튼 요소를 가져옵니다.
        const plusButton = $(element).closest(".package-content-count").find(".plus");
        const minusButton = $(element).closest(".package-content-count").find(".minus");

        // 수량을 증가하거나 감소시키기 전에 경계를 체크합니다.
        if ((currentQuantity <= 1 && num < 0) || (currentQuantity >= maxCount && num > 0)) {
            return; // 수량이 최소값 이하 또는 최대값 이상이면 함수 종료
        }

        // 수량을 증가 또는 감소시킵니다.
        currentQuantity += num;
        currentElement.text(currentQuantity);

        // 수량에 따른 버튼의 상태를 업데이트합니다.
        minusButton.css("opacity", currentQuantity <= 1 ? "0.2" : "1");
        plusButton.css("opacity", currentQuantity >= maxCount ? "0.2" : "1");

        // 총합계를 출력하는 함수
        totalDonation();
    }
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.7.js"></script>
<script src="${path}/resources/projectDetail/detail_pay.js"></script>
<script src="${path}/resources/projectDetail/checkbox.js"></script>
<script src="${path}/resources/projectDetail/daum_input.js"></script>
<script src="${path}/resources/projectDetail/script.js"></script>

</body>
</html>



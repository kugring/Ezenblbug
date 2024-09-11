<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>[ 회원가입 ]- Ezenblbug</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/zenblbug_logo.png" type="image/png">
    <link href="${path}/resources/signUp/style.css" type="text/css" rel="stylesheet"/>
    <link href="${path}/resources/app.css" type="text/css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<script>
    let realPath = "${path}"
</script>
<body>

<div id="sign-up-wrapper">
    <div class='sign-up-image'></div>
    <div class='sign-up-container'>
        <div class='sign-up-box'>
            <div class='sign-up-title'>젠블벅 프로젝트 서비스</div>
            <div class='sign-up-content-box'>
                <div class='sign-up-content-sns-sign-in-box'>
                    <div class='sign-up-content-sns-sign-in-title'>SNS 회원가입</div>
                    <div class='sign-up-content-sns-sign-in-button-box'>
                        <div class='kakao-sign-in-button' onClick="localPrint()"></div>
                        <div class='naver-sign-in-button' onClick=""></div>
                    </div>
                </div>
                <div class='sign-up-content-divider'></div>
                <div class='sign-up-content-input-box'>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>아이디</div>
                            <div class="id input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="id" class='input-box-input' placeholder="아이디를 입력해주세요" type="text" oninput="onIdChangeHandler(this)"
                                       onkeydown="nextFocusOn(event ,'password')"/>
                            </div>
                        </div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>비밀번호</div>
                            <div class="password input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="password" class='input-box-input' placeholder="비밀번호를 입력해주세요" type="password" oninput="onPasswordChangeHandler(this)" onkeydown="nextFocusOn(event ,'passwordCheck')"/>
                            </div>
                        </div>
                        <div class="input-box-message"></div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>비밀번호 확인</div>
                            <div class="passwordCheck input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="passwordCheck" class='input-box-input' placeholder="비밀번호를 다시한번 입력해주세요" type="password" oninput="onPasswordCheckChangeHandler(this)" onkeydown="nextFocusOn(event ,'nickname')"/>
                            </div>
                        </div>
                        <div class="input-box-message"></div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>닉네임</div>
                            <div class="nickname input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="nickname" class='input-box-input' placeholder="닉네임을 입력해주세요" type="text" oninput="onNicknameChangeHandler(this)" onkeydown="nextFocusOn(event ,'phoneNumber')"/>
                            </div>
                        </div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>전화번호</div>
                            <div class="phoneNumber input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="phoneNumber" class='input-box-input' placeholder="전화번호을 입력해주세요" type="text" oninput="onPhoneNumberChangeHandler(this)" onkeydown="nextFocusOn(event ,'address')"/>
                            </div>
                        </div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>주소</div>
                            <div class="address input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input id="address" name="address" class='input-box-input' placeholder="주소를 입력해주세요" onclick="daumAddressOpen()" type="text"/>
                                <div id="address-open" class="address-open-button" onclick="daumAddressOpen()">주소 검색</div>
                            </div>
                        </div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>상세 주소</div>
                            <div class="address input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input id="detailAddress" name="detail-address" class='input-box-input' placeholder="상세 주소를 입력해주세요" type="text" onkeydown="nextFocusOn(event ,'email')"/>
                            </div>
                        </div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>이메일</div>
                            <div class="email input-box-message"></div>
                            <div id="loading"><div class="spinner"></div></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="email" class='input-box-input' placeholder="이메일을 입력해주세요" type="text" oninput="onEmailChangeHandler(this)" onkeydown="emailSendButtonClick(event)"/>
                                <div id="email-certification-send" class="email-send-disable-button" onclick="certificationEmailSend()">이메일 인증</div>
                            </div>
                        </div>
                    </div>
                    <div class='input-box'>
                        <div class="input-box-title-box">
                            <div class='input-box-title'>인증번호</div>
                            <div class="certification input-box-message"></div>
                        </div>
                        <div class='input-box-content'>
                            <div class='input-box-body'>
                                <input name="certification" class='input-box-input' placeholder="인증번호를 입력해주세요" type="password" oninput="onCertificationChangeHandler(this)"
                                       maxlength="4"/>
                                <div id="email-certification-check" class="certification-check-disable-button" onclick="certificationEmailCheck()">인증 확인</div>
                            </div>
                        </div>
                    </div>
                    <div class="privacy-box" onclick="privacyCheck()">
                        <div id="privacy-icon" class="privacy-check"></div>
                        <div class="privacy-check-text">개인정보 동의</div>
                    </div>
                    <div class='sign-up-content-button-box'>
                        <div class="primary-button-lg full-width" onClick="signUp()">회원가입</div>
                        <div class='text-link-lg full-width' onClick="window.location.href = realPath+'/auth/sign-in'">로그인</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    function setTrue(item) {
        return localStorage.setItem(item, 'true');
    }

    function setFalse(item) {
        return localStorage.setItem(item, 'false');
    }

    function getItem(item) {
        return localStorage.getItem(item) === 'true';
    }

    // 상태 저장
    setFalse("isIdPatternCheck");
    setFalse("isIdDuplicationCheck");
    setFalse("isEmailPatternCheck");
    setFalse("isEmailSendCheck");
    setFalse("isCertificationCheck");
    setFalse("isPasswordPattern");
    setFalse("isPasswordEqualCheck");
    setFalse("isNicknameDuplicationCheck");
    setFalse("isPhoneNumberPatternCheck");
    setFalse("isAddressCheck");
    setFalse("isPrivacyCheck");

    let email;

    const idPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}$/;
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    const passwordPattern = /^(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[a-z\d@$!%*?&]{8,}$/;
    const nicknamePattern = /^[a-zA-Z가-힣\d@$!%*?&]{2,8}$/;
    const phoneNumberPattern = /^010-\d{4}-\d{4}$/;
    const certificationPattern = /^\d{4}$/;

    function onIdChangeHandler(element) {
        let idDuplicateButton = $("#id-duplicate-check");
        let idValue = element.value;

        let idPattenCheck = idPattern.test(idValue)


        idDuplicateButton.toggleClass("id-check-button", idPattenCheck);
        idDuplicateButton.toggleClass("id-check-disable-button", !idPattenCheck);

        if (idPattenCheck) {
            setTrue("isIdPatternCheck");
            idDuplicateCheck();
        } else {
            $(".id.input-box-message").text("영문과 숫자를 혼합하여 5자리 이상");
            setFalse("isIdPatternCheck");
        }
        $(".id.input-box-message").css("color", "rgb(87 110 233)");
        setFalse("isIdDuplicationCheck");
    }

    function onPasswordChangeHandler() {

        let passwordValue = $("input[name='password']").val();

        let passwordPatternCheck = passwordPattern.test(passwordValue);

        if (passwordPatternCheck) {
            $(".password.input-box-message").text("올바른 입력입니다.");
            $(".password.input-box-message").css("color", "blue");
            setTrue("isPasswordPattern");
        } else {
            $(".password.input-box-message").text("영문, 숫자, 특수기호를 사용하여 8자리 이상");
            $(".password.input-box-message").css("color", "rgb(87 110 233)");
            setFalse("isPasswordPattern");
        }
        onPasswordCheckChangeHandler()
    }

    function onPasswordCheckChangeHandler() {
        let passwordCheckValue = $("input[name='passwordCheck']").val();
        let passwordValue = $("input[name='password']").val();

        if (passwordCheckValue === passwordValue) {
            setTrue("isPasswordEqualCheck");
            $(".passwordCheck.input-box-message").text("비밀번호가 동일합니다.");
            $(".passwordCheck.input-box-message").css("color", "blue");
        } else {
            setFalse("isPasswordEqualCheck");
            $(".passwordCheck.input-box-message").text("비밀번호가 동일하지 않습니다.");
            $(".passwordCheck.input-box-message").css("color", "rgb(87 110 233)");
        }
    }

    function onNicknameChangeHandler(element) {
        let nicknameValue = element.value;

        let nicknamePatternCheck = nicknamePattern.test(nicknameValue);

        if (nicknamePatternCheck) {
            nicknameDuplicateCheck();
        } else {
            $(".nickname.input-box-message").text("2~8자로 작성해주세요.");
            $(".nickname.input-box-message").css("color", "rgb(87 110 233)");
        }
        setFalse("isNicknameDuplicationCheck");
    }

    function onEmailChangeHandler(element) {
        let emailCertificationButton = $("#email-certification-send");
        let emailValue = element.value;

        let emailPattenCheck = emailPattern.test(emailValue)


        emailCertificationButton.toggleClass("email-send-button", emailPattenCheck);
        emailCertificationButton.toggleClass("email-send-disable-button", !emailPattenCheck);

        if (emailPattenCheck) {
            $(".email.input-box-message").text("이메일 인증 부탁드립니다");
            $(".email.input-box-message").css("color", "blue");
            setTrue("isEmailPatternCheck");
            console.log(email)
            console.log(emailValue)
            if (email === emailValue) {
                setTrue("isCertificationCheck")
                $(".email.input-box-message").text("이메일 인증이 성공하였습니다");
                $(".email.input-box-message").css("color", "blue");
            } else {
                setFalse("isCertificationCheck")
            }
        } else {
            $(".email.input-box-message").text("이메일 형식에 맞게 작성 부탁드립니다.");
            $(".email.input-box-message").css("color", "rgb(87 110 233)");
            setFalse("isEmailPatternCheck");
        }
    }

    function onCertificationChangeHandler(element) {
        let CertificationCheckButton = $("#email-certification-check");
        let certificationValue = element.value;
        // 숫자를 제외한것은 입력되지 않음
        element.value = element.value.replace(/\D/g, '');


        let certificationPattenCheck = certificationPattern.test(certificationValue)


        CertificationCheckButton.toggleClass("certification-check-button", certificationPattenCheck);
        CertificationCheckButton.toggleClass("certification-check-disable-button", !certificationPattenCheck);

        if (certificationPattenCheck) {
            $(".certification.input-box-message").text("인증번호를 확인해주세요");
            $(".certification.input-box-message").css("color", "blue");
        } else {
            $(".certification.input-box-message").text("올바른 형식으로 작성해주세요");
            $(".certification.input-box-message").css("color", "rgb(87 110 233)");
        }
    }

    function onPhoneNumberChangeHandler(element) {
        element.addEventListener('input', function (e) {
            const value = element.value.replace(/\D/g, ''); // 숫자가 아닌 문자를 제거
            const formattedValue = value
                .replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3') //
                .substring(0, 13); // 최대 길이를 12로 제한
            element.value = formattedValue;

            let phoneNumberPattenCheck = phoneNumberPattern.test(formattedValue)
            
            if(phoneNumberPattenCheck){
                $(".phoneNumber.input-box-message").text("올바른 형식입니다.")
                $(".phoneNumber.input-box-message").css("color", "blue");
                setTrue("isPhoneNumberPatternCheck")
            } else {
                $(".phoneNumber.input-box-message").text("'-' 없이 숫자만 적어주세요.")
                $(".phoneNumber.input-box-message").css("color", "rgb(87 110 233)");
                setFalse("isPhoneNumberPatternCheck")
            }
        });
    }

    function idDuplicateCheck() {
        let idValue = $("input[name='id']").val();
        console.log(idValue);

        $.ajax({
            url: realPath+'/auth/id-check', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({
                userId: idValue
            }),
            success: function (result) {

                if (result === 1) {
                    $(".id.input-box-message").text("사용 불가능한 아이디입니다.");
                    $(".id.input-box-message").css("color", "red");
                    setFalse("isIdDuplicationCheck");
                } else {
                    $(".id.input-box-message").text("사용 가능한 아이디입니다.");
                    $(".id.input-box-message").css("color", "blue");
                    setTrue("isIdDuplicationCheck");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });
    }

    function nicknameDuplicateCheck() {
        let nicknameValue = $("input[name='nickname']").val();
        console.log(nicknameValue);

        $.ajax({
            url: realPath+'/auth/nickname-check', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({
                nickname: nicknameValue
            }),
            success: function (result) {

                if (result === 1) {
                    $(".nickname.input-box-message").text("사용 불가능한 닉네임 입니다.");
                    $(".nickname.input-box-message").css("color", "red");
                    setFalse("isNicknameDuplicationCheck")
                } else {
                    $(".nickname.input-box-message").text("사용 가능한 닉네임 입니다.");
                    $(".nickname.input-box-message").css("color", "blue");
                    setTrue("isNicknameDuplicationCheck")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });
    }

    function certificationEmailSend() {

        // 올바른 이메일 형식이 아닌경우 리턴함
        if(!getItem("isEmailPatternCheck")) return;

        if (!getItem("isIdPatternCheck")) {
            alert("아이디를 형식에 맞게 작성해주세요")
            return;
        }
        if (!getItem("isIdDuplicationCheck")) {
            alert("아이디를 중복을 확인해주세요")
            return;
        }

        $(".email.input-box-message").html("이메일을 발송중&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
        $("#loading").show();

        let userIdValue = $("input[name='id']").val();
        let emailValue = $("input[name='email']").val();
        console.log(userIdValue);
        console.log(emailValue);

        $.ajax({
            url: realPath+'/auth/certification-email-send', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({
                userId: userIdValue,
                email: emailValue
            }),
            success: function (result) {
                if (result === 1) {
                    $(".email.input-box-message").text("이메일을 발송하였습니다.");
                    $(".email.input-box-message").css("color", "blue");
                    $("#loading").hide();

                    setTrue("isEmailPatternCheck")
                    setTrue("isEmailSendCheck")
                } else {
                    $(".email.input-box-message").text("이메일 발송에 실패하였습니다.");
                    $(".email.input-box-message").css("color", "red");
                    $("#loading").hide();
                    setFalse("isEmailPatternCheck")
                    setFalse("isEmailSendCheck")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });
    }

    function certificationEmailCheck() {

        // 올바른 인증번호 형식이 아닌경우 리턴함

        if (!getItem("isIdPatternCheck")) {
            alert("아이디를 형식에 맞게 작성해주세요")
            return;
        }
        if (!getItem("isIdDuplicationCheck")) {
            alert("아이디를 중복을 확인해주세요")
            return;
        }
        if (!getItem("isEmailPatternCheck")) {
            alert("이메일을 작성을 확인해주세요")
            return;
        }
        if (!getItem("isEmailSendCheck")) {
            alert("이메일을 전송 여부를 확인해주세요")
            return;
        }

        let userIdValue = $("input[name='id']").val();
        let emailValue = $("input[name='email']").val();
        let certificationValue = $("input[name='certification']").val();
        console.log(userIdValue);
        console.log(emailValue);
        console.log(certificationValue);

        $.ajax({
            url: realPath+'/auth/certification-email-check', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({
                userId: userIdValue,
                email: emailValue,
                certificationNumber: certificationValue
            }),
            success: function (result) {

                if (result === 1) {
                    $(".certification.input-box-message").text("이메일 인증에 성공하였습니다");
                    $(".certification.input-box-message").css("color", "blue");
                    email = emailValue;
                    setTrue("isCertificationCheck");
                } else {
                    $(".certification.input-box-message").text("인증번호가 일치하지 않습니다.");
                    $(".certification.input-box-message").css("color", "red");
                    setFalse("isCertificationCheck")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });
    }

    function daumAddressOpen() {
        new daum.Postcode({
            oncomplete: function (data) {

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 도로명 주소
                    fullAddr = data.roadAddress;
                } else { // 지번 주소
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일 때 조합형 주소를 추가한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다.
                    if (data.bname !== '') {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if (data.buildingName !== '') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                }

                let addressData = fullAddr.trim()
                if(addressData !== null){
                    setTrue("isAddressCheck")
                }else{
                    setFalse("isAddressCheck")
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = fullAddr; // 전체 주소

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }

    function emailSendButtonClick(){
        if (event.key === 'Enter' && getItem("isEmailPatternCheck")) {
            event.preventDefault(); // Enter 키 기본 동작 방지 (예: 폼 제출 등)
            certificationEmailSend();
        }
    }

    function privacyCheck() {
        $("#privacy-icon").toggleClass("privacy-check-ok privacy-check");

        if($("#privacy-icon").hasClass("privacy-check-ok")){
            setTrue("isPrivacyCheck")
            $(".privacy-check-text").css("color", "blue")

        }else{
            setFalse("isPrivacyCheck")
            $(".privacy-check-text").css("color", "rgba(138, 146, 166, 1)")
        }
    }

    function signUp(){
        // 올바른 인증번호 형식이 아닌경우 리턴함

        if (!getItem("isIdPatternCheck")) {
            alert("아이디를 형식에 맞게 작성해주세요")
            return;
        }
        if (!getItem("isIdDuplicationCheck")) {
            alert("아이디 중복을 확인해주세요")
            return;
        }
        if (!getItem("isEmailPatternCheck")) {
            alert("이메일 형식을 확인해주세요")
            return;
        }
        if (!getItem("isEmailSendCheck")) {
            alert("이메일 전송을 확인해주세요")
            return;
        }
        if (!getItem("isCertificationCheck")) {
            alert("인증번호를 확인인해주세요")
            return;
        }
        if (!getItem("isPasswordPattern")) {
            alert("비밀번호 형식을 확인인해주세요")
            return;
        }
        if (!getItem("isPasswordEqualCheck")) {
            alert("비밀번호가 동일한지 확인인해주세요")
            return;
        }
        if (!getItem("isNicknameDuplicationCheck")) {
            alert("닉네임 중복을 확인해주세요")
            return;
        }
        if (!getItem("isPhoneNumberPatternCheck")) {
            alert("휴대전화번호 형식을 확인해주세요")
            return;
        }
        if (!getItem("isAddressCheck")) {
            alert("주소를 확인해주세요")
            return;
        }
        if (!getItem("isPrivacyCheck")) {
            alert("개인정보 동의 여부를 확인해주세요")
            return;
        }

        let idValue = $("input[name='id']").val();
        let passwordValue = $("input[name='password']").val();
        let nicknameValue = $("input[name='nickname']").val();
        let phoneNumberValue = $("input[name='phoneNumber']").val();
        let addressValue = $("input[name='address']").val();
        let addressDetailValue = $("input[name='addressDetail']").val();
        let emailValue = $("input[name='email']").val();
        // +를 붙이면 숫자로 0,1로 변환된다.
        let privacyValue = +getItem("isPrivacyCheck");


        $.ajax({
            url: realPath+'/auth/sign-up', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({
                userId: idValue,
                password: passwordValue,
                nickname: nicknameValue,
                phoneNumber: phoneNumberValue,
                address: addressValue,
                addressDetail: addressDetailValue,
                email: emailValue,
                agreeCheck: privacyValue
            }),
            success: function (result) {

                if (result === 1) {
                    alert("회원가입에 성공하였습니다.")
                    // 예를 들어, 페이지 이동
                    window.location.href = realPath+'/auth/sign-in'
                } else {
                    alert("회원가입에 실패하였습니다.")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });

    }

    function nextFocusOn(event, nextFieldName) {
        if (event.key === 'Enter') {
            event.preventDefault(); // Enter 키 기본 동작 방지 (예: 폼 제출 등)

            // 다음 필드로 포커스 이동
            let nextInput = "input[name='" + nextFieldName + "']";
            const nextField = $(nextInput);

            if(nextFieldName === "address"){
                nextField.click();
            }
            nextField.focus();
        }
    }

    function localPrint() {
        console.log("------------------------------------------------")
        console.log("아이디패턴: " + getItem("isIdPatternCheck"))
        console.log("아이디중복: " + getItem("isIdDuplicationCheck"))
        console.log("이메일패턴: " + getItem("isEmailPatternCheck"))
        console.log("이메일전송: " + getItem("isEmailSendCheck"))
        console.log("이메일인증: " + getItem("isCertificationCheck"))
        console.log("비번패턴: " + getItem("isPasswordPattern"))
        console.log("비번동일: " + getItem("isPasswordEqualCheck"))
        console.log("닉넴중복: " + getItem("isNicknameDuplicationCheck"))
        console.log("전화번호패턴: " + getItem("isPhoneNumberPatternCheck"))
        console.log("주소확인: " + getItem("isAddressCheck"))
        console.log("정보동의: " + getItem("isPrivacyCheck"))
        console.log("------------------------------------------------")
    }
</script>

</html>
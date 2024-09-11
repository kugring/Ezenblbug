<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[ 로그인 ]- Ezenblbug</title>
<link rel="icon" href="${pageContext.request.contextPath}/resources/assets/title_logo.png" type="image/png">
<link href="${path}/resources/signIn/style.css" type="text/css" rel="stylesheet" />
<link href="${path}/resources/app.css" type="text/css" rel="stylesheet" />
</head>
<script>
    let realPath = "${path}"
</script>
<body>
        <div id="sign-in-wrapper">
            <div class='sign-in-image'></div>
            <div class='sign-in-container'>
                <div class='sign-in-box'>
                    <div class='sign-in-title'>젠블벅 프로젝트 서비스</div>
                    <div class='sign-in-content-box'>
                        <div class='sign-in-content-input-box'>
                            <!-- <InputBox ref={idRef} title='아이디' placeholder='아이디를 입력해주세요' type='text' value={id} onChange={onIdChangeHandler} onKeyDown={onIdKeyDownHandler} />
                            <InputBox ref={passwordRef} title='비밀번호' placeholder='비밀번호를 입력해주세요' type='password' value={password} onChange={onPasswordChangeHandler} isErrorMessage message={message} onKeyDown={onPasswordKeyDownHandler} /> -->
                       		<form action="<c:url value='/loginProcess'/>" method="POST">
						        <div class='input-box'>
						            <div class='input-box-title'>로그인</div>
						            <div class='input-box-content'>
						                <div class='input-box-body'>
						                    <input name="username" class='input-box-input' placeholder="아이디를 입력해주세요" type="text"  oninput="clearMessage()" onKeyDown="" ref=""/>
						                </div>
						            </div>
						        </div>
						        <div class='input-box'>
						            <div class='input-box-title'>비밀번호</div>
						            <div class='input-box-content'>
						                <div class='input-box-body'>
						                    <input name="password" class='input-box-input' placeholder="비밀번호를 입력해주세요" type="password"  onChange="clearMessage()" onKeyDown="" ref=""/>
						                </div>
						            </div>
						            <div class="input-box-message-error">&nbsp;</div>
						        </div>
								<input id="sign-in-button" type="submit" style="display:none;">
							</form>
                            <div class='sign-in-content-button-box'>
                                <div id="sign-in-sub-button" class='primary-button-lg full-width'>로그인</div>
                                <div id="sign-up-page-move" class='text-link-lg full-width'>회원가입</div>
                            </div>
                        </div>

                        <div class='sign-in-content-divider'></div>
                        <div class='sign-in-content-sns-sign-in-box'>
                            <div class='sign-in-content-sns-sign-in-title'>SNS 로그인</div>
                            <div class='sign-in-content-sns-sign-in-button-box'>
                                <div class='kakao-sign-in-button'></div>
                                <div class='naver-sign-in-button'></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




</body>
<script>
    document.getElementById("sign-in-sub-button").addEventListener("click", function() {
        document.getElementById("sign-in-button").click();
    });
    document.getElementById("sign-up-page-move").addEventListener("click", function() {
        window.location.href = realPath+"/auth/sign-up"; // '/'를 붙이면 경로가 'auth'가 붙인 채로 전송되기 떄문에 /를 붙이면 안된다.
    });

    function getQueryParameter(name) {
        const urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(name);
    }

    document.addEventListener("DOMContentLoaded", () => {
        const message = getQueryParameter("message");
        console.log(message === "fail")
        if(message === "fail"){
            document.querySelector(".input-box-message-error").textContent = "로그인 정보가 일치하지 않습니다.";
        }

    });

    function clearMessage(){
        document.querySelector(".input-box-message-error").innerHTML = '&nbsp;';
    }
</script>
</html>
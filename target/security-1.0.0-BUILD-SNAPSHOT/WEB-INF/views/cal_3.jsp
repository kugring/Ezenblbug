<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>계산기</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
*{
    margin: 0;
    padding: 0;
}
*:focus{
outline: 0;
}
body {
text-align: center;
}
h1 {
text-align: center;
}
form {
display: inline-block;
margin: 0 auto;
padding: 50px 0px;
text-align: left;
font-size: 18px;
}
form input {
margin: 10px 0px;
}
form input[type="radio"] {
margin: 15px 5px;
cursor: pointer;
}
input.textStyle {
padding: 5px 10px;
font-size: 17px;
}
input.buttonStyle {
padding: 5px 10px;
font-size: 17px;
}
</style>
<script>
function cal() {
$.ajax({
url: `cal_03.jsp`,
type: "post",
data: {
numberOne:$("#numberOne").val(),
numberTwo:$("#numberTwo").val(),
check:document.querySelector('input[name="check"]:checked').value
},
cache: false,
dataType: "json",
success: (data) => {
$('#numberOne').val(0);
$('#numberTwo').val(0);
$('#numberResult').val(data.result);
},
error: () => {
console.log('오류발생');
}
});
}
</script>
</head>
<body>
<h1>계산기</h1>
<form>
<label>입력값 1 : <input type="number" name="numberOne" id="numberOne" step="0.001" class="textStyle" value="0"></label>
<br>
<label>입력값 2 : <input type="number" name="numberTwo" id="numberTwo" step="0.001" class="textStyle" value="0"></label>
<br>
<input type="radio" name="check" id="" checked value="+">덧셈
<input type="radio" name="check" id="" value="-">뺄셈
<input type="radio" name="check" id="" value="*">곱셈
<input type="radio" name="check" id="" value="/">나눗셈
<br>
<input type="button" class="buttonStyle" onclick="cal()" value="계산하기">
<input type="reset" class="buttonStyle" value="초기화">
<br>
<label>계산결과 : <input type="number" name="numberResult" id="numberResult" step="0.001" class="textStyle" readonly value="0"></label>
</form>
</body>
</html>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	double one = Double.parseDouble(request.getParameter("numberOne"));
	double two = Double.parseDouble(request.getParameter("numberTwo"));
	String cal = request.getParameter("check");
	double result = 0;
	switch (cal) {
	case "+":
		result = one + two;
		break;
	case "-":
		result = one - two;
		break;
	case "*":
		result = one * two;
		break;
	case "/":
		result = one / two;
		break;

	default:
		result = 0;
		break;
	}
%>
{
"result":<%=result %>
}
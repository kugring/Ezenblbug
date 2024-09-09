
$(".funding-goal-amount-input").on("click input", function (){
    onGoalAmountChange(this)
})

// 로딩시 한번은 클릭되도록 하기 위한 코드
$(".funding-goal-amount-input").trigger("click");

function onGoalAmountChange(input) {
// 공백과 쉼표를 제거한 숫자 값 가져오기
    let value = input.value.replace(/[^0-9]/g, '');
    let numValue = Number(value);
    let $messsage = $(".funding-goal-amount-message")
    let $paddingBox = $(input).closest(".funding-goal-amount-input-padding")

// 쉼표로 구분된 숫자 포맷팅
    if (value) {
        value = Number(value).toLocaleString();
    }
    if(numValue > 100000000000){
        input.value = 10000000000
        return;
    }

    $(".funding-goal-fee-title-text").text((numValue - Math.round(numValue * 0.132)).toLocaleString() + "원")
    $(".funding-goal-fee-detail-num.total").text(Math.round(numValue * 0.12).toLocaleString() + "원")
    $(".funding-goal-fee-detail-num.agency").text(Math.round(numValue * 0.033).toLocaleString() + "원")
    $(".funding-goal-fee-detail-num.rate").text(Math.round(numValue * 0.099).toLocaleString() + "원")


// 포맷팅된 값을 입력 필드에 설정
    input.value = value;

    if (500000 > numValue) {
        $messsage.text("50만원 이상의 금액을 입력해주세요.")
        $paddingBox.css("border", 'solid 1px rgba(255,0,0,1)')
    } else if (numValue > 1000000000) {
        $messsage.text("10,000,000,000원 미만인 금액을 입력해주세요.")
        $paddingBox.css("border", 'solid 1px rgba(255,0,0,1)')
    } else {
        $paddingBox.css("border", "1px solid black");
        $messsage.text('')
    }

    $(input).on("blur", function () {

        let result = numValue >= 500000 && numValue <= 1000000000;

        console.log(result);

        // 조건에 따라 CSS 스타일 적용
        if (result) {
            $paddingBox.css("border", 'solid 1px rgb(240, 240, 240)');
        } else {
            $paddingBox.css("border", 'solid 1px red'); // 범위를 벗어난 경우에 대한 처리
        }
    });
}

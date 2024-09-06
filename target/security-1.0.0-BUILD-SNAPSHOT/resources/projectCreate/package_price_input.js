$(".price-input.gift").on("input focus", function () {
    let $input = $(this)
    let inputVal = $input.val()
    let value = inputVal.replace(/[^0-9]/g, '');
    let numValue = Number(value);
    let $message = $(".price-input-message");

    if (numValue < 1000) {
        $message.text("1,000원 이상의 금액을 입력해주세요.")
        $message.addClass("error")
    } else if(numValue > 10000000){
        $message.text("10,000,000원 이하의 금액을 입력해 주세요.")
        $message.addClass("error")
    } else {
        $message.text("")
        $message.removeClass("error")
    }
    $input.val(numValue.toLocaleString())
})
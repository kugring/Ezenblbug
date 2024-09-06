
// 요금제 선텍이 따른 css 변화
$('.rate-select-button').on("click", function () {
    // 현재 선택된 버튼과 관련된 요소들을 선택
    var $button = $(this);
    var $rateItem = $button.closest(".rate-item");
    var $svg = $button.find(".rate-select-button-svg");

    // 모든 관련 클래스 제거
    $(".rate-select-button").removeClass("select");
    $(".rate-select-button-svg").removeClass("select");
    $(".rate-item").removeClass("select");

    // 클릭한 요소들에 선택 클래스 추가
    $rateItem.toggleClass("select");
    $button.toggleClass("select");
    $svg.toggleClass("select");
});
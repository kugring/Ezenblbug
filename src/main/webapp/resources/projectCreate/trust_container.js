//              event handler: 신뢰와 안전               //
// 저장 or 취소 버튼 클릭시 텍스트에이리어 사라지고 작성하기 버튼 등장함
$(".trust-card-textarea-button").on("click", function () {
    var $button = $(this);
    let $card = $button.closest(".trust-card-box")

    $card.find(".trust-card-write-button").css("display", "flex")
    $card.find(".input-textarea").css("display", "none")
    $card.find(".trust-card-textarea-buttons").css("display", "none")
})

// 신뢰와 안전 텍스트에어리어의 전용
$(".trust-card-textarea").on("input focus", function () {
    blockTextareaInput(this);
});

function blockTextareaInput(element) {
    const $element = $(element);
    const maxLength = parseInt($element.closest(".input-textarea")
        .find(".charMax").text(), 10);
    console.log(maxLength)
    const currentLength = $(element).val().length;
    const $charCount = $element.closest(".input-textarea").find(
        ".charCount");
    const $countDisplay = $element.closest(".input-textarea").find(
        ".input-textarea-count-box");

    $charCount.text(currentLength + "/");

    // 공통 스타일 객체 정의
    const normalStyles = {
        color: 'rgba(0, 0, 0, 0.87)',
        border: 'solid 1px rgb(240, 240, 240)'
    };

    const errorStyles = {
        color: 'red',
        border: 'solid 1px rgba(255,0,0,1)',
        outline: 'solid 1px rgba(255,0,0,1)'
    };

    // 현재 상태에 따른 스타일 적용
    const styles = currentLength > maxLength ? errorStyles
        : normalStyles;
    $element.css(styles);
    $countDisplay.css({
        color: styles.color
    });
}

// 작성하기 버튼 클릭시 텍스트에어리어 등장 + 작성하기 버튼 none 처리
$(".trust-card-write-button").on("click", function () {
    var $button = $(this);
    let $card = $button.closest(".trust-card-box")

    // 저장 취소 버튼 등장
    $card.find(".trust-card-textarea-buttons").css("display", "flex")

    // 작성하기 버튼 숨김처리
    $button.css("display", "none")
    // 클릭한 버튼의 상위 요소 중 .trust-card-box를 찾고, 그 안의 .trust-card-textarea를 선택
    var $textarea = $card.find(".input-textarea");

    // 현재 display 상태에 따라 토글 (none <-> flex)
    if ($textarea.css("display") === "none") {
        $textarea.css("display", "flex");
        $textarea.find(".trust-card-textarea").focus();

    } else {
        $textarea.css("display", "none");
    }
});

// 인풋 태그들 시작시 한번씩 다 클랙해주는 코드
$(document).ready(function () {
    // 페이지 로딩 시 모든 .input-one 요소에 대해 blockInput 함수를 한 번 실행
    $(".input-one").each(function () {
        blockInput(this);
    });
    // 이벤트 핸들러 등록
    $(".input-one").on("input click", function () {
        blockInput(this);
    });
});

// 인풋 글자수 제한 하는 코드
function blockInput(element) {
    // element.value = "";

    const $element = $(element);
    console.log($element.val())

    const maxLength = parseInt($element.closest(".input-one-box").find(".charMax").text(), 10);
    const currentLength = $(element).val().length;
    const $charCount = $element.closest(".input-one-box").find(".charCount");


    const $elementPadding = $(element).closest(".input-one-padding");
    const $countDisplay = $element.closest(".input-one-box").find(".input-one-count-box");
    const $elementMessage = $(element).closest(".input-one-box").find(".input-one-message");
    const $elementTextarea = $(element).closest(".input-one-box").find("textarea");

    let result;

    $charCount.text(currentLength + "/");

    // (10 ~ Max) 글자
    if ($elementTextarea.length > 0) {
        if (currentLength < 10) {
            $element.css("color", "red")
            $elementPadding.css("border", 'solid 1px rgba(255,0,0,1)')
            $countDisplay.css("color", "red")
            $elementMessage.text("최소 10자 이상 적어주세요.")
            result = false;
        } else if (currentLength > maxLength) {
            $element.css("color", "red")
            $elementPadding.css("border", 'solid 1px rgba(255,0,0,1)')
            $countDisplay.css("color", "red")
            $elementMessage.text("")
            result = false;
        } else {
            $element.css("color", 'rgba(0, 0, 0, 0.87)')
            $elementPadding.css("border", "1px solid black");
            $countDisplay.css("color", "rgb(158, 158, 158)")
            $elementMessage.text("")
            result = true;
        }
    }
    // (1 ~ Max) 글자
    else {
        // 현재 상태에 따른 스타일 적용
        if (currentLength === 0) {
            $element.css("color", "red")
            $elementPadding.css("border", 'solid 1px rgba(255,0,0,1)')
            $countDisplay.css("color", "red")
            $elementMessage.text("필수 항목입니다.")
            result = false;
        } else if (currentLength > maxLength) {
            $element.css("color", "red")
            $elementPadding.css("border", 'solid 1px rgba(255,0,0,1)')
            $countDisplay.css("color", "red")
            $elementMessage.text("")
            result = false;
        } else {
            $element.css("color", 'rgba(0, 0, 0, 0.87)')
            $elementPadding.css("border", "1px solid black");
            $countDisplay.css("color", "rgb(158, 158, 158)")
            $elementMessage.text("")
            result = true;
        }
    }


    // 포커스를 잃었을 때
    $element.on("blur", function () {
        // 현재 상태에 따라 border 스타일 설정
        if (currentLength > maxLength || currentLength === 0) {
            $elementPadding.css("border", "solid 1px rgba(255,0,0,1)");

        } else {
            $elementPadding.css("border", 'solid 1px rgb(240, 240, 240)')
        }
    });


}

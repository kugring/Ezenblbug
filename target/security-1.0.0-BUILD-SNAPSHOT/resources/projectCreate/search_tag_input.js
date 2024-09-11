$(document).ready(function () {
    // 페이지 로딩 시 모든 .input-one 요소에 대해 blockInput 함수를 한 번 실행
    $(".input-search-tag").each(function () {
        searchTagInput(this);
    });
    // 이벤트 핸들러 등록
    $(".input-search-tag").on("input click", function () {
        searchTagInput(this);
    });

    // 엔터 키 눌림을 확인하여 함수 실행
    $('.input-search-tag').on('keypress', function (e) {
        if (e.which === 13) { // Enter key의 keyCode는 13
            e.preventDefault(); // 기본 Enter 키 동작(폼 제출)을 막음
            putSearchTagBox(this); // 엔터 키가 눌렸을 때
            readySaveButton()
        }
    });

    // 이벤트 핸들러 등록
    $(".info-search-tag-badge-delete-button").on("click", function () {
        deleteSearchTag(this);
        readySaveButton()
    });
});

var searchTagList = []

function JspSearchTagInput() {
    let $tagWord = $(".info-search-tag-badge-box .info-search-tag-badge-item");
    let $searchTagCurrentCountBox = $(".search-tag-count");

    // searchTagList를 초기화하고 태그들을 추가합니다.
    searchTagList = $tagWord.map(function () {
        return $(this).text().trim();
    }).get();

    // 태그 갯수 계산 및 출력
    let tagLength = searchTagList.length;
    console.log("나는 태그 갯수: " + tagLength);
    console.log("나는 태그 리스트: "+ searchTagList)
    $searchTagCurrentCountBox.text(tagLength);
}

function searchTagInput(element) {
    JspSearchTagInput()
    let $element = $(element);
    let $inputBox = $element.closest(".info-search-tag-input-box")
    let $elementPadding = $inputBox.find(".input-search-tag-padding")
    let $messageItem = $inputBox.find(".input-search-tag-message")
    let $searchTagCurrentCountBox = $inputBox.find(".search-tag-count")
    let currentTagCount = parseInt($searchTagCurrentCountBox.text(), 10)
    let currentCharLength = $(element).val().length;
    let maxCharLength = 15;
    let maxTagCount = 10;

    if (currentTagCount === 0 && currentCharLength === 0) {
        $messageItem.text("1개 이상의 태그를 등록해주세요.")
        $elementPadding.addClass("error")
    } else if (currentCharLength > maxCharLength) {
        $messageItem.text("한 태그당 문자로만 최대 15자 이하 입력해주세요.")
        $elementPadding.addClass("error")
    } else {
        $messageItem.text("")
        $elementPadding.removeClass("error")
    }

}

function putSearchTagBox(element) {
    let $inputBox = $(element).closest(".info-search-tag-input-box")
    let $searchTagCurrentCountBox = $inputBox.find(".search-tag-count")
    let $elementPadding = $inputBox.find(".input-search-tag-padding")

    let currentCharLength = $(element).val().length;
    let enterSearchTag = $(element).val().trim()


    // 글자가 15자 이상이면 리턴
    if (currentCharLength > 15) {
        return;
    }
    // 해당 값이 null이면 리턴
    else if (currentCharLength === 0) {
        $(element).val('')
        return;
    }
    // 해당 키워드가 이미 있다면 리턴
    else if (searchTagList.includes(enterSearchTag)) {
        $(element).val('')
        return;
    }
    // 최종으로 데이터 넣기
    else {
        searchTagList.push(enterSearchTag)
        $(element).val('')
    }

    let badgeBox = $inputBox.find(".info-search-tag-badge-box")
    let searchTagItem =
        `
                    <div class="info-search-tag-badge-item">
                        ` + enterSearchTag + `
                        <svg class="info-search-tag-badge-delete-button" onclick="deleteSearchTag(this)" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M4.28544 5.00257L2.01916 2.73642C1.82521 2.54248 1.82974 2.23083 2.01598 2.02765C2.21448 1.81131 2.5294 1.8394 2.72795 2.02108L2.72969 2.02268L4.99738 4.2905L7.26357 2.02431C7.4575 1.83056 7.7691 1.83508 7.97226 2.02115C8.1886 2.21946 8.16077 2.53473 7.97878 2.73311L7.97723 2.73479L5.70945 5.00257L7.97564 7.26876C8.16953 7.46283 8.16504 7.77425 7.97884 7.97756L7.97724 7.9793L7.97557 7.98097C7.78164 8.17472 7.47008 8.17023 7.26691 7.98417L7.26519 7.98259L4.99738 5.71465L2.73129 7.981C2.53725 8.17469 2.22572 8.17025 2.02253 7.98417L2.01908 7.98101L2.01592 7.97756C1.82971 7.77425 1.82526 7.46279 2.01916 7.26872L4.28544 5.00257Z" fill="#6D6D6D"></path></svg>
                    </div>
        `
    badgeBox.append(searchTagItem)

    $searchTagCurrentCountBox.text(searchTagList.length)

    // 태그의 갯수가 10개 이상인 경우 input태그에 disabled 속성 추가
    if (searchTagList.length > 9) {
        element.disabled = true;
        $elementPadding.addClass("disable")
    }
}

function deleteSearchTag(element) {
    let $element = $(element)
    let $inputBox = $(element).closest(".info-search-tag-input-box")
    let $inputElement = $inputBox.find(".input-search-tag")
    let $elementPadding = $inputBox.find(".input-search-tag-padding")
    let $tagBadge = $element.closest(".info-search-tag-badge-item")
    let tagWord = $tagBadge.text().trim()

    if (searchTagList.includes(tagWord)) {
        searchTagList = searchTagList.filter(function (item) {
            return item !== tagWord;
        });
        $tagBadge.remove();
        $elementPadding.removeClass("disable")
        $inputElement.prop("disabled", false);
    } else {
        return alert("태그를 제외할 수 없습니다.");
    }
    readySaveButton();
}
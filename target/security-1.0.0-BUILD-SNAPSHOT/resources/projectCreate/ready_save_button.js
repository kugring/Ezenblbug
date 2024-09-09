function readySaveButton() {
    $(".project-create-save-button").removeClass("disable")
    $(".project-create-save-button").text('')
}

// 제품 생성의 저장 버튼 활성화
function readyProductSaveButton() {
    productNameCheck() && productExplainCheck() ? $(".gift-custom-save").removeClass("disable") : $(".gift-custom-save").addClass("disable")
}

// 제품 생성 저장버튼 활성화를 일으키는 이벤트
$(".input-one.product-name, .gift-explain-button, .input-one.product-explain").on("input click", function () {
    readyProductSaveButton();
});

// 패키지 생성의 저장 버튼 활성화
function readPackageSaveButton() {
    console.log("이것은 패키지 저장버튼: "+packageTitleCheck() && maxQuantityCheck() && maxPersonQuantityCheck() && packagePriceInputCheck() && productSelectorCheck())
    if(packageTitleCheck() && maxQuantityCheck() && maxPersonQuantityCheck() && packagePriceInputCheck() && productSelectorCheck()){
        $(".package-custom-save").removeClass("disable")
    } else  {
        $(".package-custom-save").addClass("disable")
    }
}
// 패키지 생성 저장버튼 활성화를 일으키는 이벤트
$(".gift-item-selector-box, .input-one.package-name, .radio-item-box, .radio-count-input , .price-input.gift").on("input click", function () {
    readPackageSaveButton();
});

///////////////////////////////////////       기본 정보       //////////////////////////////////////////////////////////

// 카테고리 변경시 진행
$(".project-Category-subSelect").on("input", function () {
    categorySelectCheck() && readySaveButton()
})
// 긴제목 변경시
$(".input-one.long-title").on("input", function () {
    longSubjectInputCheck() && readySaveButton()
})
// 짧은 제목 변경시
$(".input-one.short-title").on("input", function () {
    shortSubjectInputCheck() && readySaveButton()
})
// 프로젝트 요약 변경시
$(".input-one.project-summary").on("input", function () {
    summaryInputCheck() && readySaveButton()
})
// 프로젝트 썸네일 변경시
// thumbnail_input.js에 직업 넣음
// 검색 인풋창 엔터 키 눌림을 확인하여 함수 실행
$('.input-search-tag').on('keypress', function (e) {
    tagWordListCheck() && readySaveButton()
});
// 태그 삭제 버튼 클릭시
// search_tag_input.js로 직접 넣음

///////////////////////////////////////       펀딩 계획       //////////////////////////////////////////////////////////

// 목표금액 변경시 진행
$(".funding-goal-amount-input").on("input", function () {
    goalAmountInputCheck() && readySaveButton()
})
// 펀딩 일정 변경시 진행

///////////////////////////////////////       선물 구성       //////////////////////////////////////////////////////////

// 선물 변경시 진행
$(".package-custom-save").on("click", function () {
    makeGiftCheck() && readySaveButton()
})

///////////////////////////////////////       프로젝트 계획       //////////////////////////////////////////////////////////

// 프로젝트 소개 변경시
$(".editor-container.project-introduction").on("click", function () {
    introductionCheck() && readySaveButton()
})
// 프로젝트 예산 변경시
$(".editor-container.project-budget").on("click", function () {
    budgetCheck() && readySaveButton()
})
// 프로젝트 일정 변경시
$(".editor-container.project-schedule").on("click", function () {
    scheduleCheck() && readySaveButton()
})
// 팀 소개 변경시
$(".editor-container.team-introduction").on("click", function () {
    teamIntroductionCheck() && readySaveButton()
})
// 선물 설명 변경시
$(".editor-container.project-gift").on("click", function () {
    giftCheck() && readySaveButton()
})

///////////////////////////////////////       창작자 정보       //////////////////////////////////////////////////////////

// 창작자 이름 변경시 진행
$(".input-one.creator-name").on("click", function () {
    creatorNameCheck() && readySaveButton()
})
// 프로필 사진 변경시 진행
// profile_image_input.js로 직접 넣음
// 창작자 활동구역 변경시 진행
$(".sigungu.selector-input").on("input", function () {
    localActiveSelectorCheck() && readySaveButton()
})
// 입금 계좌 변경시 진행
$(".trust-card-textarea.account").on("input", function () {
    accountInputCheck() && readySaveButton()
})
// 세금 계산서 변경시 진행
$(".trust-card-textarea.tax").on("input", function () {
    taxInputCheck() && readySaveButton()
})

///////////////////////////////////////       신뢰와 완전       //////////////////////////////////////////////////////////

// 프로젝트 정색 변경시 진행
$(".trust-card-textarea.policy").on("input", function () {
    policyInputCheck() && readySaveButton()
})
// 예상되는 어려움 변경시 진행
$(".trust-card-textarea.problem").on("input", function () {
    problemInputCheck() && readySaveButton()
})
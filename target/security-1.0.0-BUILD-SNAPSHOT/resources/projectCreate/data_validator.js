///////////////////////////////////////       기본 정보       //////////////////////////////////////////////////////////


// 카테고리 선택 유효성 검사
function categorySelectCheck() {
    let category = $(".project-Category-subSelect.category").val().trim()
    let categoryDetail = $(".project-Category-subSelect.category-detail").val().trim()

    return category !== '' && categoryDetail !== '';
}

// 프로젝트 긴 제목 유효성 검사
function longSubjectInputCheck() {
    let longSubjectVal = $(".project-long-subject-input-box").find(".input-one").val()
    return longSubjectVal.length > 0 && longSubjectVal.length <= 23;
}

// 프로젝트 짧은 제목 유효성 검사
function shortSubjectInputCheck() {
    let shortSubjectVal = $(".project-short-subject-input-box").find(".input-one").val()
    return shortSubjectVal.length > 0 && shortSubjectVal.length <= 23;
}

function summaryInputCheck() {
    let summaryVal = $(".project-summary-input-box").find(".input-one").val()
    return summaryVal.length >= 10 && summaryVal.length <= 300;
}

function thumbnailInputCheck() {
    return $(".info-thumbnail-screen-item").length > 0;
}

function tagWordListCheck() {
    return searchTagList.length > 0;
}


///////////////////////////////////////       펀딩 계획       //////////////////////////////////////////////////////////

function goalAmountInputCheck() {
    let goalAmountVal = $(".funding-goal-amount-input").val()
    console.log(goalAmountVal)
    let value = goalAmountVal.replace(/[^0-9]/g, '');

    return value >= 500000 && value < 100000000000;
}

function scheduleInputCheck() {
    let scheduleVal = $("#funding-date-text").text().toString().replace("일", "").trim()
    console.log(scheduleVal)
    let numVal = Number(scheduleVal)
    return numVal >= 1;
}


///////////////////////////////////////       선물 구성       //////////////////////////////////////////////////////////

function makeGiftCheck() {
    return $(".package-make-result-card").length >= 1
}

function productNameCheck() {
    let length = $(".input-one.product-name").val().trim().length;
    return length > 0 && length <= 15;
}

function productExplainCheck(){
    if($(".gift-explain-button.select").text().trim() === "있음"){
        let length = $(".input-one.product-explain").val().trim().length
        return length > 0 && length <= 15;
    }
    return true;
}

function packageTitleCheck(){
    let length = $(".input-one.package-name").val().trim().length
    console.log(length > 0 && length <= 50)
    return length > 0 && length <= 50;
}
function maxQuantityCheck(){
    console.log($(".package-custom-item-box.max-quantity-limit").find(".radio-item-box").hasClass("select"))
    return $(".package-custom-item-box.max-quantity-limit").find(".radio-item-box").hasClass("select");
}
function maxPersonQuantityCheck(){
    console.log($(".package-custom-item-box.person-quantity-limit").find(".radio-item-box").hasClass("select"))
    return $(".package-custom-item-box.person-quantity-limit").find(".radio-item-box").hasClass("select");
}
function packagePriceInputCheck(){
    console.log(parseInt($(".price-input.gift").val().trim().replace(",",""),10) >= 1000 && parseInt($(".price-input.gift").val().trim().replace(",",""),10) <= 10000000)
    return parseInt($(".price-input.gift").val().trim().replace(",",""), 10) >= 1000 && parseInt($(".price-input.gift").val().trim().replace(",",""),10) <= 10000000
}
function productSelectorCheck(){
    console.log($(".gift-item-select-card-box").find(".gift-item-select-card").length > 0)
    return $(".gift-item-select-card-box").find(".gift-item-select-card").length > 0;
}

// 1인 최대 구매량이 최대_수량보다 클 수 없다.
$(".radio-count-input.max-person-quantity").on("input",function(){
    let personNum = $(this).val()
    let maxNum = $(".radio-count-input.max-quantity").val()

    if(personNum > maxNum){
        alert("1인 최대 수량이 최대_수량보다 클 수 없습니다.");
        // 이전 값으로 되돌림
        $(this).val($(this).data('prevValue'));
    } else {
        // 유효한 값이라면 data에 값 업데이트
        $(this).data('prevValue', personNum);
    }
})

$(".radio-count-input").on("input",function (){
    if($(this).val() <= 0) {
        alert("수량을 1개 이상 작성해주세요")
    }
})


///////////////////////////////////////       프로젝트 계획       //////////////////////////////////////////////////////////


function introductionCheck() {
    let introductionVal = $(".projectPlan-right-body-list.introduction").find(".ql-editor").html();
    return introductionVal.length > 100;
}

function budgetCheck() {
    let budgetVal = $(".projectPlan-right-body-list.budget").find(".ql-editor").html();
    return budgetVal.length > 100;
}

function scheduleCheck() {
    let scheduleVal = $(".projectPlan-right-body-list.schedule").find(".ql-editor").html();
    return scheduleVal.length > 100;
}

function teamIntroductionCheck() {
    let teamIntroductionVal = $(".projectPlan-right-body-list.team-introduction").find(".ql-editor").html();
    return teamIntroductionVal.length > 100;
}

function giftCheck() {
    let giftVal = $(".projectPlan-right-body-list.gift").find(".ql-editor").html();
    return giftVal.length > 100;
}


///////////////////////////////////////       창작자 정보       //////////////////////////////////////////////////////////

function creatorNameCheck() {
    let nameVal = $(".creator-name-input").find(".input-one").val()
    console.log(nameVal.length)
    return nameVal.length > 0 && nameVal.length <= 20;
}

function creatorIntroductionCheck() {
    let creatorIntroductionVal = $(".creator-introduce-box").find(".input-one").val()
    return creatorIntroductionVal.length >= 10 && creatorIntroductionVal.length <= 300;
}

function localActiveSelectorCheck() {
    return $(".sigungu.selector-input").val().trim() != null;

}

function accountInputCheck() {
    let accountVal = $(".creator-wrapper.account").find(".trust-card-textarea").val().trim()
    return accountVal !== '';
}

function taxInputCheck() {
    let taxVal = $(".creator-wrapper.tax").find(".trust-card-textarea").val().trim()
    return taxVal !== '';
}


///////////////////////////////////////       신뢰와 완전       //////////////////////////////////////////////////////////


function policyInputCheck() {
    let policyVal = $(".trust-card-box.policy").find(".trust-card-textarea").val().trim()
    return policyVal !== '';
}

function problemInputCheck() {
    let problemVal = $(".trust-card-box.problem").find(".trust-card-textarea").val().trim()
    return problemVal !== '';
}
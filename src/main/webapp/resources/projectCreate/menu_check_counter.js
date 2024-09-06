function allCounter(){
    infoCounter()
    fundingCounter()
    giftCounter()
    planCounter()
    creatorCounter()
    trustCounter()
}
setTimeout(() => {allCounter()}, 50)
function infoCounter(){
    let falseCount = 0;

    // 각 함수가 false를 반환하면 falseCount를 증가시킵니다.
    if (!categorySelectCheck()) falseCount++;
    if (!longSubjectInputCheck()) falseCount++;
    if (!shortSubjectInputCheck()) falseCount++;
    if (!summaryInputCheck()) falseCount++;
    if (!thumbnailInputCheck()) falseCount++;
    if (!tagWordListCheck()) falseCount++;

    // false의 개수를 반환합니다.
    $(".header-menu.info").find(".input-alarm-count").text(falseCount)
}

function giftCounter(){
    let falseCount = 0;

    if (!makeGiftCheck()) falseCount++;

    // false의 개수를 반환합니다.
    $(".header-menu.gift").find(".input-alarm-count").text(falseCount)
}


function fundingCounter(){
    let falseCount = 0;

    // 각 함수가 false를 반환하면 falseCount를 증가시킵니다.
    if (!goalAmountInputCheck()) falseCount++;
    if (!scheduleInputCheck()) falseCount++;

    // false의 개수를 반환합니다.
    $(".header-menu.funding").find(".input-alarm-count").text(falseCount)
}

function planCounter(){
    let falseCount = 0;

    // 각 함수가 false를 반환하면 falseCount를 증가시킵니다.
    if (!introductionCheck()) falseCount++;
    if (!budgetCheck()) falseCount++;
    if (!scheduleCheck()) falseCount++;
    if (!teamIntroductionCheck()) falseCount++;
    if (!giftCheck()) falseCount++;

    // false의 개수를 반환합니다.
    $(".header-menu.plan").find(".input-alarm-count").text(falseCount)
}

function creatorCounter(){
    let falseCount = 0;

    // 각 함수가 false를 반환하면 falseCount를 증가시킵니다.
    if (!creatorNameCheck()) falseCount++;
    if (!creatorIntroductionCheck()) falseCount++;
    if (!accountInputCheck()) falseCount++;
    if (!taxInputCheck()) falseCount++;

    // false의 개수를 반환합니다.
    $(".header-menu.creator").find(".input-alarm-count").text(falseCount)
}

function trustCounter(){
    let falseCount = 0;

    // 각 함수가 false를 반환하면 falseCount를 증가시킵니다.
    if (!policyInputCheck()) falseCount++;
    if (!problemInputCheck()) falseCount++;

    // false의 개수를 반환합니다.
    $(".header-menu.trust").find(".input-alarm-count").text(falseCount)
}
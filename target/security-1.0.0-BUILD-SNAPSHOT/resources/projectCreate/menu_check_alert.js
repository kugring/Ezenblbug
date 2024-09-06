function infoCheck(){
    if (!categorySelectCheck()) {
        alert("카테고리를 선택해주세요");
        return;
    }
    if (!longSubjectInputCheck()) {
        alert("프로젝트의 긴 제목을 작성해주세요");
        return;
    }
    if (!shortSubjectInputCheck()) {
        alert("프로젝트의 짧은 제목을 작성해주세요");
        return;
    }
    if (!summaryInputCheck()) {
        alert("프로젝트의 요약을 작성해주세요");
        return;
    }
    if (!thumbnailInputCheck()) {
        alert("썸네일 사진은 필수 입니다");
        return;
    }
    if (!tagWordListCheck()) {
        alert("한개 이상의 검색태그를 입력해주세요");
        return;
    }
    alert("기본정보 저장완료")
}

function fundingCheck(){

    if (!goalAmountInputCheck()) {
        alert("목표금액을 설정해주세요");
        return;
    }
    if (!scheduleInputCheck()) {
        alert("펀딩 일정을 설정해주세요");
        return;
    }
    alert("펀딩_계획 저장완료")
}

function projectPlanCheck(){

    if (!introductionCheck()) {
        alert("프로젝트 소개를 작성해주세요");
        return;
    }
    if (!budgetCheck()) {
        alert("프로젝트 예산을 작성해주세요");
        return;
    }
    if (!scheduleCheck()) {
        alert("프록젝트 일정을 작성해주세요");
        return;
    }
    if (!teamIntroductionCheck()) {
        alert("프로젝트 팀 소개를 작성해주세요.");
        return;
    }
    if (!giftCheck()) {
        alert("선물 설명의 글을 작성해주세요.");
        return;
    }
    alert("프로젝트_계획 저장완료")
}

function creatorCheck(){

    if (!creatorNameCheck()) {
        alert("창작자 이름을 입력해주세요");
        return;
    }
    if (!creatorIntroductionCheck()) {
        alert("창작자 소개를 입력해주세요");
        return;
    }
    if (!accountInputCheck()) {
        alert("입급 계좌을 입력해주세요");
        return;
    }
    if (!taxInputCheck()) {
        alert("세금 계산서를 등록해주세요");
        return;
    }
    alert("창작자_정보 저장완료")
}

function trustCheck(){

    if (!policyInputCheck()) {
        alert("프로젝트 정책을 기입해주세요");
        return;
    }
    if (!problemInputCheck()) {
        alert("예상되는 어려움에 대해서 기입해주세요");
        return;
    }
    alert("신뢰와 안전 저장완료")
}
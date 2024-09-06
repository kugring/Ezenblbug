
// 카테고리 선택자 클릭시 옵션 박스 출현
$(".project-Category-subSelect-Box").on("click", function(){
    $(".category-option-box").toggleClass("select")
})

// 상세 카테고리 선택자 클릭시 옵션 박스 출현
$(".project-Category-detail-subSelect-Box").on("click", function(){
    $(".category-detail-option-box").toggleClass("select")
})

// 카테고리의 옵션을 선택하는 함수
$(".category-option-item").on("click", function(){
    selectCategoryOption(this)
})
function selectCategoryOption(element){
    let categoryList = {
        "board-games-trpg": ["보드게임", "카드 게임", "TRPG"],
        "digital-game": ["비디오 게임", "모바일 게임", "게임 페스티벌"],
        "webtoons-comics": ["웹툰", "만화책", "오디오 드라마", "그래픽 노블"],
        "webtoon-resources": ["만화 · 웹툰 리소스"],
        "design-stationery": ["디자인 문구", "캘린더 · 다이어리"],
        "character-merchandise": ["캐릭터 · 굿즈"],
        "home-living": ["디자인 소품", "키친 용품", "생활 용품", "캔들 · 디퓨저", "여행 · 체험"],
        "tech-electronics": ["디지털 제품", "앱 · 웹 서비스", "테크 컨퍼런스"],
        "pets": ["반려 용품", "펫 푸드", "펫 스타일"],
        "food": ["베이킹 · 푸드" ,"음료", "간편식", "밀키트", "비건", "건강식품", "요리책", "푸드 페스티벌 · 행사"],
        "perfume": ["향수", "섬유 향수", "뷰티", "비누"],
        "clothing": ["의류", "홈웨어", "언더웨어", "현대의복"],
        "accessories": ["가방", "신발", "액세서리"],
        "jewelry": ["주얼리"],
        "publishing": ["문학", "에세이", "실용 · 취미", "잡지", "인문 · 사회과학", "아트북", "도감", "그림책", "저널리즘", "출판 공간 ·행사"],
        "design": ["그래픽 디자인", "타이포그래피", "건축 · 공간"],
        "art": ["공예", "일러스트레이션", "회화", "조소", "공고예술", "디지털 아트", "혼합매체", "행위예술", "전시", "예술 페스티벌"],
        "photography": ["사진"],
        "music": ["포크 · 어쿠스틱", "록", "팝 음악", "재즈 음악", "클래식", "연주곡", "힙합" , "국악", "전자음악", "트로트", "발라드", "동인 · 게임", "음악 공연 · 페스티벌"],
        "film": ["단편영화", "장편영화", "다큐멘터리", "뮤직비디오", "애니메이션", "웹드라마", "영화제 · 행사"],
        "performances": ["연극", "뮤지털", "무용"]
    };
    let optionClassName = $(element).attr('class').toString().replace("category-option-item ", "").trim();
    let optionName = $(element).text().trim();
    // 카테고리 인풋 값에 데이터를 넣는다.
    $(element).closest(".project-Category-subSelect-Box").find(".project-Category-subSelect").val(optionName)

    let categoryDetailList = categoryList[optionClassName];
    // 데이터 기입전에 초기화
    $(".category-detail-option-box").html("")
    $(".project-Category-subSelect.category-detail").val("")


    for(let i=0; i<categoryDetailList.length; i++) {
        let item = categoryDetailList[i]

        let optionItem = "<div class='category-detail-option-item' onclick='selectDetailCategoryOption(this)'>" +item+ "</div>"
        $(".category-detail-option-box").append(optionItem)
    }
}

// 상세 카테고리의 옵션을 선택하는 함수
function selectDetailCategoryOption(element){
    let optionName = $(element).text().trim();
    $(element).closest(".project-Category-detail-subSelect-Box").find(".project-Category-subSelect").val(optionName)
    // input 이벤트 강제 트리거
    $(element).closest(".project-Category-detail-subSelect-Box").find(".project-Category-subSelect").trigger("input");
}

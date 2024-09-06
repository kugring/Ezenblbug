// 메뉴_선택시 해당 메뉴_컨테이너 등장
$(".header-menu").on("click", function () {

    let notSave = !$(".project-create-save-button").hasClass("disable")
    if(notSave){
        if (confirm("저장하지 않고 이동하시겠습니까?")) {
            // 사용자가 "확인"을 클릭한 경우 실행할 코드
            completePercent()
        } else {
            return;
        }
    }

    let $menu = $(this);
    let menuList = $(".header-menu")

    // 선택시 밑줄 css 보여주기
    menuList.removeClass("select")
    $menu.addClass("select")

    // 선택되어진 container 보여주기
    $(".create-container").css("display", "none")
    let menu_name = $menu.attr("class").toString().replace("header-menu", "").replace("select", "").trim()
    let menu_container = "." + menu_name + "-container";
    console.log(menu_container)
    $(menu_container).css("display", "flex")
})

setTimeout(()=>{completePercent()}, 1000)
// (비활성화 모드)저장버튼 클릭시 작성 현황 알려줌
function completePercent(){
    $(".project-create-save-button").addClass("disable")
    let $alarmCount = $(".input-alarm-count");

    let totalFalseCount = 0;
    let BaselineFalseCount = 20;
    $alarmCount.each(function(index, item) {
        let falseNum = parseInt($(item).text(), 10);
        totalFalseCount += falseNum;
    });

    let percent = Math.round((1 - (totalFalseCount / BaselineFalseCount)) * 100);

    $(".project-create-save-button").text("작성중 · "+ percent + "%")
}

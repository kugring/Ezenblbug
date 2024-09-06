// 기본정보 기입시에 주의 사항 이미지 창 여는 버튼
$(".project-Title-Box-Cursor").on("click", function () {
    toggleTooltip(this);
});

function toggleTooltip(element) {
    let tooltip = $(element).closest(".project-Title-Box")
        .find(".project-Long-Title-Info");

    if (tooltip.height() === 0) {
        // 툴팁이 닫혀 있을 때
        tooltip
            .css({
                height: 'auto',
                paddingTop: '16px',
                paddingBottom: '16px',
                boxShadow: 'rgba(0, 0, 0, 0.05) 0px 2px 8px, rgba(0, 0, 0, 0.1) 0px 1px 0px', // box-shadow 추가
                border: '1px solid rgb(240, 240, 240)' // border 추가
            });

        let autoHeight = tooltip.height(); // autoHeight 계산

        tooltip.height(0).css({
            paddingTop: 0,
            paddingBottom: 0
        }); // 높이와 패딩 초기화

        tooltip.stop().animate({
            height: autoHeight,
            paddingTop: '16px',
            paddingBottom: '16px',
            opacity: 1
        }, 300);

    } else {
        // 툴팁이 열려 있을 때 닫는 로직
        tooltip.stop().animate({
            height: 0,
            paddingTop: 0,
            paddingBottom: 0,
            opacity: 0
        }, 300, function () {
            tooltip.css({
                'box-shadow': 'none', // box-shadow 제거
                'border': 'none' // border 제거
            });
        });
    }
}

// 이미지 창 닫는 버튼
$(".info-exit-box").on("click", function () {
    infoBoxExit(this);
});

function infoBoxExit(element) {

    let tooltip = $(element).closest(".project-Title-Box").find(".project-Long-Title-Info");

    tooltip.stop().animate({
        height: 0,
        paddingTop: 0,
        paddingBottom: 0,
        opacity: 0
    }, 300, function () {
        tooltip.css({
            'box-shadow': 'none', // box-shadow 제거
            'border': 'none' // border 제거
        });
    });
}
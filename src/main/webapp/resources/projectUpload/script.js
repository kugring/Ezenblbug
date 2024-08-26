
$(function() {
    // 5초(5000ms)마다 오른쪽 화살표 버튼을 클릭합니다.
    setInterval(cardMove, 5000);
    cardMove()
    badgeRightMove()
    badgeLeftMove()

    $('.QnA-box').click(function() {
        toggleQnA(this);
    });
});

function cardMove(){

    let $card = $(".swiper-card-box")
    let $cardList = $(".swiper-card-list")

    $card.removeClass("active")
    $card.eq(8).addClass("active")
    $cardList.css({
        'transition': 'transform 0.7s ease-in-out',
        'transform': 'translateX(-252px)'
    })

    setTimeout(() =>{
        let firstCard = $card.eq(0);
        $cardList.append(firstCard)
        $cardList.css({
            'transition': 'transform 0s',
            'transform': 'translateX(0)'
        })
    }, 700)
}


function badgeRightMove(){
    $(".roller-top-badge-list").css({
        'transition': 'transform 60s linear',
        'transform': 'translateX(-50%)'
    });

    setTimeout(() => {
        $(".roller-top-badge-list").css({
            'transition': 'none', // '0s' 대신 'none'으로 깜빡임 방지
            'transform': 'translateX(0)'
        });

        // 짧은 대기 시간 후 애니메이션 재실행
        setTimeout(badgeRightMove, 50);
    }, 60000);
}
function badgeLeftMove(){
    $(".roller-bottom-badge-list").css({
        'transition': 'transform 60s linear',
        'transform': 'translateX(0)' // 왼쪽으로 이동
    });

    setTimeout(() => {
        $(".roller-bottom-badge-list").css({
            'transition': 'none', // 'none'으로 깜빡임 방지
            'transform': 'translateX(-50%)' // 오른쪽으로 초기화
        });

        // 짧은 대기 시간 후 애니메이션 재실행
        setTimeout(badgeLeftMove, 50); // 여기를 badgeLeftMove로 수정
    }, 60000);
}

function toggleQnA(element) {

    // 클릭할 때마다 'rotate-180' 클래스를 토글
    $(element).find('.toggle-icon').toggleClass('rotate-180');

    let answer = $(element).find(".A-wrap");

    if (answer.height() === 0) {
        let autoHeight = answer.css('height', 'auto').height() + 40;
        answer.height(0); // Reset height to 0 before animating
        answer.animate({ height: autoHeight, padding: "20px 16px" }, 300);
    } else { // If currently visible
        answer.animate({ height: 0, padding: "0 16px" }, 300);
    }
}
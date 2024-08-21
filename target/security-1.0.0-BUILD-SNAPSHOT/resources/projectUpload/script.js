
$(function() {
    // 5초(5000ms)마다 오른쪽 화살표 버튼을 클릭합니다.
    setInterval(cardMove, 5000);
});

function cardMove(){

    let $card = $(".card-box")
    let $cardList = $(".card-list")

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
            'transition': 'transform 0s ease-in-out',
            'transform': 'translateX(0)'
        })
    }, 700)

}


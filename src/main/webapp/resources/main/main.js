///////////////////////////////이동//////////////////////////////

$('.main-right-box-badge').on('click', function () {
    location.href = "/ezn/tumblbug/popular.do"
});

$('.title-first-bundle-item-right').on('click', function () {
    location.href = "/ezn/tumblbug/popular.do"
});

$('.card-intruduction-title').on('click', function () {
    location.href = "/ezn/tumblbug/project.do"
});

$('.fist-box-card-img').on('click', function () {
    location.href = "/ezn/tumblbug/project.do"
});

///////////////////////////////기능//////////////////////////////

$(function() {
//좋아요 하트 변경
    $('.project-like').on('click', function () {
        onHeartChange(this)
    });

    function onHeartChange(element) {
        $(element).toggleClass("pink-heart empty-heart");

        let $card = $(element).closest('.attention-card')

        let projectId = $card.find("input[name='project-id']").val();

        $.ajax({
            url: `project/${projectId}/favorite`, // 요청을 보낼 URL
            type: 'PUT', // 요청의 타입
            contentType: 'application/json', // 요청 본문의 미디어 타입
            data: JSON.stringify({}),
            success: function (result) {
                console.log(result)
                // 좋아요를 등록하는 경우
                $(element).toggleClass("pink-heart", result === 0);
                // 좋아요를 제거하는 경우
                $(element).toggleClass("empty-heart", result !== 0);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });

    }
});




$(function() {
    // 오른쪽 화살표 버튼 클릭을 트리거하는 함수
    function triggerRightArrowClick() {
        $('.white-right-arrow').click(); // 오른쪽 화살표 버튼 클릭
    }
    // 5초(5000ms)마다 오른쪽 화살표 버튼을 클릭합니다.
    setInterval(triggerRightArrowClick, 5000);
});
let currentSlide = 1;
let isClickBen = true;

// 5초(5000ms)마다 오른쪽 화살표 버튼을 클릭합니다.
function moveSlide(step) {
    if (!isClickBen) return;
    isClickBen = false;

    const $slides = $('.carousel-slides');
    const slides = $('.carousel-slide');

    currentSlide +=  step
    let currentSlideIndex = currentSlide%3 === 0 ? 3 : currentSlide%3
    currentSlide = currentSlideIndex
    $(".page-number").html(currentSlideIndex + " / " + slides.length)


    const nextSlideIndex = step === 1 ? 0 : slides.length-1;
    const $nextSlideElement = $(slides[nextSlideIndex]).clone();


    if (step === 1) {
        $slides.append($nextSlideElement); // 새로운 슬라이드를 맨 뒤에 추가

        $slides.css({
            'transition': 'transform 0.5s ease-in-out',
            'transform': 'translateX(-100%)'
        });

        setTimeout(() => {
            $slides.children().first().remove(); // 첫번째 자식 요소를 삭제합니다.
            $slides.css({
                'transition': 'none',
                'transform': 'translateX(0%)'
            });
            isClickBen = true;
        }, 500);
    } else {
        $slides.children().last().remove(); // 마지막 자식 요소를 삭제합니다.
        $slides.prepend($nextSlideElement); // 새로운 슬라이드를 맨 앞에 추가

        $slides.css({
            'transition': 'none',
            'transform': 'translateX(-100%)'
        });

        setTimeout(() => {
            $slides.css({
                'transition': 'transform 0.5s ease-in-out',
                'transform': 'translateX(0%)'
            });
            setTimeout(() => {
                isClickBen = true;
            }, 500);
        });
    }
}



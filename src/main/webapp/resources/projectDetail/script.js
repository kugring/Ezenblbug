





$(document).ready(function() {
    const $carouselInner = $('.carousel-inner');
    const $carouselItems = $('.carousel-item');
    const totalItems = $carouselItems.length;
    let currentIndex = 0;

    function updateCarousel() {
        $carouselInner.css('transform', `translateX(${-currentIndex * 100}%)`);
    }

    $('.carousel-control-next').click(function() {
        currentIndex = (currentIndex + 1) % totalItems;
        updateCarousel();
    });

    $('.carousel-control-prev').click(function() {
        currentIndex = (currentIndex - 1 + totalItems) % totalItems;
        updateCarousel();
    });
});














// 로딩시 조회수를 카운트함
loadingViewCount();

function loadingViewCount(){

    // 현재 URL에서 /search/ 이후의 부분을 가져옴
    let currentURL = window.location.href;
    let projectPattern = /\/project\/([^/]+)/; // /search/ 이후의 단어 패턴

    // URL 경로만 추출 (query string이나 hash 제외)
    let currentPath = currentURL.split('?')[0].split('#')[0];

    // 해당 url의 첫번째 값으로 저장된 프로젝트 id값을 가져온다.
    let projectId = decodeURIComponent(currentPath.match(projectPattern)[1]);

    // 로컬 스토리지에 데이터가 없다면 조회수를 증가시킴
    const data = getItemWithExpiry(`project-${projectId}`);
    if(data == null){
        increaseViewCount(projectId)
        // 5초 동안 유효한 데이터를 저장
        setItemWithExpiry(`project-${projectId}`, 'viewCount', 5000);
    }
}

function increaseViewCount(projectId){
    $.ajax({
        url: `/project/${projectId}/increase-view-count`, // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({}),
        success: function (result) {
            if (result === 1){

            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

function setItemWithExpiry(key, value, ttl) {
    const now = new Date();

    console.log("아니 이거 저장은 함?")
    // 'item' 객체 생성
    const item = {
        value: value,
        expiry: now.getTime() + ttl, // 현재 시간 + TTL (Time To Live)
    }

    // 'item' 객체를 JSON 문자열로 변환하여 저장
    localStorage.setItem(key, JSON.stringify(item));
}

function getItemWithExpiry(key) {
    const itemStr = localStorage.getItem(key);

    // 항목이 존재하지 않을 경우 null 반환
    if (!itemStr) {
        return null;
    }

    // JSON 문자열을 객체로 변환
    const item = JSON.parse(itemStr);
    const now = new Date();

    // 만료 시간이 지나면 localStorage에서 항목 삭제 및 null 반환
    if (now.getTime() > item.expiry) {
        localStorage.removeItem(key);
        return null;
    }

    // 만료되지 않은 경우 값 반환
    return item.value;
}




$(document).ready(function () {
    $('.project-main-left-badge-item').on('click', function () {
        TitleScroll(this); // 클릭된 요소를 파라미터로 전달
    });
});

function TitleScroll(element) {
    $(".project-main-left-badge-item").removeClass("current-badge")
    $(element).toggleClass("current-badge"); // 클릭된 요소의 클래스 토글

    let name = element.id;
    const contentElement = document.querySelector(`.title-marker.${name}`);
    if (contentElement) {
        contentElement.scrollIntoView({behavior: 'smooth'});
    }
}
document.addEventListener("DOMContentLoaded", function () {
    // 감지할 요소들을 선택
    var targets = document.querySelectorAll('.project-main-left-content');

    // Intersection Observer의 콜백 함수 정의
    var observerCallback = function (entries, observer) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                // 감지된 요소가 부모의 top 위치에 도달했을 때
                console.log(entry.target.classList.toString());

                // 요소 이름 가져오기
                let element_name = entry.target.classList.toString().replace("project-main-left-content ", "").replace("-content", "");

                // 모든 배지에서 current-badge 클래스 제거
                $(".project-main-left-badge-item").removeClass("current-badge");

                // 해당 배지에 current-badge 클래스 추가
                document.getElementById(element_name).classList.add('current-badge');
            }
        });
    };

    // Intersection Observer 생성
    var observer = new IntersectionObserver(observerCallback, {
        root: null, // viewport를 기준으로 함
        rootMargin: '-100% 0px 0px 0px', // 부모의 top을 기준으로 요소가 감지되도록 설정
        threshold: 0 // 요소가 0%라도 보이면 감지
    });

    // 각 타겟 요소 관찰 시작
    targets.forEach(target => {
        observer.observe(target);
    });
});

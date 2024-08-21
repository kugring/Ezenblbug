// jQuery를 사용하여 모든 project-main-left-badge-item 요소에 클릭 이벤트 리스너를 추가합니다.
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

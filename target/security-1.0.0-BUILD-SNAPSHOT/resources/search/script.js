$(function () {
    getPopularList() // 로딩시 인기 검색어를 목록을 가져온다.
    loadRecentSearches()

///////////////////////////////이동//////////////////////////////

    $('.close-button').on('click', function () {
        $(".search-container").css("display", "none")
        document.body.style.overflow = 'auto'; // 스크롤 막기
    });

    $('.recent-word-delete').on('click', function () {
        deleteRecentSearch(this);
    })
    $('.recent-word-all-delete').on('click', function () {
        allDeleteRecentSearch(this);
    })
    $('.search-item').on('click', function () {
        onSearch(this);
    })
    // 엔터 키 눌림을 확인하여 함수 실행
    $('.search-input').on('keypress', function (e) {
        if (e.which === 13) { // Enter key의 keyCode는 13
            e.preventDefault(); // 기본 Enter 키 동작(폼 제출)을 막음
            getSearchList(); // 엔터 키가 눌렸을 때 getSearchList 함수 실행
        }
    });
});



function getSearchList(){

    let inputValue = $(".search-input").val().trim(); // 입력된 값 가져오기

    if(inputValue === '') {
        alert("검색어를 입력해주세요.")
        return;
    }

    let formAction;
    saveRecentSearch(inputValue); // 최근 검색어 저장

    // 현재 URL에서 /search/ 이후의 부분을 가져옴
    let currentURL = window.location.href;
    let searchPattern = /\/search\/([^/]+)/; // /search/ 이후의 단어 패턴

    // URL 경로만 추출 (query string이나 hash 제외)
    let currentPath = currentURL.split('?')[0].split('#')[0];

    if (currentPath.match(searchPattern)) {
        // 기존 검색어가 있는 경우: 기존 검색어를 디코딩
        let existingSearch = decodeURIComponent(currentPath.match(searchPattern)[1]);
        if (existingSearch.trim() === 'resources' || existingSearch.trim() === 'app') return;

        // 이전 검색어를 버리고 새로운 검색어 + 이전 검색어 순서로 URL 생성
        formAction = '/search/' + encodeURIComponent(inputValue) + '/' + encodeURIComponent(existingSearch);
    } else {
        // 기존 검색어가 없는 경우: 새로운 검색어만 추가
        formAction = '/search/' + encodeURIComponent(inputValue);
    }

    // URL로 이동
    window.location.href = formAction;
}

function getPopularList() {
    $.ajax({
        url: '/search/popular-list', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({}),
        success: function (list) {
            let popularItems = list.map((item, index) => `
            <li class="popular-search-text-li">
                <div class="popular-search-text-items">
                    <div class="popular-search-number">${index + 1}</div>
                    <div class="popular-search-text search-item" onclick="onSearch(this)">${item}</div>
                </div>
            </li>
            `).join('');
            $(".popular-search-text-ul").append(popularItems)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

// 최근 검색어를 로컬스토리지에 저장하는 함수
function saveRecentSearch(searchTerm) {
    const maxRecentSearches = 10; // 저장할 최대 검색어 개수
    let recentSearches = JSON.parse(localStorage.getItem('recentSearches')) || [];

    // 검색어가 이미 존재하는 경우 제거
    recentSearches = $.grep(recentSearches, function (term) {
        return term !== searchTerm;
    });

    // 새로운 검색어 추가
    recentSearches.unshift(searchTerm);

    // 최대 개수 초과 시 가장 오래된 검색어 제거
    if (recentSearches.length > maxRecentSearches) {
        recentSearches.pop();
    }

    // 로컬스토리지에 저장
    localStorage.setItem('recentSearches', JSON.stringify(recentSearches));
}

// 최근 검색어를 로드하고 화면에 표시하는 함수
function loadRecentSearches() {
    const recentSearches = JSON.parse(localStorage.getItem('recentSearches')) || [];
    const $recentSearchContainer = $('.recent-word-wrapper');


    $recentSearchContainer.empty(); // 이전 검색어 목록 비우기
    $.each(recentSearches, function (index, term) {
        let recentItem = `
        <div class="recent-word-item">
            <div class="recent-word-text search-item">${term}</div>
            <svg class="recent-word-delete" width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.28544 5.00257L2.01916 2.73642C1.82521 2.54248 1.82974 2.23083 2.01598 2.02765C2.21448 1.81131 2.5294 1.8394 2.72795 2.02108L2.72969 2.02268L4.99738 4.2905L7.26357 2.02431C7.4575 1.83056 7.7691 1.83508 7.97226 2.02115C8.1886 2.21946 8.16077 2.53473 7.97878 2.73311L7.97723 2.73479L5.70945 5.00257L7.97564 7.26876C8.16953 7.46283 8.16504 7.77425 7.97884 7.97756L7.97724 7.9793L7.97557 7.98097C7.78164 8.17472 7.47008 8.17023 7.26691 7.98417L7.26519 7.98259L4.99738 5.71465L2.73129 7.981C2.53725 8.17469 2.22572 8.17025 2.02253 7.98417L2.01908 7.98101L2.01592 7.97756C1.82971 7.77425 1.82526 7.46279 2.01916 7.26872L4.28544 5.00257Z" fill="#6D6D6D"></path>
            </svg>
        </div>
        `
        $recentSearchContainer.append(recentItem);
    });

    if (recentSearches.length === 0) {
        $('.recent-word-wrapper').html('<div class="empty-recent-word">최근 기록 없음</div>');
    }
}

function deleteRecentSearch(searchTerm) {
    // 로컬 스토리지에서 최근 검색어 목록을 가져오고, 없으면 빈 배열로 초기화
    let recentSearches = JSON.parse(localStorage.getItem('recentSearches')) || [];

    // 클릭된 요소에서 텍스트 추출
    let recentWordElement = $(searchTerm).closest(".recent-word-item");
    let recentWord = recentWordElement.text().trim();

    // 검색어를 배열에서 필터링하여 제거
    recentSearches = recentSearches.filter(word => word !== recentWord);

    // 업데이트된 검색어 목록을 로컬 스토리지에 저장
    localStorage.setItem('recentSearches', JSON.stringify(recentSearches));

    // HTML에서 해당 검색어 항목 제거
    recentWordElement.remove();
}

function allDeleteRecentSearch() {
    $('.recent-word-wrapper').html('<div class="empty-recent-word">최근 기록 없음</div>');
    localStorage.setItem('recentSearches', null);
}
function onSearch(searchTerm) {
    // 검색어 가져오기
    let word = $(searchTerm).text().trim();

    // 검색 입력 필드에 검색어 설정
    $(".search-input").val(word);

    getSearchList();
}
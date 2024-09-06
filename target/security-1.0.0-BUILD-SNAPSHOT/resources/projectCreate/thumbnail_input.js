
// 버튼 클릭 시 파일 선택 창 열기
$('.info-upload-select').on('click', function () {
    $('#project-thumbnail-input').click();
});

let imageUrls = []
let boardImageFileList = []
let boardImageList = [];

// 이미지 인풋값이 변화가 생길때 발생할 이벤트
$('#project-thumbnail-input').on("change", function(e){
    if(!e.target.files || !e.target.files.length) return;
    const file = e.target.files[0];
    // URL객체를 사용하면 임시로 URL 이미지의 링크를 뽑아올 수 있다!
    const imageUrl = URL.createObjectURL(file);
    const newImageUrls = imageUrls.map(item => item);
    newImageUrls.push(imageUrl);
    imageUrls = newImageUrls

    const newBoardImageFileList = boardImageFileList.map(item => item);
    newBoardImageFileList.push(file);
    boardImageFileList = newBoardImageFileList;

    //미리보기 이미지 넣기
    appendThumbnail()
})

// 화면에 미리보기를 보여주는 함수
function appendThumbnail(){
    $("#info-thumbnail-screen-box").html('')

    for (let i = 0; i < imageUrls.length; i++) {
        // 기존 미리보기 날림
        // 미리보기 영역에 이미지 추가
        let number = i + 1
        let screenItem =
            `
                                <div class="info-thumbnail-screen-item" draggable="true" onclick="moveScreenItem()">
                                    <div class="info-thumbnail-move-btn-box">
                                        <svg viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M24 11L2 38H46.001L24 11Z"></path></svg>
                                        <div class="screen-item-count">` + number + `</div>
                                        <input type="hidden" class="sequence" value="` + number + `">
                                        <svg viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M2 10L24 37L46 10H2Z"></path></svg>
                                    </div>
                                    <div class="info-thumbnail-content">
                                        <div class="info-thumbnail-img" style="background-image: url(`+   imageUrls[i] + `)"></div>
                                        <div class="info-thumbnail-edit-button-box">
                                            <div class="info-thumbnail-change-button">
                                                <svg viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path></svg>
                                            </div>
                                            <div class="info-thumbnail-delete-button" onclick="onImageCloseButtonClickHandler(`+ i +`)">
                                                <svg width="1rem" height="1rem" fill="rgb(248, 100, 83);" viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path></svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            `
        $("#info-thumbnail-screen-box").append(screenItem);
    }
}



const sortable = new Sortable(document.getElementById('info-thumbnail-screen-box'), {
    animation: 150, // 드래그 애니메이션 속도 (ms 단위)
    ghostClass: 'sortable-ghost', // 드래그 중 요소에 적용할 클래스,
    onEnd: function (evt) {
        itemSort();
    }
});
let sequenceList = [];
function itemSort(){
    sequenceList = [];
    const items = document.querySelectorAll('.info-thumbnail-screen-item');
    items.forEach((item, index) => {
        const countElement = item.querySelector('.screen-item-count');
        if (countElement) {
            countElement.textContent = index + 1;
        }
        const sequence = item.querySelector('.sequence');
        if (sequence) {
            sequenceList.push(parseInt(($(sequence).val().trim()),10));
        }
    });
    readySaveButton()
}


// 이미지 삭제 버튼 클릭시
const onImageCloseButtonClickHandler = (deleteIndex) => {
    imageUrls = imageUrls.filter((url, index) => index !== deleteIndex);
    boardImageFileList = boardImageFileList.filter((file, index) => index !== deleteIndex)
    //미리보기 이미지 넣기
    appendThumbnail()
}


// 저장 버튼 클릭시
const saveThumbnail = async () =>{

    boardImageList = []

    for (const file of boardImageFileList) {
        const data = new FormData();
        data.append('file', file);

        const url = await fileUploadRequest(data);
        if (url) boardImageList.push(url);
    }
    // boardImageList를 활용해 추가 작업 수행
    console.log(boardImageList);



}



function fileUploadRequest(data) {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: '/file/upload', // 요청을 보낼 URL
            type: 'POST', // 요청의 타입
            processData: false, // FormData 전송을 위한 설정
            contentType: false, // FormData 전송을 위한 설정
            data: data,
            success: function (url) {
                console.log(url)
                resolve(url); // 성공 시 반환할 값을 resolve로 처리
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
                reject(errorThrown); // 실패 시 오류를 reject로 처리
            }
        });
    });
}


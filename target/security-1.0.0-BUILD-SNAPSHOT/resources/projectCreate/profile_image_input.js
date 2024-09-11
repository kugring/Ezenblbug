// 이미지 인풋태그 등장하는 코드
$(".creator-img-input-button").on("click", function() {
    $("#profile-img-input").trigger("click");
});
// 이미지 미리보기 해주는 코드
$("#profile-img-input").on("change", function() {
    const file = this.files[0]; // 업로드된 파일

    const data = new FormData();
    data.append('file', file);

    // fileUploadRequest(data)의 결과가 성공적으로 반환되면 URL을 사용
    fileUploadRequest(data).then(function(url) {
        // 이미지 미리보기 설정
        $(".creator-img").css("background-image", "url(" + url + ")");

        readySaveButton();
    }).catch(function(error) {
        console.error("파일 업로드 실패:", error);
    });
});



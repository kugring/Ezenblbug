// 이미지 인풋태그 등장하는 코드
$(".creator-img-input-button").on("click", function() {
    $("#profile-img-input").trigger("click");
});
// 이미지 미리보기 해주는 코드
$("#profile-img-input").on("change", function() {
    const file = this.files[0]; // 업로드된 파일
    if (file) {
        const reader = new FileReader();

        reader.onload = function(e) {
            // 이미지 미리보기 설정
            $(".creator-img").css("background-image","url("+e.target.result)+")";
        }
        reader.readAsDataURL(file); // 파일을 Data URL로 읽기
    }
    readySaveButton();
});

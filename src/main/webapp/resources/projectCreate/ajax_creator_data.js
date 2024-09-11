function ajax_creator_data() {
    if(!creatorCheck()){
        return;
    }


    let projectId = $("#project-id").val()
    let nickname = $(".input-one.creator-name").val()
    let profileImage = $(".creator-img").css("background-image").replace(/^url\(["']?/, '').replace(/["']?\)$/, '');;
    let selfIntro = $(".input-one.creator-introduce").val().trim()
    let activityArea = $(".sido.selector-input").val().trim()
    let activitySubArea = $(".sigungu.selector-input").val().trim()
    let account = $(".trust-card-textarea.account").val().trim()


    console.log("projectId : "+ projectId)
    console.log("nickname : "+ nickname)
    console.log("profileImage : "+ profileImage)
    console.log("selfIntro : "+ selfIntro)
    console.log("activityArea : "+ activityArea)
    console.log("activitySubArea : "+ activitySubArea)
    console.log("account : "+ account)

    $.ajax({
        url: realPath+'/project/create/creator', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            nickname: nickname,
            profileImage: profileImage,
            selfIntro: selfIntro,
            activityArea: activityArea,
            activitySubArea: activitySubArea,
            account:account
        }),
        success: function (result) {
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

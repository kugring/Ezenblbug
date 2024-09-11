function ajax_trust_data() {
    if(!trustCheck()){
        return;
    }


    let projectId = $("#project-id").val()
    let projectExchangePolicy = $(".trust-card-textarea.policy").val().trim()


    console.log("projectId : "+ projectId)
    console.log("projectExchangePolicy : "+ projectExchangePolicy)

    $.ajax({
        url: realPath+'/project/create/trust', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            projectExchangePolicy: projectExchangePolicy
        }),
        success: function (result) {
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

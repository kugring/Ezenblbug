
function ajax_plan_data(){
    if(!projectPlanCheck()){
        return;
    }

    let projectId = $("#project-id").val()

    let projectIntroduction = $("#editor1").find(".ql-editor").html()
    let projectBudget = $("#editor2").find(".ql-editor").html()
    let projectSchedule = $("#editor3").find(".ql-editor").html()
    let teamIntroduction = $("#editor4").find(".ql-editor").html()
    let projectGiftExplain = $("#editor5").find(".ql-editor").html()

    $.ajax({
        url: realPath+'/project/create/plan', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId:projectId,
            projectIntroduction:projectIntroduction,
            projectBudget:projectBudget,
            projectSchedule:projectSchedule,
            teamIntroduction:teamIntroduction,
            projectGiftExplain:projectGiftExplain
        }),
        success: function (result) {
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

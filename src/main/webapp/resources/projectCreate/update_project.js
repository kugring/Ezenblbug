function ajaxProjectIntroduction(){
    let content = $("#editor1").find('.ql-editor').html()
    console.log(content)
    console.log(escapeHtml(content))

    function escapeHtml(html) {
        return html
            .replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#39;');
    }

    $.ajax({
        url: "/project/upload-create-project-plan",
        type: "POST",
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: 1,
            projectIntroduction: escapeHtml(content)
        }),
        success: function (result) {
            console.log(result)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }

    })
}
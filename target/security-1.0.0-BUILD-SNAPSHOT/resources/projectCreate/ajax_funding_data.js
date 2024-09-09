function ajax_funding_data(){
    let projectId = $("#project-id").val()

    let goalBudget = parseInt(($(".funding-goal-amount-input").val().trim()).replace(/,/g, ''))
    let startTimeline = convertToMySQLDatetime($(".start-date").val())
    let timeline = convertToMySQLDatetime($(".end-date").val())

    console.log("projectId :" + projectId)
    console.log("goalBudget :" + goalBudget)
    console.log("startTimeline :" + startTimeline)
    console.log("timeline :" + timeline)

    $.ajax({
        url: '/project/create/funding', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId:projectId,
            goalBudget:goalBudget,
            startTimeline:startTimeline,
            timeline:timeline
        }),
        success: function (result) {
            alert(result)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}



function convertToMySQLDatetime(dateString) {
    // 날짜 문자열이 'yy/MM/dd' 형식이라고 가정
    const [year, month, day] = dateString.split('/').map(Number);

    // 'yy'를 'yyyy'로 변환
    const fullYear = year + 2000; // 2000년대의 경우
    // 월은 0부터 시작하므로, month - 1
    const formattedDate = new Date(fullYear, month - 1, day);

    // MySQL DATETIME 형식으로 변환
    const yearStr = formattedDate.getFullYear();
    const monthStr = String(formattedDate.getMonth() + 1).padStart(2, '0');
    const dayStr = String(formattedDate.getDate()).padStart(2, '0');
    const hoursStr = '00';
    const minutesStr = '00';
    const secondsStr = '00';

    return `${yearStr}-${monthStr}-${dayStr} ${hoursStr}:${minutesStr}:${secondsStr}`;
}
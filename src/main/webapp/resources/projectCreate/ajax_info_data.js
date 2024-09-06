function ajax_info_data(){
    let projectId = $("#project-id").val()
    let category = categorySelectCheck() && $(".project-Category-subSelect.category").val().trim()
    let categoryDetail = categorySelectCheck() && $(".project-Category-subSelect.category-detail").val().trim()
    let projectTitle = longSubjectInputCheck() && $(".input-one.long-title").val().trim()
    let projectShortTitle = shortSubjectInputCheck() && $(".input-one.short-title").val().trim()
    let projectSummary = summaryInputCheck() && $(".input-one.project-summary").val().trim()
    let searchTagVOList = searchTagList;
    let thumbnailVOList = sequenceList
        .map((value, index) => [value, boardImageList[index]]) // a와 b를 묶어줌
        .sort((x, y) => x[0] - y[0]) // a를 기준으로 정렬
        .map(item => item[1]); // 정렬된 b 배열 추출
    let projectThumbnail = thumbnailVOList.length>0 ? thumbnailVOList[0] : null;


    console.log("projectId :" + projectId)
    console.log("category :" + category)
    console.log("categoryDetail :" + categoryDetail)
    console.log("projectTitle :" + projectTitle)
    console.log("projectShortTitle :" + projectShortTitle)
    console.log("projectSummary :" + projectSummary)
    console.log("searchTagVOList :" + searchTagVOList)
    console.log("projectThumbnail :" + projectThumbnail)
    console.log("thumbnailVOList :" + thumbnailVOList)

    $.ajax({
        url: '/project/create/info', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId:projectId,
            category:category,
            categoryDetail:categoryDetail,
            projectTitle:projectTitle,
            projectShortTitle:projectShortTitle,
            projectSummary:projectSummary,
            searchTagVOList:searchTagVOList,
            thumbnailVOList:thumbnailVOList,
            projectThumbnail:thumbnailVOList[0]
        }),
        success: function (result) {
            alert(result)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

function ajax_info_data() {
    if (!infoCheck()) {
        return;
    }


    let projectId = $("#project-id").val()
    let category = categorySelectCheck() && $(".project-Category-subSelect.category").val().trim()
    let categoryDetail = categorySelectCheck() && $(".project-Category-subSelect.category-detail").val().trim()
    let projectTitle = longSubjectInputCheck() && $(".input-one.long-title").val().trim()
    let projectShortTitle = shortSubjectInputCheck() && $(".input-one.short-title").val().trim()
    let projectSummary = summaryInputCheck() && $(".input-one.project-summary").val().trim()
    let searchTagVOList = [];
    let thumbnailVOList = [];

    $(".info-search-tag-badge-item").each(function (index) {
        let tagWord = $(this).text().trim()

        // 배열에 키-값 객체를 추가
        searchTagVOList.push({
            projectId: projectId,
            tagWord: tagWord,
        });
    })

    $(".info-thumbnail-screen-item").each(function (index) {
        let sequence = $(this).find(".screen-item-count").text()
        let path = $(this).find(".info-thumbnail-img").css("background-image").replace(/^url\(["']?/, '').replace(/["']?\)$/, '');

        // 배열에 키-값 객체를 추가
        thumbnailVOList.push({
            projectId: projectId,
            sequence: sequence,
            path: path
        });
    })

    let projectThumbnail = thumbnailVOList.length > 0 ? thumbnailVOList[0] : null;


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
        url: realPath+'/project/create/info', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            category: category,
            categoryDetail: categoryDetail,
            projectTitle: projectTitle,
            projectShortTitle: projectShortTitle,
            projectSummary: projectSummary,
            searchTagVOList: searchTagVOList,
            thumbnailVOList: thumbnailVOList,
            projectThumbnail: thumbnailVOList.find(item => item.sequence === 1)?.value || null
        }),
        success: function (result) {
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

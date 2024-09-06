var contextPath = "${pageContext.request.contextPath}";


// Quill 에디터 초기화
// Quill 에디터 초기화
// 에디터가 들어갈 요소들의 ID 배열
var editorIds = ['editor1', 'editor2', 'editor3', 'editor4', 'editor5'];

// 각 에디터를 초기화하는 for문
editorIds.forEach(function (editorId) {
    var quill = new Quill('#' + editorId, {
        theme: 'snow',
        modules: {
            toolbar: {
                container: [
                    [{'header': [1, 2, 3, false]}],
                    ['bold', 'italic', 'underline'],
                    ['link', 'image'],
                    [{'list': 'ordered'}, {'list': 'bullet'}],
                    [{'align': []}],
                    ['clean']
                ],
                handlers: {
                    'image': function () {
                        var range = quill.getSelection();
                        var input = document.createElement('input');
                        input.setAttribute('type', 'file');
                        input.setAttribute('accept', 'image/*');
                        input.click();
                        input.onchange = function () {
                            var file = input.files[0];
                            var formData = new FormData();
                            formData.append('image', file);
                            fetch('/smart-editor/uploadImage', {
                                method: 'POST',
                                body: formData
                            })
                                .then(response => response.json())
                                .then(result => {
                                    var url = result.url;
                                    quill.insertEmbed(range.index, 'image', contextPath + "/" + url);
                                })
                                .catch(error => console.error('Error:', error));
                        };
                    }
                }
            }
        }
    });
});


function saveProjectPlan() {
    let projectIntroduction = $("#editor1").find(".ql-editor").html()
    let projectBudget = $("#editor2").find(".ql-editor").html()
    let projectSchedule = $("#editor3").find(".ql-editor").html()
    let teamIntroduction = $("#editor4").find(".ql-editor").html()
    let projectGiftExplain = $("#editor5").find(".ql-editor").html()

    $.ajax({
        url: '/project/upload-create-project-plan', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectIntroduction : projectIntroduction,
            projectBudget : projectBudget,
            projectSchedule : projectSchedule,
            teamIntroduction : teamIntroduction,
            projectGiftExplain : projectGiftExplain
        }),
        success: function (list) {
            alert("플랜 전송 성공")
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("플랜 전송 실패")
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}


// 클릭 시 실행할 코드
$('.editor-toggle-arrow').on('click', function () {
    $(this).toggleClass('rotated');
});

// 클릭 시 실행할 코드
$(document).ready(function () {
    $('.editor-toggle-arrow').on('click', function () {
        toggleEditor(this);
});
    $(".projectPlan-right-body-list.introduction")
        .find(".ql-editor.ql-blank")
        .html(`막연하다면 아래의 질문에 대한 답이 내용에 포함되도록 작성해보세요.<br>Q. 무엇을 만들기 위한 프로젝트인가요?<br>Q. 프로젝트를 간단히 소개한다면?<br>Q. 이 프로젝트가 왜 의미있나요?<br>Q. 이 프로젝트를 시작하게 된 배경이 무엇인가요?`);

    $(".projectPlan-right-body-list.budget")
        .find(".ql-editor.ql-blank")
        .html(`설정하신 목표 금액을 어디에 사용 예정이신지 구체적인 지출 항목으로 적어 주세요.<ul><li>예산은 ‘제작비’가 아닌 구체적인 ‘항목’으로 적어 주세요.</li><li>이번 프로젝트의 실행에 필요한 비용으로만 작성해 주세요.</li><li>기부, 다음 프로젝트에 사용하기 등은 이번 프로젝트의 예산으로 볼 수 없어요.</li><li>만일 전체 제작 비용 중 일부만 모금하시는 경우라면, 나머지 제작 비용은 어떻게 마련 예정인지 추가로 작성해 주세요.</li></ul><br>예시)<br>목표 금액은 아래의 지출 항목으로 사용할 예정입니다.<ul><li>인건비</li><li>배송비</li><li>발주비</li><li>디자인 의뢰비</li><li>수수료</li></ul>`);

    $(".projectPlan-right-body-list.schedule")
        .find(".ql-editor.ql-blank")
        .html(`<br>아래의 양식을 참고하여 작성해보세요.<br>( 예시 )<br><ul><li>0월 0일: 현재 제품 시안 및 1차 샘플 제작</li><li>0월 0일: 펀딩 시작일</li><li>0월 0일: 샘플 작업 보완</li><li>0월 0일: 펀딩 종료일</li><li>0월 0일: 2차 샘플 제작</li><li>0월 0일: 제품 디테일 보완</li><li>0월 0일: 제품 발주 시작</li><li>0월 0일: 후가공 처리 및 포장 작업</li><li>0월 0일: 선물 예상 전달일</li></ul>`);


});

function toggleEditor(element) {
    let smartEditor = $(element).closest(".projectPlan-right-body-list").find(".editor-container");

    // 현재 display 속성 확인 후, block <-> none으로 토글
    smartEditor.css('display', function (index, value) {
        return value === 'none' ? 'block' : 'none';
    });
}

function GPTwriteInfoFn() {

    let $messageBox = $(".redInfo-explanation-box")


    if ($messageBox.css('display') === 'none') {
        $messageBox.css('display', 'flex');
    } else {
        $messageBox.css('display', 'none');
    }
}

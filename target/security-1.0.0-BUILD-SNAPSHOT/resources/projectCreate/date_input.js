

$(document).ready(function () {
    $('.funding-date-selector-box').click(function () {
        $('#daterange').click(); // #daterange 요소를 클릭
    });
});


$(function () {
    $('#daterange').daterangepicker({
        timePicker: true, // 시간 선택 활성화
        opens: 'right',
        startDate: moment().startOf('hour'),
        endDate: moment(),
        minDate: moment(), // 오늘 날짜 이전은 선택할 수 없도록 설정
        maxSpan: {
            days: 60 // 최대 선택 가능한 기간을 60일 (약 2개월)로 설정
        },
        locale: {
            format: 'YY/MM/DD HH:mm', // 날짜와 시간 형식
            applyLabel: '적용',
            cancelLabel: '취소'
        }
    }, function (start, end, label) {
        // 시작 날짜는 시간까지 포함하여 표시
        $('.start-date').val(start.format('YY/MM/DD'));

        // 종료 날짜는 시간 없이 날짜만 표시
        $('.end-date').val(end.format('YY/MM/DD'));

        // 두 날짜 간의 간격 계산 (일 단위)
        $('#funding-date-text').text(end.diff(start, 'days') + "일")
        readySaveButton();
    });
});
$(function () {

// 달성률 옵션 모달
    $('.dalseonglyul-button-text-box').on('click', function () {
        let drop_down = $('.page-layer').css('display')

        if(drop_down === "none"){
            $('.page-layer').css('display', 'block');
        } else{
            $('.page-layer').css('display', 'none');
        }

    });

});
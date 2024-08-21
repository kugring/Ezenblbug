$(function () {

///////////////////////////////이동//////////////////////////////
    $('.title').on('click', function () {
        location.href="/ezn/tumblbug/main.do"
    });


    $('.home-menu').on('click', function () {
        location.href="/ezn/tumblbug/main.do"
    });


    $('.popular-menu').on('click', function () {
        location.href="/ezn/tumblbug/popular.do"
    });

    $('.startup-menu').on('click', function () {
        location.href="/ezn/tumblbug/startup.do"
    });

    $('.coming-soon-menu').on('click', function () {
        location.href="/ezn/tumblbug/coming_soon.do"
    });

    $('.search-box').on('click', function () {
        location.href="/ezn/tumblbug/search.do"
    });




///////////////////////////////기능//////////////////////////////

    $('.change-switch').on('click', function () {
        let bell_item = $('.bell-item').css('display')
        let path_item = $('.path-item').css('display')
        let profile_item = $('.profile-item').css('display')

        if(bell_item === "none" && path_item === "none" && profile_item === "none"){
            $('.profile-item').css('display', 'flex');
            $('.bell-item').css('display', 'flex');
            $('.path-item').css('display', 'flex');
            $('.login-item').css('display', 'none');
        } else{
            $('.bell-item').css('display', 'none');
            $('.path-item').css('display', 'none');
            $('.profile-item').css('display', 'none');
            $('.login-item').css('display', 'flex');
        }

    });


});

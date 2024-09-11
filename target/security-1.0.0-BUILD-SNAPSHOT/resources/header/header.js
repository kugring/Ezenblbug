$(function () {
///////////////////////////////이동//////////////////////////////
    $('.title').on('click', function() {
        location.href = realPath+"/main"
    });

    $('.home-menu').on('click', function() {
        location.href = realPath+"/main"
    });

    $('.popular-menu').on('click', function() {
        location.href = realPath+"/main/popular"
    });

    $('.header-search-box').on('click', function() {
        $(".search-container").css("display", "flex")
        $(".search-input").focus()
        document.body.style.overflow = 'hidden'; // 스크롤 막기
    });
    userInfo();
    function userInfo() {
        $.ajax({
            url : realPath+'/main/user-info', // 요청을 보낼 URL
            type : 'POST', // 요청의 타입
            contentType : 'application/json', // 요청 본문의 미디어 타입
            data : JSON.stringify({}),
            success : function(result) {
                $('.profile-img.icon-35').css("background-image",`url(`+ result.profileImage +`)`)
                $('.user-nick').text(result.nickname);
            },
            error : function(jqXHR, textStatus, errorThrown) {
                console.error('Error:', jqXHR, textStatus, errorThrown);
            }
        });
    }
    // /////////////////////////////기능//////////////////////////////

    $('.change-switch').on('click', function() {
        let bell_item = $('.bell-item').css('display')
        let path_item = $('.path-item').css('display')
        let profile_item = $('.profile-item').css('display')

        /*
         * if(bell_item === "none" && path_item === "none" && profile_item ===
         * "none"){ $('.profile-item').css('display', 'flex');
         * $('.bell-item').css('display', 'flex'); $('.path-item').css('display',
         * 'flex'); $('.login-item').css('display', 'none');
         *  } else{ $('.bell-item').css('display', 'none');
         * $('.path-item').css('display', 'none'); $('.profile-item').css('display',
         * 'none'); $('.login-item').css('display', 'flex'); }
         */
    });
});
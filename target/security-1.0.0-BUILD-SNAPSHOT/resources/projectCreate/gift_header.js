$(".gift-header-item").on("click", function(){
    if($(this).hasClass("package")){
        $(".gift-header-item.package").addClass("select")
        $(".gift-header-item.gift").removeClass("select")
        $(".gift-wrapper-package").css("display", "flex")
        $(".gift-wrapper-gift").css("display", "none")
    } if($(this).hasClass("gift")){
        $(".gift-header-item.gift").addClass("select")
        $(".gift-header-item.package").removeClass("select")
        $(".gift-wrapper-gift").css("display", "flex")
        $(".gift-wrapper-package").css("display", "none")
    }
})
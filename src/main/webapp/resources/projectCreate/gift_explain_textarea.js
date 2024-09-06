$(".gift-explain-button").on("click", function(){
    $(".gift-explain-button").removeClass("select")
    $(this).addClass("select")
    let explain = $(this).hasClass("exists")
    if(explain){
        $(".gift-explain-textarea-box").addClass("select")
    } else {
        $(".gift-explain-textarea-box").removeClass("select")
    }
})
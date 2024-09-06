$(".radio-item-box").on("click", function(){
    let items = $(this).closest(".radio-input-box").find(".radio-item-box")
    items.removeClass("select")
    $(this).addClass("select")
})
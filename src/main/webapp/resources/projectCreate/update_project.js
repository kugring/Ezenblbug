$(".project-create-save-button").on("click",function(){

    if($(".project-create-save-button").hasClass("disable")) return;

    let ajaxName = $(".header-menu.select").attr("class").toString().replace("header-menu ", "").replace("select","").trim()

    console.log(ajaxName)
    if(ajaxName == "info"){
        ajax_info_data()
    } else if(ajaxName == "funding"){
        ajax_funding_data()
    } else if(ajaxName == "plan"){
        ajax_plan_data()
    } else if(ajaxName == "creator"){
        ajax_creator_data()
    } else if(ajaxName == "trust"){
        ajax_trust_data()
    }

    completePercent()
})
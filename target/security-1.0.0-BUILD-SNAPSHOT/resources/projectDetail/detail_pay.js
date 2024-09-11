const url = window.location.href;
const projectId = url.match(/\/project\/(\d+)/)[1];

$(".pay-close-button").on("click",function(){
    $(".pay-container").css("display", "none")
    $("body").css("overflow", "scroll")
})

$(".select-button.funding-select").on("click",function (){
    $(".pay-container").css("display", "flex")
    window.scrollTo({
        top: 0
    });
    $("body").css("overflow", "hidden")

    let totalPriceText = $(this).find(".bold").text().trim()
    let totalPrice = $(this).find(".bold").text().replace("원","").replace(",","").trim()
    // 총합계 금액을 인풋으로 넣음
    $(".final-donation-price-box").find("input[name='total-price']").val(totalPrice)
    $(".pay-package-total-price").text(totalPriceText)
    $(".final-donation-price").text(totalPriceText)


    $(".pay-package-content-item-box").html('')

    $(".content-items").each(function (index) {
        let packageTitle = $(this).find(".content-item.package-title").text().trim()
        let $productItems = $(this).find(".project-main-right-funding-package-main-section-li")
        let packageQuantity = $(this).find(".select-count-number").text().trim()


        let productBox = '';

        $productItems.each(function (index){
            let productInfo = $(this).text().trim()

            let productElement = `
                <div class="pay-package-product-item"> ` + productInfo + ` </div>
            `
            productBox += productElement;
        })



        let packageBox = `
            <div class="pay-package-content-item">
                <div class="pay-package-title">` + packageTitle + `(x ` + packageQuantity + `)</div>
                <input type="hidden" name="package-quantity" value="` + packageQuantity + `">
                <div class="pay-package-product-list">
                    ` + productBox + `
                </div>
            </div>
        `

        $(".pay-package-content-item-box").append(packageBox)

    })
})

$('.pay-project-donation-push-button').click(function() {

    if($(".pay-project-donation-agree-box.select").length < 2){
        alert("동의사항에 체크해주세요")
        return;
    }

    let price = $(".final-donation-price-box").find("input[name='total-price']").val()
    let backersTotalPrice = parseInt(price, 10);
    console.log("결제가격: "+ backersTotalPrice)
    $.ajax({
        url: realPath+'/project/create/donation', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            backersTotalPrice:backersTotalPrice
        }),
        success: function (backersId) {
            // 결제 요청
            IMP.init('imp00254126'); // 'imp12345678'는 테스트용 가맹점 식별 코드입니다. 실제로는 PortOne에서 발급한 가맹점 식별 코드로 대체해야 합니다.
            IMP.request_pay({
                pg: "kakaopay.TC0ONETIME", // 'TC0ONETIME'은 테스트용 카카오페이 CID입니다. 실제 CID로 교체해야 합니다.
                pay_method: "kakaopay",
                merchant_uid: "order_no_" + backersId + "", // 상점에서 생성한 고유 주문번호
                name: "주문명:젠블벅",
                amount: backersTotalPrice,
            }, function (rsp) {
                // callback 로직
                if (rsp.success) {
                    $.ajax({
                        url: realPath+'/project/update/donation', // 요청을 보낼 URL
                        type: 'POST', // 요청의 타입
                        contentType: 'application/json', // 요청 본문의 미디어 타입
                        data: JSON.stringify({
                            backersId: backersId
                        }),
                        success: function (result) {
                            alert("후원이 완료되었습니다!")
                            window.location.href = realPath + "/project/"+projectId

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.error('Error:', jqXHR, textStatus, errorThrown);
                        }
                    });
                } else {
                    alert('결제에 실패하였습니다. 에러 내용: ' + rsp.error_msg);
                    // 결제 실패 시 실행할 코드
                }
            });


        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });




});

$(".pay-project-delivery-info-change-button").on("click",function(){
    addressChange();
})
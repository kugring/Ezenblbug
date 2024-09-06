//셀럭터 선택시 토글과 픽상자 출현
$(".gift-item-selector-padding-box").on("click", function(){
    giftSelector(this)
})

function giftSelector(element){
    let $selectBox = $(element).closest(".gift-item-selector-box")
    $selectBox.find(".rotate-svg").toggleClass("select")
    $selectBox.find(".gift-item-pick-box").toggleClass("select")
}

// 아이템 선택시 체크박스 변화
$(".gift-item-box").on("click", function () {
    $(this).toggleClass("select")
    // 선택 갯수를 표기함
    $(".gift-item-total-pick-count").text($(".gift-item-box.select").length)
})

// 체크박스 체크하고 선택완료 버튼 클릭시 아이템을 박스에 담음
$(".gift-item-pick-complete-button").on("click", function(){
    let $inputBox = $(this).closest(".gift-item-selector-box")
    let $inputPaddingBox = $(this).closest(".gift-item-selector-box").find(".gift-item-selector-padding-box")
    let $itemBox = $(".gift-item-select-card-box")
    let items = $inputBox.find(".gift-item-box.select")

    // 셀렉터를 다시 닫음
    giftSelector($inputPaddingBox)
    // 박스의 요소를 비움
    $itemBox.html('')

    items.each(function(){
        let item_name =$(this).find(".gift-item-name").text().trim()
        let product_id =$(this).find("input[name='product-id']").val()
        let itemElement =
            `
                    <div class="gift-item-select-card">
                        <div class="gift-card-name">`+ item_name +`</div>
                        <div class="gift-card-button-box">
                            <div class="gift-card-item-counter">
                                <svg onclick="giftCounterUpDow(-1, this)" viewBox="0 0 48 48"><path d="M6 24.1C6 22.9402 6.9402 22 8.1 22H39.9C41.0598 22 42 22.9402 42 24.1C42 25.2598 41.0598 26.2 39.9 26.2H8.1C6.9402 26.2 6 25.2598 6 24.1Z"></path></svg>
                                <div class="gift-card-item-quantity">1</div>
                                <svg onclick="giftCounterUpDow(1, this)" viewBox="0 0 48 48"><path fill-rule="evenodd" clip-rule="evenodd" d="M43.7104 21.8549H25.99V4.09524C25.99 2.89796 24.9945 2 23.9005 2C22.8054 2 21.81 2.89796 21.81 4.09524V21.9546H4.0905C2.89593 21.8549 2 22.8526 2 23.9501C2 25.0476 2.89593 26.0454 4.0905 26.0454H21.9095V43.9048C21.9095 45.0023 22.8054 46 23.999 46C25.095 46 26.0905 45.102 26.0905 43.9048V26.0454H43.9085C45.0045 26.0454 46 25.1474 46 23.9501C45.8009 22.8526 44.904 21.8549 43.7104 21.8549C43.7104 21.8549 43.81 21.8549 43.7104 21.8549Z"></path></svg>
                            </div>
                            <div onclick="deleteGiftItem(this)" class="gift-card-item-delete">삭제</div>
                        </div>
                        <input type="hidden" name="product-id" value="`+ product_id +`">
                    </div>
                `
        $itemBox.append(itemElement)
    })
})

// 카운터 다이얼 설정
function giftCounterUpDow(num, element){
    let $quantity = $(element).closest(".gift-card-item-counter").find(".gift-card-item-quantity")
    let quantity_text = $quantity.text()
    let quantity = parseInt(quantity_text, 10);


    quantity += num

    if(quantity < 1) return;
    $quantity.text(quantity)
}

function deleteGiftItem(element){
    let $card = $(element).closest(".gift-item-select-card")
    let product_id = $card.find("input[name='product-id']").val()
    let items = $(".gift-item-box.select")
    items.each(function(){
        let pick_product_id = $(this).find("input[name='product-id']").val()

        if(pick_product_id === product_id){
            $(this).removeClass("select")
        }
    })

    $card.remove()
}
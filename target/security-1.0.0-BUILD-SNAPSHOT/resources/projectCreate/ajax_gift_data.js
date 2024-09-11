$(".gift-custom-save").on("click", function(){
    if($(this).hasClass("disable")) return;
    ajax_gift_data()
})

console.log("경로: "+realPath)

function ajax_gift_data(){
    let projectId = $("#project-id").val()

    let productName = $(".input-one.product-name").val().trim()
    let productExplain = $(".gift-explain-button.select").text().trim() === "있음" ? $(".input-one.product-explain").val().trim() : null;

    console.log("projectId :" + projectId)
    console.log("productName :" + productName)
    console.log("productExplain :" + productExplain)

    $.ajax({
        url:  realPath +'/project/create/gift', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId:projectId,
            productName:productName,
            productExplain:productExplain
        }),
        success: function (productId) {
            alert("이것은 선물아이템 ID:"+productId)


            let cardBox = `
                    <div class="gift-make-result-card">
                        <input type="hidden" name="product-id" value=" ` + productId + `">
                        <div class="gift-make-result-card-title">
                            <div class="gift-make-result-card-name">` + productName + `</div>
                            <div class="gift-make-result-card-delete">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="gift-make-result-item-name">· ` + productExplain + `</div>
                    </div>
            
            `
            $(".gift-make-result-box").append(cardBox)


            $(".input-one.product-name").val('')
            $(".input-one.product-explain").val('')
            $(".gift-explain-button").removeClass("select")
            $(".gift-explain-button.empty").addClass("select")




            let giftItemBox = `
                        <div class="gift-item-box" onclick="giftItemSelect(this)">
                            <div class="gift-item-label select">
                                <div class="gift-item-checkbox">
                                    <svg viewBox="0 0 48 48">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                    </svg>
                                </div>
                                <div class="gift-item-name">` + productName + `
                                    <input type="hidden" name="product-id" value="\` + productId + \`">
                                </div>
                                
                            </div>
                            <div class="gift-item-use-count">` + productExplain + `</div>
                        </div>
                        `
            $(".gift-item-pick-list").append(giftItemBox)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

$(".gift-make-result-card-delete").on("click", function () {
    ajax_gift_delete(this);
})

function ajax_gift_delete(button){
    let $button = $(button)

    let projectId = $("#project-id").val()
    let $cardBox = $button.closest(".gift-make-result-card");
    let productId = $cardBox.find("input[name='product-id']").val().trim();

    $.ajax({
        url: realPath +'/project/delete/gift', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            productId: productId
        }),
        success: function (result) {
            alert("삭제 성공: " + result)
            $cardBox.remove()

            let $item = $(".gift-item-box")
            for(let i=0; i<$item.length; i++){
                if($item.eq(i).find("input[name='product-id']").val() == productId){
                    $item.eq(i).remove()
                }
            }

            let $name = $(".package-make-result-item-name")
            for(let i=0; i<$name.length; i++){
                if($name.eq(i).find("input[name='product-id']").val() == productId){
                    $name.eq(i).remove()
                }
            }



        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });

}



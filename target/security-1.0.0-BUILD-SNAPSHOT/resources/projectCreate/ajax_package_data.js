$(".package-custom-save").on("click", function () {
    if ($(this).hasClass("disable")) return;
    ajax_package_create()
})

function ajax_package_create() {

    // 저장버튼이 비활성화인 경우는 리턴함
    if ($(".package-custom-save").hasClass("disable")) return;

    let projectId = $("#project-id").val()
    let packageTitle = $(".input-one.package-name").val().trim()
    let packagePrice = $(".price-input.gift").val().trim().replace(",", "");
    let maxProductAmount = $(".package-custom-item-box.max-quantity-limit").find(".radio-item-box.yes").hasClass("select") ? $(".max-quantity").val().trim() : -1;
    let personMaxAmount = $(".package-custom-item-box.person-quantity-limit").find(".radio-item-box.yes").hasClass("select") ? $(".max-person-quantity").val().trim() : -1;
    let productVOList = []


    $(".gift-item-select-card").each(function (index) {
        let productId = $(this).find("input[name='product-id']").val()
        let productQuantity = $(this).find(".gift-card-item-quantity").val()
        // 배열에 키-값 객체를 추가
        productVOList.push({
            productId: productId,
            productQuantity: productQuantity
        });
    })

    console.log("projectId :" + projectId)
    console.log("packageTitle :" + packageTitle)
    console.log("packagePrice :" + packagePrice)
    console.log("maxProductAmount :" + maxProductAmount)
    console.log("personMaxAmount :" + personMaxAmount)
    console.log("productVOList :" + productVOList)

    $.ajax({
        url: realPath+'/project/create/package', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            packageTitle: packageTitle,
            packagePrice: packagePrice,
            maxProductAmount: maxProductAmount ,
            personMaxAmount: personMaxAmount,
            productVOList: productVOList
        }),
        success: function (packageId) {

            let productBox = "";  // 빈 문자열로 초기화

            for (let i = 0; i < $(".gift-item-select-card").length; i++) {
                let productName = $(".gift-item-select-card").eq(i).find(".gift-card-name").text();
                let productQuantity = $(".gift-item-select-card").eq(i).find(".gift-card-item-quantity").text();
                console.log("제품이름: " + productName + ", 제품수량: " + productQuantity);

                let productItem = `<div class="package-make-result-item-name">· ` + productName + ` (x ` + productQuantity + `)</div>`;
                productBox += productItem;  // productBox에 추가
            }


            let a;
            a += 2;

            let packageBox = `
                    <div class="package-make-result-card">
                        <input type="hidden" name="package-id" value=" ` + packageId + ` ">
                        <div class="package-make-result-card-title">
                            <div class="package-make-result-card-price">` + $(".price-input.gift").val().trim() + `원+</div>
                            <div class="package-make-result-card-delete" onclick="ajax_package_delete(this)">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M38.814 42.172C38.814 42.946 38.064 43.574 37.144 43.574H10.856C9.936 43.574 9.186 42.946 9.186 42.172V12.218H38.814V42.172ZM17.564 4.426L30.542 4.524V9.794H17.462L17.564 4.426ZM44.786 9.794H32.968V4.524C32.968 3.13 31.832 2 30.436 2H17.564C16.168 2 15.03 3.13 15.03 4.524V9.794H3.212C2.542 9.794 2 10.336 2 11.006C2 11.676 2.542 12.218 3.212 12.218H6.76V42.172C6.76 44.284 8.598 46 10.856 46H37.144C39.402 46 41.24 44.284 41.24 42.172V12.218H44.786C45.456 12.218 46 11.676 46 11.006C46 10.336 45.456 9.794 44.786 9.794ZM18.857 36.9338C19.527 36.9338 20.069 36.3918 20.069 35.7218V20.0738C20.069 19.4038 19.527 18.8618 18.857 18.8618C18.187 18.8618 17.645 19.4038 17.645 20.0738V35.7218C17.645 36.3918 18.187 36.9338 18.857 36.9338ZM30.3542 35.7218C30.3542 36.3918 29.8122 36.9338 29.1422 36.9338C28.4722 36.9338 27.9302 36.3918 27.9302 35.7218V20.0738C27.9302 19.4038 28.4722 18.8618 29.1422 18.8618C29.8122 18.8618 30.3542 19.4038 30.3542 20.0738V35.7218Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="package-make-result-card-name"> ` + packageTitle + `</div>
                        
                        ` + productBox + `
                            
                        <div class="package-make-result-information-box">
                            <div class="package-make-result-pick-counter">
                                <svg viewBox="0 0 48 48">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z"></path>
                                </svg>
                            </div>
                            <div class="package-make-result-stock-counter">` + maxProductAmount + `개 남음</div>
                        </div>
                    </div>
    `
            $(".package-make-result-box").append(packageBox);

            // 선택된 체크박스 다 해제
            $(".gift-item-box").removeClass('select')
            // 선택된 아이템 비움
            $(".gift-item-select-card-box").html('')
            // 선물 이름 인풋값 비움
            $(".input-one.package-name").val('')
            // 라디오 박스 선택 다 해체
            $(".radio-item-box").removeClass("select")
            // 선물 금액 인풋 값 비움
            $(".price-input.gift").val('')

        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}

$(".package-make-result-card-delete").on("click", function () {
    ajax_package_delete(this);
})

function ajax_package_delete(button) {
    let projectId = $("#project-id").val()
    let $button = $(button)
    let $cardBox = $button.closest(".package-make-result-card");
    let packageId = $cardBox.find("input[name='package-id']").val().trim();


    $.ajax({
        url: realPath+'/project/delete/package', // 요청을 보낼 URL
        type: 'POST', // 요청의 타입
        contentType: 'application/json', // 요청 본문의 미디어 타입
        data: JSON.stringify({
            projectId: projectId,
            packageId: packageId
        }),
        success: function (result) {
            $cardBox.remove()
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.error('Error:', jqXHR, textStatus, errorThrown);
        }
    });
}






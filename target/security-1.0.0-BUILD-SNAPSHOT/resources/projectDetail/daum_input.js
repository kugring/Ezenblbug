
function addressChange() {
    new daum.Postcode({
        oncomplete: function (data) {

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 도로명 주소
                fullAddr = data.roadAddress;
            } else { // 지번 주소
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일 때 조합형 주소를 추가한다.
            if (data.userSelectedType === 'R') {
                // 법정동명이 있을 경우 추가한다.
                if (data.bname !== '') {
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if (data.buildingName !== '') {
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
            }

            let addressData = fullAddr.trim()

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $(".pay-project-delivery-backer-address").text(fullAddr)

        }
    }).open();
}
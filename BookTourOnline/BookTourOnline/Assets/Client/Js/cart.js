
// @ts-nocheck
var date = new Date();
var year = date.getFullYear();
var month = date.getMonth() + 1;
var todayDate = String(date.getDate()).padStart(2, '0');
var datePattern = year + '-' + month + '-' + todayDate;
// @ts-ignore
document.getElementById("date-picker").value = datePattern;


//dateSelect.addEventListener('change', function(e) {
//    e.preventDefault();
//    document.getElementsByClassName('block-input-group-time')[0].value = dateSelect.value;

//})
//var count = document.getElementsByClassName('count');
//console.log(count);
//var btnPlus = document.getElementsByClassName("btn-plus");
//var btnMinus = document.getElementsByClassName("btn-minus");
//var gia = document.getElementById("giatour").textContent;
//var convergia = gia.replaceAll(',', '.');
//var soNguoiLon = document.getElementById("songuoilon").value;
//var soTreEm = document.getElementById("sotreem").value;
//var soTre = document.getElementById("sotre").value;
//var tongTien = document.getElementById("tongtien");
//for (let index = 0; index < btnPlus.length; index++) {
//    const element = btnPlus[index];
//    btnPlus[index].addEventListener("click", function(e) {
//        e.preventDefault();
//        count[index].value = parseInt(count[index].value) + 1;
//        tongTien.innerHTML = "Tổng: " + (parseInt(soNguoiLon) * parseInt(convergia) + (parseInt(soTreEm) * parseInt(convergia)) * 0.75 + (parseInt(soTre) * 0)) + " VNĐ";

//    })
//}

//for (let index = 0; index < btnPlus.length; index++) {
//    const element = btnMinus[index];
//    btnMinus[index].addEventListener("click", function(e) {
//        e.preventDefault();
//        if (count[index].value <= 0) {
//            alert("Số lượng người tham gia không thể nhỏ hơn 0");
//        } else {

//            count[index].value = parseInt(count[index].value) - 1;
//        }
//    })
//}
//var count = document.getElementsByClassName('count');
//console.log(count);
////var btnPlus = document.getElementsByClassName("btn-plus");
////var btnMinus = document.getElementsByClassName("btn-minus");
//var gia = document.getElementById("giatour").textContent;
//var convergia = gia.replaceAll(',', '.');
//console.log(typeof (parseInt(convergia)));
//var soNguoiLon = document.getElementById("songuoilon");
//var soTreEm = document.getElementById("sotreem");

//var soTre = document.getElementById("sotre");

//var btn_count = document.getElementsByClassName("count");
//const tongTien = document.getElementById("tongtien");
//for (let index = 0; index < btn_count.length; index++) {
//    const element = btn_count[index];
//    element.addEventListener('change', function (e) {
//        e.preventDefault();
//        tongTien = parseFloat(convergia) * (soTreEm.value) * 0.75 + parseFloat(convergia) * (soNguoiLon.value);
       
//    })
//}
//var result = tongTien.replace(/\B(?=(\d{3})+(?!\d))/g, ',');


var cart = {
    init: function () {
        cart.regEvents();
    },
    regEvents: function () {
        $('#btnPayment').off('click').on('click', function () {
            window.location.href = "/thanh-toan";
        });

        $('#btnUpdate').off('click').on('click', function () {
            //  ban đầu
            var ListNguoiLon = $('.txtQuantity');
            var cartList = [];
            console.log(ListNguoiLon);
           
           // var CreatedDate =$('.CreatedDate');
         //  var listTreEm = $('.txtQuantityTreEm');
         
            $.each(ListNguoiLon, function (i, item) {
                cartList.push({
                    SoLuong: $(item).val(),
                    SoLuongNguoiLon: $(item).val(),
                  //  CreatedDate:$(item).val(),
                   // SoLuongTreEm: $(item).val(),
                    Tour: {
                        MaTour: $(item).data('id')
                    }
                });
            });
           //nghịch
          
           
            $.ajax({
                url: '/Cart/Update',
                data: { cartModel: JSON.stringify(cartList) },
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res.status == true) {
                        window.location.href = "/gio-hang";
                    }
                }
            })
        });
   
        $('.btn-delete').off('click').on('click', function (e) {
            e.preventDefault();
            $.ajax({
                data: { id: $(this).data('id') },
                url: '/Cart/Delete',
                dataType: 'json',
                type: 'POST',
                success: function (res) {
                    if (res.status == true) {
                        window.location.href = "/gio-hang";
                    }
                }
            })
        });
    }
}
cart.init();
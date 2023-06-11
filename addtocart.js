
var cart = JSON.parse(localStorage.getItem("cart"));
            if(cart!=null){
                giohang = cart;
            }else{
var giohang = [];
        }
         var btn = document.getElementsByClassName("add..");
         for(let i = 0; i< btn.length; i++){
         btn[i].addEventListener("click", function () {
        var hinh = btn[i].parentNode.parentNode.querySelector(".hinh").textContent;
        var ma = btn[i].parentNode.parentNode.querySelector(".ma").textContent;
        var ten = btn[i].parentNode.parentNode.querySelector(".ten").textContent;
        var gia = parseInt(btn[i].parentNode.parentNode.querySelector(".product__item__price").textContent);
        var soluong=1;
        alert(ma);
                                    
                                    var sp ={
                                        "hinh":hinh,
                                        "ten":ten,
                                        "gia":gia,
                                        "soluong":soluong,
                                        "ma":ma
                                        };
                                        giohang.push(sp);
                                        sessionStorage.setItem("cart",JSON.stringify(giohang));
                                        var cart = JSON.parse(sessionStorage.getItem("cart"));
            if(cart!=null){
                document.getElementById("slsp").innerHTML = cart.length;
            }
         });
         }
        function getslsp(){
            var cart = JSON.parse(sessionStorage.getItem("cart"));
            if(cart!=null){
                document.getElementById("slsp").innerHTML = cart.length;
            }
        }
        function loadhome (){
            getslsp();
            newpd();
        }
        function newpd(){

        }
        function loadcart(){
            getslsp();
            showcart();
        }
        function showcart(cart){
            var cart = JSON.parse(sessionStorage.getItem("cart"));
            if(cart!=null){
                var kq = "";
                var total = 0;
                for(let i =0; i < cart.length; i++){
                    var tt = cart[i]["gia"]*cart[i]["soluong"];
                    total += tt
                    kq += `
                    <tr id = "pro">                 
                    <td class="product__cart__item"  id="mom">
                    <div class="product__cart__item__pic">
                        <img id="dad" src="`+cart[i]["hinh"] +`" alt="">
                    </div>
                    <div class="product__cart__item__text" id ="grandpa">
                        <h6 id ="ten1" style>`+cart[i]["ten"] +`</h6>
                        <h5 id="ten2">`+cart[i]["gia"] +`</h5>
                    </div>
                </td>
                                    <td class="quantity__item" id="slsp">
                                        <div class="quantity">
                                            <div class="pro-qty">

                                         <div class="number-input">
                                         <button onclick="decreaseQuantity(${i}); update_tt(`+i+`)" class="minus"></button>
                                         <input class="quantity" min="0" name="quantity" id="ip_sl_`+i+`" value="`+cart[i]["soluong"]+`" type="number">
                                         <button onclick="increaseQuantity(${i}); update_tt(`+i+`)" class="plus"></button>
                                       </div>

                                            </div>
                                            <style>
                                            #down:hover{
                                                cursor:pointer;
                                            }
                                            #up:hover{
                                                cursor:pointer;
                                            }
                                            </style>
                                        </div>
                                    </td>
                                    <td class="cart__price" id="tt_price_`+i+`">`+ tt +`đ</td>
                                    <input type="hidden" value="`+tt+`" id="ip_tt_`+i+`">
                                    <td class="cart__close"><span class="icon_close" onclick="removeItem(`+cart[i]["ma"] +`)"></span></td>
                                </tr> 
                             
                     `;
                }
                // document.getElementById("abc").innerHTML=kq;
                $('#abc').append(kq);
                $('#all_tt').text(total + "đ");
                $('#all_tt_bf_promotion').text(total + "đ");
                }
        }
        function increaseQuantity(index) {
            var cart = JSON.parse(sessionStorage.getItem("cart"));
            cart[index]["soluong"] += 1;
            sessionStorage.setItem("cart", JSON.stringify(cart));
   
          }
          function decreaseQuantity(index) {
            var cart = JSON.parse(sessionStorage.getItem("cart"));
            if (cart[index]["soluong"] > 1) {
              cart[index]["soluong"] -= 1;
              sessionStorage.setItem("cart", JSON.stringify(cart));
            }
          }
          function changeQuantity(index, value) {
            var cart = JSON.parse(sessionStorage.getItem("cart"));
            if (value > 0) {
              cart[index]["soluong"] = parseInt(value);
              sessionStorage.setItem("cart", JSON.stringify(cart));
            }
          }
          function removeItem(ma) {
            var cart = JSON.parse(sessionStorage.getItem('cart'));
            for (let i = 0; i < cart.length; i++) {
              if (cart[i]["ma"] === ma) {
                cart.splice(i, 1);
                break;
              }
            }
            sessionStorage.setItem('cart', JSON.stringify(cart));
          }                    

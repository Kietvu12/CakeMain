
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
        var ten = btn[i].parentNode.parentNode.querySelector(".ten").textContent;
        var gia = btn[i].parentNode.parentNode.querySelector(".product__item__price").textContent;
        var soluong = 1;
                                    alert(gia);
                                    var sp ={
                                        "hinh":hinh,
                                        "ten":ten,
                                        "gia":gia,
                                        "soluong":soluong
                                        };
                                        giohang.push(sp);
                                        localStorage.setItem("cart",JSON.stringify(giohang));
                                        var cart = JSON.parse(localStorage.getItem("cart"));
            if(cart!=null){
                document.getElementById("slsp").innerHTML = cart.length;
            }
         });
         }
        function getslsp(){
            var cart = JSON.parse(localStorage.getItem("cart"));
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
        function showcart(){
            var cart = JSON.parse(localStorage.getItem("cart"));
            if(cart!=null){
                var kq = "";
                for(let i =0; i < cart.length; i++){
                    kq += `
                    <tr>
                                    
                    <td class="product__cart__item"  id="mom">
                    <style>
                    #mom{
                    width: 600px;
                    }
                    </style>
                    <div class="product__cart__item__pic">
                    
                        <img id="dad" src="`+cart[i]["hinh"] +`" alt="">
                        <style>
                        #dad{
                            display: block;
                            max-width:400px;
                            max-height:200px;
                            width: auto;
                            height: auto;

                          }
                          </style>
                    </div>
                    <div class="product__cart__item__text" id ="grandpa">
                    <style>
                        #grandpa{
                            overflow: hidden;
                            padding-top: 21px;
                          }
                          </style>

                        <h6 id ="ten1" style>`+cart[i]["ten"] +`</h6>
                        <style>
                        #ten1{
                            color: #111111;
  font-size: 16px;
  font-weight: 500;
  text-transform: uppercase;
  margin-bottom: 40px;
  margin-top:50px;

                          }
                          </style>
                        <h5 id="ten2">`+cart[i]["gia"] +`</h5>
                        <style>
                        #ten2{
                            color: #111111;
                            font-weight: 600;
                            font-size: 16px;
                            margin-bottom:32px;
                          }
                          </style>
                    </div>
                </td>
                                    <td class="quantity__item" id="slsp">
                                    <style>
                        #slsp{
                            width: 175px;
                          }
                          </style>
                                        <div class="quantity">
                                            <div class="pro-qty">
                                         <span id="up">+</span><input type="text" value="`+cart[i]["gia"] +`"><span id="down">-<span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">$ 30.00</td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>
                                   
                     `;
                }
                document.getElementById("abc").innerHTML=kq;
                }
        }
        
        
        

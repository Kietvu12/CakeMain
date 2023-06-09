
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
        var gia = parseInt(btn[i].parentNode.parentNode.querySelector(".product__item__price").textContent);
        var soluong = 1;
                                    alert(hinh);
                                    var sp ={
                                        "hinh":hinh,
                                        "ten":ten,
                                        "gia":gia,
                                        "soluong":soluong
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
        function showcart(){
            var cart = JSON.parse(sessionStorage.getItem("cart"));
            if(cart!=null){
                var kq = "";
                for(let i =0; i < cart.length; i++){
                    var tt = cart[i]["gia"]*cart[i]["soluong"];
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
                                     <span onclick="dow( `+ i +`)" id="down">-</span><input id ="quantity"type="text" value="`+cart[i]["soluong"] +`"><span id="up">+<span>
                                            </div>
                                            <style>
                                            #down:hover{
                                                cursor:pointer;
                                                font-size: 50px;
                                            }
                                            #up:hover{
                                                cursor:pointer;
                                            }
                                            </style>
                                        </div>
                                    </td>
                                    <td class="cart__price">`+ tt +`</td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>       
                     `;
                }
                document.getElementById("abc").innerHTML=kq;
                }
        }
    

        
        

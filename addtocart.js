var giohang=[];
         var btn = document.getElementsByClassName("add..");
         for(let i = 0; i< btn.length; i++){
         btn[i].addEventListener("click", function () {
                                    var hinh = document.getElementById("hinh");
                                    var ten = document.getElementById("ten");
                                    var gia = document.getElementById("gia");
                                    var soluong = 1;
                                    alert(hinh);
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
        

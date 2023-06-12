<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Một Ô Cửa Tea & Cake</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__top__left">
                                <div class="header-btn">
                                <a href="./signin-signup.asp"><button class="sign-in"> Log In</button></a>
                                <a href="./signin-signup.asp"><button class="sign-up"> Sign Up</button></a>
                                </div>
                                <style>
                                    .sign-up{
                                        background-color: #f08632;
                                        color: white;
                                        border: none;
                                        height: 50px;
                                        width: 105px;
                                        border-radius: 5px;
                                        cursor: pointer;
                                        margin-right: 8px;
                                        transition: opacity 0.15s;
                                        font-weight: bold;
                                        margin-top: 1px;
                                   }
                                    .sign-up:hover{
                                    background-color : black;
                                    color: white;
                                   }
                                    .sign-in{
                                        background-color: #f08632;
                                        color: white;
                                        border: none;
                                        height: 50px;
                                        width: 105px;
                                        border-radius: 40px;
                                        cursor: pointer;
                                        margin-right: 8px;
                                        transition: opacity 0.15s;
                                        font-weight: bold;
                                        border-radius: 5px;
                                        margin-right : 5px;
                                
                                    }
                                    .sign-in:hover{
                                        background-color : black;
                                        color: white;
                                    }
                                    .sign-in:active{
                                        opacity: 0.7;
                                        transition: 0.2s;
                                    }
                                    .sign-up:active{
                                        opacity: 0.7;
                                        transition: 0.2s;
                                    }
                                </style>
                            </div>
                            <div class="header__logo">
                                <a href="./index.html"><img src="img/logo.png" alt=""></a>
                            </div>
                            <div class="header__top__right">
                                <div class="header__top__right__links">
                                    <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                                    <a href="#"><img src="img/icon/heart.png" alt=""></a>
                                </div>
                                <div class="header__top__right__cart">
                                    <a href="./shoping-cart.asp"><img src="img/icon/cart.png" alt=""> <span></span></a>
                                    <div class="cart__price"> Giỏ Hàng: <span>0VND</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.asp">Trang Chủ</a></li>
                            <li><a href="./shop.asp">Gian Hàng</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="./shoping-cart.asp">Giỏ Hàng</a></li>
                                    <li><a href="./checkout.asp">Thanh Toán</a></li>
                                    

                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Gian Hàng</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="./index.asp">Trang Chủ</a>
                        <span>Gian Hàng</span>
                        <style>
                            .cart{
                                border: none;
                                background-color: white;
                            }
                        </style>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="shop__option">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="shop__option__search">
                            <form action="#">
                                <select>
                                    <option value="">Categories</option>
                                    <option value="">Trà Trái Cây</option>
                                    <option value="">Bánh Ngọt</option>
                                    <option value="">Trà</option>
                                </select>
                                <input type="text" placeholder="Search">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <% 
Dim connectionString
connectionString = "Provider=SQLOLEDB;Data Source=DESKTOP-P7BQEGE;Initial Catalog=QuanLyTiemBanh;User ID=sa;Password=1"

Dim connDB
Set connDB = Server.CreateObject("ADODB.Connection")
connDB.ConnectionString = connectionString

' Mở kết nối
connDB.Open()

' Tạo câu truy vấn
Dim query
query = "SELECT MaHhoa, TenHhoa, Gia, img, MaLoai,TenLoai FROM Hhoa and LoaiHH "

' Thực thi câu truy vấn
Dim rs
Set rs = connDB.Execute(query)
id = rs("MaHhoa")

' Hiển thị kết quả lấy được
While Not rs.EOF
  
  

' Đóng kết nối
%>
             
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="<%=rs("img")%>">

                            <div class="product__label">
                                <span>Cupcake</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6 class ="ten"><a href="#"><%=rs("TenHhoa")%></a></h6>
                            <div class="product__item__price"><%=rs("Gia")%></div>
                            <span id ="hinh" type="hidden" class="hinh"><%=rs("img")%></span>
                             <span id ="ma" type="hidden" class="ma"><%=rs("MaHhoa")%></span>
                            <style>
                            #hinh{ 
                                display :none;
                            }
                             #ma{ 
                                display :none;
                            }

                            </style>

                            <div class="cart_add">
                                <a class="add..">Add to cart</a>
                                <style>
                                .add.. :hover{
                                    cursor:pointer;
                                }
                                </style>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                rs.MoveNext
                Wend
                %>
            </div>
        </div>
        <script src = "addtocart.js">                        
        </script>
            </div>
            <div class="shop__last__option">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="shop__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><span class="arrow_carrot-right"></span></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="shop__last__text">
                            <p>Showing 1-9 of 10 results</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

    <footer class="footer set-bg" data-setbg="img/footer-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>Khung giờ </h6>
                        <ul>
                            <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                            <li>Saturday: 10:00 am – 16:30 pm</li>
                            <li>Sunday: 10:00 am – 16:30 pm</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p></p>
                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__newslatter">
                        <h6>Subscribe</h6>
                        <p>Get latest updates and offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Email">
                            <button type="submit"><i class="fa fa-send-o"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <p class="copyright__text text-white"><
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 

                      </p>
                  </div>
                  <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>

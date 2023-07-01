<%
Dim bid, bname, bnum, bemail, bnote, bpro, bprice

' Lấy giá trị từ form
bid = Request.Form("bid")
bname = Request.Form("bname")
bnum = Request.Form("bnum")
bemail = Request.Form("bemail")
bnote = Request.Form("bnote")

Dim conn, rs
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB;Data Source=DESKTOP-P7BQEGE;Initial Catalog=QuanLyTiemBanh;User ID=sa;Password=1"
sqlQuery = "INSERT INTO Bill(MaHD, name, phonenum, email, note)VALUES('"&bid&"','"&bname&"','"&bnum&"','"&bemail&"','"&bnote&"')"
Set rs = conn.Execute(sqlQuery)
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Một Ô Cửa Tea & Cake hahaha</title>

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
<body onload="loadcart()">
     <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form method="post" action="bill.asp">
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h6 class="order__title">Đơn hàng <%=bid%></h6>
                                <h6 class="order__title">Khách hàng <%=bname%></h6>
                                <h6 class="order__title">Số điện thoại <%=bnum%></h6>
                                <h6 class="order__title">Email <%=bemail%></h6>
                                <h6 class="order__title">Note <%=bnote%></h6>
                                <div class="checkout__order__products">Sản phẩm <span>Tổng</span></div>
                                <ul class="checkout__total__products" id = "pro_check" name="bpro">
                                </ul>
                                <ul class="checkout__total__all">
                                    <li >Đơn giá<span id="all_tt"></span></li>
                                    <li>Thành Tiền <span id="all_tt_bf_promotion"></span></li>
                                    </ul>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
         <script src = "addtocart.js">                        
        </script>
    </section>
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
   

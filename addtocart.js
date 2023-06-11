var cart = JSON.parse(localStorage.getItem("cart"));
if (cart != null) {
  giohang = cart;
} else {
  var giohang = [];
}

var btn = document.getElementsByClassName("add..");
for (let i = 0; i < btn.length; i++) {
  btn[i].addEventListener("click", function () {
    var hinh = btn[i].parentNode.parentNode.querySelector(".hinh").textContent;
    var ma = btn[i].parentNode.parentNode.querySelector(".ma").textContent;
    var ten = btn[i].parentNode.parentNode.querySelector(".ten").textContent;
    var gia = parseInt(btn[i].parentNode.parentNode.querySelector(".product__item__price").textContent);
    var soluong = 1;
    alert("Đã thêm vào giỏ hàng");

    var sp = {
      "hinh": hinh,
      "ten": ten,
      "gia": gia,
      "soluong": soluong,
      "ma": ma
    };

    giohang.push(sp);
    localStorage.setItem("cart", JSON.stringify(giohang));
    var cart = JSON.parse(localStorage.getItem("cart"));
    if (cart != null) {
      document.getElementById("slsp").innerHTML = cart.length;
    }
  });
}

function getslsp() {
}

function loadhome() {
  getslsp();
  newpd();
  var cart = JSON.parse(localStorage.getItem("cart"));
  showcart(cart);
}

function newpd() {

}

function loadcart() {
  getslsp();
  var cart = JSON.parse(localStorage.getItem("cart"));
  showcart(cart);
}

function showcart(cart) {
  if (cart != null) {
    var kq = "";
    var cq = "";
    var total = 0;
    for (let i = 0; i < cart.length; i++) {
      var tt = cart[i]["gia"] * cart[i]["soluong"];
      total += tt;
      kq += `
        <tr id="pro-${cart[i]["ma"]}">                 
          <td class="product__cart__item" id="mom">
            <div class="product__cart__item__pic">
              <img id="dad" src="${cart[i]["hinh"]}" alt="">
            </div>
            <div class="product__cart__item__text" id="grandpa">
              <h6 id="ten1" style>${cart[i]["ten"]}</h6>
              <h5 id="ten2">${cart[i]["gia"]}</h5>
            </div>
          </td>
          <td class="quantity__item" id="slsp">
            <div class="quantity">
              <div class="pro-qty">
                <div class="number-input">
                  <button onclick="decreaseQuantity(${i}); update_tt(${i})" class="minus"></button>
                  <input class="quantity" min="0" name="quantity" id="ip_sl_${i}" value="${cart[i]["soluong"]}" type="number">
                  <button onclick="increaseQuantity(${i}); update_tt(${i})" class="plus"></button>
                </div>
              </div>
              <style>
                #down:hover {
                  cursor: pointer;
                }
                #up:hover {
                  cursor: pointer;
                }
              </style>
            </div>
          </td>
          <td class="cart__price" id="tt_price_${i}">${tt}đ</td>
          <input type="hidden" value="${tt}" id="ip_tt_${i}">
          <td class="cart__close"><span class="icon_close" onclick="removeItem('${cart[i]["ma"]}')"></span></td>
        </tr> 
      `;
      cq += ` <li>${cart[i]["ten"]} x ${cart[i]["soluong"]}<span>${tt}</span></li>
      `;

    }

    $('#abc').append(kq);
    $('#pro_check').append(cq);
    $('#all_tt').text(total + "đ");
    $('#all_tt_bf_promotion').text(total + "đ");
    $('#all_tt_bf_promotion').text(total + "đ");

  }
}

function increaseQuantity(index) {
  var cart = JSON.parse(localStorage.getItem("cart"));
  var slm = cart[index]["soluong"] + 1;
  cart[index]["soluong"] = slm;
  localStorage.setItem("cart", JSON.stringify(cart));
  document.getElementById("ip_sl_" + index).value = slm;
}

function decreaseQuantity(index) {
  var cart = JSON.parse(localStorage.getItem("cart"));
  if (cart[index]["soluong"] > 1) {
    cart[index]["soluong"] -= 1;
    localStorage.setItem("cart", JSON.stringify(cart));
  }
}

function countTotal(cart) {
  var total = 0;
  for (let i = 0; i < cart.length; i++) {
    total += cart[i]["gia"] * cart[i]["soluong"];
  }
  return total;
}

function showTotal(total) {
  $('#all_tt').text(total + "đ");
  $('#all_tt_bf_promotion').text(total + "đ");
}
function update_tt(index) {
  var cart = JSON.parse(localStorage.getItem("cart"));
  var sl = document.getElementById("ip_sl_" + index).value;
  cart[index]["soluong"] = parseInt(sl);
  localStorage.setItem("cart", JSON.stringify(cart));
  var tt = cart[index]["gia"] * cart[index]["soluong"];
  document.getElementById("tt_price_" + index).innerHTML = tt + "đ";
  document.getElementById("ip_tt_" + index).value = tt;
  var total = countTotal(cart);
  showTotal(total);
}
function removeItem(ma) {
  var cart = JSON.parse(localStorage.getItem('cart'));
  for (let i = 0; i < cart.length; i++) {
    if (cart[i]["ma"] === ma) {
      cart.splice(i, 1);
      break;
    }
  }

  localStorage.setItem('cart', JSON.stringify(cart));
  var total = countTotal(cart);
  showTotal(total);

  // remove the row from the HTML DOM
  var element = document.getElementById(`pro-${ma}`);
  element.parentNode.removeChild(element);
}



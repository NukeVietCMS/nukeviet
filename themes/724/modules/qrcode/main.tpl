<!-- BEGIN: main -->
<div id="wrapper">
  <div class="center">
    <div class="mb-3 ">
      <img src="https://f6-zpcloud.zdn.vn/494353011856008802/0675511d1ca0d0fe89b1.jpg" class="img-fluid" alt="..."
        id="imgQR" style="max-width: 100%;">
    </div>

    <select class="form-control" aria-label="Default select example" id="optiont">
      <option value="0" selected>Chọn kiểu QR</option>
      <option value="1" selected>Text</option>
      <option value="2">Điện thoại</option>
      <option value="3">Gửi mail</option>
      <option value="4">URL</option>
      <option value="5">Wifi</option>
      <option value="6">Gửi tin nhắn</option>
      <option value="7">Share app CHplay</option>
    </select>

    <!--plain text-->
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="Nhập văn bản" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtPlaintext">
    </div>
    <!---->

    <!--Call-->
    <div class="mb-3 ">
      <input type="number" class="form-control" placeholder="Nhập số điện thoại" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtPhoneCall">
    </div>
    <!---->

    <!--Message-->
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="Nhập số điện thoại gửi tin nhắn" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtPhoneMessage">
    </div>
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="Nhập văn bản tin nhắn" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtMessage">
    </div>
    <!---->

    <!--Email-->
    <div class="mb-3 ">
      <input type="email" class="form-control" placeholder="Email gửi đến" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtSentEmailTo">
    </div>
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="Tiêu đề email" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtSubject">
    </div>
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="Nội dung email" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtBody">
    </div>
    <!---->

    <!--Wifi-->
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="Tên wifi" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtSSID">
    </div>
    <div class="mb-3 ">
      <input type="password" class="form-control" placeholder="passWifi" aria-label="Username"
        aria-describedby="addon-wrapping" id="txtWifiPass">
    </div>
    <!---->

    <!--CHPLAY-->
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="com.zalo.zing...." aria-label="Username"
        aria-describedby="addon-wrapping" id="txtPackage">
    </div>
    <!---->
    <!--CHPLAY-->
    <div class="mb-3 ">
      <input type="text" class="form-control" placeholder="https://yourwebsite.c......." aria-label="Username"
        aria-describedby="addon-wrapping" id="txtURL">
    </div>
    <!---->
    <div class="mb-3">
      <button type="button" class="btn btn-primary maxwidth" id="btnGQR">Tạo mã QR</button>
    </div>
  </div>
</div>
<!-- END: main -->
<!-- BEGIN: main -->
<div class="licham" id="{BLOCKID}">
  <div
    class="licham-table"
    style="
      width: {CONFIG.width};
      height: {CONFIG.height};
      overflow: hidden;
      position: relative;
      margin-bottom: 10px;padding: 0.5px">
    <noscript>Vui lòng bật javascript để xem <a href="{SOURCE_BASE}">Lịch âm</a></noscript>
    <a class="la-help-icon" target="_blank" href="{SOURCE_BASE}" title="Lịch âm">{SOURCE_BASE_TEXT}</a>
    <div class="la-help-box">
      <p>- Click vào nút hiển thị ngày trong tuần hoặc tháng âm lịch để xem chi tiết</p>
      <p>- Màu đỏ: Ngày tốt</p>
      <p>- Xanh lá: Đầu tháng âm lịch</p>
      <p>- Màu vàng: Ngày hiện tại</p>
    </div>
    <!-- BEGIN: embed -->
    <iframe src="{SOURCE_BASE}/embed" frameborder="0" allowtransparency="" allowfullscreen="" width="{CONFIG.width}"
    height="{CONFIG.height}" scrolling="no" style="display:block"></iframe>
    <!-- END: embed -->
    <style>
    .la-help-icon {
      position: absolute;
      display: inline-block;
      right: 2px;
      bottom: 2px;
      font-size: 10px;
      width: 15px;
      height: 15px;
      overflow: hidden;
      border-radius: 14px;
      font-style: italic;
      color: #969696;
      cursor: pointer;
      background: #ebebeb;
      z-index: 2;
    }
    .la-help-icon:before {
      content: 'i';
      width: 15px;
      height: 15px;
      font-size: 13px;
      left: 0;
      text-indent: 0;
      text-align: center;
      font-weight: 700;
      font-family: time;
      display: inline-block;
      color: #969696;
    }
    .la-help-icon:hover {
      width: auto;
      padding: 1px 6px;
    }
    .la-help-icon:hover:before {
      content: 'nguồn ';
      font-size: 10px;
      width: auto;
      font-family: arial;
      font-weight: 400;
      margin-right: 3px;
    }
    .la-help-box {
      width: Calc(100% - 20px);
      right: 10px;
      bottom: 10px;
      padding: 10px;
      position: absolute;
      display: none;
      box-shadow: 0 0 3px #ccc;
      border-radius: 6px;
      background: #000000c7;
      color: #FFF;
      font-size: 12px;
    }
    .la-help-box p:last-child {
      margin-bottom: 0;
    }
    .la-help-box a {
      color:#CCC;
    }
    .la-help-icon:hover+.la-help-box, .la-help-box:hover{
      display:block;
    }
    </style>
  </div>
</div>
<!-- END: main -->
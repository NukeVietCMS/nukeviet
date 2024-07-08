<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/phonepro.css">

<div class="hotline-phone-ring-wrap ">
    <div class="hotline-phone-ring">
        <div class="hotline-phone-ring-circle"></div>
        <div class="hotline-phone-ring-circle-fill"></div>
        <div class="hotline-phone-ring-img-circle"> <a href="tel:{DATA.phone}" class="pps-btn-img"> 
		<img src="/themes/{TEMPLATE}/images/hotline.png" alt="so dien thoai" width="50"> </a></div>
    </div>
    <div class="hotline-bar">
        <a title="Hotline {DATA.phone}"   href="tel:{DATA.phone}"> <span class="text-hotline"></span>{DATA.phone}</a>
    </div>

</div>
<div id="floatdiv_30037" class="exp_floatdiv_content_pro  none   psfd_width_360px" style="left: 1px; bottom: -29px; border-radius: 2px; background: transparent; height: 87px;">
    <div class="exp_floatdiv_content_padding_pro" style="border-style:none;border-radius:2px;">
        <p><span style="font-size: 85%;">
		<a title="Hotline {DATA.phone}" class="button alert" href="tel:{DATA.phone}"><i class="icon-phone"></i>{DATA.phone}</a>
		<a title="Viber {DATA.viber}" class="button success" href="tel:{DATA.viber}"><i class="icon-phone"></i>{DATA.viber}</a></span></p>
    </div>
</div>

<div class="float-icon-hotline">			
		<ul class ="left-icon hotline">
			<li class="hotline_float_icon">
			<a title="Zalo" target="_blank" rel="nofollow" id="messengerButton" href="https://zalo.me/{DATA.zalo}">
			<i class="fa fa-zalo animated infinite tada"></i><span> </span></a> </li>
			<li class="hotline_float_icon messenger">
			<a title="Facebook {DATA.messenger}" target="_blank" rel="nofollow" id="messengerButton" href="https://www.messenger.com/t/{DATA.messenger}"><i class="fa fa-messenger animated infinite tada"></i><span> </span></a></li>
		</ul>		
</div>

<!-- <div class="wrap-menu-support none">
        <nav class="menu-support show">
           
          <input type="checkbox" class="menu-open" name="menu-open" id="check-support">
          <label class="menu-open-button" for="check-support" title="Gọi cho chúng tôi"></label>
          <a href="javascripts:void(0)" class="menu-item zalo-item"><span>Zalo</span></a>
          <a href="messenger:nguyenconghau?chat" class="menu-item messenger-item"><span>messenger</span></a>
          <a href="javascripts:void(0)" class="menu-item viber-item"><span>Viber</span></a>
          <div class="circle-shadow"></div>  
          <div class="panel-support panel-zalo">
              <span>Dùng Zalo trên điện thoại để quét mã QR</span>
              <div class="wrap-img">
                  <img src="{DATA.qr_zalo}" class="qr">
                  <div class="slider-note zalo" data-slider="//vitda.com/Scripts/supportMenu/zalo-slider.gif">
                      <img class="img-slider">
                  </div>
              </div> 
              <span>Hoặc thêm bằng SĐT<br><b>{DATA.zalo}</b></span>
          </div>
          
          <div class="panel-support panel-viber">
              <span>Dùng Viber trên điện thoại để quét mã QR</span>
              <div class="wrap-img">
                <img src="{DATA.qr_viber}" class="qr">
                  <div class="slider-note" data-slider="//vitda.com/Scripts/supportMenu/viber-slider.gif">
                      <img class="img-slider">
                  </div>
              </div>  
              <span>Hoặc thêm bằng SĐT<br><b>{DATA.viber}</b></span>
          </div>    
          <a href="javascripts:void(0)" class="close-panel-support" title="Đóng"></a>  
        </nav>
        
    </div> -->

<!-- script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 150) {
                    $('.menu-support').addClass("show");
                } else {
                    $('.menu-support').removeClass("show");
                }
            });

            $('.wrap-menu-support input:checkbox').change(function () {
                if ($(this).is(':checked')) {
                    $('.circle-shadow').addClass('selected');
                    $('.panel-support').removeClass("show");
                }
                else
                    $('.circle-shadow').removeClass('selected')
            });

            // Click call Zalo
            $(".menu-support .zalo-item").click(function (event) {
                $("#check-support").prop('checked', false);
                $('.circle-shadow').removeClass('selected');
                $('.panel-zalo').addClass("show");
                $('.menu-support').addClass("panel-is-open");
            });
            // Click call messenger
            $(".menu-support .messenger-item").click(function (event) {
                $("#check-support").prop('checked', false);
                $('.circle-shadow').removeClass('selected');
            });
            // Click call Viber
            $(".menu-support .viber-item").click(function (event) {
                $("#check-support").prop('checked', false);
                $('.circle-shadow').removeClass('selected');
                $('.panel-viber').addClass("show");
                $('.menu-support').addClass("panel-is-open");
            });
            // Close Panel Zalo, Viber
            $(".menu-support .close-panel-support").click(function (event) {
                $('.panel-support').removeClass("show");
                $('.menu-support').removeClass("panel-is-open");
            });
            // Load image Slider
            $(".menu-support .wrap-img").hover(function () {
                var mainImage = $(".slider-note", this).attr("data-slider"); //Find Image Name
                $(".img-slider", this).attr({ src: mainImage });
                return false;
            });

        });
    </script-->
<!-- END: main -->

<!-- BEGIN: config -->	<style>.blockphone input{
    width: auto;
    max-width: 48%;
    float: left;
    margin: 1%;
}</style>
	<div class="blockphone">  
	<input placeholder="{LANG.phone}" type="text" name="config_phone" class="form-control" value="{DATA.phone}"/>
	 <input placeholder="Zalo" type="text" name="config_zalo" class="form-control" value="{DATA.zalo}"/> 
	 <input placeholder="Messenger ID" type="text" name="config_messenger" class="form-control" value="{DATA.messenger}"/>
	 
<!-- 	<tr> 
	<td> QR Zalo</td> <td> <div class="input-group w400">
	<input class="form-control" type="text" name="config_qr_zalo" value="{DATA.qr_zalo}" id="qr_zalo" />
	<span class="input-group-btn"> 
	<button class="btn btn-default selectfile" data-area="qr_zalo" data-currentpath="{DATA.qr_zalo}" type="button"> 
	<em class="fa fa-folder-open-o fa-fix">&nbsp;</em> </button> </span> </div> </td> </tr>  -->
	
<!-- 	<tr> <td>Viber</td>;
	<td><input type="text" name="config_viber" class="form-control" value="{DATA.viber}"/></td> </tr> 
	
	<tr>
	<td>QR Viber</td> <td> <div class="input-group w400"> 
	<input class="form-control" type="text" name="config_qr_viber" value="{DATA.qr_viber}" id="qr_viber" />
	<span class="input-group-btn"> 
	<button class="btn btn-default selectfile" data-area="qr_viber" data-currentpath="{DATA.qr_viber}" type="button">
	<em class="fa fa-folder-open-o fa-fix">&nbsp;</em> 
	</button> </span> </div> </tr> -->

	
	</div>
	<script>
	$(document).ready(function() {

		$(".selectfile").click(function() {
			var area = $(this).data('area');
			var path = "{NV_UPLOADS_DIR}";
			var currentpath = $(this).data('currentpath');
			var type = "image";
			nv_open_browse(script_name + "?" + nv_name_variable
					+ "=upload&popup=1&area=" + area + "&path="
					+ path + "&type=" + type + "&currentpath="
					+ currentpath, "NVImg", 850, 420,
					"resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
			return false;
		});
	});

</script>
	
<!-- END: config -->
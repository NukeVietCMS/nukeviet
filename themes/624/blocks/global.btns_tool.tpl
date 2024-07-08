<!-- BEGIN: main -->
<style>@media (max-width: 767px) {
.footerNav2 .bttop a { bottom: 15%; }
.tel { max-width: 0px !important;}
#contactButton .ctb {bottom: 0px !important;}
.maintoolbtns li { padding: 2px 0px !important; text-shadow: 1px 1px 1px #000; width: 28px !important; font-size: 120% !important; } 
.maintoolbtns .zaloc .zalo-chat-widget {bottom: 33px !important;}
.maintoolbtns .zalos { bottom: 33px !important; width: 90px !important; padding: 5px !important; float: right; right: 0px; }
.maintoolbtns { right: 4px !important; }
.phonering-alo-phone { width: 88px; height: 88px; right: auto; bottom: 18% !important; left: -70px; }
.footerNav2 {bottom: 5px;}
#contactButton .ctb {bottom: 30px !important;}
.maintoolbtns .giohang { background: #f00 !important; width: 50px !important; }
.maintoolbtns .giohang a i:before{  color: #fff !important; }
.zalo .iconzalo {
    font-size: 10px;
    text-shadow: 0px 0px 0px #fff;
}
}
@media (max-width: 500px){
.maintoolbtns li {width: 40px !important;} 
}
@media (max-width: 380px){
.maintoolbtns li {width: 34px !important;} 
}
@media (max-width: 320px){
.maintoolbtns .giohang { width: 28px !important; }
.maintoolbtns li { width: 31px !important; }}
</style>
<div class="sitebtntool haveitem{NUMITEMS}">
    <div class="sitethemechange hidden" id="sitethemechange">
        <div class="panel-body">
            <div class="tl">{MLANG.egov_select_themecolor}</div>
            <ul class="row">
                <li class="col-xs-8 col-sm-8 col-md-8"><a href="#" class="color_default" data-toggle="changethemcolor" data-color="default"></a></li>
                <li class="col-xs-8 col-sm-8 col-md-8"><a href="#" class="color1" data-toggle="changethemcolor" data-color="linkcolorsite1"></a></li>
                <li class="col-xs-8 col-sm-8 col-md-8"><a href="#" class="color2" data-toggle="changethemcolor" data-color="linkcolorsite2"></a></li>
            </ul>
        </div>
    </div>
    <ul class="maintoolbtns">
    	<!-- BEGIN: fontsize -->
    	<!--li><a href="#" class="fontsize" data-toggle="postfsize" data-size="1"><i class="fa fa-font" aria-hidden="true"></i><span><i class="fa fa-font" aria-hidden="true"></i></span></a></li-->
    	<!-- END: fontsize -->
        <!--<li><a href="#" class="themetype" data-toggle="showhide" data-target="#sitethemechange"><span class="sp1">&nbsp;</span><span class="sp2">&nbsp;</span></a></li>-->
    	
		
    	<!-- BEGIN: tel -->
    	<li class="col-xs-3 col-sm-3 col-md-3 tel" title="CLICK Gọi ngay cho {SITE_NAME}">
		<div class="hotline">
    <div id="phonering-alo-phoneIcon" class="phonering-alo-phone phonering-alo-green phonering-alo-show">
     <div class="phonering-alo-ph-circle"></div> 
        <div class="phonering-alo-ph-circle-fill"></div>
        <a class="pps-btn-img " title="Gọi ngay Hotline: {DATA.tel}" href="tel:{DATA.tel}"> 
		<div class="phonering-alo-ph-img-circle"></div> 
		</a>
    </div>
</div>
 <!--a title="Gọi ngay cho {SITE_NAME}" href="tel:{DATA.tel}" target="_blank" class="tel"><i class="fa fa-tty"></i></a-->
 </li>
    	<!-- END: tel -->
    	<!-- BEGIN: sms -->
    	<li class="col-xs-3 col-sm-3 col-md-3 sms" title="Nhắn tin SMS cho {SITE_NAME} {SELFURL}" ><a title="Nhắn tin SMS cho {SITE_NAME}" href="sms:{DATA.sms}?body=Tiêu đề:{THEME_PAGE_TITLE} Web: {SITE_URL}    " target="_blank" class="sms"><i class="fa fa-comments"></i></a></li>
    	<!-- END: sms -->
    	<!-- BEGIN: zalo -->
    	<li class="col-xs-3 col-sm-3 col-md-3 zalo" title="Liên hệ qua Zalo của {SITE_NAME}" ><a title="Liên hệ qua Zalo của {SITE_NAME}" href="https://zalo.me/{DATA.zalo}" target="_blank" class="iconzalo">Zalo</a></li>
    	<!-- END: zalo -->
    	<!-- BEGIN: zalos -->
		<style> 
		.zalos { padding: 0px!important; display: inline-block; border: 1px solid #ffffffcf !important; font-size: 13px !important; color: #ffffff !important; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif; position: fixed;  bottom: 0px; }
		.zalos .zalo-share-button .zalosicon { margin-bottom: 0.2em; margin-right: 4px; height: 16px; display: inline-block; vertical-align: middle; font-size: 7px; font-weight: bold; color: #008ff3 !important; background: #fff; padding: 3px; border-radius: 15px; }
		.zalos .zalo-share-button  { background: #2196F3; }
		</style>
    	<li class="col-xs-3 col-sm-3 col-md-3 zalos" title="Chia sẽ trang{SITE_NAME}" > 
		<div class="zalo-share-button" data-href="{SITE_URL}" data-oaid="{DATA.zalos}" data-layout="5" data-color="blue" data-customize=true>
		  <i class="zalosicon">Zalo</i>Chia sẻ 
		 </div>
		</li>
    	<!-- END: zalos -->
		<!-- BEGIN: facebook -->
    	<li class="col-xs-3 col-sm-3 col-md-3 facebook" title="Vào trang facebook của {SITE_NAME}"><a title="Vào trang facebook của {SITE_NAME}" href="{DATA.facebook}" target="_blank" class="facebook"><i class="fab fa-facebook"></i></a></li>
    	<!-- END: facebook -->
    	<!-- BEGIN: google_plus -->
    	<li class="col-xs-3 col-sm-3 col-md-3 google" title="Trang Google+ của {SITE_NAME}"><a title="Trang Google+ của {SITE_NAME}" href="{DATA.google_plus}" target="_blank" class="google"><i class="fab fa-google-plus"></i></a></li>
    	<!-- END: google_plus -->
    	<!-- BEGIN: feeds -->
    	<!--li><a href="{FEEDS_HREF}" class="feeds"><i class="fa fa-rss"></i></a></li-->
    	<!-- END: feeds -->
    	<!-- BEGIN: twitter -->
    	<li class="col-xs-3 col-sm-3 col-md-3 twitter" title=" Trang Twitter của  {SITE_NAME}" ><a title=" Trang Twitter của  {SITE_NAME}" href="{DATA.twitter}" target="_blank" class="twitter"><i class="fab fa-twitter"></i></a></li>
    	<!-- END: twitter -->
		
    	<!-- BEGIN: youtube -->
    	<li class="col-xs-3 col-sm-3 col-md-3 youtube" title=" Kênh youtube của {SITE_NAME}"><a title=" Kênh youtube của {SITE_NAME}" href="{DATA.youtube}" target="_blank" class="youtube"><i class="fab fa-youtube"></i></a></li>
    	<!-- END: youtube -->
		
     
    	<!-- BEGIN: maps -->
    	<li  title="Bản đồ đường đi đến {SITE_NAME}" class="maps" ><a title="Bản đồ đường đi đến {SITE_NAME}"  href="{DATA.maps}" target="_blank" class="maps"><i class="fas fa-map-marked-alt"></i></a></li>
    	<!-- END: maps -->
		
    	<!-- BEGIN: zaloc -->
		<style>.zaloc { background: #fff0 !important; border: 0px solid #c1c1c1 !important; padding: 0 !important; }</style>
    	<li class="col-xs-3 col-sm-3 col-md-3 zaloc" title="Chat với{SITE_NAME}" >
		 <div class="zalo-chat-widget" data-oaid="{DATA.zaloc}" data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="320" data-height="390"></div>
		</li>
    	<!-- END: zaloc -->
		<!-- BEGIN: users -->
    	<li><a title="Tài khoản của bạn tại {SITE_NAME}"  href="/index.php?language=vi&phattrien=users"  class="use"><i class="fa fa-user"></i></a></li>
		<!-- END: users --><!-- BEGIN: cart -->
    	<li class="giohang" title="GIỎ HÀNG"><a title="Giỏ hàng"  href="/index.php?language=vi&phattrien=shops/cart"  class="use"><i class="fa fa-shopping-basket"></i></a></li>
    	 <!-- END: cart -->
    </ul>
</div>
<!-- END: main -->
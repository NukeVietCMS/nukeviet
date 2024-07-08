<!-- BEGIN: main -->	
 

<style> #fb-root .fb_dialog  fb_dialog_advanced .fb_dialog_content iframe {bottom: 63px  !important;} 

.fb_dialog .fb_dialog_content iframe {
    height: 57px !important;
    margin: 0 !important;
    right: 24px !important;
    bottom: 63px !important;
}
</style>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div id="chatfb" class="fb-customerchat"
  page_id="{DATA.pageid}"
  theme_color="{DATA.themecolor}"
  logged_in_greeting="{DATA.loggedin}"
  logged_out_greeting="{DATA.loggedout}"
>
</div>
<!-- END: main -->



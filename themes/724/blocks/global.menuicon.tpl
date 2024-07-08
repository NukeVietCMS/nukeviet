<!-- BEGIN: submenu -->
<style>
.edublock .collapse {
    display: block;
}
</style>
<ul class="dropdown-menu">
	<!-- BEGIN: loop -->
    <li <!-- BEGIN: submenu -->class="dropdown-submenu"<!-- END: submenu -->>
        <!-- BEGIN: icon -->
        <img class="subimg" src="{SUBMENU.icon}" />&nbsp;
        <!-- END: icon -->
        <a href="{SUBMENU.link}" title="{SUBMENU.note}" {SUBMENU.target}>{SUBMENU.title_trim}</a>
        <!-- BEGIN: item -->
        {SUB}
        <!-- END: item -->
    </li>
    <!-- END: loop -->
</ul>
<!-- END: submenu -->

<!-- BEGIN: main -->
 
 
	<div class="collapse navbar-collapse" id="menu-site-default">
        <ul class="nav navbar-nav menuicon" >
			<!--li>
				<a class="home" title="{LANG.Home}" href="{THEME_SITE_HREF}"><em class="fa fa-lg fa-home">&nbsp;</em><span class="visible-xs-inline-block"> {LANG.Home}</span></a>
			</li-->
			<!-- BEGIN: top_menu -->
            <li  rol="presentation" class="col-xs-12 col-sm-12 col-md-4 wow zoomIn" >
			<div class="{TOP_MENU.current} textc baimgc " style="background-image:url({TOP_MENU.icon})">
			 <!--i class="icon texts {TOP_MENU.current}"></i-->
                <!-- BEGIN: icon -->
                
                <!-- END: icon -->
                <a class="dropdown-toggle" {TOP_MENU.dropdown_data_toggle} href="{TOP_MENU.link}" role="button" aria-expanded="false" title="{TOP_MENU.note}" {TOP_MENU.target}>{TOP_MENU.title_trim}<!-- BEGIN: has_sub --> <strong class="caret">&nbsp;</strong><!-- END: has_sub --></a>
              <p>{TOP_MENU.note} </p>
			  <!-- BEGIN: sub -->
                {SUB}
                <!-- END: sub -->
				</div>
			</li>
			<!-- END: top_menu -->
        </ul>
  
        <div class="conner-left none">&nbsp;</div>
        <div class="conner-right none">&nbsp;</div>
    </div>
 
<script type="text/javascript" data-show="after">
$(function(){
    checkWidthMenu();
    $(window).resize(checkWidthMenu);
});
</script>
<!-- END: main -->

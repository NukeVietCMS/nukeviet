 

  <noscript>
        <div class="alert alert-danger">{LANG.nojs}</div>
    </noscript>
    <header>
        <div class="site-banner none" style="background-image: url('{BANNER_SRC}');"></div>
        <div class="section-header-bar w423 ">
            <div class="wraper">
                <nav class="header-nav">
                    <div class="header-nav-inner">
                <div class="contactDefault2 fl col-xs-24 col-sm-24 col-md-8">
                             [CONTACT_DEFAULT] 
                       </div>
					   <div class="fl col-xs-24 col-sm-24 col-md-16">
                        <div class="tinmoi fl">
                            [TINMOI]
                        </div>
                        <div class="social-icons fr">
                            [SOCIAL_ICONS]
                        </div>
                        <div class="personalArea fr">
                            [PERSONALAREA]
                        </div>
                    </div></div>
                    <div id="tip" data-content="">
                        <div class="bg"></div>
                    </div>
                </nav>
            </div>
        </div>
		<div class="w100 baimgc" style="background-image: url('{BANNER_SRC}');">
        <div class="section-header ">
            <div class="wraper">
                <div id="header">
                    <div class="logo col-xs-24 col-sm-12 col-md-3">
                        <a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" alt="{SITE_NAME}"></a>
                        <!-- BEGIN: site_name_h1 -->
                        <h1>{SITE_NAME}</h1>
                        <h2 class="none">{SITE_DESCRIPTION}</h2>
                        <!-- END: site_name_h1 -->
                        <!-- BEGIN: site_name_span -->
                        <span class="site_name">{SITE_NAME}</span>
                        <span class="site_description">{SITE_DESCRIPTION}</span>
                        <!-- END: site_name_span -->
                    </div>
<div class="col-xs-24 col-sm-12 col-md-17 headright ">[HEAD_RIGHT] </div>
<div class="col-xs-24 col-sm-12 col-md-4 headright ">
<div class="col-xs-24 col-sm-12 col-md-24 ">
<div class="ngonngu">[NGONNGU]
<div id="PhatTrien-dichvanban" style="width: 100%;">
<style> .goog-te-gadget .goog-te-combo {width: 100%;}</style>
</div></div></div> 
	<div class="col-xs-24 col-sm-12 col-md-24"><div class="headerSearch">
	<div class="input-group">
	<input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..."><span class="input-group-btn"><button type="button" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-lg"></em></button></span></div>
	</div></div>
</div>

       
 </div> 
            </div>
        </div>  
		</div>
    </header>
    <div class="section-nav"> 
        
	<nav class="second-nav stickymenu w423" id="menusite">
	<div class="wraper">
	 
	
	<div class="container"><div class="row"><div class="bg box-shadow wraper">[MENU_SITE]</div></div></div> </div></nav>
<script type="text/javascript"> $(function() { var sticky_navigation_offset_top = $('.stickymenu').offset().top; var sticky_navigation = function(){ var scroll_top = $(window).scrollTop(); if (scroll_top > sticky_navigation_offset_top) 
{ $('.stickymenu').css({ 'position': 'fixed', 'z-index': 990,'top':0 }); }  
 
else { $('.stickymenu').css({ 'position': 'relative', 'width': '100%' }); } }; sticky_navigation(); $(window).scroll(function() { sticky_navigation(); }); }); </script> 
	
	<script type="text/javascript"> $(function() { var sticky_navigation_offset_top = $('.logomenu').offset().top; var sticky_navigation = function(){ var scroll_top = $(window).scrollTop(); if (scroll_top > sticky_navigation_offset_top) 
{ $('.logomenu').css({ 'display': 'inline-block','top':0}); }  
 
else { $('.logomenu').css({ 'display': 'none' }); } }; sticky_navigation(); $(window).scroll(function() { sticky_navigation(); }); }); </script> 
		<script type="text/javascript"> $(function() { var sticky_navigation_offset_top = $('.trangchu').offset().top; var sticky_navigation = function(){ var scroll_top = $(window).scrollTop(); if (scroll_top > sticky_navigation_offset_top) 
{ $('.trangchu').css({ 'display': 'none','top':0}); }  
 
else { $('.trangchu').css({ 'display': 'inline-block' }); } }; sticky_navigation(); $(window).scroll(function() { sticky_navigation(); }); }); </script> 
 </div>
    <div class="section-body">
        <div class="wraper">
            <section>
                <div class="container" id="body">
                    <nav class="third-nav">
                        <div class="row">
                            <div class="bg">
                            <div class="clearfix">
                                <div class="col-xs-24 col-sm-24 col-md-44 khonghienthi">
                                    <!-- BEGIN: breadcrumbs --> 
									<div class="breadcrumbs-wrap textc chuhoa">
		<div class="col-xs-24 col-sm-24 col-md-6 "> 
		<a title="{SITE_NAME}{SITE_DESCRIPTION}" href="{THEME_SITE_HREF}">
<img class="logosrc fl" src="{LOGO_SRC}" alt="{SITE_NAME} {SITE_DESCRIPTION}"></a>
<span class="current-time current-time-mobi "style="font-size: 15px;">[TINMOI2]</span></div>
                                    
                                        <div class="display col-xs-24 col-sm-24 col-md-14">
                                            <a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
                                            <ul class="breadcrumbs list-none"></ul>
                                        </div>
                                        <ul class="subs-breadcrumbs"></ul>
                                        <ul class="temp-breadcrumbs hidden " itemscope itemtype="https://schema.org/BreadcrumbList">
                                            <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{THEME_SITE_HREF}" itemprop="item" title="{LANG.Home}"><span itemprop="name">{LANG.Home}</span></a><i class="hidden" itemprop="position" content="1"></i></li>
                                            <!-- BEGIN: loop --><li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{BREADCRUMBS.link}" itemprop="item" title="{BREADCRUMBS.title}"><span class="txt " itemprop="name">{BREADCRUMBS.title}</span></a><i class="hidden" itemprop="position" content="{BREADCRUMBS.position}"></i></li><!-- END: loop -->
                                        </ul>
										
                                    </div>
									<div class="col-xs-24 col-sm-14 col-md-4 giohang">   <span class="giohang"> [GIOHANG]</span></div>
                                    <!-- END: breadcrumbs -->
                                    <!-- BEGIN: currenttime -->
	<div class="col-xs-24 col-sm-8 col-md-4 "> <span class="current-time timehome ctmti" style="font-size: 11px;">{NV_CURRENTTIME}</span>  </div>
	<style>.current-time-mobi{display: block !important;} .ctmti {padding: 7px 0;}</style>
	<div class="col-xs-19 col-sm-14 col-md-15 ctmti"> <a title="{SITE_NAME}
{SITE_DESCRIPTION}" href="{THEME_SITE_HREF}"><img class="logosrc fl" src="{LOGO_SRC}" alt="{SITE_NAME} {SITE_DESCRIPTION}"></a> <span class="current-time current-time-mobi"> [TINMOI2]</span></div>
	<div class="col-xs-5 col-sm-14 col-md-5 giohang">   <span class="giohang"> [GIOHANG]</span></div>
	
									<!-- END: currenttime --> 
                                </div>
                                <div class="headerSearch col-xs-24 col-sm-6 col-md-6 none">
                                    <div class="input-group">
                                        <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..."><span class="input-group-btn"><button type="button" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-lg"></em></button></span>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </nav>              
                    [THEME_ERROR_INFO]

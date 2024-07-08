<!-- BEGIN: main -->
<style>
.foongan {} 
.foongan .urlmenu {
    font-size: 14px;
    color: #333333;
    font-weight: 600;
    text-transform: uppercase;
    text-decoration: none;
    display: inline-block;
    padding: 5px 10px;
}
.foongan .urlmenu:hover {
    color: #000;
    background: #dcdcdc;
    text-shadow: 1px 1px 1px #fff;
}
.foongan .urlmenu:not(:first-child) {
    border-left: 1px solid #d9d9d9;
}
</style>
<div class="foongan textc" vocab="//schema.org/ "typeof="Product">
	<a class="urlmenu" href="{THEME_SITE_HREF}" property="url" title="{LANG.Home}"><span itemprop="title"><em class="fa fa-lg fa-home">&nbsp;</em> {LANG.Home}</span></a>
	<!-- BEGIN: footer_menu -->
	 <a class="urlmenu" href="{FOOTER_MENU.link}" property="url" title="{FOOTER_MENU.title}">{FOOTER_MENU.title}</a>
	 <!-- END: footer_menu -->
</div>
<!-- END: main -->
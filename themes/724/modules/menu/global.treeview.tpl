<!-- BEGIN: tree -->
<li>
	<a title="{MENUTREE.note}" href="{MENUTREE.link}"{MENUTREE.target}>{MENUTREE.title}</a>
	<!-- BEGIN: tree_content -->
	<ul>
		{TREE_CONTENT}
	</ul>
	<!-- END: tree_content -->
</li>
<!-- END: tree -->
<!-- BEGIN: main -->
<!--link rel="stylesheet" href="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/jquery/jquery.treeview.css" type="text/css"/-->
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/jquery.treeview.css" />
<script src="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/jquery/jquery.cookie.js" type="text/javascript"></script>
<script src="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/jquery/jquery.treeview.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#navigation{MENUID}").treeview({
			collapsed : true,
			unique : true,
			persist : "location"
		});
	});
</script>
<style type="text/css">
	#navigation{MENUID} a {
		background-color: transparent !important
	}

	#navigation .current, #navigation .current a {
		font-weight: bold
	}

	#navigation .current ul a {
		font-weight: normal
	}
.treeview li .imgmenu img {
    border-radius: 50%;
    margin: 4px 0 0 4px;
}
</style>
<ul id="navigation{MENUID}">
	<!-- BEGIN: loopcat1 --> 
	<li class="col-xs-24 col-sm-12 col-md-8">
	<div  {CAT1.class}>
	<!-- {SUBMENU.icon} -->
		<a title="{CAT1.note}" href="{CAT1.link}"{CAT1.target}> 
				<!-- BEGIN: icon --> 
<div class="imgmenu baimga1" title="{CAT1.title} {CAT1.note} "  style="background-image: url({CAT1.icon});"> 
<img alt="{CAT1.title}" src="{CAT1.icon}" width="80" class="pull-left imghome">
 <span class="cattitle chuhoa texts"> {CAT1.title}</span> 
		<span  class="cattnote"> {CAT1.note}</span>  
				</div> 
        <!-- END: icon --> 
		</a>
		<!-- BEGIN: cat2 -->
		<ul>
			{HTML_CONTENT}
		</ul>
		<!-- END: cat2 -->
		</div>
 </li>
	<!-- END: loopcat1 -->
</ul><div class="clear"></div>
<!-- END: main -->
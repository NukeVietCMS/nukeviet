<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css" media="screen" href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/videos.css" />
<ul>
	<!-- BEGIN: loop -->
	<li class="clearfix  col-xs-12 col-sm-12 col-md-8"><div class="videos">
		<a {TITLE} class="show" href="{ROW.link}" <!-- BEGIN: tooltip -->data-placement="{TOOLTIP_POSITION}" data-content="{ROW.hometext}" data-img="{ROW.thumb}" data-rel="tooltip"<!-- END: tooltip -->>
                                      
		<!-- BEGIN: img --> <div style="height: {ROW.blockheight}px;  background-image: url({ROW.thumb}); " class="item-image baimgc textc vdplay">
                 <i class="fas fa-play-circle"></i>  </div>
          <!-- END: img -->
          <div class="videotitle"> <i class="fas fa-play-circle"></i> {ROW.title} </div></a></div> 
 
	</li>
	<!-- END: loop -->
</ul>
</ul><div class="clear"></div>
<!-- END: main -->
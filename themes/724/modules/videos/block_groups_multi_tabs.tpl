<!-- BEGIN: main --><div class="clear"> &nbsp; </div> <style>.tab-content .tab-pane li    {display: block;} .tab-content .tab-pane   {padding: 0!important}.videos { margin: 9px 3px;} .nav-tabs { margin-bottom: 10px;}
.vdplay .fas, .vdplay .fa {
    background: #ffffff8a;
    border-radius: 50%;
    padding: 10px;
    font-size: -webkit-xxx-large;
    margin: 50px auto;
}
.videotitle {
    margin: 5px;
    height: 51px;
    overflow: hidden;
}
.videos {
    margin: 9px 3px;
    box-shadow: #fff 0 0 0 2px, #000 0 0 8px 0;
}
</style>
<ul class="nav nav-tabs texts chuhoa ">
<!-- BEGIN: group_info -->
  <li id="{BLOCK_INFO.active}" class="{BLOCK_INFO.active}"><a title=" {BLOCK_INFO.title}" data-toggle="tab" class="dmc"  href="#block-news-groups-{BLOCK_INFO.bid}"><i class=" fa fa-video"></i> {BLOCK_INFO.title}</a></li>
<!-- END: group_info -->
</ul>
<div class="tab-content row">
<!-- BEGIN: group_content -->
	<ul id="block-news-groups-{BLOCK_INFO.bid}" class="tab-pane fade {BLOCK_INFO.active}  in list-group pd0">
		<!-- BEGIN: loop -->
        	<li class="clearfix col-xs-12 col-sm-12  col-md-8"><div title="Video {ROW.title} " class="videos">
		<a {TITLE} class="show" href="{ROW.link}" <!-- BEGIN: tooltip -->data-placement="{TOOLTIP_POSITION}" data-content="{ROW.hometext}" data-img="{ROW.thumb}" data-rel="tooltip"<!-- END: tooltip -->>
                                      
		<!-- BEGIN: img --> 
        <div   style="height: {ROW.blockheight}px;  background-image: url({ROW.thumb}); " class="item-image baimgc textc vdplay">
                 <i class="fa fa-play-circle textdm nen4m"></i>  </div>
          <!-- END: img -->
          <div  class="videotitle"> <i class=" fa fa-play-circle"></i> {ROW.title} </div></a></div> 
  
	</li>

		<!-- END: loop -->
		<!-- BEGIN: no_loop -->
			<div title="No Videos here" class="row textc dmc">No Videos here</div>		
		<!-- END: no_loop -->
	</ul>
<!-- END: group_content -->
</div><div class="clear"> &nbsp; </div>
<!-- END: main -->
<!-- BEGIN: main -->

<!-- BEGIN: type1 -->
<ul class="news-groups-smimghome">
	<!-- BEGIN: loop -->
	<li class="clearfix col-xs-12 col-sm-12 col-md-8">
		<!-- BEGIN: img -->
		<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" width="50" class="img-thumbnail pull-left"/></a>
		<!-- END: img -->
		<h3><a {TITLE} class="show" href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="catgtitlebox">{ROW.title_clean}</a></h3>
	</li>
	<!-- END: loop -->
</ul>
<!-- END: type1 -->

<!-- BEGIN: type0 -->
<div class="news_column">
    <!-- BEGIN: loop -->
    <div class="ite clearfix col-xs-12 col-sm-12 col-md-6">
	<div class="thumbnail">
        <!-- BEGIN: img -->
		  <a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} >
		<div class="textc divc" style=" height: {ROW.homeheight}px; ">		
            <img src="{ROW.thumb}" alt="{ROW.title}"   style="max-width: {ROW.homewidth}px;max-height: {ROW.homeheight}px; padding: 5px;"/>
        </div></a>
		<!-- END: img -->
		<div class="caption text-center">
		<h3><a {TITLE} class="show" href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="catgtitlebox">{ROW.title_clean}</a></h3></div>
    </div>
	</div>
    <!-- END: loop -->
</div>
<!-- END: type0 -->

<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='catgtitlebox'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->

<!-- END: main -->
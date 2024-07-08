<!-- BEGIN: main -->
<div class="row videosbg">
	<!-- BEGIN: loop -->
	<div class="col-lg-24 col-md-24 col-sm-24 col-xs-24">
		<!-- BEGIN: img -->
		<div class="row m05">
			<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" alt="{ROW.title}" class="img-thumbnail center-block"/></a>
		</div>
		<!-- END: img -->
		<a title="{ROW.title}" {TITLE} class="show" href="{ROW.link}" <!-- BEGIN: tooltip -->data-placement="{TOOLTIP_POSITION}" data-content="{ROW.hometext}" data-img="{ROW.thumb}" data-rel="tooltip"<!-- END: tooltip -->><h3 class="m05 hoadau textc" >{ROW.title}</h3></a>
	</div>
	<!-- END: loop -->
</div>
<!-- END: main -->
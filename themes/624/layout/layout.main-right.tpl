<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="row home">
	<div class="col-md-24">
		[HEADER]
	</div>
</div>
<div class="row">
	<div class="col-xs-24 col-sm-24 col-md-16 topleft"> [TOPLEFT]</div>
	<div class="col-xs-24 col-sm-24 col-md-8 topright mannews mainshop"> [TOPRIGHT]</div>
	<div class="col-sm-16 col-md-18">
		[TOP]
		{MODULE_CONTENT}
		[BOTTOM]
	</div>
	<div class="col-sm-8 col-md-6 mainright">
		[RIGHT]
	</div>
</div>
<div class="row home">
		[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->
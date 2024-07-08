<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="row home">
	[HEADER]
</div>
<div class="row home">
	<div class="col-xs-24 col-sm-24 col-md-18 topleft"> [TOPLEFT]</div>
	<div class="col-xs-24 col-sm-24 col-md-6 topright"> [TOPRIGHT]</div>

    <div class="col-sm-18 col-md-19 col-sm-push-6 col-md-push-5">
        [TOP]
        {MODULE_CONTENT}
        [BOTTOM]
    </div>
	<div class="col-sm-6 col-md-5 col-sm-pull-18 col-md-pull-19 mainleft">
		[LEFT]
	</div>
</div>
<div class="row home">
	[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->
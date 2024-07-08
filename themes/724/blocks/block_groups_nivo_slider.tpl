<!-- BEGIN: main -->
<link type="text/css" rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/nivo.slider/themes/default/default.css" />
<link type="text/css" rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/nivo.slider/nivo-slider.css" />
<div class="slider-wrapper theme-default">
    <div id="slider_{CONFIG.bid}">
    	<!-- BEGIN: loop -->
    	<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.homeimgfile}" alt="{ROW.title}" title="#htmlcaption_{ROW.id}" /></a>
    	<!-- END: loop -->
    </div>
    <!-- BEGIN: htmlcaption -->
    <div id="htmlcaption_{ROW.id}" class="nivo-html-caption">
        <h3>{ROW.title}</h3>
        {ROW.hometext}
    </div>
    <!-- END: htmlcaption -->
</div>
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/nivo.slider/jquery.nivo.slider.js"></script>
<script>
$(window).load(function() {
    $('#slider_{CONFIG.bid}').nivoSlider({
        controlNav: false
    });
});
</script>
<!-- END: main -->
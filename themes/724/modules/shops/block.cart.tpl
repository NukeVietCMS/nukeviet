<!-- BEGIN: main -->
<div class="shopcart"><a title="{LANG.cart_check_out}
{LANG.cart_title}:  {NUM} {LANG.cart_product_title} 
{LANG.cart_product_total}: {TOTAL} {MONEY_UNIT}
" href="{LINK_VIEW}" id="submit_send" rel="dofollow">
	<!-- BEGIN: enable -->
	<p class="cart_title">
		<strong><i class="fa fa-cart-plus"></i>:<!-- {LANG.cart_title}  --></strong>
		<span>{NUM}</span>
		<!-- {LANG.cart_product_title} -->
	 
	<!-- BEGIN: price -->
	 <i class="fa fa-money"></i>: 
		<!-- <strong>{LANG.cart_product_total} : </strong> -->
		<span class="money">{TOTAL}</span> {MONEY_UNIT}
	</p>
	<!-- END: price -->
	<p class="clearfix cart_check_out">
		<a title="{LANG.cart_check_out}" href="{LINK_VIEW}" id="submit_send" rel="dofollow">{LANG.cart_check_out}</a>
	</p>
	<!-- END: enable -->

	<!-- BEGIN: point -->
	<p class="clearfix point_cart_text">
		<a title="{LANG.point_cart_text}" href="{POINT_URL}" rel="dofollow">{LANG.point_cart_text}</a> ({POINT})
	</p>
	<!-- END: point -->

	<!-- BEGIN: wishlist -->
	<p class="clearfix wishlist_product">
		<a title="{LANG.wishlist_product}" href="{WISHLIST}" rel="dofollow">{LANG.wishlist_product}</a> (<span id="wishlist_num_id">{NUM_ID}</span>)
	</p>
	<!-- END: wishlist -->

	<!--  BEGIN: history -->
	<p class="history_title">
		<a href="{LINK_HIS}" rel="dofollow"><span>{LANG.history_title}</span></a>
	</p>
	<!--  END: history -->

	<!-- BEGIN: disable -->
	<p class="active_order_dis">
		{LANG.active_order_dis}
	</p>
	<!-- END: disable --></a>
</div>
<!-- END: main -->
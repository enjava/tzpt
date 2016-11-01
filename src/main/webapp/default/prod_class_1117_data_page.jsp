{:foreach $mle['product_data'] as $i => $product_value:}
	<div class="prod_class_div" onclick="openNewUrl('{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}');" style="min-height:200px;"> 
		<img class="prod_img" src="{:$var_x['path']['mleroot_url']:}/{:$product_value['deal_picture'][0]:}"> 
		<div class="prod_detail_div">
			<span class="prod_title">{:$product_value['title']:}</span> 
			<span class="prod_click_tip">查看</span>
		</div>
	</div> 
{:foreachelse:}
	<div style="text-align:center; font-size:18px; position:absolute; top:70px; letter-spacing:2px; width:100%; color:#999;">暂无商品<br /> <br /><a href="?">更看更多?</a></div>
{:/foreach:}
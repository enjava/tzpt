	<ul>
		{:foreach $mle['product_data'] as $i => $product_value:}
    	<li>
        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
        	<span class="p_img"><img src="{:$var_x['path']['mleroot_url']:}/{:$product_value['deal_picture'][0]:}" /></span>
            <div>
            	<h3>{:$product_value['title']:}</h3>
                <p> {:if $product_value['is_advance_prod'] == 1:}新品预告{:else:}￥{:$product_value['price']:}{:/if:}
	                <span>
	          	      {:if $product_value['market_price'] > $product_value['price']:}
	          	   	   {:round(($product_value['price'] / $product_value['market_price'])*10, 1):} 折
	          	      {:/if:}
	                </span>
                </p>
            </div>
        </a>
        </li>
        {:foreachelse:}
        <div style="text-align:center; font-size:18px; position:absolute; top:70px; letter-spacing:2px; width:100%; color:#999;">暂无商品<br /> <br /><a href="?">更看更多?</a></div>
       {:/foreach:}
    </ul>

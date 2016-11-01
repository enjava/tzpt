			{:foreach $mle['product_class_list'] as $product_class_list_value:}
				<div data-role="widget" data-widget="title_3" class="title_3">
				      <div class="widget_wrap">
							<label><p>{:$product_class_list_value['title']:}</p></label>
				      </div>
				</div>
				<ul>
					{:foreach $product_class_list_value['join_prod'] as $i => $product_value:}
			        {:if $i%2 == 0:}
			    	<li>
			        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
			        	<span class="p_img"><img src="{:$var_x['path']['mleroot_url']:}/{:$product_value['picture'][0]:}" /></span>
			            <div class="prod_info">
			            	<h3>{:$product_value['title']:}</h3>
			                <p> ￥{:$product_value['price']:}
				                <span>
				          	      {:if $product_value['market_price'] > $product_value['price']:}
				          	   	   {:round(($product_value['price'] / $product_value['market_price'])*10, 1):} 折
				          	      {:/if:}
				                </span>
			                </p>
			            </div>
			        </a>
			        </li>
			        {:/if:}
			        {:foreachelse:}
			        <div style="text-align:center; font-size:18px; position:absolute; top:70px; letter-spacing:2px; width:100%; color:#999;">暂无商品</div>
			       {:/foreach:}
			        
			    </ul>
			    <ul>
					{:foreach $product_class_list_value['join_prod'] as $i => $product_value:}
			        {:if $i%2 != 0:}
			    	<li>
			        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
			        	<span class="p_img"><img src="{:$var_x['path']['mleroot_url']:}/{:$product_value['picture'][0]:}" /></span>
			            <div class="prod_info">
			            	<h3>{:$product_value['title']:}</h3>
			                <p> ￥{:$product_value['price']:}
				                <span>
				          	      {:if $product_value['market_price'] > $product_value['price']:}
				          	   	   {:round(($product_value['price'] / $product_value['market_price'])*10, 1):} 折
				          	      {:/if:}
				                </span>
			                </p>
			            </div>
			        </a>
			        </li>
			        {:/if:}
			       {:/foreach:}
			    </ul>
			    <div style="clear:both;"></div>
			{:/foreach:}
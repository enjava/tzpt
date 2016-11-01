<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<title>暂未获得申请资格 - 申请登记</title>
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/button.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<style type="text/css">
body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#fff;}
*{padding:0; margin:0;}
ul li,ol{ list-style:none;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.n_top{width:100%; height:45px; background:#37c3a9; line-height:45px; text-align:center; color:#fff; font-size:16px;}
.news_list{ border-radius:8px; width:100%; }
.news_list ul{width:96%; margin:0 auto;}
.news_list ul li{padding:0px 0; font-size:0.875em;}
.news_list ul li span{color:#999;}

#merchant_pos .input_text{width:90%; height:35px;}
</style>
</head>

<body>
<div class="n_top">申请登记</div>
<div class="news_list">
	<form action="" method="post"  id="merchant_pos">
		<input type="hidden" name="action" value="merchant_pos" />
		<div style="margin:0 auto; text-align:center;">
			<br /><br />
			<span style="color:#444444; font-weight:bold;">暂未获得POS机申请资格</span>
			<br /><br />
				<span style="color:#444444;">购买以下商品中的其中一款，即可获得POS机申请资格</span>
			<br /><br />
		</div>
	        <!--商品列表-->
	        <style type="text/css">
	        .cate a{display:block; float:left; width:25%; height:40px; line-height:40px; text-align:center; color:#000; font-size:14px; border-bottom:1px solid #c7c7c7;}
			.cate a.active{border-bottom:1px solid #fe3b3f;}
			.pro_list{width:100%; margin:0 auto;}
			.pro_list .prod{display:block; border:1px solid #ccc; border-radius:5px; margin-top:10px;}
			.pro_list .prod img{width:100%; border-radius:5px 5px 0 0;}
			.pro_tit{padding:10px 100px 10px 10px; position:relative;}
			.pro_tit p{font-size:16px; margin:0; padding:0 0 5px; color:#fe3b3f;}
			.pro_tit p em{font-size:22px; font-weight:bold;}
			.pro_tit h3{margin:0; padding:0; font-size:16px; font-weight:normal; color:#000;}
			.pro_tit div.qg{position:absolute; width:80px; height:30px; border-radius:20px; background:#fe3b3f; line-height:30px; text-align:center; color:#fff; right:10px; top:50%; margin-top:-15px;}
			a.che_more{display:block; height:30px; line-height:30px; text-align:center; color:#999; font-size:16px; margin:20px auto;}
			a.che_more img{width:20px; vertical-align:middle; margin-bottom:3px;}
	        </style>
	        <div class="pro_list">
	        	{:foreach $mle['prod_data_lists'] as $i => $product_value:}
	        	<!-- <a href="javascript:void(0);"> -->
	        	<a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
		        	<div class="prod" style="border:none; padding:10px 5px; margin-top:15px; background:#E8E8E8; border-radius:0;">
		            	<table width="100%" cellpadding="0" cellspacing="0">
		                	<tr>
		                    	<td width="85" valign="top">
		                            <div data-role="widget" class="slider_1" style="width:80px;">
		                                <div id="slider_{:$shop_value['id']:}" class="slider_{:$shop_value['id']:}_wrap">
		                                    <ul >
		                                                <li onclick="return false;">
		                                                   <img src="{:if $product_value['deal_picture'][0]!='':}{:$var_x['path']['mleroot_url']:}/{:$product_value['deal_picture'][0]:}{:else:}{:$var_x['path']['mleroot_url']:}/inc/images/no_pic_2.jpg{:/if:}" style="border-radius:0;" />
		                                                </li>
		            
		                                    </ul>
		                                    <div id="slider_{:$shop_value['id']:}_indicate" class="slider_{:$shop_valuee['id']:}_indicate"  style="display:none;"></div>
		                                </div>
		                            </div>
		                        </td>
		                        <td>
		                        	<span class="prod_title">{:$product_value['title']:}</span><br />
		                        	<span class="price_info">
		                       		 <span class="xianjia">现价￥{:$product_value['price']:}</span>
						          	 {:if $product_value['market_price'] > $product_value['price']:}
						       		   	 <div class="coupon_info">
											<span class="yuanjia">原价￥{:$product_value['market_price']:}</span>
											<span class="zhekou">
												{:round(($product_value['price'] / $product_value['market_price'])*10, 1):} 折
											</span>
										</div>
									{:/if:}
		                        	</span><br />
		                        	<!-- 
		                        	<a href="{:$var_x['path']['mleroot_url']:}/mobile/shop_detail.php?shop_id={:$mle['shop_data']['id']:}&product_id={:$product_value['id']:}" style="color:#000; font-size:12px;">
		                            	<p style="padding-bottom:5px; padding-left:5px;fone-size:30px;">{:$product_value['title']:}
		                            	<span style="border-radius:30px;  height:22px; line-height:22px; text-align:center; color:#d33122; display:inline-block;float:right">
		
		                                    <span style="background:#d33122; border-radius:30px; width:48px; height:22px; line-height:22px; text-align:center; color:#fff; display:inline-block;float:right">6折</span>
		
		                            	</span></p>
		                                <p style="padding-bottom:5px;"><span style="background:#fff; padding:0 8px; border-radius:10px;">价格</span>&nbsp;￥{:$product_value['price']:}
											{:if $product_value['market_price'] > $product_value['price']:}
												{:round(($product_value['price'] / $product_value['market_price'])*10, 1):} 折
											{:/if:}
										</p>
		                            </a>
		                        	 -->
		                        	 
		                        </td>
		                        <td style="width:90px;"></td>
		                    </tr>
		                </table>
		                <div class="prod_right">
		                	<span class="click_prod">查看商品</span>
		                </div>
		            </div>
	            </a>
	            {:/foreach:}
	            <style type="text/css">
	            	.prod {position:relative; }
	            	.pro_list .prod_title{font-size:15px; color:#f00; }
	            	.pro_list .price_info .xianjia{font-size:15px; color:#f00; }
	            	.pro_list .price_info .yuanjia{font-size:10px; color:#484848; text-decoration:line-through;}
	            	.pro_list .price_info .zhekou{display:inline-block; border-radius:10px; color:#fff; background:#3e3e3e; padding:0 8px; margin-left:5px;}
	            	.pro_list .prod_right{background:#E0E0E0; width:90px; height:100%; position:absolute; top:0%; right:0px;}
	            	.pro_list .prod_right .click_prod{line-height:100%; width:100%; text-align:center; color:#3E3E3E; font-size:15px; position:absolute; top:45%; left:0px;}
	            	
	            	
	            	
	            </style>
	            <div id="mark_page_data" style="display:none;"></div>
	        </div>
	        <div style="clear:both;"></div>
	   <div style="margin:0 auto; text-align:center;">
			<br /><br />
			<a href="product.php?category={:$mle['appoint_buy_class_id']:}&web_title=智能安防"" class="button button-primary button-rounded button-large">立即购买</a>
			<br /><br />
		</div>
	</form>
</div>

</body>
<script type="text/javascript">
	if($('#pos_type_1').is(":checked")) $('#pos_type_1_div').show();
</script>
</html>

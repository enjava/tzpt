<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>购物车</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/page/cart.js" ></script>{:* page.cart JS *:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	var mleroot_url = '{:$var_x['path']['mleroot_url']:}';
</script>
<style type="text/css">
.c_top{height:40px; line-height:40px; padding:0 10px; background:#f7f7f7; border-bottom:1px solid #ccc;}
.p_list{background:#fff; border-bottom:1px solid #ccc;}
.p_list ul li{border-top:1px dashed #ddd; padding:10px 0; color:#666; line-height:30px;}
.p_num{display:inline-block; width:100px; position:relative;}
.p_num input{width:100%; border:1px solid #ccc; height:30px; text-align:center; font-size:14px; color:#666; box-sizing:border-box;}
.p_num a#jh{position:absolute; display:block; z-index:999; width:28px; height:28px; line-height:28px; text-align:center; background:#eee; top:1px; left:1px; border-right:1px solid #ccc; font-size:20px;}
.p_num a#add{position:absolute; display:block; z-index:999; width:28px; height:28px; line-height:28px; text-align:center; background:#eee; top:1px; right:1px; border-left:1px solid #ccc; font-size:20px;}
a.d_all{display:block; background:url({:$var_x['path']['tem_dir_url']:}/images/del_ico.png) 10px center no-repeat #fff; background-size:20px 21px; padding-left:35px; height:40px; line-height:40px;}
.sf{width:94%; margin:20px auto; background:#fdf1e1; padding:15px 10px; box-sizing:border-box;}
a.xd{width:94%; margin:0 auto; margin-bottom:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
</style>
</head>

<body>
<div class="c_top">
	<span style="float:left;">共 <span id="coun">{:count($mle['cart_data']):}</span> 件商品</span>
    <a href="{:$var_x['path']['mleroot_url']:}" style="float:right;">继续购物>></a>
    <div class="clear"></div>
</div>
<div class="p_list">
	<ul>
	{:foreach $mle['cart_data'] as $cart_data:}
    	<li style="border:0;">
        	<table width="100%" cellpadding="0" cellspacing="0">
            	<tr>
                	<td width="100" align="center";>
	                	<a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$cart_data['join_m_product']['id']:}">
	                		<img src="{:$var_x['path']['mleroot_url']:}/{:$cart_data['join_m_product']['picture'][0]:}" style="width:80px;" />
	                	</a>
                	</td>
                    <td>
                    	<a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$cart_data['join_m_product']['id']:}">
	                    	<span style="color:#000;">{:$cart_data['join_m_product']['join_brand']['title']:} {:$cart_data['join_m_product']['title']:}</span><br />
                    	</a>
                        本店价：<span style="color:#f00;">￥{:$cart_data['join_m_product']['deal_price']:}元</span>
					{:if $cart_data['join_m_product']['price_ofintegral']>0:}
						
						<span style="color:#f00;">{:if $cart_data['join_m_product']['deal_price']>0:}&nbsp;+&nbsp;{:/if:}{:$cart_data['join_m_product']['price_ofintegral']:}积分</span> 
					{:/if:}
                        <br />
                        数量：
                        <div class="p_num">
                            <a href="javascript:void(0);" class="num_down" id="jh" prod_id="{:$cart_data['join_m_product']['id']:}">-</a>
                            <input class="prod_num" type="text" value="{:$cart_data['prod_num']:}" name="pnum" id="prod_num_{:$cart_data['join_m_product']['id']:}" prod_price="{:$cart_data['join_m_product']['deal_price']:}" prod_id="{:$cart_data['join_m_product']['id']:}" readonly/>
                            <a href="javascript:void(0);"  class="num_up" id="add" prod_id="{:$cart_data['join_m_product']['id']:}">+</a>
                        </div>
                    </td>
                    <td width="40" align="center";><a onclick="if(confirm('你确定删除该商品吗？')==false) return; mle.fun.toUrl('?action=del_product&product_kid={:$cart_data['id']:}', false);" href="javascript:void(0);"><img src="{:$var_x['path']['tem_dir_url']:}/images/del_ico.png" style="width:20px;" /></a></td>
                </tr>
            </table>
        </li>
    {:foreachelse:}
        <br />
         <a href="{:$var_x['path']['mleroot_url']:}"><div class="nd">购物车没有商品了</div></a>
	{:/foreach:}
    </ul>
</div>
<a onclick="if(confirm('你确定清空所有商品吗？')==false) return; mle.fun.toUrl('?action=clean_cart', false);" href="javascript:void(0);" class="d_all">清空购物车</a>
<div class="sf">实付金额：<span style="color:#ff810c;">￥</span><span id="total_price" style="color:#ff810c;">?.??</span><span style="color:#ff810c;">元</span></div>
<a href="affirm_order.php?buy_type=0" class="xd" onclick__="alert('因春节临近，现在购买的订单将在2月15号统一发货，如有不便，敬请原谅！感谢您的支持，祝您节日快乐！')">立即下单（线上支付）</a>

{:if count($mle['cart_data'])!=1 || $mle['cart_data'][0]['prod_id']!=12 :}<a href="affirm_order.php?buy_type=1" class="xd" onclick__="alert('因春节临近，现在购买的订单将在2月15号统一发货，如有不便，敬请原谅！感谢您的支持，祝您节日快乐！')">门店下单</a>{:/if:}

<div style="margin-bottom:230px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
<script type="text/javascript">
	page.cart.count();//计算总价
</script>


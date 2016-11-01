<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>订单详情</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.d_list{width:94%; margin:15px auto;}
.d_box{border:1px solid #ccc; border-radius:5px; background:#eee; margin-top:10px; box-shadow:1px 1px 3px #ccc;}
.d_box ul li{padding:10px; font-size:14px; line-height:24px; color:#000; border-top:1px solid #ccc; text-shadow:0 2px 3px #fff;}
.d_box table{font-size:14px; text-shadow:0 2px 3px #fff; line-height:24px;}
.d_box table a{display:block; color:#2489ce; font-size:16px;}
.pro{padding:10px 0; border-top:1px dashed #ccc; width:96%; margin:0 auto;}
</style>
</head>

<body>
<div class="d_top">我的订单信息</div>
<div class="d_list">
	<div class="d_box">
    	<ul>{:$mle['re_order_data']['AAAAAAAAAAAAAA']:}
        	<li style="border:0;">订单编号：{:$mle['re_order_data']['oid']:}</li>
        	{:foreach $mle['re_order_data']['join_m_order_log'] as $join_m_order_log_val :}
            <li>{:$join_m_order_log_val['info']:}<br />{:$join_m_order_log_val['addtime']:}</li>
            {:/foreach:}
            <li>商品总价：￥{:$mle['re_order_data']['amount'] - $mle['re_order_data']['express_price']:}元<br />已付款金额：￥{:$mle['re_order_data']['reality_pay_money']:}元</li>
            <li>共需支付：￥{:$mle['re_order_data']['amount']:}元</li>
        </ul>
        
    </div>
    
    <div class="d_box">
   	 {:foreach $mle['re_order_data']['join_m_product'] as $join_m_product_val name=foo:}
   	 <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$join_m_product_val['id']:}">
    	<div class="pro" {:if $smarty.foreach.foo.index==0:}style="border:0;"{:/if:}>
            <table width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="100" align="center"><img src="{:$var_x['path']['mleroot_url']:}/{:$join_m_product_val['join_m_product']['picture'][0]:}" style="width:80px;" /></td>
                    <td>
                        {:$join_m_product_val['join_m_product']['join_m_brand']['title']:} {:$join_m_product_val['join_m_product']['title']:}
                        本店价：<span style="color:#f00;">￥{:$join_m_product_val['price']:}</span><br />
                        <strong>X {:$join_m_product_val['num']:}</strong>
                    </td>
                </tr>
            </table>
        </div>
        </a>
	{:/foreach:}
    </div>
    
    <div class="d_box">
    	<ul>
        	<li style="border:0;">联络贵宾：{:$mle['re_order_data']['join_m_address']['name']:}</li>
            <li>联络电话：{:$mle['re_order_data']['join_m_address']['phone']:}&nbsp;{:$mle['re_order_data']['join_m_address']['mobile_phone']:}</li>
            <li>收货地址：{:$mle['re_order_data']['join_m_address']['sheng']['region_name']:} {:$mle['re_order_data']['join_m_address']['shi']['region_name']:} {:$mle['re_order_data']['join_m_address']['address']:}</li>
        </ul>
    </div>
</div><!--d_list end-->
{:include file="footer.tpl":}
</body>
</html>

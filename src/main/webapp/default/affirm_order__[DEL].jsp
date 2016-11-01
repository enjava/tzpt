<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>确认订单</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/page/affirm_order.js" ></script>{:* page.affirm_order JS *:}
<style type="text/css">
.qr{width:94%; margin:20px auto;}
.qr_tit{border-bottom:1px solid #ccc; padding-bottom:10px;}
.pro{border:1px solid #ccc; border-radius:5px; background:#fff; margin-top:20px;}
.pro ul li{border-bottom:1px dashed #ccc; padding:10px 0; line-height:26px;}
.jr{color:#ff810c; text-align:right; padding:15px;}
span.sh{display:block; padding:20px 5px 10px; font-weight:bold;}
.xx{border:1px solid #ccc; border-radius:5px; background:#fff; padding:10px; line-height:30px;}
.xx input{width:15px; height:15px; vertical-align:middle;}
a.tj{width:90%; margin:0 auto; margin-top:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px;}
input[type="radio"]{width:15px; height:15px; vertical-align:baseline;}
</style>
</head>

<body>
<div class="qr">
	<div class="qr_tit">订单信息</div>
    <div class="pro">
    	<ul>
    	{:foreach $mle['re_cart_data'] as $cart_data_cal:}
        	<li>
            	<table width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="100" align="center"><img src="{:$var_x['path']['mleroot_url']:}/{:$cart_data_cal['join_m_product']['picture'][0]:}" style="width:80px;" /></td>
                        <td>
                            <span style="color:#882786;">{:$cart_data_cal['join_m_product']['join_brand']['title']:} {:$cart_data_cal['join_m_product']['title']:}</span><br />
                            本店价：<span style="color:#f00;">￥{:$cart_data_cal['join_m_product']['price']:}元</span>
                        </td>
                        <td>X {:$cart_data_cal['prod_num']:}</td>
                    </tr>
                </table>
            </li>
		{:/foreach:}
        </ul>
        <div class="jr">购物金额小计：￥{:$mle['cart']['total_price']:}元</div>
    </div>
    <span class="sh">收货人信息</span>
    <div class="xx">
    	联络贵宾：{:$mle['re_address_data']['name']:}<br />
        联络电话：{:$mle['re_address_data']['phone']:}<br />
        收货地址：{:$mle['re_address_data']['sheng']['region_name']:} {:$mle['re_address_data']['shi']['region_name']:} {:$mle['re_address_data']['address']:}
    </div>
    <form method="post" action="" name="form1" id="from1">
    
    <span class="sh">配送方式</span>
    <div class="xx">
    {:foreach $mle['re_express_data'] as $express_val name=foo:}
    	<input class='input_express' express_price="{:$express_val['price']:}"  type="radio" name="express" value="{:$express_val['id']:}" {:if $smarty.foreach.foo.index==0:}checked{:/if:} />&nbsp;{:$express_val['name']:} ￥{:$express_val['price']:}元<br />
   	{:/foreach:}
    </div>
    <span class="sh">支付方式</span>
    <div class="xx">
    	<input type="radio" name="pay_type" value="money_pay"  {:if $mle['payment_config']['wxpay']['enable']!='1':}checked{:/if:}/>&nbsp;余额支付 ￥<span class="span_pay"  pay_price="{:$mle['cart']['total_price']:}">0.00</span>元<br />
        {:if $mle['payment_config']['wxpay']['enable']=='1':}
      	  <input type="radio" name="pay_type" value="wx_pay" checked/>&nbsp;微信支付 ￥<span class="span_pay"  pay_price="{:$mle['cart']['total_price']:}">0.00</span>元
   		{:/if:}
    </div>
    <input type="hidden" name="buy_prod_ids" value="{:$mle['cart']['buy_prod_ids'] :}">
    <input type="hidden" name="buy_prod_nums" value="{:$mle['cart']['buy_prod_nums'] :}">
    <input type="hidden" name="total_price" value="{:$mle['cart']['total_price']:}">
    <input type="hidden" name="action" value="buy">
  
    <a onclick="$('#from1').submit();" href="javascript:void(0);" class="tj">提交订单</a>
   </form>
</div>

{:include file="footer.tpl":}
</body>
</html>

<script type="text/javascript">
	page.affirm_order.end();
</script>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<title>订单详情</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#f1f1f1;}
*{padding:0; margin:0;}
ul li,ol{ list-style:none;}
img{width:100%; border:0;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.ch_top{height:55px; line-height:55px; font-size:16px; color:#000; width:94%; margin:0 auto; position:relative;}
.ch_top a{display:block; height:35px; line-height:35px; padding:0 10px; font-size:14px; color:#fff; background:#404040; border-radius:5px; position:absolute; right:0; top:10px;}
.ps{width:94%; margin:0 auto; background:#fff; box-shadow:1px 1px 3px #ccc;}
.ps_tit{height:40px; line-height:40px; font-size:16px; color:#fff; background:#37c3a9; padding-left:10px; letter-spacing:1px;}
.ps_txt td{font-size:14px; color:#000; padding:10px 0;}
.ps_txt td span{color:#999;}
.p_list{width:94%; margin:15px auto 30px; padding-bottom:20px; background:#fff; box-shadow:1px 1px 3px #ccc;}
.p_tit{background:#acb3bd; height:40px; line-height:40px; font-size:16px; color:#fff; padding-left:10px; letter-spacing:1px;}
.orderlist>span >label{ display:block; float:right; color:#ff5366; font-size:14px;}
.orderlist ul{ padding:0 14px;}
.orderlist ul li{ border-top:1px solid #e8eaeb; width:100%; height:112px; padding:15px 5px; position:relative;}
.orderlist ul li:first-child{ border-top:none;}
.orderlist ul li a>span{ display:block; float:left; height:100%; width:83px; overflow:hidden;}
.orderlist ul li a>span >img{  height:100%;}
.orderlist ul li a>label{ position:absolute; left:88px; right:0; top:0px; bottom:0; padding:15px 20px 12px 18px ; font-size:12px; line-height:22px; }
.orderlist ul li a>label>.table{ width:100%; height:100%; display:table;}
.orderlist ul li a>label>.table>div{ display:table-row; }
.orderlist ul li a>label>.table>div >span{display:table-cell;color:#4a4a4a; font-size:11px; line-height:15px; }
.orderlist ul li a>label>.table>div.line1>span{vertical-align:middle; }
.orderlist ul li a>label>.table>div.line2>span{ vertical-align:middle; color:#ff5366; font-size:12px;font-weight:bold;}
.orderlist ul li a>label>.table>div.line3>span{color:#c7c7c7; vertical-align:middle; }
.orderlist>label{
	display:block;
	height:45px;
	width:100%;
	background:#eaedf4;
	float:left;
	border:1px solid #ced3d7;
	border-width:0 0 1px;
	-webkit-border-image: url(../images/border.gif) 2 stretch;
}
.orderlist .orderStatus{
	line-height: 45px;
	padding:0 10px;
}
.o_msg{width:80%; margin:0 auto;}
.o_msg ul{padding-bottom:10px;}
.o_msg ul li{height:35px; line-height:35px; border-bottom:1px solid #ddd; font-size:14px; padding:0 5px; color:#666;}
.o_msg ul li span{display:block; float:left; width:50%;}
.o_msg ul li span.r{text-align:right;}
.o_msg p{font-size:14px; padding:10px 0 0 10px; color:#666;}
</style>
</head>

<body>
<div class="ch_top">
	订单状态：{:order::get_status_tostr($mle['re_order_data']['status']):}
    {:if $mle['re_order_data']['status']==0:}<a href="?action=cancel_order&order_id={:$smarty.get.order_id:}">删除订单</a>{:/if:}
</div>
<div class="ps">
	<div class="ps_tit">配送信息({:if $mle['re_order_data']['post_type']==0:}送货上门{:else:}货物自提{:/if:})</div>
    <div class="ps_txt">
    	<table width="100%" cellpadding="0" cellspacing="0">
        	<tr>
            	<td width="80" align="center"><span>姓名：</span></td>
                <td>{:if $mle['re_order_data']['address_id']>0:}{:$mle['re_order_data']['join_m_address']['name']:}{:else:}{:$mle['re_order_data']['address_name']:}{:/if:}</td>
            </tr>
            <tr>
            	<td align="center"><span>手机：</span></td>
                <td>{:if $mle['re_order_data']['address_id']>0:}{:$mle['re_order_data']['join_m_address']['mobile_phone']:}{:else:}{:$mle['re_order_data']['address_mobile_phone']:}{:/if:}</td>
            </tr>
            {:if $mle['re_order_data']['post_type']!=1:}
            <tr>
            	<td align="center" valign="top"><span>地址：</span></td>
                <td valign="top">{:if $mle['re_order_data']['address_id']>0:}{:$mle['re_order_data']['join_m_address']['address']:}{:else:}{:$mle['re_order_data']['address_address']:}{:/if:}</td>
            </tr>
            {:/if:}
        </table>
    </div>
</div><!---ps end------->
<div class="p_list">
	<div class="p_tit">购物清单</div>
    <div  class="orderlist">
      <ul>
       {:foreach $mle['re_order_data']['join_m_product'] as $join_m_product_val name=foo:}
        <li> <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$join_m_product_val['join_m_product']['id']:}"> <span><img src="{:$var_x['path']['mleroot_url']:}/{:$join_m_product_val['join_m_product']['picture'][0]:}"/></span>
          <label>
          <span class="table">
          <div  class="line1"> <span>{:$join_m_product_val['join_m_product']['join_m_brand']['title']:} {:$join_m_product_val['join_m_product']['title']:}</span> </div>
          <div  class="line2"> <span>￥{:$join_m_product_val['price']:}{:if $join_m_product_val['prod_price_ofintegral']>0:}&nbsp;+&nbsp;{:$join_m_product_val['prod_price_ofintegral']:}积分{:/if:}</span> </div>
          <div  class="line3"> <span>{:if empty($join_m_product_val['specification'])==false:}{:$join_m_product_val['specification'] :} / {:/if:}数量：{:$join_m_product_val['num']:}</span> </div>
          </span>
          </label>
          </a> </li>
        {:/foreach:}
      </ul>
    </div><!----orderlist end--------->
    <div class="o_msg">
    	<ul>
        	<li>
            	<span>商品总额</span>
                <span class="r">￥{:$mle['re_order_data']['amount']:}{:if $mle['re_order_data']['amount_ofintegral']>0:}&nbsp;+&nbsp;{:$mle['re_order_data']['amount_ofintegral']:}积分{:/if:}</span>
            </li>
            <li style="border-bottom-color:#f00;">
            	<span>运费</span>
                <span class="r">￥{:$mle['re_order_data']['express_price']:}</span>
            </li>
            <li style="color:#f00;">
            	<span>支付方式</span>
                <span class="r">{:order::get_paytype_tostr($mle['re_order_data']['pay_type']):}</span>
            </li>
            <li style="border-bottom-color:#f00; color:#f00;">
            	<span>支付金额</span>
                <span class="r">￥{:$mle['re_order_data']['amount']:}{:if $mle['re_order_data']['amount_ofintegral']>0:}&nbsp;+&nbsp;{:$mle['re_order_data']['amount_ofintegral']:}积分{:/if:}</span>
            </li>
        </ul>
        <p>订单编号：{:$mle['re_order_data']['oid']:}</p>
        <p>创建时间：{:$mle['re_order_data']['addtime']:}</p>
        {:if $mle['re_order_data']['express_postid']!='':}
        	<p>快递单号：{:$mle['re_order_data']['express_postid']:}</p>
        {:/if:}
        <p>我的备注：{:if $mle['re_order_data']['remark']=='':}[空]{:else:}{:$mle['re_order_data']['remark']:}{:/if:}</p>
    </div><!-----o_msg-------->
</div><!----p_list end-------->
<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</body>
</html>

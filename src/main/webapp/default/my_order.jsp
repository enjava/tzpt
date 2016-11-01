<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>我的订单</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<meta charset="utf-8">
<meta content="" name="description">
<meta content="" name="keywords">
<meta content="swan.xie" name="author">
<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
<meta content="telephone=no, address=no" name="format-detection">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<link href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/myorder.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/wicons.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<style>
.pay_alery .widget_wrap {
	z-index: 8000;
}
.orderStatus {
	float: left;
	padding-left: 12px;
	line-height: 47px;
	display: inline-block;
	color: #878a8d;
}
</style>
</head>
<body onselectstart="return true;" ondragstart="return false;">
<div data-role="container" class="container myorder">
  
  <section data-role="body" class="body">
    <div id="list_order" class="list_order">
    {:foreach $mle['re_order_data'] as $re_order_data_val:}
      <div  class="orderlist">
      <span>订单编号：{:$re_order_data_val['oid']:} 
	      <label style="color:#878A8D; ">
	       	{:if $re_order_data_val['status']=='0':}
	   	    	已下单
			{:elseif $re_order_data_val['status']=='1':}
				已付款
			{:elseif $re_order_data_val['status']=='2':}
				已发货
			{:elseif $re_order_data_val['status']=='3':}
				交易完成
			{:elseif $re_order_data_val['status']=='-1':}
				订单取消
			{:elseif $re_order_data_val['status']=='-2':}
				申请退货
			{:elseif $re_order_data_val['status']=='-3':}
				已退货
			{:else:}
				未知状态：{:$re_order_data_val['status']:}*:}
			{:/if:}
	      </label>
	      
      </span>
      
      <span>下单时间：{:fun::time_todate('', $re_order_data_val['addtime']):}
        <label>￥{:$re_order_data_val['amount']:}</label>
        </span>
        <ul>
        {:foreach $re_order_data_val['prod_datas'] as $product_value:}
			<li>
				<a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['join_m_product']['id']:}">
					<span><img src="{:$var_x['path']['mleroot_url']:}/{:$product_value['join_m_product']['deal_picture'][0]:}"/></span>
		            <label>
			            <span class="table">
				            <div  class="line1"> <span>{:$product_value['join_m_product']['title']:}</span> </div>
				            <div  class="line2"> <span>￥{:$product_value['price']:} {:if $product_value['prod_price_ofintegral']>0:}&nbsp;+&nbsp;{:$product_value['prod_price_ofintegral']:}积分{:/if:}</span> </div>
				            <div  class="line3"> <span>{:if empty($product_value['join_m_product']['specification'])==false :}{:$product_value['join_m_product']['specification']:} / {:/if:}数量：{:$product_value['num']:}</span> </div>
			            </span>
		            </label>
	            </a>
			</li>
		{:/foreach:}
        </ul>
        <label>
        
	       	{:if $re_order_data_val['status']=='0':}
	   	    	{:*已下单*:}
				<a href="{:$var_x['path']['mleroot_url']:}/mobile/deal_order.php?oid={:$re_order_data_val['oid']:}" class="btn fr red">去付款({:if $re_order_data_val['pay_type']==1 && $re_order_data_val['buy_type']==0:}余额支付{:else:}微信支付{:/if:})</a>
			{:elseif $re_order_data_val['status']=='1':}
				{:*已付款*:}
			{:elseif $re_order_data_val['status']=='2':}
				{:*已发货*:}
				<a onclick="if(confirm('你确定收货吗？')==false) return; mle.fun.toUrl('?action=affirm_order&order_id={:$re_order_data_val['id']:}', false);" href="javascript:void(0);" class="btn fr red">确认收货</a>
			{:elseif $re_order_data_val['status']=='3':}
				{:*交易完成*:}
			{:elseif $re_order_data_val['status']=='-1':}
				{:*订单取消*:}
			{:elseif $re_order_data_val['status']=='-2':}
				{:*申请退货*:}
			{:elseif $re_order_data_val['status']=='-3':}
				{:*已退货*:}
			{:else:}
				{:*未知状态：{:$re_order_data_val['status']:}*:}
			{:/if:}
		<a href="order_info.php?order_id={:$re_order_data_val['id']:}" class="btn fr red">订单详情</a>
		</label>
      </div>
	   {:foreachelse:}
	        <div class="nd" style="text-align:center; padding-top:30px; font-size:18px;">暂无订单</div>
	   {:/foreach:}
    </div>
  </section>

</div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
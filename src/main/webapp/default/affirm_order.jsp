<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>订单提交</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<meta charset="utf-8">
<meta content="" name="description">
<meta content="" name="keywords">
<meta content="eric.wu" name="author">
<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
<meta content="telephone=no, address=no" name="format-detection">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<link href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet">
<link href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet">
<link href="{:$var_x['path']['tem_dir_url']:}/style/order2.css" rel="stylesheet">
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/page/affirm_order.js" ></script>{:* page.affirm_order JS *:}
</head>
<body onselectstart="return true;" ondragstart="return false;">
<div data-role="container" class="container ordercreate2">

  <section data-role="body" class="body" style="min-height: 591px;">
  	<form method="post" action="" name="form1" id="from1" onsubmit="return check_from();">
      <div class="section_detail">
        <div>
          <header>
            <p>
              <label class="h8">购物清单</label>
              <label class="label_amount_goods fr">共{:$mle['cart']['total_sum']:}件   ￥{:$mle['cart']['total_price']:}{:if $mle['cart']['total_price_ofintegral']>0:}+{:$mle['cart']['total_price_ofintegral']:}积分{:/if:}</label>
            </p>
          </header>
          <!--商品列表--->
          <ul class="list_goods">
          {:foreach $mle['re_cart_data'] as $cart_data_cal:}
              <li>
                  <a href="javascript:;" class="tbox">
                      <div><span class="img_wrap"><img src="{:$var_x['path']['mleroot_url']:}/{:$cart_data_cal['join_m_product']['picture'][0]:}" /></span></div>
                      <div>
                      	  
                          <p class="title">{:$cart_data_cal['join_m_product']['title']:}</p>
                          <p class="price">
								￥{:$cart_data_cal['join_m_product']['deal_price']:}
                       			{:if $cart_data_cal['join_m_product']['price_ofintegral']>0:}&nbsp;+&nbsp;&nbsp;{:$cart_data_cal['join_m_product']['price_ofintegral']:}积分{:/if:}
                          </p>
                          <p class="">数量 {:$cart_data_cal['prod_num']:}</p>
                      </div>
                  </a>
              </li>
         {:/foreach:}
          </ul>
      <div class="section_address" {:if $mle['re_address_data']['id']==0:}style="display:none;"{:/if:}>
          <div id="wrap_address">
              <a href="affirm_address.php?select_address_id={:$mle['re_address_data']['id']:}" class="tbox arrow" onclick="myChoice(this, event, &#39;address&#39;);">
                  <div><span class="icon_wrap icon_address">&nbsp;</span> </div>
                  {:if $mle['re_address_data']['id']>0:}
	                  <div>
	                      <p>
	                          <span>
		                          <label>收货人：</label>
		                          {:$mle['re_address_data']['name']:}
	                          </span>
	                          <span class="fr">{:$mle['re_address_data']['mobile_phone']:}</span>
	                      </p>
	                      <p>{:$mle['re_address_data']['address']:}</p>
	                  </div>
                  {:else:}
	                 <div>
	                      暂无收货地址
	                  </div>
                  {:/if:}
              </a>
          </div>
      </div>
          <div {:if $mle['re_address_data']['id']>0:}style="display:none;"{:/if:}>
	          <header>
	            <p>
	              <label class="h8">收货信息</label>
	            </p>
	          </header>
	          <style type="text/css">
			  .shxx{padding-top:10px;}
	          .shxx p{padding-bottom:20px;}
			  .shxx p label{display:block; padding-bottom:8px;}
			  .shxx p input{width:100%; height:35px; line-height:35px; padding-left:5px; font-size:16px; box-sizing:border-box; border:1px solid #ccc;}
			  .shxx p label span{display:inline-block; color:#f00;}
	          </style>
	          <div class="shxx">
                {:if $mle['par']['buy_type']==0:}
	          	<p>
	            	<label>详细地址<span>*</span></label>
	                <input type="text" name="address" value="">
	            </p>
                {:/if:}
	            <p>
	            	<label>收货人姓名<span>*</span></label>
	                <input type="text" name="user_name" value="">
	            </p>
	            <p>
	            	<label>手机号码<span>*</span></label>
	                <input type="text" name="user_mobile_phone" value="">
	            </p>
	      	    {:if $mle['par']['buy_type']==1:}
		          	<p>
		            	<label>推荐人id<span></span></label>
		                <input type="text" name=referrer_mem_id value="">
		            </p>
	            {:/if:}
                {:if $mle['par']['buy_type']==0:}
	            <p>
	            	<label>联系电话</label>
	                <input type="text" name="user_phone" value="">
	            </p>
                {:/if:}
	          </div>
	      </div>
          <header class="header_pay">
              <a href="javascript:;">
              	<label class="h8">送货方式</label>
              </a>
          </header>
          <!---支付方式列表--------->
          <ul id="pay_list" class="pay_list on">
          	{:if $mle['par']['buy_type'] == 0 :}
	            <li>
	              <label class="tbox">
	              <div> <span class="pay_offlinepay">&nbsp;</span> </div>
	              <div>
	                <p>送货上门</p>
	                <p></p>
	              </div>
	              <div>
	                <input type="radio" name="post_type" name="pay_type" value="0" class="radio" {:if $mle['par']['buy_type'] == 0 :}checked="checked"{:/if:} />
	              </div>
	              </label>
	            </li>
              {:/if:}
            <li>
              <label class="tbox">
              <div> <span class="pay_offlinepay">&nbsp;</span> </div>
              <div>
                <p>商品自提</p>
                <p></p>
              </div>
              <div>
                <input type="radio" name="post_type" value="1" class="radio" {:if $mle['par']['buy_type'] == 1 :}checked="checked"{:/if:}/>
              </div>
              </label>
            </li>
          </ul>
     <div style="display:_none;">
          <!--商品列表 end--->
          <header class="header_transport" style="display:none;">
	          <a href="javascript:;" >
		          <label class="h8">运送方式</label>
		          <!-- <label class="fr">免运费    ￥0.00</label> -->
	          </a>
			<div class="xx">
				{:foreach $mle['re_express_data'] as $express_val name=foo:}
					<input class='input_express' express_price="{:$express_val['price']:}"  type="radio" name="express" value="{:$express_val['id']:}" {:if $smarty.foreach.foo.index==0:}checked{:/if:} />&nbsp;{:$express_val['name']:} ￥{:$express_val['price']:}元<br />
				{:/foreach:}
			</div>
          </header>
          
          <header class="header_pay">
              <a href="javascript:;">
              	<label class="h8">支付方式</label>
              </a>
          </header>
          <!---支付方式列表--------->
          <ul id="pay_list" class="pay_list on">
          {:if $mle['par']['buy_type'] == 0 :}
               {:if $mle['payment_config']['wxpay']['enable']=='1':}
                    <li>
                      <label class="tbox">
                      <div> <span class="pay_weipay">&nbsp;</span> </div>
                      <div>
                        <p>微信支付</p>
                        <p>推荐已开通微信支付的用户使用</p>
                      </div>
                      <div>
                        <input type="radio" name="pay_type" name="pay_type" value="wx_pay" class="radio" checked="checked" />
                      </div>
                      </label>
                    </li>
                {:/if:}

                <li>
                  <label class="tbox">
                  <div> <span class="pay_offlinepay">&nbsp;</span> </div>
                  <div>
                    <p>余额付款（测试）</p>
                    <p></p>
                  </div>
                  <div>
                    <input type="radio" name="pay_type" value="money_pay"  {:if $mle['payment_config']['wxpay']['enable']!='1':}checked="checked"{:/if:}class="radio" />
                  </div>
                  </label>
                </li>
 
          {:else:}
            <li>
              <label class="tbox">
              <div> <span class="pay_offlinepay">&nbsp;</span> </div>
              <div>
                <p>现金支付</p>
                <p></p>
              </div>
              <div>
                <input type="radio" name="pay_type" value="cash_pay" checked="checked" class="radio" />
              </div>
              </label>
            </li>
         {:/if:}
          </ul>
          <!---支付方式列表 end--------->
          </div>
        </div>
        <div class="mark_msg"><!---备注--->
			<input type="text" name="remark" id="remark" placeholder="备注" maxlength="200" />
		</div>
      </div><!--section_detail end-->
      
      <div>
      <!-- /*提交参数->验证 -->
		<input type="hidden" name="address_id" value="{:$mle['re_address_data']['id']:}">{:*收货地址id*:}
		<input type="hidden" name="buy_prod_ids" value="{:$mle['cart']['buy_prod_ids'] :}">
		<input type="hidden" name="buy_type" value="{:$mle['par']['buy_type']:}">
	    <input type="hidden" name="buy_prod_nums" value="{:$mle['cart']['buy_prod_nums'] :}">
	    <input type="hidden" name="total_price" value="{:$mle['cart']['total_price']:}">
	     <input type="hidden" name="total_price_ofintegral" value="{:$mle['cart']['total_price_ofintegral']:}">
	    <input type="hidden" name="action" value="buy">
	   <!-- 提交参数->验证*/ -->
        <div id="order_submit_1" class="section_price_and_pay align_center order_submit_1">
          <p>总共支付 ￥<span class="label_amount_total span_pay"  pay_price="{:$mle['cart']['total_price']:}">0.00</span>{:if $mle['cart']['total_price_ofintegral']>0:}&nbsp;+&nbsp;{:$mle['cart']['total_price_ofintegral']:}积分{:/if:}</p>
          <p class="p_delivery_fee">（含运费￥<span id="express_price">0.00</span>）</p>
          {:if $mle['open_convert_rmb']:}<p class="p_delivery_fee">由于您的积分不足，其中的{:$mle['deficiency_integral']:}积分需要支付{:$mle['need_rmb']:}元用作兑换(兑换比例为：1:{:$mle['convert_rmb']:})</p>{:/if:}
          <p> <span> <a class="btn red" onclick="$('#from1').submit();" href="javascript:void(0);">{:if $mle['par']['buy_type']==0:}提交订单{:else:}完成{:/if:}</a> </span> </p>
        </div>
      </div>
    </form>
  </section>
  
</div>
</body>
</html>
<script type="text/javascript">
	function check_from(){
		/*
		if( Number($("input[name='address_id']").val())==0){
			alert('请选择收货地址');
			return false;
		}
		*/
		return true;
	}
</script>
<script type="text/javascript">
	page.affirm_order.end();
</script>

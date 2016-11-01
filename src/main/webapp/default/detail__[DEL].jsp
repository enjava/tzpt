<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>{:$mle['product_data']['title']:} - 商品信息</title>
<script type="text/javascript">
	var mleroot_url = '{:$var_x['path']['mleroot_url']:}';{:* 网站根目录 *:}
</script>
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/api/cart.js" ></script>{:* 购物车JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/page/detail.js" ></script>{:* page.detail JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/swipe_min.js" ></script>

<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.slider_1{width:100%; margin:0 auto;}
.p_tit{padding:10px 5px; text-align:center; background:#ddd; color:#f97427;}
.p_msg{width:94%; margin:0 auto;}
.p_msg p{ border-bottom:1px solid #fff; padding:10px 0 10px 5px; color:#666;}
.p_msg p a.bra{background:#ccc; color:#fff; padding:3px 5px; display:inline-block;}
.p_num{display:inline-block; width:100px; position:relative;}
.p_num input{width:100%; border:1px solid #ccc; height:30px; text-align:center; font-size:18px; color:#666; box-sizing:border-box;}
.p_num span#jh{position:absolute; display:block; width:28px; height:28px; line-height:28px; text-align:center; background:#eee; top:1px; left:1px; border-right:1px solid #ccc; font-size:20px;}
.p_num span#add{position:absolute; display:block; width:28px; height:28px; line-height:28px; text-align:center; background:#eee; top:1px; right:1px; border-left:1px solid #ccc; font-size:20px;}
.p_xq{width:94%; margin:15px auto; padding:10px 0; background:#fff; box-shadow:1px 1px 3px #ccc; border-radius:5px;}
.p_xq span.px_tit{border-bottom:1px dashed #ccc; color:#666; padding:0 0 10px 10px; display:block;}
.gm{position:fixed; height:50px; width:100%; bottom:0; background:#cbfffb;}
.gm a{display:block; width:120px; height:30px; font-size:14px; line-height:30px; text-align:center; color:#fff; position:absolute; top:10px;}
.gm a img{vertical-align:middle; width:20px; margin-right:2px;}
.intro_detail img{width:100% !important; height:auto !important;}
</style>
</head>

<body>
<div data-role="widget" class="slider_1">
    <div id="slider_1" class="slider_1_wrap">
        <ul>
        {:foreach $mle['product_data']['picture'] as $picture:}
            <li>
               <img src="{:$var_x['path']['mleroot_url']:}/{:$picture:}" />
            </li>
        {:/foreach:}
        </ul>
        <div id="slider_1_indicate" class="slider_1_indicate"></div>
    </div>
    <script type="text/javascript">
        var slider_1 = (function () {
            var that = {};
            that.initSlider = function () {
                that.slider = new Swipe(document.getElementById('slider_1'), {
                    speed: 500,
                    loop: true,
                    auto:3000,
                    indicate: "#slider_1_indicate"
                });
                return that;
            }
            return that;
        })().initSlider();
    </script>
</div><!------商品图片 end--------->
<div style="border-bottom:1px solid #ccc;">
    <div class="p_tit">
    	{:$mle['product_data']['title']:}&nbsp;&nbsp;
    	<a onclick="collect_add_collect({:$mle['product_data']['id']:});" href="javascript:void(0);" style="font-size:13px; color:#f00;">收藏</a>
    </div>
    <div class="p_msg">
        <p>
            本店价：<span style="font-size:20px; color:#f00;">￥{:$mle['product_data']['price']:}</span>
            <span style="text-decoration:line-through; color:#666;"><span style="color:#f00; font-size:14px;">{:if $mle['product_data']['market_price']!=0:}￥{:$mle['product_data']['market_price']:}{:/if:}</span></span>
        </p>
        <p>品牌：<a href="" class="bra">{:$mle['product_data']['join_m_brand']['title']:}</a></p>
        {:*
        <p>库存：<span style="color:#b2463a;">{:if $mle['product_data']['stock']<=0:} 0（库存不足，无法购买）{:else:}{:$mle['product_data']['stock']:}{:/if:}</span></p>
        *:}
        <div style=" border-bottom:1px solid #fff; padding:10px 0 10px 5px; color:#666;">
            数量：
            <div class="p_num">
                <span id="jh">-</span>
                <input type="text" value="1" name="pnum" id="pnum" />
                <span id="add">+</span>
            </div>
        </div>
        {:if $mle['product_data']['specification']!='':}
        <p>规格：<span style="color:#b2463a;">{:$mle['product_data']['specification']:}</span></p>
        {:/if:}
        <p>商品总价：<span style="color:#ff810c;">￥</span><span id="prod_total_price" prod_price="{:$mle['product_data']['price']:}" style="color:#ff810c;">{:$mle['product_data']['price']:}</span><span style="color:#ff810c;">元</span></p>
    </div>
    <div class="p_xq">
        <span class="px_tit">商品详细介绍</span>
        <div class="intro_detail" style="font-size:14px;">
            {:if $mle['product_data']['intro_detail']!='':}
         	   {:$mle['product_data']['intro_detail']:}
            {:else:}
         	   暂无介绍
            {:/if:}
        </div> 
    </div>
</div>
{:include file="footer.tpl":}
<br />
<br />
<div class="gm">
	<a onclick="mle.fun.post_from('{:$var_x['path']['mleroot_url']:}/mobile/cart.php', {'action':'at_buy', 'product_id':'{:$mle['product_data']['id']:}', 'prod_num':$('#pnum').attr('value')});"  href="javascript:void(0);" style="background:#fe9f33; left:10px;"><img src="{:$var_x['path']['tem_dir_url']:}/images/gm_ico.png" />立即购买</a>
    <a onclick="cart_add_product({:$mle['product_data']['id']:}, $('#pnum').attr('value'));" href="javascript:void(0);" style="background:#f3772d; right:10px;"><img src="{:$var_x['path']['tem_dir_url']:}/images/gwc_ico.png" />加入购物车</a>
</div>

</body>
</html>

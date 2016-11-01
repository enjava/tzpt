<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>首页</title>
{:include file="index_head.tpl":}{:*微信api初始化有延迟，优先加载*:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/swipe_min.js"></script>
<style type="text/css">
.sea{padding:7px; background:#c7c7c7; width:100%; box-sizing:border-box; position:relative;}
.sea input[type="text"]{width:100%; height:35px; line-height:35px; background:#fff; border:none; border-radius:5px; text-align:center; font-size:18px; color:#a3a3a3;}
.sea input[type="image"]{position:absolute; width:25px; right:13px; top:12px;}
.c_tit{margin:0 4px; height:40px; background:url({:$var_x['path']['tem_dir_url']:}/images/c_titBG.png) left center repeat-x;}
.c_tit span{display:block; text-align:center; color:#ff5366; background:#f1f1f1; height:40px; line-height:40px; font-size:16px; width:100px; margin:0 auto;}
</style>
</head>

<body onselectstart="return true;" ondragstart="return false;">

{:include file="index_alert_html.tpl":}
<div data-role="container" class="container home" style="margin-top:60px;">
    <header data-role="header">
        
    </header>
    <section data-role="body" class="body">
    	
		<!--图片滚播-->
        <div data-role="widget" data-widget="slider_1_9136" class="slider_1">
            <section class="widget_wrap">
                <div id="slider_1_wrap_9136" class="slider_1_wrap">
                    <ul>
	                    {:foreach $mle['index_picture_data']['deal_data'] as $picture_deal_data_value:}
	                    	<li>
	                            <a data-fx="Modulefx" href="{:$picture_deal_data_value['skip_url']:}">
	                            	<img style="max-height:340px;" src="{:$var_x['path']['mleroot_url']:}/{:$picture_deal_data_value['picture']:}" />
	                            </a>
	                        </li>
	                     {:/foreach:}
                    </ul>
                    <div id="slider_1_indicate_9136" class="slider_1_indicate"></div>
                </div>
            </section>
            <!--图片轮播脚本/需要导入swipe_min.js-->
            <script type="text/javascript">
                var slider_1 = (function () {
                    var that = {};
                    that.initSlider = function () {
                        that.slider = new Swipe(document.getElementById('slider_1_wrap_9136'), {
                            speed: 500,
                            loop: true,
                            auto:3000,
                            indicate: "#slider_1_indicate_9136"
                        });
                        return that;
                    }
                    return that;
                })().initSlider();
            </script>
		</div>
        <!--头部导航-->
		<div class="hudu_menu">
			<ul class="mbox">
            	<li>
					<a href="{:$var_x['path']['mleroot_url']:}/member/my_order.php"><img src="{:$var_x['path']['tem_dir_url']:}/images/wddd.png" style="width:30px;" /><br />
                    <span>我的订单</span></a>
              	</li>
                <li style="line-height:22px;">
                	<a href="{:$var_x['path']['mleroot_url']:}/member/article_list.php?article_class=2"><img src="{:$var_x['path']['tem_dir_url']:}/images/tgzx.png" style="width:30px;" /><br />
                    <span>推广中心</span></a>
                </li>
                <li>
                	<a href="{:$var_x['path']['mleroot_url']:}/member/article_view.php?article_id=1014"><img src="{:$var_x['path']['tem_dir_url']:}/images/msjs.png" style="width:30px;" /><br />
                    <span>模式解说</span></a>
                </li>
                <li>
                	<a href="{:$var_x['path']['mleroot_url']:}/member/article_list.php?article_class=3"><img src="{:$var_x['path']['tem_dir_url']:}/images/shfw.png" style="width:30px;" /><br />
                    <span>帮助中心</span></a>
                </li>
				<!--<li>
					<a href="{:$var_x['path']['mleroot_url']:}/member/center.php"><img src="{:$var_x['path']['tem_dir_url']:}/images/home.png" /><br />
                    <span>用户中心</span></a>
              	</li>
                <li style="line-height:22px;">
                	<a href="{:$var_x['path']['mleroot_url']:}/member/my_order.php"><img style="margin-top:2px;" src="{:$var_x['path']['tem_dir_url']:}/images/center.png" /><br />
                    <span>我的订单</span></a>
                </li>
                <li>
                	<a href="{:$var_x['path']['mleroot_url']:}/member/my_retail.php"><img src="{:$var_x['path']['tem_dir_url']:}/images/order.png" /><br />
                    <span>推广中心</span></a>
                </li>
                <li>
                	<a href="{:$var_x['path']['mleroot_url']:}/mobile/category.php"><img src="{:$var_x['path']['tem_dir_url']:}/images/menu.png" /><br />
                    <span>商品分类</span></a>
                </li>-->
                <br class="clear" />
			</ul>
	 	</div>
        <!--搜索-->
        <div class="sea">
           <form action="mobile/product.php" method="get" name="">
                <input type="text" name="keywords" value="" placeholder="搜你想要的" />
                <input type="image" src="{:$var_x['path']['tem_dir_url']:}/images/search_ico.png" />
           </form>
        </div>
        <!--商品列表-->
        <div data-role="widget" data-widget="goodsList_3" class="goodsList_3">
            <div class="widget_wrap">
            	<div class="c_tit"><span>最新商品</span></div>
                <ul style="width:50%; float:left; margin:0;">
                {:foreach $mle['product']['new'] as $i => $product_value:}
                	{:if $i%2 == 0:}
                    <li style="width:100%; float:none;">
                        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
                            <div>
                                <img src="{:$product_value['picture'][0]:}" />
                            </div>
                            <div>
                                <label class="price">￥{:$product_value['price']:}</label>
                                <p class="title">{:$product_value['title']:}</p>
                            </div>
                        </a>
                    </li>
                    {:/if:}
                 {:/foreach:}
                </ul>
                <ul style="width:50%; float:left; margin:0;">
                {:foreach $mle['product']['new'] as $i => $product_value:}
                	{:if $i%2 != 0:}
                    <li style="width:100%; float:none;">
                        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
                            <div>
                                <img src="{:$product_value['picture'][0]:}" />
                            </div>
                            <div>
                                <label class="price">￥{:$product_value['price']:}</label>
                                <p class="title">{:$product_value['title']:}</p>
                            </div>
                        </a>
                    </li>
                    {:/if:}
                 {:/foreach:}
                </ul>
                <div style="clear:both;"></div>
            </div>
            <div class="widget_wrap">
            	<div class="c_tit"><span>热销商品</span></div>
                <ul style="width:50%; float:left; margin:0;">
                {:foreach $mle['product']['hot'] as $i => $product_value:}
                	{:if $i%2 == 0:}
                    <li style="width:100%; float:none;">
                        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
                            <div>
                                <img src="{:$product_value['picture'][0]:}" />
                            </div>
                            <div>
                                <label class="price">￥{:$product_value['price']:}</label>
                                <p class="title">{:$product_value['title']:}</p>
                            </div>
                        </a>
                    </li>
                    {:/if:}
                 {:/foreach:}
                </ul>
                <ul style="width:50%; float:left; margin:0;">
                {:foreach $mle['product']['hot'] as $i => $product_value:}
                	{:if $i%2 != 0:}
                    <li style="width:100%; float:none;">
                        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
                            <div>
                                <img src="{:$product_value['picture'][0]:}" />
                            </div>
                            <div>
                                <label class="price">￥{:$product_value['price']:}</label>
                                <p class="title">{:$product_value['title']:}</p>
                            </div>
                        </a>
                    </li>
                    {:/if:}
                 {:/foreach:}
                </ul>
                <div style="clear:both;"></div>
            </div>
        </div>
	</section>
    
    <footer data-role="footer">
    	<!--版权声明和导航
   		<div data-role="copyright" style="display:none;">
            <div data-role="copyright" data-copyright="copyright1" class="copyright1">
                <div class="widget_wrap">
                    <ul class="tbox">
                        <li>
                            <span class="img_wrap">
                                <img src="{:$var_x['path']['tem_dir_url']:}/images/logo.png" />
                            </span>
                        </li>
                        <li>
                            <p class="box">
                                <a href="{:$config['home']:}">店铺首页</a>
                                <a href="member/center.php">会员中心</a>
                                <a href="tel:400-0580-151">联系我们</a>
                            </p>
                            <p style="color:#969494!important">
                                <a href="javascript:;">&copy;凯格网络</a>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>-->
        
		<!--固定屏幕底部导航-->
        {:include file="bottom_menu_type_1.tpl":}
        
        <!--留言以及返回顶部按钮-->
        <div data-widget="tools" data-tools="tools_widget" id="tools_widget" class="tools_widget">
        	<div class="widget_wrap">
            	<ul class="tools_widget_wrap">
                	<li>
                    	<a href="javascript:window.scrollTo(0,0);" id="tools_widget_goTop" class="tools_widget_goTop">顶部</a>
                    </li>
                    <li id="tools_kfli">
                    	<a href="mobile/guestbook.php" class="tolls_widget_message">留言</a>
                    </li>
                </ul>
            </div>
        </div>
        
	</footer>
</div>
<script type="text/javascript">
	//默认不可见
	$('#tools_widget_goTop').css("display","none");
	$(window).scroll(function() {//监听页面上下滚动
		var scroll_top = $(document).scrollTop();
		if(scroll_top == 0){//页面位于顶部时
			$('#tools_widget_goTop').css("display","none");
		}else{
			$("#tools_widget_goTop").css("display", "");
		}
	});
</script>
</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>腾胜智能家居品牌商城</title>
{:include file="index_head.tpl":}{:*微信api初始化有延迟，优先加载*:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<script type="text/javascript" src="{:$var_x['path']['mleinc_url']:}/script/public_fun.js"></script>
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/swipe_min.js"></script>
<style type="text/css">

.sea{padding:7px; background:#6496EB; width:50%; box-sizing:border-box; position:relative;}

.sea input[type="text"]{width:100%; height:35px; line-height:35px; background:#fff; border:none; border-radius:5px; text-align:center; font-size:18px; color:#a3a3a3;}

.sea input[type="image"]{position:absolute; width:25px; right:13px; top:12px;}

.c_tit{margin:0 4px; height:40px; background:url({:$var_x['path']['tem_dir_url']:}/images/c_titBG.png) left center repeat-x;}

.c_tit span{display:block; text-align:center; color:#ff5366; background:#f1f1f1; height:40px; line-height:40px; font-size:16px; width:100px; margin:0 auto;}
.c_top{width:100%; height:45px; top:0; left:0; background:#6496EB; z-index:999;}
</style>
<script type="text/javascript">

page = 1;

get_page_data_status = 0;//0-空闲 1-正在获取

function get_product_data_page(){

	if(get_page_data_status == 1) return ;

	get_page_data_status = 1;

	$('.che_more').html("正在获取……");

	page++;

	var url = 'http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}';

	$.post(url, {'action':'get_product', 'page':page}, function(data){

		//console.info(data);

		if(data != ''){

			$('#mark_page_data').before(data);

			$('.che_more').html('查看更多&nbsp;<img src="{:$var_x['path']['tem_dir_url']:}/images/check_more.png" />');

			get_page_data_status = 0;

		}else{

			//$('.che_more').hide();

			$('.che_more').html("没有了");

		}

	});

}

//下拉自动加载

mle.fun.scroll_event(auto_load_next_page, 800);

function auto_load_next_page(){

	get_product_data_page();

}

</script>
</head><body onselectstart="return true;" ondragstart="return false;">
{:include file="index_alert_html.tpl":}
<div data-role="container" class="container home" style="margin-top:0px;">
  <header data-role="header"> </header>
  <section data-role="body" class="body">
    <!--搜索-->
    <div class="c_top" style="width:30%; height:49px; float:left;"> <img src="{:$var_x['path']['tem_dir_url']:}/images/logo1.jpg"  width="119" align="middle"/> </div>
    <div class="sea" style="width:70%; float:right;">
      <form action="mobile/product.php" method="get" name="">
        <input type="text" name="keywords" value="" placeholder="搜你想要的" />
        <input type="image" src="{:$var_x['path']['tem_dir_url']:}/images/search_ico.png" />
      </form>
    </div>
    <!--图片滚播-->
    <div data-role="widget" data-widget="slider_1_9136" class="slider_1">
      <section class="widget_wrap">
        <div id="slider_1_wrap_9136" class="slider_1_wrap">
          <ul>
            {:foreach $mle['index_picture_data']['deal_data'] as $picture_deal_data_value:}
            <li> <a data-fx="Modulefx" href="{:$picture_deal_data_value['skip_url']:}"> <img style="max-height:340px;" src="{:$var_x['path']['mleroot_url']:}/{:$picture_deal_data_value['picture']:}" /> </a> </li>
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
        <li> <a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=36"><img src="{:$var_x['path']['tem_dir_url']:}/images/t1.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">智能安防</span></a> </li>
        <li > <a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=33"><img src="{:$var_x['path']['tem_dir_url']:}/images/t2.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">智能生活</span></a> </li>
        <li> <a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=34"><img src="{:$var_x['path']['tem_dir_url']:}/images/t3.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">智能健康</span></a> </li>
        <li> <a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=35"><img src="{:$var_x['path']['tem_dir_url']:}/images/t4.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">智能时尚</span></a> </li>
        <br class="clear" />
      </ul>
    </div>
    <div class="hudu_menu">
      <ul class="mbox">
        <li> <a href="#"><img src="{:$var_x['path']['tem_dir_url']:}/images/t5.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">新品推荐</span></a> </li>
        <li style="line-height:22px;"> <a href="#"><img src="{:$var_x['path']['tem_dir_url']:}/images/t6.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">积分中心</span></a> </li>
        <li> <a href="#"><img src="{:$var_x['path']['tem_dir_url']:}/images/t7.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">创业加盟</span></a> </li>
        <li> <a href="#"><img src="{:$var_x['path']['tem_dir_url']:}/images/t8.jpg" style="width:45px;" /><br />
          <span style=" color:#6496EB">一键关注</span></a> </li>
        <br  />
      </ul>
    </div>
    <!--商品列表-->
    <div class="indexlist">
      <div class="indexlistTit">
        <h2>智能安防</h2>
        <span>|</span><em> 看家护店 忠诚卫士</em> </div>
      <div class="channelImg">
        <ul>
          <li>
            <div class="pic"><a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=36"
                target='_blank'><img src="{:$var_x['path']['tem_dir_url']:}/images/anfang.jpg" width='640' height='395'
                border='0' /></a></div>
            <!--div class="shop_info">
              <p>智能视宝疯狂来袭</p>
              <div class="brand_time"><span></span>仅剩 10 天</div>
            </div-->
          </li>
        </ul>
      </div>
    </div>
    <div class="indexlist">
      <div class="indexlistTit">
        <h2>智能生活</h2>
        <span>|</span><em>享受生活 赐给懒人的礼物</em> </div>
      <div class="channelImg">
        <ul>
          <li>
            <div class="pic"><a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=33"
                target='_blank'><img src="{:$var_x['path']['tem_dir_url']:}/images/shenghuo.jpg"  width='640' height='395'
                border='0' /></a></div>
          
          </li>
        </ul>
      </div>
    </div>
 <div class="indexlist">
      <div class="indexlistTit">
        <h2>智能健康</h2>
        <span>|</span><em>智能科学为 健康护航</em> </div>
      <div class="channelImg">
        <ul>
          <li>
            <div class="pic"><a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=34"
                target='_blank'><img src="{:$var_x['path']['tem_dir_url']:}/images/jiankang.jpg"  width='640' height='395'
                border='0' /></a></div>
          
          </li>
        </ul>
      </div>
    </div>	
<div class="indexlist">
      <div class="indexlistTit">
        <h2>智能时尚</h2>
        <span>|</span><em>智能时代追求智能时尚</em> </div>
      <div class="channelImg">
        <ul>
          <li>
            <div class="pic"><a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category=35"
                target='_blank'><img src="{:$var_x['path']['tem_dir_url']:}/images/shishang.jpg"  width='640' height='395'
                border='0' /></a></div>
            
          </li>
        </ul>
      </div>
    </div>	
	
    <style type="text/css">
.indexlist{ padding:10px 0 0 0; background:#e8e8e8;}
.indexlistTit{ background:#fff; padding:0.9em 0.9em 0; height:auto; overflow:hidden;}
.indexlistTit h2{ border-left:#f02387 0.2em solid; color:#999; font-size:1.2em; font-weight:700; padding:0 0.5em; line-height:1.1; float:left;}
.indexlistTit span{ line-height:1.3; font-size:1em; float:left; font-family:arial;}
.indexlistTit em{ font-size:1.1em; color:#f02387; padding:0 0.5em; line-height:1.2; float:left;}
.channelImg{ padding:0 0.9em 0.9em; background:#fff; border-bottom:1px solid #ccc;}
.channelImg li{ padding-top:0.9em;}
.channelImg .pic{ width:100%;}
.channelImg .pic a{ display:block;}
.channelImg .pic img{ width:100%; height:auto;}
.channelImg .shop_info{ padding:0 6px; height:2.75em; line-height:2.75em; background:#f6f6f6; position:relative;}
.channelImg .shop_info p{ display:block; padding-right:7em; font-size:1.17em; overflow: hidden; white-space: nowrap; word-break: keep-all; text-overflow: ellipsis; color: #242424;}
.channelImg .brand_time{ position:absolute; top:0; right:6px; font-size:1em;}
.channelImg .brand_time span{ width:1.2em; height:1.2em; display: inline-block; margin:0.75em 0.25em 0 0; vertical-align: top; background:url(../images/png.png) -15.9em -8em no-repeat; background-size:17em;}
		
		
		
		

        .cate a{display:block; float:left; width:25%; height:40px; line-height:40px; text-align:center; color:#000; font-size:14px; border-bottom:1px solid #c7c7c7;}

		.cate a.active{border-bottom:1px solid #fe3b3f;}

		.pro_list{width:94%; margin:0 auto;}

		.pro_list a{display:block; border:1px solid #ccc; border-radius:5px; margin-top:10px;}

		.pro_list a img{width:100%; border-radius:5px 5px 0 0;}

		.pro_tit{padding:10px 100px 10px 10px; position:relative;}

		.pro_tit p{font-size:16px; margin:0; padding:0 0 5px; color:#fe3b3f;}

		.pro_tit p em{font-size:22px; font-weight:bold;}

		.pro_tit h3{margin:0; padding:0; font-size:16px; font-weight:normal; color:#000;}

		.pro_tit div.qg{position:absolute; width:80px; height:30px; border-radius:20px; background:#fe3b3f; line-height:30px; text-align:center; color:#fff; right:10px; top:50%; margin-top:-15px;}

		a.che_more{display:block; height:30px; line-height:30px; text-align:center; color:#999; font-size:16px; margin:20px auto;}

		a.che_more img{width:20px; vertical-align:middle; margin-bottom:3px;}

        </style>
    <!--style type="text/css">

		.pro{max-width:640px; margin:45px auto 0;}

		.pro ul{width:50%; float:left;}

		.pro ul li{width:100%;}

		.pro ul li a{display:block; margin:3px; padding:0px; border:1px solid #ced3d7; border-radius:3px; background:#fff; position:relative; }

		.pro ul li a span.p_img{display:block; margin-bottom:5px;}

		.pro ul li a span.p_img img{width:100%; vertical-align:bottom; height:130px;}

		.pro ul li a .prod_info{padding:10px;}

		.pro ul li a h3{font-size:12px; font-weight:normal; margin:0; padding:0; color:#000; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;}

		.pro ul li a p{font-size:12px; color:#ff5366; padding:5px 0;}

		.pro ul li a p span{display:inline-block; border-radius:10px; color:#fff; background:#3e3e3e; padding:0 8px; margin-left:5px;}

		</style>

		<style type="text/css">

/*******************************/

.title_3{}

.title_3 .widget_wrap{

	overflow: hidden;

	text-align: center;

	margin:0 10px;

}

.title_3 label{

	display: inline-block;

	padding:0 10px;

	height:35px;

	line-height: 35px;

	position: relative;

	color:#ff5366;

	font-size:13px;

}

.title_3 label>p{

	overflow:hidden;

	max-width:150px;

	white-space: nowrap;

	text-overflow:ellipsis;

}

.title_3 label:before, .title_3 label:after{

	content: "";

	display: inline-block;

	position: absolute;

	width:1000px;

	margin-left:-1000px;

	height:0;

	left:0;

	top:50%;

	border:1px solid #b2b2b2;

	border-width:1px 0 0 0;

}

.title_3 label:after{

	left:inherit;

	right:0;

	margin-right:-1000px;

}

		</style>

		<div class="pro">

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

			<div id="mark_page_data" style="display:none;"></div>

			

		</div><!-----pro end----------->
    <a href="javascript:void(0);" onclick="get_product_data_page();" class="che_more">{:if count($mle['product']['data'])==8:}查看更多&nbsp;<img src="{:$var_x['path']['tem_dir_url']:}/images/check_more.png" />{:else:}没有了{:/if:}</a> </section>
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
          <li> <a href="javascript:window.scrollTo(0,0);" id="tools_widget_goTop" class="tools_widget_goTop">顶部</a> </li>
          <li id="tools_kfli"> <a href="mobile/guestbook.php" class="tolls_widget_message">留言</a> </li>
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

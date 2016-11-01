<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>创富商盟</title>
{:include file="index_head.tpl":}{:*微信api初始化有延迟，优先加载*:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/swipe_min.js"></script>
<style type="text/css">
	body{ margin: 0; padding: 0;}
	.page img{width:100%; padding:0px; margin:0px;}
	.searh_div{position:relative;}
	{:if strlen($mle['region_data_ofqu']['region_name'])<=6:}
		.place_div{position:absolute; padding:0 0 0 7%; left:0%; top:29%; width:13%; height:69%; font-size:18px; color:#fff; }
	{:else:}
		.place_div{position:absolute; padding:0 0 0 7%; left:0%; top:15%; width:13%; height:69%; font-size:12px; color:#fff; }
	{:/if:}
	.search_keywork{position:absolute; left:22%; top:17%; border-radius:8px; width:65%; height:65%; font-size:18px; background-color:#C7C8CA; border:0px; color:#888888; }
	.search_a{position:absolute; left:80%; top:17%; width:18%; height:70%;}
	/*顶部消费提示*/
	.top_cost_tip{ width:100%; height:50px; line-height:50px; }
	.top_cost_tip .text_tip{ width:85%; height:50px; line-height:50px; background:#fffbf0; float:left; }
	.top_cost_tip .text_tip .msg{ color:#000; text-align:center; display:block; margin:0 auto; font-size:15px; }
	.top_cost_tip .text_tip .price{ color:#C00; font-weight:bold; font-size:19px; padding:0 5px;}
	
	.top_cost_tip .button{ width:15%; height:50px; background:#E8E8E8; float:left; }
	.top_cost_tip .button .text{ width:50px; height:50px; line-height:15px; display:block; margin:0 auto; text-align:center; padding-top:10px; color:#FF0000; font-weight:bold; }
</style>
</head>
<body>
	<div style="display:none;" id="loading_back">
		<a href="javascript:void(0);" onclick="$(this).parent().attr('style','display:none;')">
			<div style="position:fixed; z-index:99999; width:100%; top:0; height:100%; background:url({:$var_x['path']['tem_dir_url']:}/images/h_fxBG.png);"><!-- <img style="width:274px; float:right; left:50px; bottom:90px; position:fixed;" src="{:$web['path']:}images/tip/memo.png" /> --></div>
		</a>
	</div>
	<div class="page">
		<div class="searh_div">
			<img src="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/top_search.jpg" />
			<a href="{:$var_x['path']['mleroot_url']:}/member/select_area.php">
				<div class="place_div">
					<span>{:$mle['region_data_ofqu']['region_name']|truncate:6:"..":true:}</span>
				</div>
			</a>
			<form action="mobile/product.php" method="get" id="search_form">
				<input type="search" name="keywords" placeholder="搜索你想要的智能商品~~~" value="" class="search_keywork" id="form_keywords"/>
				<input type="hidden" name="web_title" value="" id="form_web_title"/>
			</form>
			<a href="javascript:void(0);" class="search_a" onclick="$('#form_web_title').val($('#form_keywords').val()); $('#search_form').submit();"></a>
		</div>

			<!--图片滚播-->
        <div data-role="widget" data-widget="slider_1_9136" class="slider_1">
            <section class="widget_wrap">
                <div id="slider_1_wrap_9136" class="slider_1_wrap">
                    <ul>
	                    {:foreach $mle['index_picture_data']['deal_data'] as $picture_deal_data_value:}
	                    	<li>
	                            <a data-fx="Modulefx" href="{:$picture_deal_data_value['skip_url']:}">
	                            	<img style="max-height:250px;" src="{:$var_x['path']['mleroot_url']:}/{:$picture_deal_data_value['picture']:}" />
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


<style type="text/css">
/*load动画css*/
.spinner {
  width: 60px;
  height: 60px;

  position: relative;
  margin: 0 auto;
}

.double-bounce1, .double-bounce2 {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  background-color: #67CF22;
  opacity: 0.6;
  position: absolute;
  top: 0;
  left: 0;
   
  -webkit-animation: bounce 2.0s infinite ease-in-out;
  animation: bounce 2.0s infinite ease-in-out;
}
 
.double-bounce2 {
  -webkit-animation-delay: -1.0s;
  animation-delay: -1.0s;
}
 
@-webkit-keyframes bounce {
  0%, 100% { -webkit-transform: scale(0.0) }
  50% { -webkit-transform: scale(1.0) }
}
 
@keyframes bounce {
  0%, 100% { 
    transform: scale(0.0);
    -webkit-transform: scale(0.0);
  } 50% { 
    transform: scale(1.0);
    -webkit-transform: scale(1.0);
  }
}
</style>
<style type="text/css">
.index_prod_img{display:none; }
</style>


<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/03.jpg" heightX='644'  border="0" usemap="#Map3" class="index_prod_img" onclick="javascript:;"/>
      <map name="#Map3">
        <area shape="rect" coords="3,4,246,133" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php">
        <area shape="rect" coords="250,4,499,131" href="{:$var_x['path']['mleroot_url']:}/member/center.php">
        <area shape="rect" coords="504,4,747,130" href="{:$var_x['path']['mleroot_url']:}/?prod_id=12">
      </map>
<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/04.jpg" heightX='505'  border="0" usemap="#Map4" class="index_prod_img" onclick="javascript:;" />
      <map name="#Map4">
        <area shape="rect" coords="1,88,294,469" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=26">
        <area shape="rect" coords="3,24,747,84" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=55">
        <area shape="rect" coords="294,87,748,287" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=101">
        <area shape="rect" coords="297,290,519,471" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=22">
        <area shape="rect" coords="524,290,747,469" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=111">
        <area shape="rect" coords="2,473,291,694" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=110">
        <area shape="rect" coords="293,475,750,683" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=53">
      </map>
<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/05.jpg" heightX='483'  border="0" usemap="#Map5" class="index_prod_img" onclick="javascript:;" />
      <map name="#Map5">
        <area shape="rect" coords="3,6,748,69" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php">
        <area shape="rect" coords="11,80,185,255" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=36">
        <area shape="rect" coords="193,78,372,255" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=33">
        <area shape="rect" coords="378,79,555,258" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=34">
        <area shape="rect" coords="563,79,741,255" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=35">
        <area shape="rect" coords="8,263,186,441" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=37">
        <area shape="rect" coords="191,267,371,438" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=41">
        <area shape="rect" coords="378,264,554,441" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=42">
        <area shape="rect" coords="561,264,738,441" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=48">
        <area shape="rect" coords="9,447,187,627" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=49">
        <area shape="rect" coords="195,448,370,623" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=50">
        <area shape="rect" coords="378,448,554,626" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=38">
        <area shape="rect" coords="562,447,740,624" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=52">
        <area shape="rect" coords="9,635,187,810" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=39">
        <area shape="rect" coords="195,635,369,810" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=40">
<!-- 
        <area shape="rect" coords="377,636,555,811" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=53">
        <area shape="rect" coords="563,635,738,812" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php?show_category=54">
 -->
      </map>
			<!--图片滚播-->
        <div data-role="widget" data-widget="slider_1_9136" class="slider_1">
            <section class="widget_wrap">
                <div id="slider_2_wrap_9136" class="slider_1_wrap">
                    <ul>
	                    	<li>
	                            <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=121"><img src="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/06_1.jpg"  onclick="javascript:;" /></a>
	                        </li>
	                        <li>
	                            <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=107"><img src="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/06_2.jpg" onclick="javascript:;" /></a>
	                        </li>
                    </ul>
                    <div id="slider_1_indicate_9136" class="slider_1_indicate"></div>
                </div>
            </section>
            <!--图片轮播脚本/需要导入swipe_min.js-->
            <script type="text/javascript">
                var slider_2 = (function () {
                    var that = {};
                    that.initSlider = function () {
                        that.slider = new Swipe(document.getElementById('slider_2_wrap_9136'), {
                            speed: 500,
                            loop: true,
                            auto:3000,
                            indicate: "#slider_2_indicate_9136"
                        });
                        return that;
                    }
                    return that;
                })().initSlider();
            </script>
		</div>
      
      <!-- <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=107"><img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/06_2.jpg" class="index_prod_img" onclick="javascript:;" /></a> -->
      
<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/07.jpg" border="0" usemap="#Map7" class="index_prod_img" onclick="javascript:;" />
<map name="Map7">
  <area shape="rect" coords="5,78,247,399" href="JavaScript:;">
  <area shape="rect" coords="5,418,247,731" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=15">
  <area shape="rect" coords="507,77,747,397" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=58">
  <area shape="rect" coords="255,77,496,397" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=66">
  <area shape="rect" coords="255,417,496,731" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=105">
  <area shape="rect" coords="505,409,746,730" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=112">
</map>
<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/08.jpg" border="0" usemap="#Map8" class="index_prod_img" onclick="javascript:;" />
<map name="Map8">
  <area shape="rect" coords="4,52,246,372" href="JavaScript:;">
  <area shape="rect" coords="253,50,496,373" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=106">
  <area shape="rect" coords="501,51,741,376" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=117">
  <area shape="rect" coords="4,385,245,706" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=13">
  <area shape="rect" coords="252,388,495,708" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=53">
  <area shape="rect" coords="503,385,745,707" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=112">
</map>
<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/09.jpg" border="0" usemap="#Map9" class="index_prod_img" onclick="javascript:;" />
<map name="Map9">
  <area shape="rect" coords="4,53,247,372" href="JavaScript:;">
  <area shape="rect" coords="255,51,496,372" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=78">
  <area shape="rect" coords="506,51,747,374" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=33">
  <area shape="rect" coords="6,385,245,707" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=67">
  <area shape="rect" coords="256,385,496,708" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=56">
  <area shape="rect" coords="505,384,746,708" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=51">
</map>
<a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=107"><img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/10.jpg" usemap="#Map10"  class="index_prod_img" onclick="javascript:;" /></a>
<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/11.jpg" border="0" usemap="#Map11" class="index_prod_img" onclick="javascript:;" />
<map name="Map11">
  <area shape="rect" coords="3,63,185,286" href="{:$var_x['path']['mleroot_url']:}/action/201512/lingyuangou.php">
  <area shape="rect" coords="193,67,367,280" href="{:$var_x['path']['mleroot_url']:}/?prod_id=12">
  <area shape="rect" coords="380,66,555,280" href="{:$var_x['path']['mleroot_url']:}/mobile/merchant_pos_detail.php">
  <area shape="rect" coords="562,65,742,280" href="{:$var_x['path']['mleroot_url']:}/mobile/index_ofintegral.php">
  <area shape="rect" coords="247,285,502,355" href="JavaScript:;" onclick="$('html,body').animate({scrollTop:0},200);" is_fun="1">
</map>

<div id="bottom_div_br" style="height:45px;"></div>
<!--固定屏幕底部导航-->
{:include file="bottom_menu_type_1.tpl":}
		<!--留言以及返回顶部按钮-->
        <div data-widget="tools" data-tools="tools_widget" id="tools_widget" class="tools_widget">
        	<div class="widget_wrap">
            	<ul class="tools_widget_wrap">
                	<li id="tools_widget_goTop" >
                    	<a href="javascript:window.scrollTo(0,0);" class="tools_widget_goTop">顶部</a>
                    </li>
                    <!-- 
                    <li id="tools_kfli">
                    	<a href="" class="tolls_widget_message">客服</a>
                    </li>
                     -->
                </ul>
            </div>
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
<script type="text/javascript">
var var_x = {
		'path':{
			'mleroot_url' : '{:$var_x['path']['mleroot_url']:}',
			'tem_dir_url' : '{:$var_x['path']['tem_dir_url']:}',
		},
		'data':{
			'shop_id' : '{:$mle['par']['shop_id']:}',
			'time_id' : '{:$mle['par']['time_id']:}',
		}
	};
</script>
<script type="text/javascript">
	//跳转前黑屏
	$('area').on('click',function(){
		if($(this).attr('is_fun') == '1'){
			return true;
		}
		
		$('#loading_back').show();
		var url_ship = $(this).attr('href');
		setTimeout(function(){
			location = url_ship;
		},50);//延时3秒 
		return false;
	});

</script>
<script type="text/javascript">
	//图片加载特效
	var ratio = $(document).width() / 750;
	var img_i = 0;
	$('.index_prod_img').each(function(){
		img_i++;
		setTimeout( init_img_special( this ), img_i * 100 );
	});

	function init_img_special(img_obj){
		//
		var Map_load_html = '';//加载中特效html
		//
		var Map_Sid = $(img_obj).attr('usemap');//标示
		Map_Sid = Map_Sid.substr(1);
		//
		var height = $(img_obj).attr('heightX')  * ratio / 2 - 60;
		if( height < 0) height = 0;
		Map_load_html += '<div class="spinner" id="' + Map_Sid + '" style="margin: ' + height + 'px auto;">';
		Map_load_html += '		<div class="double-bounce1"></div>';
		Map_load_html += '		<div class="double-bounce2"></div>';
		Map_load_html += '</div>';
		$(img_obj).before(Map_load_html);
		$(img_obj).attr( 'onload',  "$('#" + Map_Sid + "').hide(500); $(this).show(500); " );
		$(img_obj).attr( 'src', $(img_obj).attr('srcx') );
	}
</script>
</html>
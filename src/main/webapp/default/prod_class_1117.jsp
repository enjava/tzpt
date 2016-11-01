<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>创富商城</title>
  <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <link rel="stylesheet" href="{:$var_x['path']['tem_dir_url']:}/style/idangerous.swiper.css">
  <link rel="stylesheet" type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/prod_class_show.css?var=1">
  <script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
  <script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
  <script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/page/prod_class_1117/prod_class_show.js"></script>
  
	<script type="text/javascript">
	var var_x = {
				'path':{
					'mleroot_url' : '{:$var_x['path']['mleroot_url']:}',//网站根目录URL地址
					'tem_dir_url' : '{:$var_x['path']['tem_dir_url']:}',//模板URL地址
					'current_url' : 'http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}',//当前URL地址
				},
			};
	</script>

<style type="text/css">
	/*顶部状态栏样式*/
	.placeholder_x1{ height:35px;}
	.c_top{position:fixed; width:100%; height:35px; top:0; left:0; background:#37c3a9; z-index:999;}
	.c_top .menu_i{ float:left; width:30%; height:100%; background:#06AD9A; }
	.c_top .left_button{ width:100%; height:100%;  }
	.c_top .left_button span{height:35px; line-height:35px; text-align:center; display:block;}

	.px{ position:absolute; left:30%; width:70%; height:35px; line-height:35px; padding: 0 0 0 10px; text-align:center; color:#fff; text-overflow: ellipsis; white-space: nowrap; }
	/* 添加搜索关键词样式 */
	.div_add_keyword{padding:5px; color:#fff; font-size:14px; background:#e83a28;cursor:pointer; }
	.div_add_keyword input{width:75%; height:35px; float:left; background-size:100% 100%; font-size:16px; color:#000033; padding-left:10px; box-sizing:border-box; border:none; -webkit-appearance:none;}
	.div_add_keyword a{display:block; width:25%; float:right; height:35px; line-height:35px; font-size:16px; text-align:center; color:#fff;}
	#div_keyword_win_main #mark_win_keywork_input{float:left; width:78%; height:38px; color:#999; font-size:14px; outline:none; border:none; background:#FFF; padding-left:10px; box-sizing:border-box; margin-top:10px; border:1px solid #3793a9;}
	#div_keyword_win_main #event_click_keyword_win_add_input{width:20%; float:left; height:38px; font-size:14px; color:#FFF; border:none; margin:0; padding:0; background:url(../images/btn_bg.jpg) repeat-x; margin-top:10px; margin-left:4px;}

</style>
</head>
<body>
	<div style="display:none;" id="share_qr_prod_17">
		<a href="javascript:void(0);" onclick="$(this).parent().attr('style','display:none;')">
			<div style="position:fixed; z-index:99999; width:100%; top:0; height:100%; background:url({:$var_x['path']['tem_dir_url']:}/images/h_fxBG.png);">
			<div style="text-align:center; height:100%; width:100%; ">
			<div style="vertical-align:middle; position:relative; top:250px;">
				<span style="color:#FFF;">发送给好友扫二维码，即可查看商品</span>
				<br />
				<img id="share_qr_img" style="width:274px; " src="" />
			</div>

			</div>
			<!-- <img style="width:274px; float:right; left:50px; bottom:90px; position:fixed;" src="{:$web['path']:}images/tip/memo.png" /> -->
			</div>
			
		</a>
	</div>
<!-- 弹出层 -->
<div id="popup_addprod_keyword" style="display:none;">
	<a href="javascript:void(0);" onclick="$(this).parent().attr('style','display:none;')">
		<div style="position:fixed; z-index:99999; width:100%; top:0; height:100%; background:url({:$var_x['path']['tem_dir_url']:}//images/h_fxBG.png);">
		</div>
	</a>
	<div style="position:fixed; width:100%; left:0px; top:0px; z-index:99999;">
		<div class="div_add_keyword" >
			<input id="mark_win_keywork_input"  type="text" name="search" value="" placeholder="输入商品名称">
			<a id="event_click_keyword_win_add_input"  href="javascript:void(0);" >添加</a>	  
			<div style="clear:both;"></div>
		</div>
	</div>
</div>

<!--  -->
<div class="c_top">
	<a href="javascript:;" class="menu_i" onclick="Swiper_Prev();"><div class="left_button"><span id="top_left_text">首页</span></div></a>
	<div class="px" id="title_page">{:$var_x['web_title']:}</div>
</div><!----c_top end ---------------->
<!-- <div style="height:6%;"></div> -->

  <div class="swiper-container">
    <div class="swiper-wrapper">
    <!-- 第一页面 -->
      <div class="swiper-slide red-slide" style="position:relative; ">
      <!-- <div style="height:45px;"></div> -->
		<div id="left_prod_menu_div" scroll="no" > 
		<div class="placeholder_x1" ></div>
		<!-- 搜索按钮 -->
			<a href="javascript:void(0);" onclick="$('#popup_addprod_keyword').show();">
				<div class="add_prod_keyword">
					<img src="{:$var_x['path']['tem_dir_url']:}/images/search2.png" />
				</div>
			</a>
			<!-- 分类列表 -->
			<ul id="left_prod_menu_ul" >
				<li class="left_prod_menu_li">
					<a href="javascript:void(0);" onclick="" get_prod_type='1' url_get_param_1="" class_keyword="全部商品" class="event_select_prod_keywork no_select_a">
						<span style="color:#06AD9A;">全部商品</span>
					</a>
				</li>
				<li class="left_prod_menu_li" id="product_class_new_prod">
					<a href="javascript:void(0);" onclick="" get_prod_type='1' url_get_param_1="?special_id=3" class_keyword="新品预告" class="event_select_prod_keywork no_select_a">
						<span style="color:#0066B2;">新品预告</span>
					</a>
				</li>
				<li class="left_prod_menu_li">
					<a href="javascript:void(0);" onclick="" get_prod_type='1' url_get_param_1="?special_id=2" class_keyword="我的收藏" class="event_select_prod_keywork no_select_a">
						<span style="color:#FF8000;">我的收藏</span>
					</a>
				</li>
				<span id="event_add_keyword"></span>
				{:foreach $mle['product_class_data'] as $product_class_value:}
					<li class="left_prod_menu_li" id="product_class_{:$product_class_value['id']:}">
						<a href="javascript:void(0);" onclick="" get_prod_type='0' prod_class_id="{:$product_class_value['id']:}" class_keyword="{:$product_class_value['title']:}" class="event_select_prod_keywork no_select_a">
							<span>{:$product_class_value['title']:}</span>
						</a>
					</li>
				{:/foreach:}
			</ul>
        </div>
        <!-- right -->
        <div id="right_prod_menu_div">
        	<div class="placeholder_x1" ></div>
			<div id="right_prod_data"></div>
			<div>正在获取</div>
            {:*include file="prod_class_1117_data_page.tpl"*:}
            <div id="no_prod_ico" style="text-align:center; font-size:18px; position:absolute; top:70px; letter-spacing:2px; width:100%; color:#999; display:noen;">暂无商品</div>
   		    <div id="load_prod_ico" style="display:none;">
   		    	<div  class="show_top" style="margin: 48% auto 0 auto; overflow: hidden; "></div>
				<div class="spinner" style="overflow: hidden; ">
					<div class="double-bounce1"></div>
					<div class="double-bounce2"></div>
				</div>
				<div><span class="show_str" style="color:#545454;">正在加载</span></div>
			</div>
        </div>
      </div>
      <!-- 第二页面 -->
      <div class="swiper-slide blue-slide" style="-webkit-overflow-scrolling: touch; overflow-y: scroll;">
      		<div class="placeholder_x1" ></div>
   		    <div id="load_iframe_ico" style="display:none; z-index:99999; position:absolute; top:35%; left:72%;">
				<div class="spinner" style="margin: 48% auto 0 auto; overflow: hidden; ">
					<div class="double-bounce1"></div>
					<div class="double-bounce2"></div>
				</div>
				<div><span style="color:#545454;">努力加载中..</span></div>
			</div>
			<iframe id="iframeNew" src="" style="width:100%; height:100%; " frameborder=0></iframe>
			
    
      </div>
    </div>
  </div>
  <script src="{:$var_x['path']['tem_dir_url']:}/script/jquery-1.10.1.min.js"></script>
  <script src="{:$var_x['path']['tem_dir_url']:}/script/idangerous.swiper.min.js"></script>
  <script>
		var mySwiper = new Swiper('.swiper-container',{
			paginationClickable: false,
			onSlideChangeEnd: function(swiper){
			//console.info(swiper);
				if(mySwiper.activeIndex == 0){
					$('#top_left_text').html('首页');
				}else if(mySwiper.activeIndex == 1){
					$('#top_left_text').html('返回分类');
					
				}
			}
		})
		function Swiper_Prev(){
			var action_text = $('#top_left_text').html();
			if( action_text =='首页' ){
				mle.fun.toUrl('../index.php');
			}else{
				mySwiper.swipePrev()
			}
			
		}
		
		function openNewUrl(url){
			//mle.fun.toUrl(url);
			//return;
			iframeNew_loading();
			setTimeout(function(){
				$('#iframeNew').attr('src', mle.fun.changeUrlPar(url, 'pagetype', 'iframe') );
			},10);
			
			mySwiper.swipeNext();
		}

		var J_iframe_href = parent.document.getElementById('iframeNew').contentWindow.location.href;
		var J_iframe_href_check_i = 0;//检测不同次数
		var J_iframe_href_loaded_i = 0;//已读取次数
		
		$('#iframeNew').load(function(){
			iframeNew_loaded();
			//获取框架内的title
			$('#title_page').html(  $("#iframeNew").contents().find("title").text() );
		});

		setInterval(function(){
			var before_href = parent.document.getElementById('iframeNew').contentWindow.location.href;
			if( before_href != J_iframe_href ){
				//搜索是否
				if(
					before_href.indexOf("{:$var_x['php_self']:}") ==-1 &&
					before_href.indexOf("detail.php") ==-1 && 
					before_href.indexOf("cart.php") ==-1
				){
					if(mySwiper.activeIndex == 1) mle.fun.toUrl(before_href);
				}
				//
				J_iframe_href = before_href;
				if(J_iframe_href_check_i>J_iframe_href_loaded_i - 1){
					iframeNew_loading();
				}
				J_iframe_href_check_i = J_iframe_href_loaded_i;
			}
		}, 50);

		/*开始框架读取动画*/
		function iframeNew_loading(){
			$('#title_page').html('加载中');
			//$('#iframeNew').hide();
			$('#load_iframe_ico').show();
		}
		/*结束框架读取动画*/
		function iframeNew_loaded(){
			J_iframe_href_loaded_i++;
			//$('#iframeNew').show();
			$('#load_iframe_ico').hide();
		}

	$(function(){
	//$(window).width() + 'px'
		//$('#iframeNew').css('width', '375px');
	});
	
  </script>
</body>
</html>
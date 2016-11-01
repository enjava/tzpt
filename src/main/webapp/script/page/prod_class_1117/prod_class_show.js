$(function(){
	//
	//$('#iframeNew').css('width', $(window).width());
	//
	bind_click_prod_class();
	bind_click_keyword_win_add_input();
	
	//
	var category = mle.fun.request('show_category');
	if(category!=''){
		$("#product_class_"+category).find('.event_select_prod_keywork').trigger('click');
	}else{
		$(".left_prod_menu_li:first").find('.event_select_prod_keywork').trigger('click');
	}
	bind_right_scroll_event();//绑定prod_menu_div滚动事件（自动加载）
});

var right_prod_menu_div_height = 0;
function bind_right_scroll_event(){
	right_prod_menu_div_height = $('#right_prod_menu_div').height();
	$('#right_prod_menu_div').scroll(function(){
		if($('#right_prod_menu_div').height() - right_prod_menu_div_height - $('#right_prod_menu_div').scrollTop() < 0){
			get_next_page_of_prod();
		}
		
	});
	
}



function bind_click_prod_class(){
	$(document).on('click', '.event_select_prod_keywork', function(){
		var get_prod_type = $(this).attr('get_prod_type');
		var class_keyword = $(this).attr('class_keyword');
		if(class_keyword!=''){
			$('#title_page').html(class_keyword);
		}
		var currentTime  = new Date().getTime();
		if(get_prod_type == 0){
			/*分类id获取商品*/
			var class_id = $(this).attr('prod_class_id');
			
			var url_get_param_1 = var_x['path']['current_url'].indexOf('?') == -1 ? '?' : '&';
			//加时间戳
			url_get_param_1 += 'category=' + class_id + '&_t=' + currentTime;
			//
			get_prod_data_page(this, url_get_param_1);
		}else if(get_prod_type == 1){
			/*参数获取商品*/
			var url_get_param_1 = $(this).attr('url_get_param_1');
			//加时间戳
			if(url_get_param_1 == '' && var_x['path']['current_url'].indexOf('?') == -1){
				url_get_param_1 += '?_t=' + currentTime;
			}else{
				url_get_param_1 += '&_t=' + currentTime;
			}
			//
			get_prod_data_page(this, url_get_param_1);
		}
		
		
	});
}

var add_keyword_i = 0;
function bind_click_keyword_win_add_input(){
	$(document).on('click', '#event_click_keyword_win_add_input', function(){
		var keyword_str = $('#mark_win_keywork_input').val();
		if(keyword_str==''){
			alert('关键词不能为空哦');
			return ;
		}
		add_keyword_i++;
		var li_html = '';
		li_html += '<li class="left_prod_menu_li" id="add_keyword_'+add_keyword_i+'">';
		li_html += '	<a href="javascript:void(0);" onclick="" get_prod_type="1" url_get_param_1="?keywords=' + keyword_str + '" class="event_select_prod_keywork no_select_a">';
		li_html += '		<span style="color:#37C3A9;">' + keyword_str + '</span>';
		li_html += '	</a>';
		li_html += '</li>';
		$('#event_add_keyword').before(li_html);
		//
		var add_keyword_obj = $('#left_prod_menu_ul').find('#add_keyword_'+add_keyword_i);
		var scroll_offset = add_keyword_obj.offset(); 
		
		$("#left_prod_menu_div").animate({
			scrollTop:scroll_offset.top - 38  //让body的scrollTop等于pos的top，就实现了滚动
		},500);
		//隐藏
		$('#popup_addprod_keyword').hide();
		//
		var prod_class_obj_this = add_keyword_obj.find('.event_select_prod_keywork');
		get_prod_data_page(prod_class_obj_this, '?keywords=' + keyword_str);
		//
		$('#mark_win_keywork_input').val('');
	});
}




var get_page_data_status = 0;//新商品获取状态
//获取新的商品
function get_prod_data_page(_this, url_get_param_1){
	if(get_page_data_status == 1) return ;
	get_page_data_status = 1;
	get_prod_identifying++;
	$('#right_prod_data').html("");
	//$('#load_prod_ico').show();
	show_right_load_ico_style('正在加载', true, true);
	$('#no_prod_ico').hide();
	$('.event_select_prod_keywork').removeClass('select_a');
	$(_this).addClass('select_a');
	$('#right_prod_data').attr('url_get_param_1', url_get_param_1);
	setTimeout(function(){
		$.post(var_x['path']['current_url'] + url_get_param_1, {'action':'get_product'}, function(data){
			//console.info(data);
			if(data != ''){
				$('#right_prod_data').html(data);
				current_page_i = 1;//重置当前页码
				get_next_page_data_status = 0;//重置下一页商品获取状态
			}else{
				$('#no_prod_ico').show();
				
			}
			show_right_load_ico_style('');
			get_page_data_status = 0;
		});
	},10);
	/*
	$.post(var_x['path']['current_url'], {'action':'get_product', 'category':class_id}, function(data){
		console.info(data);
		if(data != ''){
			$('#right_prod_data').html(data);
		}else{
			$('#no_prod_ico').show();
			
		}
		$('#load_prod_ico').hide();
		get_page_data_status = 0;
	});
	*/
}

var get_next_page_data_status = 0;//下一页商品获取状态
var current_page_i = 1;
var get_prod_identifying = 0;//商品获取标识
//获取下一页商品
function get_next_page_of_prod(){
	if(get_next_page_data_status == 1) return;
	get_next_page_data_status = 1;
	current_page_i++;
	//alert(total_get_prod_i_ofnext_page);
	var get_prod_identifying_cache = get_prod_identifying;
	var url_get_param_1 = $('#right_prod_data').attr('url_get_param_1');
	show_right_load_ico_style('正在加载，请稍等...', true, false);
	//alert(url_get_param_1);
	$.post(var_x['path']['current_url'] + url_get_param_1, {'action':'get_product', 'page':current_page_i, 'get_prod_identifying':get_prod_identifying}, function(data){
		//console.info(data);
		get_next_page_data_status = 0;
		
		if(get_prod_identifying != get_prod_identifying_cache){
			//show_right_load_ico_style('');
			return;
		} 
		
		show_right_load_ico_style('');
		if(data != ''){
			$('#right_prod_data').html( $('#right_prod_data').html() + data);
		}else{
			//$('.che_more').hide();
			$('#no_prod_ico').show();
			get_next_page_data_status = 1;
		}
		
		
	});
}

function show_right_load_ico_style(show_str, is_show_img, is_show_top){
	show_str = String(show_str);
	if(is_show_img!=true && is_show_img!=false){
		is_show_img = true;//默认为true
	}
	if(is_show_top!=true && is_show_top!=false){
		is_show_top = true;//默认为true
	}
	
	if(show_str != ''){
		//是否显示动画
		if(is_show_img==true){
			$('#load_prod_ico').find('.spinner').show();
		}else{
			$('#load_prod_ico').find('.spinner').hide();
		}
		//是否居中
		if(is_show_top==true){
			$('#load_prod_ico').find('.show_top').show();
		}else{
			$('#load_prod_ico').find('.show_top').hide();
		}
		
		$('#load_prod_ico').find('.show_str').html(show_str);
		$('#load_prod_ico').show();
		
	}else{
		$('#load_prod_ico').hide();
		
	}
	
}
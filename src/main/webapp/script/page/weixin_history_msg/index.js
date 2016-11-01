$(function () {

	if(var_x['page_data']['data_count'] < var_x['page_data']['limit_take']){
		get_next_page_data_status = 1;
		change_loadico_status('已经没有更早的信息了~', false);
	}
					
	roll_bottommost($(document).height(), 500, function(){
		$(window).scroll(function(){
			if($(window).scrollTop() < load_main_height){
				get_next_history_msg();
			}
		});
	});
		
    function roll_bottommost(scrollTop, speed, callback) {
        $('body').animate({ 'scrollTop': scrollTop }, speed, callback);
    }
	/*屏幕滚动事件*/
	
	
	var load_main_height = $('.load_main').height()
	setTimeout(function(){

	},500);

	
	/**/
	var current_page_i = 1;
	var get_next_page_data_status = 0;//[0]空闲 [1]正在获取
	function get_next_history_msg(){
		if( get_next_page_data_status == 1 ) return false;
		
		get_next_page_data_status = 1;
		current_page_i++;
		change_loadico_status('正在加载', true);
		/*
		roll_bottommost(0, 200, function(){

		});
		*/
		var currentTime  = new Date().getTime();
		var url_get_param_1 = var_x['path']['current_url'].indexOf('?') == -1 ? '?' : '&';
		$.post(var_x['path']['current_url'] + url_get_param_1 + '_t=' + currentTime, {'action':'get_history_msg', 'page':current_page_i, 'start_data_id':var_x['page_data']['start_data_id'], 'start_data_id':var_x['page_data']['start_data_id']}, function(data){
			//console.info(data);
			
			
			if(data != ''){
				var message_first = $('.message:first');
				var screen_cha = $(message_first).offset().top - $(window).scrollTop();
				$('#load_data_site').after( data );
				
				//alert(cha); 
				
				
				//alert(data);
				//console.info(data);
				change_loadico_status('松开加载', true);
				$('body').animate({ 'scrollTop': $(message_first).offset().top - screen_cha }, 500, function(){
					get_next_page_data_status = 0;
				});
				
			}else{

				get_next_page_data_status = 1;
				change_loadico_status('已经没有更早的信息了~', false);
			}
			
			
		});
	}
	
	function change_loadico_status(show_str, is_show_img){
		show_str = String(show_str);
		if(is_show_img!=true && is_show_img!=false){
			is_show_img = true;//默认为true
		}

		if(show_str != ''){
			//是否显示动画
			if(is_show_img==true){
				$('.load_main').find('.load_ico').show();
			}else{
				$('.load_main').find('.load_ico').hide();
			}

			
			$('.load_main').find('.load_str').html(show_str);
			$('.load_main').show();
			
		}else{
			$('.load_main').hide();
			
		}
	
	
	}
	
});


var page = page || {};
page.affirm_order = {};
	/**
	* page.affirm_order初始化函数
	*/
	page.affirm_order.start = function(){
		$(document).on('click', '.input_express',function(){//快递选择点击事件

			var express_price = $(this).attr('express_price');
			var pay_price = 0;
			$(".span_pay").each(function(){
				pay_price = $(this).attr('pay_price');
				total_price = parseFloat(pay_price) + parseFloat(express_price);//计算总价
				total_price = total_price.toFixed(2);
				$(this).html(total_price);
				$('#express_price').html(express_price);
			});
		});
	}
	
	/**
	* page.affirm_order网页渲染完毕后执行
	*/
	page.affirm_order.end = function(){
		$("input[class='input_express']:checked").click();//触发快递选中事件
	}
	
	
page.affirm_order.start();
var page = page || {};
page.detail = {};

	page.detail.start = function(){
		$(document).on('click', '#jh',function(){//添加“数量-”按钮事件
			prod_num_obj = $('#pnum');//获取数量框对象
			prod_num = prod_num_obj.attr('value');
			if(--prod_num<=0) prod_num = 1;
			prod_num_obj.attr('value', prod_num);
			page.detail.count();//计算总价
		});
		
		$(document).on('click', '#add',function(){//添加“数量+”按钮事件
			prod_num_obj = $('#pnum');//获取数量框对象
			prod_num = prod_num_obj.attr('value');
			prod_num_obj.attr('value', ++prod_num);
			page.detail.count();//计算总价
		});
	}
	
//	计算商品总额
	page.detail.count = function(){
		prod_num_obj = $('#pnum');//获取数量框对象
		prod_num = prod_num_obj.attr('value');
		total_price_span_boj = $('#prod_total_price');//获取总价span对象
		prod_price = total_price_span_boj.attr('prod_price');
		total_price = parseInt(prod_num) * parseFloat(prod_price);//计算总价
		total_price_span_boj.html(total_price.toFixed(2));//显示
	}
	

	
//运行
page.detail.start();

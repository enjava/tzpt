var page = page || {};
page.cart = {};
	/**
	* page.cart初始化函数
	*/
	page.cart.start = function(){
		$(document).on('click', '.num_down',function(){//添加“数量-”按钮事件
			var prod_id = $(this).attr('prod_id');
			var prod_num_obj = $('#prod_num_'+prod_id);//获取数量框对象
			var prod_num = prod_num_obj.attr('value');
			if(--prod_num<=0) prod_num = 1;
			prod_num_obj.attr('value', prod_num);
			page.cart.count();//计算总价
			
			page.cart.cart_add_product(prod_id, prod_num);
		});
		
		$(document).on('click', '.num_up',function(){//添加“数量+”按钮事件
			var prod_id = $(this).attr('prod_id');
			var prod_num_obj = $('#prod_num_'+prod_id);//获取数量框对象
			var prod_num = prod_num_obj.attr('value');
			prod_num_obj.attr('value', ++prod_num);
			page.cart.count();//计算总价
			page.cart.cart_add_product(prod_id, prod_num);
		});
		
		$(document).on('change', '.prod_num',function(){//添加“数量+”按钮事件
			var prod_id = $(this).attr('prod_id');
			var prod_num = parseInt($(this).val());
			if(!prod_num>0) prod_num = 1;
			$(this).val(prod_num);
			page.cart.count();//计算总价
			page.cart.cart_add_product(prod_id, prod_num);
		});
	}
	
	/**
	* 计算购物车商品总额
	*/
	page.cart.count = function(){
		var total_price = 0;
		$("[class='prod_num']").each(function(){
			var prod_num = $(this).attr('value');
			var prod_price = $(this).attr('prod_price');
			total_price += parseInt(prod_num) * parseFloat(prod_price);//计算总价
		});
		$('#total_price').html(total_price.toFixed(2));//显示
	}
	
	/**
	* 购物车->修改商品数量
	* @param int product_id 商品id
	* @param int prod_num 商品数量
	*/
	page.cart.cart_add_product = function(product_id, prod_num){
		$.post("api/cart_api.php", {'action' : 'cart_add_product', 'product_id' : product_id, 'prod_num' : prod_num},function(data){
			try{ 
				data = eval('('+data+')');
			} 
			catch(err){ 
				alert('数据出错:'+err);
				return;
			} 
				if(data.status!='1'){
				if(data.msg!=''){
					alert(data.msg);
				}
				return;
			}
			
			if(data.status=='1' && data.app_status=='1'){
				
			}
			
			if(data.status=='1' && data.app_status=='-1'){
				alert('加入购物车失败');
			}
			
		}); 
	}

	
//运行
page.cart.start();

	
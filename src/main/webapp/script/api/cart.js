/**
* 功能：加入商品到购物车
* @param int product_id 商品id
* @param int prod_num 商品数量
*/
function cart_add_product(product_id, prod_num){
   $.post("api/cart_api.php", {'action' : 'cart_add_product', 'product_id' : product_id, 'prod_num' : prod_num},
    function(data){
	
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
			if(confirm('成功加入购物车，是否马上下单？')==true){
				mle.fun.toUrl(mleroot_url + '/mobile/cart.php');
			}

		}
		
		if(data.status=='1' && data.app_status=='-1'){
			alert('加入购物车失败');
		}
		
    }); 
}


function click_collect_a(product_id){
	var cmd = '';
	if($('#colltect_status_img').attr('is_collect') == 0){
		cmd = 'add';
	}else{
		cmd = 'del';
	}
	collect_add_collect(product_id, cmd);
}

function altel_collect_status(collect_status){
	if(collect_status){	
		$('#colltect_status_text').html('已收藏');
		$('#colltect_status_img').attr('is_collect', '1');
		$('#colltect_status_img').attr('src', $('#colltect_status_img').attr('collect_src'));
	}else{
		$('#colltect_status_text').html('收藏');
		$('#colltect_status_img').attr('is_collect', '0');
		$('#colltect_status_img').attr('src', $('#colltect_status_img').attr('no_collect_src'));
	}
	
}

/**
* 功能：[商品]加入收藏
* @param int product_id 商品id
* @param str cmd 操作 [add]添加 [del]删除
*/
function collect_add_collect(product_id, cmd){
   if(cmd != 'add' && cmd != 'del') cmd = 'add';
   $.post("api/product_api.php", {'action' : 'collect_add_product', 'product_id' : product_id, 'cmd':cmd},
    function(data){
		//alert(data);
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
		
		if(cmd == 'add'){
			//加入到收藏夹，结果处理
			if(data.status=='1' && data.app_status=='1'){
				if(data.msg!=''){
					alert(data.msg);
				}else{
					altel_collect_status(1);
					//alert('已加入收藏夹');
				}
				
			}
			
			if(data.status=='1' && data.app_status=='-1'){
				alert('加入收藏夹失败');
			}
		}else{
			//移出到收藏夹，结果处理
			if(data.status=='1' && data.app_status=='1'){
				if(data.msg!=''){
					alert(data.msg);
				}else{
					altel_collect_status(0);
					//alert('已将商品移出收藏夹');
				}
				
			}
			
			if(data.status=='1' && data.app_status=='-1'){
				alert('商品移出收藏夹失败');
			}
			
			
		}
		

		
    }); 
}


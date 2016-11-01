<style type="text/css">

a.btm{width:100%; height:60px; padding:8px 5px; box-sizing:border-box; position:fixed; bottom:0; display:block; background:#003399; font-size:14px; color:#fff;z-index:9999;}

span.i_buy{display:block; font-size:18px; border-radius:5px; background:#fff; width:80%; height:40px; float: none; color:#0000FF; text-align:center; line-height:40px;}

#mcover{ position: fixed;	top:0;	left:0;	width:100%;	height:100%;background:rgba(0, 0, 0, 0.7);	display:none;z-index:20000;}

#mcover img {position: fixed;right: 18px;top:5px;width: 260px;height: 180px;z-index:20001;}

</style>



    {:if $mle['mem_data']['subscribe_time']==0 && $mle['fatherr_data']['id']>0:}

    <a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="50"><img src="{:$mle['fatherr_data']['headimg']:}" style="width:45px; height:45px;" /></td>


                <td  align="center"><span class="i_buy" id="actext">立刻关注，抢占地盘</span></td>

            </tr>

        </table>

    </a>

    {:elseif $mle['mem_data']['subscribe_time']==0 && $mle['fatherr_data']['id']==0:}

    <a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

                <td width="" align="center"><span class="i_buy" id="actext">立刻关注，抢占地盘</span></td>

            </tr>

        </table>

    </a>

    {:elseif $mle['mem_data']['is_merchant']==0:}

    <a class="btm" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$mle['par']['prod_id']:}">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="50"><img src="{:$mle['mem_data']['headimg']:}" style="width:45px; height:45px;" /></td>

                <td  align="center"><span class="i_buy" id="actext">立刻抢购，成为东家！</span></td>

            </tr>

        </table>

    </a>

    {:else:}

	<!--分享遮罩层-->

	<!--div id="mcover" onclick="document.getElementById('mcover').style.display='';"><img src="{:$var_x['path']['tem_dir_url']:}/images/guide.png"></div-->

	   <a class="btm" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$mle['par']['prod_id']:}">

 

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="50"><img src="{:$mle['mem_data']['headimg']:}" style="width:45px; height:45px;" /></td>

                <td  align="center"><span class="i_buy" id="actext">立刻抢购</span></td>

            </tr>

        </table>

	</a>

    {:/if:}

<!----文字闪烁------>

<script type="text/javascript">

var i = 0;



function getColor(){

 i++;

 switch(i){ 

  case 1:return "#0000FF";

  case 2:return "#FF3300";

  default:return "black";

 }

}



function colorful(){

 var o =document.getElementById('actext');

 o.style.color=getColor();

 if(i==2)i=0;

 setTimeout('colorful()',500);

}



colorful();



</script>
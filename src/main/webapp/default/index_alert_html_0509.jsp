<style type="text/css">
a.btm{width:100%; height:50px; padding:10px; box-sizing:border-box; position:fixed; top:0; display:block; background:#673502; font-size:12px; color:#fff;z-index:9999;}
span.i_buy{display:block; border:1px solid #3ba536; font-size:14px; border-radius:5px; padding:3px 8px; float:right; margin-top:3px;}
</style>
    {:if $mle['mem_data']['subscribe_time']==0 && $mle['fatherr_data']['id']>0:}
    <a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">
    	<table width="100%" cellpadding="0" cellspacing="0">
        	<tr>
            	<td width="40"><img src="{:$mle['fatherr_data']['headimg']:}" style="width:30px; height:30px;" /></td>
                <td>
                	<!-- <span style="color:#3ba536; display:block; padding-bottom:3px;">{:$mle['mem_data']['name']:}</span> -->
                    [{:$mle['fatherr_data']['name']:}]推荐你，一键关注，了解更多
                </td>
                <td width=""><span class="i_buy">马上关注</span></td>
            </tr>
        </table>
    </a>
    {:elseif $mle['mem_data']['subscribe_time']==0 && $mle['fatherr_data']['id']==0:}
    <a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">
    	<table width="100%" cellpadding="0" cellspacing="0">
        	<tr>
            	
                <td>
                	<!-- <span style="color:#3ba536; display:block; padding-bottom:3px;">{:$mle['mem_data']['name']:}</span> -->
                    你还未关注官方微信
                </td>
                <td width=""><span class="i_buy">马上关注</span></td>
            </tr>
        </table>
    </a>
    {:elseif $mle['mem_data']['is_merchant']==0:}
    <a class="btm" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=1">
    	<table width="100%" cellpadding="0" cellspacing="0">
        	<tr>
            	<td width="40"><img src="{:$mle['mem_data']['headimg']:}" style="width:30px; height:30px;" /></td>
                <td>
                	<span style="color:#3ba536; display:block; padding-bottom:3px;">{:$mle['mem_data']['name']:}</span>
                    您还不是掌柜，请购买成为掌柜
                </td>
                <td width=""><span class="i_buy">立即购买</span></td>
            </tr>
        </table>
    </a>
    {:/if:}
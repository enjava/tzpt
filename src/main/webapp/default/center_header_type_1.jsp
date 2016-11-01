<div class="top">
	<table width="100%" cellpadding="0" cellspacing="0">
    	<tr>
        	<td width="120" align="center"><img src="{:$mle['mem_info']['headimg']:}" /></td>
            <td>
            <span>
            	会员ID：{:$mle['mem_info']['id']:}
	            <br />昵称：{:$mle['mem_info']['name']:}
	            <br />当前时间：{:date('Y-m-d', $var_x['gmt_time']):}
	            <br />会员等级：{:member::get_level_toname($mle['mem_info']['level']):}
            </span></td>
        </tr>
    </table>
</div>
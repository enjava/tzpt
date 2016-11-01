<style type="text/css">

a.btm{width:100%; height:60px; padding:0px; box-sizing:border-box; position:fixed; top:0; display:block; background:#313131;font-size:14px; color:#fff;z-index:9999; filter:alpha(opacity=80);opacity:0.8}

span.i_buy{display:block; font-size:16px; border-radius:5px; background:#09B02D; width:80px; height:35px; float:right; margin:3px 10px 0 0; color:#fff; text-align:center; line-height:35px;}

#mcover{ position: fixed;	top:0;	left:0;	width:100%;	height:100%;background:rgba(0, 0, 0, 0.7);	display:none;z-index:20000;}

#mcover img {position: fixed;right: 18px;top:5px;width: 260px;height: 180px;z-index:20001;}

</style>

    {:if $mle['mem_data']['subscribe_time']==0 && $mle['fatherr_data']['id']>0:}

    <a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="40"><img src="{:$mle['fatherr_data']['headimg']:}" style="width:30px; height:30px;" /></td>

                <td>

                	<!-- <span style="color:#3ba536; display:block; padding-bottom:3px;">{:$mle['mem_data']['name']:}</span> -->

                    [{:$mle['fatherr_data']['name']:}]<br />推荐！

                </td>

                <td width=""><span class="i_buy">立刻关注</span></td>

            </tr>

        </table>

    </a>

    {:elseif $mle['mem_data']['subscribe_time']==0 && $mle['fatherr_data']['id']==0:}

    <a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">

    	<table width="100%" cellpadding="0" cellspacing="0" style="FILTER:alpha(opacity=10)">

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

    <!--

    <a class="btm" href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=12">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="40"><img src="{:$mle['mem_data']['headimg']:}" style="width:30px; height:30px;" /></td>

                <td>

                	{:$mle['mem_data']['name']:}<br />

                    您还不是东家，请购买加入！

                </td>

                <td width=""><span class="i_buy">立刻购买</span></td>

            </tr>

        </table>

    </a>

    -->

    {:else:}

	<!--分享遮罩层-->

	<!--

	<div id="mcover" onclick="document.getElementById('mcover').style.display='';"><img src="{:$var_x['path']['tem_dir_url']:}/images/guide.png"></div>

	<a class="btm" href="javascript:;" onclick="document.getElementById('mcover').style.display='block';">

		<table width="100%" cellpadding="0" cellspacing="0">

			<tr>

				<td width="40"><img src="{:$mle['mem_data']['headimg']:}" style="width:60px; height:60px;" /></td>

				<td>

					粉丝{:$mle['mem_data']['name']:}，您好！<br />

					立刻分享，赚取更多佣金！

				</td>

				<td width=""><span class="i_buy">立刻分享</span></td>

			</tr>

		</table>

	</a>

	-->

    {:/if:}
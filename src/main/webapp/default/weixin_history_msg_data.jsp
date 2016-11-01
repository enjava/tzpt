{:foreach $mle['history_msg_data'] as $history_msg_value :}
	<div class="message">
	    <img class="avatar" src="{:$var_x['path']['tem_dir_url']:}/images/commom/chuangfu_logo.png" />
	    <div class="content">
	        <div class="nickname">{:$var_x['web_title']:}<span class="time">{:fun::tranTime($history_msg_value['addtime']):}</span></div>
	        <div class="bubble bubble_default left">
	            <div class="bubble_cont">
	                <div class="plain">
	                	{:str_replace("\r\n", "<br />", stripslashes($history_msg_value['content'])):}
						<pre></pre>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
{:/foreach:}
{:if $mle['par']['pagenum'] > 1:}
	<div style_="background: #FFF;">
		<img class="load_ico" width="100%" src="{:$var_x['path']['tem_dir_url']:}/images/commom/division.png"/>
	</div>
{:/if:}
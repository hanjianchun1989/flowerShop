function relogin2() {
    g_pop = new Popup({
		contentType: 2,//有4种类型,1代表iframe,使用1时，setContent方法也要对应使用相应的参数setContent("contentUrl","iframe地址");
					   //2代表一般html内容 对应setContent("contentHtml","html内容");
					   //3代表确认框，有确定取消按钮 对应setContent("confirmCon","确定要提交吗？");
					   //4代表alert框 对应setContent("alertCon","alert内容");
		isHaveTitle: true,// 是否有标题
		scrollType: "no",// 弹出内容里是否有滚动条
		isBackgroundCanClick: false,// 背景层是否能够点击
		isSupportDraging: true,// 是否能够拖动窗口
		isShowShadow: true,// 是否显示窗口阴影
		isReloadOnClose: true,//关闭窗口是否重新加载父页面
		width: 300,// 窗口宽
		height: 300// 窗口高
			
    });
    g_pop.setContent("title", "用户登陆");//设置窗口标题名称
    g_pop.setContent("contentHtml", 
			    "<div id=login align='center'>"+
				"<form action='LoginManage'>"+	
					"<p>用户: <input type=text class=text name=userName></p>"+	
					"<p>密码: <input type=password class='text' name=passWord></p>"+	
					"<p><input type=checkbox name=keep value=2>记住密码两周</p>"+	
					"<p><input type=\"submit\" class=\"btn\" value=\"登录\" /> "+	
					"<input type=\"button\" class=\"btn\" value=\"注册\" onclick=\"javascript:s2(this.form)\"> <a href=\"#\">忘记秘密</a></p>"+
				"</form>"+
				"</div>");// 设置窗口内容
    g_pop.build();
    g_pop.show();
}
function relogin1() {
    g_pop = new Popup({
		contentType: 2,//有4种类型,1代表iframe,使用1时，setContent方法也要对应使用相应的参数setContent("contentUrl","iframe地址");
					   //2代表一般html内容 对应setContent("contentHtml","html内容");
					   //3代表确认框，有确定取消按钮 对应setContent("confirmCon","确定要提交吗？");
					   //4代表alert框 对应setContent("alertCon","alert内容");
		isHaveTitle: true,// 是否有标题
		scrollType: "no",// 弹出内容里是否有滚动条
		isBackgroundCanClick: false,// 背景层是否能够点击
		isSupportDraging: true,// 是否能够拖动窗口
		isShowShadow: true,// 是否显示窗口阴影
		isReloadOnClose: true,//关闭窗口是否重新加载父页面
		width: 300,// 窗口宽
		height: 300// 窗口高
			
    });
    g_pop.setContent("title", "  ");//设置窗口标题名称
    g_pop.setContent("contentHtml", "<center><a href='memberCenter.jsp'>完成支付</a></center>");// 设置窗口内容
    g_pop.build();
    g_pop.show();
}

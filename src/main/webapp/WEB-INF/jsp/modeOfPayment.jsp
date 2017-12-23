<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modeOfPayment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">

  </head>
  
  <body>
    <div id="container">
    	
    	<!-- 顶部banner和导航条 -->
		<jsp:include page="front.jsp"></jsp:include>
		
		
		<div id="main">
			<div class="articleBox">
	  <div class="articleTit tc"><h1>发票及支付方式</h1></div>
<span style="font-size: larger; ">
<p>&nbsp;
<b><span style="font-size: larger; ">本站与境内外60家银行签约合作，支持如下：</span>
 
</b></p>
</span>
<p><span style="font-size: larger; "><b>一、</b></span><a target="_blank" href="/themes/xianhua/paycenter/i.html"><span style="font-size: larger; ">网上银行（在线支付）
</span></a></p>
<p><span style="font-size: larger; "><b>二、</b></span><a target="_blank" href="/themes/xianhua/paycenter/i.html"><span style="font-size: larger; ">支付宝、快钱、财付通</span></a><span style="font-size: larger; "><a target="_blank" href="/themes/xianhua/paycenter/i.html">
</a></span><span style="font-size: larger; "><b>&nbsp;A. &nbsp;</b>网银在线支付</span><span style="font-size: larger; ">：</span><a target="_blank" href="http://www.xianhua.cn/themes/xianhua/paycenter/i.html"><span style="font-size: larger; ">点击进入</span></a><span style="font-size: larger; ">（支持60+家银行）</span></p>
<p><span style="font-size: larger; "><b>&nbsp;B. &nbsp;</b>支付宝汇款：</span><a target="_blank" href="http://www.alipay.com"><span style="font-size: larger; ">pay@xianhua.com.cn</span></a><span style="font-size: larger; ">（国内）</span></p>
<p><span style="font-size: larger; "><b>&nbsp;C. &nbsp;</b>贝宝PayPal：</span><a target="_blank" href="http://www.paypal.com"><span style="font-size: larger; ">pay@xianhua.com.cn</span></a><span style="font-size: larger; ">（境外）</span></p>
<p><span style="font-size: larger; "><b>&nbsp;D. &nbsp;</b>快钱99BiLL：</span><a target="_blank" href="https://www.99bill.com/pay:pay@265pay.com"><span style="font-size: larger; ">点击进入快钱网站
</span></a></p>
<p><span style="font-size: larger; "><b>三、</b>ATM自动取款机汇款
&nbsp;</span></p>
<p><span style="font-size: larger; "><b>四、</b></span><span style="font-size: larger; ">到银行柜台转账，卡号如下：&nbsp;
&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</span></p>
<span style="font-size: larger; ">索取更多银行账号：<strong>1</strong>、</span><span style="color: rgb(0, 0, 0); "><a target="_blank" href="/kefu/"><span style="font-size: larger; ">在线客服</span></a>&nbsp;</span><span style="font-size: larger; "><span style="color: rgb(0, 0, 0); ">&nbsp;<strong>2</strong>、QQ：4006806160 &nbsp; <strong>3</strong>、拨打全国热线：400-800-2610
&nbsp;&nbsp;<span style="color: rgb(0, 0, 0); ">银行汇款请汇特殊数字，以便尽快为您确认。如您的订单金额是200元，请汇200.01元或199.92元等。
&nbsp; 支付完成后，请及时填写&nbsp;</span></span></span><u style="color: rgb(0, 0, 0);"><a onClick="javascript:window.open('/themes/xianhua/queren.php','汇款确认','width=990,height=370,top=150,left=200,resizable=0,scrollbars=no,menubar=no,status=no').focus();" href="#queren"><span style="font-size: larger; ">汇款确认单</span></a></u><span style="font-size: larger;">&nbsp;、或通过客服告知您的订单号和汇款银行以及金额。</span>
<span style="font-size: larger;"> &nbsp; 我们会在确认收到汇款后及时为您确认订单付款信息，按您的订单详情时间和要求完成配送。</span></p>
<!--<p><span style="font-size: larger;">
&nbsp;</span><span style="font-size: larger;">&nbsp;</span><span style="font-size: 14px;">公司总部对公账户如下（推荐）：
</span><span style="font-size: larger;">&nbsp;</span><span style="font-size: 14px;">&nbsp;</span><span style="font-size: larger;">开户名称：达县花礼商贸有限公司
</span><span style="font-size: larger;">&nbsp;</span><span style="font-size: 14px;">&nbsp;</span><span style="font-size: larger;">开户银行：中国农业银行四川省分行达州市支行
</span><span style="font-size: larger;">&nbsp;</span><span style="font-size: 14px;">&nbsp;</span><span style="font-size: larger;">银行账号：22506101040012978

</span>--><span style="font-size: larger;">&nbsp;</span><span style="font-size: larger;">&nbsp;</span><span style="font-size: larger;">使用过程中有任何疑问或索取分公司详细资料，可发送邮件至全国客服邮箱kefu@xianhua.com.cn。
 
</span>
<p><span style="font-size: larger; "><b>五、</b>上门缴款（推荐）
 
</span></p>
<p><span style="font-size: larger;">&nbsp; &nbsp; &nbsp;我们中国鲜花网在全国26个分公司：北京、上海、深圳、广州、成都、武汉、西安、天津、杭州、昆明、南京、济南、大连、沈阳、青岛、重庆、哈尔滨、长春、合肥、长沙、东莞、宁波、福州、苏州、香港，全国设有</span><a target="_blank" href="http://zs.cctv.com/dzsw/news_259535.html"><span style="font-size: larger; "><span style="color: rgb(0, 0, 0); ">6000家实体连锁综合配送服务站，严格保障鲜花及时配送</span></span></a><span style="font-size: larger;">。(总部投诉电话：0818-2671325)。已开通上门缴款网点如下：</span></p>
<p><strong> 
</strong></p>
<p><span style="font-size: larger; "><b>北京上门缴款网点</b></span><span style="font-size: 14px; ">&nbsp;</span><b style="font-size: larger; ">：</b><span style="font-size: larger; ">北京市海淀区翠微北路（西三环中央电视塔南门附近；地铁一号线万寿路站、或公主坟站下车向北1公里，公交车335路罗道庄站下车北行50米），详情咨询：400-800-2610</span></p>
<p><span style="font-size: larger; ">
<strong>上海上门缴款网点</strong></span><span style="font-size: 14px; ">&nbsp;</span><strong style="font-size: larger; "><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">：</span></font></strong><span style="font-size: larger; ">上海市静安区江宁路868号，详情咨询：400-800-2610
 
</span></p>
<p><span style="font-size: larger; "><strong>广州上门缴款网点</strong></span><span style="font-size: 14px; ">&nbsp;</span><strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><span style="font-size: larger; ">广东省广州市越秀区环市东路500号，详情咨询：400-800-2610</span></p>
<p><span style="font-size: larger; "> 
<strong>深圳上门缴款</strong><b>网点</b></span><span style="font-size: 14px; ">&nbsp;</span><strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><span style="font-size: larger; ">深圳市福田区上沙创新科技园15栋，详情咨询：400-800-2610</span>&nbsp;
&nbsp;</p>
<p><span style="font-size: larger; "><b>福建</b><strong>上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">福建省莆田市区府路湄洲日报社对面</span></font>，详情咨询：400-800-2610
 
<strong>宁波上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">浙江省宁波市江北区宁波大学双桥商业街8号</span></font>，详情咨询：400-800-2610&nbsp;</span></p>
<p><span style="font-size: larger; ">
<strong>西安上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">陕西省西安市碑林区太白北路316号西北大学斜对面</span></font>，详情咨询：400-800-2610&nbsp;</span></p>
<p><span style="font-size: larger; ">
<strong>成都上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">四川省成都市锦江区锦兴路61号附6号</span></font>，详情咨询：400-800-2610&nbsp;

<strong>潍坊上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">山东省潍坊市东风东街与新华路交叉口西北角</span></font>，详情咨询：400-800-2610</span></p>
<p><span style="font-size: larger; ">
<strong>烟台上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">山东省烟台市芝罘区红旗路1号</span></font>，详情咨询：400-800-2610</span></p>
<p><span style="font-size: larger; ">
<strong>苏州上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">江苏省苏州市新区馨泰花园内中国工商银行旁</span></font>，详情咨询：400-800-2610 
 
</span></p>
<span style="font-size: larger; "> <strong>南京上门缴款</strong><b>网点</b>&nbsp;<strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体"><span style="line-height: 18px; ">江苏省南京市鼓楼区凤凰西街金陵园48号</span></font>，详情咨询：400-800-2610

</span><strong style="font-size: larger; ">昆明上门缴款</strong><b style="font-size: larger; ">网点</b><span style="font-size: larger; ">&nbsp;</span><strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体" style="font-size: larger; "><span style="line-height: 18px; ">云南省昆明市联盟路尚义花街126号</span></font><span style="font-size: larger; ">，详情咨询：400-800-2610
</span><span style="font-size: larger; ">
</span>
<p><strong style="font-size: larger; ">杭州上门缴款</strong><b style="font-size: larger; ">网点</b><span style="font-size: larger;">&nbsp;</span><strong style="font-family: Verdana, Arial, 宋体; line-height: 18px; font-size: larger; ">：</strong><font face="Verdana, Arial, 宋体" style="font-size: larger; "><span style="line-height: 18px; ">浙江省杭州市西湖区文一西路丰潭路口旁</span></font><span style="font-size: larger;">，详情咨询：400-800-2610&nbsp;
</span> 
<span style="font-size: larger; ">
</span><span style="font-size: 14px; ">&nbsp;... ...</span>&nbsp;&nbsp;
 
<span style="font-size: larger;"> &nbsp;... ...</span>&nbsp;<strong style="font-size: larger; ">因网页篇幅有限，全国其他地区更多详细网点，请咨询在线客服，或拨打全国热线。</strong>

<span style="font-size: larger;"> &nbsp;</span></p>
<span style="font-size: larger; "><b> 六、</b>货到付款

</span>
<p><span style="font-size: larger; ">&nbsp; 本服务需无需另行收费。<span style="color: rgb(255, 0, 0); ">节假日（例如：情人节、圣诞节等）暂停货到付款服务。
 
</span></span></p>
<p><span style="font-size: larger; "><b>

七、</b>信用卡（境外）
 
</span></p>
<p><span style="font-size: larger; ">&nbsp; VISA、MasterCard等国际信用卡、境外用户支持Paypal贝宝在线支付：</span><a target="_blank" href="/themes/xianhua/paycenter/paypal.php"><span style="font-size: larger; ">点击进入
 
</span></a></p>
<p><span style="font-size: larger; "><b>
八、</b>发票说明
 
</span></p>
<p><span style="font-size: larger; ">&nbsp; 机打发票。支持&ldquo;鲜花、绿植、礼品、百货、办公用品&rdquo;等类目，详细咨询在线客服或全国热线。
</span></p>
</div> 
		</div>
		
		<div id="footer">
			<!-- 尾部 -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<%
HttpSession hs=request.getSession(true);
String pass=null;
if(hs.getAttribute("pass")!=null)
	pass=(String)hs.getAttribute("pass");
 %>
<div id="banner"><img src="images/banner.jpg"></div>
		<div id="globallink">
			<ul>
				<li><a href="index.jsp">主页</a></li>
				<li><img src="images/meigui.jpg" width="100px" height="33px"></li>
				<li><a href="self-helpOrder.jsp">自助订花</a></li>				
				<li><img src="images/meigui.jpg" width="100px" height="33px"></li>
				<li><a href="memberCenter.jsp" <%if(pass==null) {%>onclick="window.alert('您还没有登录！请先登陆或注册！')"<%} %>>会员中心</a></li>
				<li><img src="images/meigui.jpg" width="100px" height="33px"></li>
				<li><a href="modeOfPayment.jsp">支付方式</a></li>
			</ul>
</div>

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
				<li><a href="index.jsp">��ҳ</a></li>
				<li><img src="images/meigui.jpg" width="100px" height="33px"></li>
				<li><a href="self-helpOrder.jsp">��������</a></li>				
				<li><img src="images/meigui.jpg" width="100px" height="33px"></li>
				<li><a href="memberCenter.jsp" <%if(pass==null) {%>onclick="window.alert('����û�е�¼�����ȵ�½��ע�ᣡ')"<%} %>>��Ա����</a></li>
				<li><img src="images/meigui.jpg" width="100px" height="33px"></li>
				<li><a href="modeOfPayment.jsp">֧����ʽ</a></li>
			</ul>
</div>

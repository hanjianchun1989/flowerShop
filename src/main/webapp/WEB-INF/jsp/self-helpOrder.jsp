<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>��������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">

  </head>
  
  <body>
    <div id="container">
    	
    	<!-- ����banner�͵����� -->
		<jsp:include page="front.jsp"></jsp:include>
		
		<jsp:include page="selectBouquet.jsp"></jsp:include>
		
		<div id="footer">
			<!-- β�� -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
  </body>
</html>

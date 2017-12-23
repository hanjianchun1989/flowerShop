<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script language="javascript" type="text/javascript" src="js/WdatePicker.js"></script>
	<script language="javascript">

		function checkName(){
				var name = document.getElementById("name");
				var pic = document.getElementById("pic");
				var checkName = document.getElementById("checkName");
				var patrn=/^[a-zA-Z_]{1}\w{5,16}$/; 
				if (!patrn.exec(name.value)){
					 checkName.style.color="red";
					 checkName.innerHTML="*用户名输入有误!";
					 return false;
				}else{	
					 checkName.style.color="green";
					 checkName.innerHTML="*输入正确";
					 return true;
				}
			}
			
		function checkPassword(){
				var pwd1 = document.getElementById("pwd1");
				var pwdRemind = document.getElementById("pwdRemind");
				var patrn=/^[a-z,A-Z,0-9]{6,15}$/;
				if (!patrn.exec(pwd1.value)){
					pwdRemind.style.color="red";
					pwdRemind.innerHTML="*密码格式输入有误!";
					return false;
				}else{
					pwdRemind.style.color="green";
					pwdRemind.innerHTML="*密码输入正确！";
					return true;
				}
			}
			//确认密码
		function checkPwd(){
				var pwd1 = document.getElementById("pwd1");
				var pwd2 = document.getElementById("pwd2");
				var checkPwd = document.getElementById("checkPwd");
				if(pwd1.value!=pwd2.value){
					checkPwd.style.color="red";
					checkPwd.innerHTML="*两次密码输入不一致!";
					return false;
				}else{
					checkPwd.style.color="green";
					checkPwd.innerHTML="*两次密码输入一致!";
					return true;
				}
			}
			
		 
		function checkMail(){
				var email = document.getElementById("email");
				var patrn=/((\w)|[-]|[.])+@(((\w)|[-])+[.])+[a-z]{2,4}$/;
				var checkMail = document.getElementById("checkMail");
				if(!patrn.exec(email.value)){
					checkMail.style.color="red";
					checkMail.innerHTML="*邮箱格式输入有误!";
					return false;
				}else{
					checkMail.style.color="green";
					checkMail.innerHTML="*邮箱输入正确!";
					return true;
				}
			}	
		 function checkPost(){  
		 	var postcode=document.getElementById("postcode");
         	var patrn= /^[1-9][0-9]{5}$/;
        	var checkPost = document.getElementById("checkPost");
				if(!patrn.exec(postcode.value)){
					checkPost.style.color="red";
					checkPost.innerHTML="*邮编格式输入有误!";
					return false;
				}else{
					checkPost.style.color="green";
					checkPost.innerHTML="*邮编输入正确!";
					return true;
				}
			}	
			
		function checkPhone(){  
		 	var phone=document.getElementById("phone");
         	var patrn= /^([0-9]{11})?$/;
        	var checkPhone = document.getElementById("checkPhone");
				if(!patrn.exec(phone.value)){
					checkPhone.style.color="red";
					checkPhone.innerHTML="*您输入的手机号码有误！";
					return false;
				}else{
					checkPhone.style.color="green";
					checkPhone.innerHTML="*输入正确!";
					return true;
				}
			}	
		 
		 function clearRN(){
				var checkName = document.getElementById("checkName");
				checkName.style.color="black";
				checkName.innerHTML="*由英文字母或下划线(6-15)字符组成";
			}
			
			function clearPwd(){
				var checkPwd = document.getElementById("checkPwd");
				var pwdRemind = document.getElementById("pwdRemind");
				checkPwd.style.color="black";
				checkPwd.innerHTML="*由英文字母和数字(6-15)字符组成";
				pwdRemind.innerHTML="*由英文字母和数字(6-15)字符组成！";
			}
			
			function clearMail(){
				var checkMail = document.getElementById("checkMail");
				checkMail.style.color="black";
				checkMail.innerHTML="*请输入正确的邮箱地址! 如：lenovo@163.com";
			}
			
		function check(form){
			if (form.name.value==""){
				alert("请输入名称!");form.name.focus();return false;
			}
			if (form.pwd1.value==""){
				alert("请输入密码!");form.pwd1.focus();return false;
			}
			if (form.address.value==""){
				alert("请填写地址!以方便送货！");form.pwd1.focus();return false;
			}
			if (form.postcode.value==""){
				alert("请填写邮编!以方便送货！");form.pwd1.focus();return false;
			}
			if (form.phone.value==""){
				alert("请填写手机！");form.pwd1.focus();return false;
			}
			if (form.pwd1.value!=form.pwd2.value){
				alert("两次输入密码不一致!请重新输入！");form.pwd1.focus();return false;
			}
			
			if (form.birthday.value==""){
				alert("请选择生日日期!");form.pwd1.focus();return false;
			}
		 
				var email = document.getElementById("email");
				var patrn=/((\w)|[-]|[.])+@(((\w)|[-])+[.])+[a-z]{2,4}$/;
				var checkMail = document.getElementById("checkMail");
				if(!patrn.exec(email.value)){
					checkMail.style.color="red";
					alert("请输入正确的邮箱地址！");
					return false;
				}else{
					checkMail.style.color="green";
					checkMail.innerHTML="*邮箱输入正确!";
					return true;
				}		
		}
		
	</script>
  </head>
  
  <body>
    <div id="container">
    	<!-- 顶部banner和导航条 -->
		<jsp:include page="front.jsp"></jsp:include>
		<br><br><br>
 		<div style="border:1px solid #063;  margin:1px auto;">
 			<h1>注册会员</h1><br>
			<form id="sa" name="form1" method="post" action="AddMember">
				<table  align="center"  border="0" cellspacing="0" cellpadding="0">
  					<tr>
    					<td height="30" align="right">用户名：&nbsp;&nbsp;</td>
   						<td><input type="text" id="name" name="name" onblur="checkName()" onfocus="clearRN()" size="21"/></td>
       					<td id="checkName">*由英文字母和数字(6-16)字符组成</td>
 				    </tr>
  
  
			  <tr>
			    <td height="30" align="right">密码：&nbsp;&nbsp;</td>
			    <td> 
			        <input type="password" id="pwd1" name="pwd" class="contact_input" onfocus="clearPwd()" onblur="checkPassword()" size="22"/>
			     </td>
			    <td colspan="2" id="pwdRemind">*由英文字母和数字(6-16)字符组成 不得少于6个字符</span></td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">确认密码：&nbsp;&nbsp;</td>
			    <td> 
			        <input type="password" id="pwd2" name="pwd" class="contact_input" onblur="checkPwd()" size="22"/>
			     </td>
			    <td colspan="2" id="checkPwd">&nbsp;</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">性别：&nbsp;&nbsp;</td>
			    <td>  
			      <p>
			         
			          <input type="radio" name="gender" value="男" id="RadioGroup1_0" />
			          男
			    
			          <input type="radio" name="gender" value="女" id="RadioGroup1_1" />
			          女
			      
			        <br />
			      </p>
			     </td>
			    <td colspan="2">&nbsp;</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">电子邮件地址：&nbsp;&nbsp;</td>
			    <td> 
			        <input type="text" id="email" name="email" class="contact_input" onblur="checkMail()" onfocus="clearMail()" />
			      </td>
			    <td colspan="2" id="checkMail">*输入正确的Email地址 如：<span style="color:#00C; font-size:13px">lenovo@163.com</span></td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">出生日期：&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="date" onClick="WdatePicker()" name=birthday> 
			      </td>
			    <td colspan="2">&nbsp;</td>
			  </tr>
			  
			    <tr>
			    <td height="30" align="right">地址：&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="text" name=address id=address> 
			      </td>
			    <td colspan="2">*</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">邮编：&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="text" name=postcode id=postcode onblur="checkPost()"> 
			      </td>
			    <td colspan="2" id=checkPost>*</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">手机号码：&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="text" name=phone id=phone onblur="checkPhone()"> 
			      </td>
			    <td colspan="2" id=checkPhone>*</td>
			  </tr>
			  
			  <tr>
			    <td height="44" align="right">&nbsp; </td>
			    <td> 
			        <input type="reset" name="button" id="button" value="重新填写" />
			       </td>
			    <td colspan="2"> 
			     
			        <input type="submit" name="button2" id="button2" value="同意以下协议条款并提交" onClick="return check(form1)"/> 
			      </td>
			  </tr>
			  
  <tr>
    <td height="30" colspan="4" align="left"> &nbsp;&nbsp;  
       <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea name="textarea" id="textarea" cols="60" rows="12"> 您只有无条件接受以下所有服务条款，才能继续注册：
    
        一、服务说明
    
        1．注册资格
    
    　　本网站在线服务平台仅供能够具有法律约束力合约的企业或个人使用，法人年龄必须在十八周岁或以上。服务不提供给被暂时或永久中
    止资格的本站会员，本站保留终止会员使用的权力。
    
    　　2．接受条款和协议修改
    
    　　用户使用本网站所提供服务，即表示用户接受本网站全部服务条款。本网站有权在必要时修改服务条款，服务条款一旦发生变动，将会
    在会员页面上提示修改内容。如果您不同意所改动的内容，会员可以主动取消获得的网络服务，并以书面形式（能证明您身份的传真或信件）
    通知我们。如果您继续享用网络服务，则视为接受服务条款的变动。我们保留修改或中断服务而不需通知会员的权利，且不需对会员或第三
    方负责。
    
    　　3．会员交纳费用
    
    　　个人或企业注册的普通会员使用本网站所承诺的相关服务完全免费！
    　　本网站保留在修改条款通知您后收取"服务费用"的权利。您因进行交易、向本网站获取有偿服务或接触本网站服务器而发生的所有应纳
    税赋，以及一切硬件、软件、服务及其他方面的费用均由您自己负责支付。
</textarea>
      <br>
    </td>
  </tr>
</table>
</form>
<br><br><br><br>
</div> 
		
    </div>
  </body>
</html>

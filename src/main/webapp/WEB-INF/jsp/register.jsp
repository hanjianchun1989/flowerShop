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
					 checkName.innerHTML="*�û�����������!";
					 return false;
				}else{	
					 checkName.style.color="green";
					 checkName.innerHTML="*������ȷ";
					 return true;
				}
			}
			
		function checkPassword(){
				var pwd1 = document.getElementById("pwd1");
				var pwdRemind = document.getElementById("pwdRemind");
				var patrn=/^[a-z,A-Z,0-9]{6,15}$/;
				if (!patrn.exec(pwd1.value)){
					pwdRemind.style.color="red";
					pwdRemind.innerHTML="*�����ʽ��������!";
					return false;
				}else{
					pwdRemind.style.color="green";
					pwdRemind.innerHTML="*����������ȷ��";
					return true;
				}
			}
			//ȷ������
		function checkPwd(){
				var pwd1 = document.getElementById("pwd1");
				var pwd2 = document.getElementById("pwd2");
				var checkPwd = document.getElementById("checkPwd");
				if(pwd1.value!=pwd2.value){
					checkPwd.style.color="red";
					checkPwd.innerHTML="*�����������벻һ��!";
					return false;
				}else{
					checkPwd.style.color="green";
					checkPwd.innerHTML="*������������һ��!";
					return true;
				}
			}
			
		 
		function checkMail(){
				var email = document.getElementById("email");
				var patrn=/((\w)|[-]|[.])+@(((\w)|[-])+[.])+[a-z]{2,4}$/;
				var checkMail = document.getElementById("checkMail");
				if(!patrn.exec(email.value)){
					checkMail.style.color="red";
					checkMail.innerHTML="*�����ʽ��������!";
					return false;
				}else{
					checkMail.style.color="green";
					checkMail.innerHTML="*����������ȷ!";
					return true;
				}
			}	
		 function checkPost(){  
		 	var postcode=document.getElementById("postcode");
         	var patrn= /^[1-9][0-9]{5}$/;
        	var checkPost = document.getElementById("checkPost");
				if(!patrn.exec(postcode.value)){
					checkPost.style.color="red";
					checkPost.innerHTML="*�ʱ��ʽ��������!";
					return false;
				}else{
					checkPost.style.color="green";
					checkPost.innerHTML="*�ʱ�������ȷ!";
					return true;
				}
			}	
			
		function checkPhone(){  
		 	var phone=document.getElementById("phone");
         	var patrn= /^([0-9]{11})?$/;
        	var checkPhone = document.getElementById("checkPhone");
				if(!patrn.exec(phone.value)){
					checkPhone.style.color="red";
					checkPhone.innerHTML="*��������ֻ���������";
					return false;
				}else{
					checkPhone.style.color="green";
					checkPhone.innerHTML="*������ȷ!";
					return true;
				}
			}	
		 
		 function clearRN(){
				var checkName = document.getElementById("checkName");
				checkName.style.color="black";
				checkName.innerHTML="*��Ӣ����ĸ���»���(6-15)�ַ����";
			}
			
			function clearPwd(){
				var checkPwd = document.getElementById("checkPwd");
				var pwdRemind = document.getElementById("pwdRemind");
				checkPwd.style.color="black";
				checkPwd.innerHTML="*��Ӣ����ĸ������(6-15)�ַ����";
				pwdRemind.innerHTML="*��Ӣ����ĸ������(6-15)�ַ���ɣ�";
			}
			
			function clearMail(){
				var checkMail = document.getElementById("checkMail");
				checkMail.style.color="black";
				checkMail.innerHTML="*��������ȷ�������ַ! �磺lenovo@163.com";
			}
			
		function check(form){
			if (form.name.value==""){
				alert("����������!");form.name.focus();return false;
			}
			if (form.pwd1.value==""){
				alert("����������!");form.pwd1.focus();return false;
			}
			if (form.address.value==""){
				alert("����д��ַ!�Է����ͻ���");form.pwd1.focus();return false;
			}
			if (form.postcode.value==""){
				alert("����д�ʱ�!�Է����ͻ���");form.pwd1.focus();return false;
			}
			if (form.phone.value==""){
				alert("����д�ֻ���");form.pwd1.focus();return false;
			}
			if (form.pwd1.value!=form.pwd2.value){
				alert("�����������벻һ��!���������룡");form.pwd1.focus();return false;
			}
			
			if (form.birthday.value==""){
				alert("��ѡ����������!");form.pwd1.focus();return false;
			}
		 
				var email = document.getElementById("email");
				var patrn=/((\w)|[-]|[.])+@(((\w)|[-])+[.])+[a-z]{2,4}$/;
				var checkMail = document.getElementById("checkMail");
				if(!patrn.exec(email.value)){
					checkMail.style.color="red";
					alert("��������ȷ�������ַ��");
					return false;
				}else{
					checkMail.style.color="green";
					checkMail.innerHTML="*����������ȷ!";
					return true;
				}		
		}
		
	</script>
  </head>
  
  <body>
    <div id="container">
    	<!-- ����banner�͵����� -->
		<jsp:include page="front.jsp"></jsp:include>
		<br><br><br>
 		<div style="border:1px solid #063;  margin:1px auto;">
 			<h1>ע���Ա</h1><br>
			<form id="sa" name="form1" method="post" action="AddMember">
				<table  align="center"  border="0" cellspacing="0" cellpadding="0">
  					<tr>
    					<td height="30" align="right">�û�����&nbsp;&nbsp;</td>
   						<td><input type="text" id="name" name="name" onblur="checkName()" onfocus="clearRN()" size="21"/></td>
       					<td id="checkName">*��Ӣ����ĸ������(6-16)�ַ����</td>
 				    </tr>
  
  
			  <tr>
			    <td height="30" align="right">���룺&nbsp;&nbsp;</td>
			    <td> 
			        <input type="password" id="pwd1" name="pwd" class="contact_input" onfocus="clearPwd()" onblur="checkPassword()" size="22"/>
			     </td>
			    <td colspan="2" id="pwdRemind">*��Ӣ����ĸ������(6-16)�ַ���� ��������6���ַ�</span></td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">ȷ�����룺&nbsp;&nbsp;</td>
			    <td> 
			        <input type="password" id="pwd2" name="pwd" class="contact_input" onblur="checkPwd()" size="22"/>
			     </td>
			    <td colspan="2" id="checkPwd">&nbsp;</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">�Ա�&nbsp;&nbsp;</td>
			    <td>  
			      <p>
			         
			          <input type="radio" name="gender" value="��" id="RadioGroup1_0" />
			          ��
			    
			          <input type="radio" name="gender" value="Ů" id="RadioGroup1_1" />
			          Ů
			      
			        <br />
			      </p>
			     </td>
			    <td colspan="2">&nbsp;</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">�����ʼ���ַ��&nbsp;&nbsp;</td>
			    <td> 
			        <input type="text" id="email" name="email" class="contact_input" onblur="checkMail()" onfocus="clearMail()" />
			      </td>
			    <td colspan="2" id="checkMail">*������ȷ��Email��ַ �磺<span style="color:#00C; font-size:13px">lenovo@163.com</span></td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">�������ڣ�&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="date" onClick="WdatePicker()" name=birthday> 
			      </td>
			    <td colspan="2">&nbsp;</td>
			  </tr>
			  
			    <tr>
			    <td height="30" align="right">��ַ��&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="text" name=address id=address> 
			      </td>
			    <td colspan="2">*</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">�ʱࣺ&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="text" name=postcode id=postcode onblur="checkPost()"> 
			      </td>
			    <td colspan="2" id=checkPost>*</td>
			  </tr>
			  
			  <tr>
			    <td height="30" align="right">�ֻ����룺&nbsp;&nbsp;</td>
			    <td> 
			        <input class="Wdate" type="text" name=phone id=phone onblur="checkPhone()"> 
			      </td>
			    <td colspan="2" id=checkPhone>*</td>
			  </tr>
			  
			  <tr>
			    <td height="44" align="right">&nbsp; </td>
			    <td> 
			        <input type="reset" name="button" id="button" value="������д" />
			       </td>
			    <td colspan="2"> 
			     
			        <input type="submit" name="button2" id="button2" value="ͬ������Э������ύ" onClick="return check(form1)"/> 
			      </td>
			  </tr>
			  
  <tr>
    <td height="30" colspan="4" align="left"> &nbsp;&nbsp;  
       <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea name="textarea" id="textarea" cols="60" rows="12"> ��ֻ�������������������з���������ܼ���ע�᣺
    
        һ������˵��
    
        1��ע���ʸ�
    
    ��������վ���߷���ƽ̨�����ܹ����з���Լ������Լ����ҵ�����ʹ�ã��������������ʮ����������ϡ������ṩ������ʱ��������
    ֹ�ʸ�ı�վ��Ա����վ������ֹ��Աʹ�õ�Ȩ����
    
    ����2�����������Э���޸�
    
    �����û�ʹ�ñ���վ���ṩ���񣬼���ʾ�û����ܱ���վȫ�������������վ��Ȩ�ڱ�Ҫʱ�޸ķ��������������һ�������䶯������
    �ڻ�Աҳ������ʾ�޸����ݡ��������ͬ�����Ķ������ݣ���Ա��������ȡ����õ�������񣬲���������ʽ����֤������ݵĴ�����ż���
    ֪ͨ���ǡ�������������������������Ϊ���ܷ�������ı䶯�����Ǳ����޸Ļ��жϷ��������֪ͨ��Ա��Ȩ�����Ҳ���Ի�Ա�����
    ������
    
    ����3����Ա���ɷ���
    
    �������˻���ҵע�����ͨ��Աʹ�ñ���վ����ŵ����ط�����ȫ��ѣ�
    ��������վ�������޸�����֪ͨ������ȡ"�������"��Ȩ����������н��ס�����վ��ȡ�г������Ӵ�����վ������������������Ӧ��
    ˰�����Լ�һ��Ӳ���������������������ķ��þ������Լ�����֧����
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

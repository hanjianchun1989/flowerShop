// JavaScript Document		 
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
			
			function clearMail(){
				var checkMail = document.getElementById("checkMail");
				checkMail.style.color="black";
				checkMail.innerHTML="*请输入正确的邮箱地址!";
			}
			
		function check(form){
			if (form.address.value==""){
				alert("请填写地址!");form.pwd1.focus();return false;
			}
			if (form.postcode.value==""){
				alert("请填写邮编!");form.pwd1.focus();return false;
			}
			if (form.phone.value==""){
				alert("请填写手机！");form.pwd1.focus();return false;
			}
			if (form.birthday.value==""){
				alert("请选择生日日期!");form.pwd1.focus();return false;
			}
			if (form.pwd1.value==""){
				alert("请选填写密码!");form.pwd1.focus();return false;
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
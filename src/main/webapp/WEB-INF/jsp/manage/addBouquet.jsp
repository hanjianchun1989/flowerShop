<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/form.css">
<c:if test="${!empty msg}">
<script type="text/javascript">
	alert("${msg}");
</script>
</c:if>
<script type="text/javascript">
	function previewImage(file)
	{
	  var MAXWIDTH  = 106;
	  var MAXHEIGHT = 106;
	  var div = document.getElementById('preview');
	  if (file.files && file.files[0])
	  {
	  	div.innerHTML = '<img id=imghead>';
	  	var img = document.getElementById('imghead');
	  	img.onload = function(){
	  	  var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
	  	  img.width = rect.width;
	  	  img.height = rect.height;
	  	  img.style.marginLeft = rect.left+'px';
	  	  img.style.marginTop = rect.top+'px';
	  	}
	  	var reader = new FileReader();
	  	reader.onload = function(evt){img.src = evt.target.result;}
	  	reader.readAsDataURL(file.files[0]);
	  }
	  else
	  {
	    var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
	    file.select();
	    var src = document.selection.createRange().text;
	    div.innerHTML = '<img id=imghead>';
	    var img = document.getElementById('imghead');
	    img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
	    var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
	    status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
	    div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;margin-left:"+rect.left+"px;"+sFilter+src+"\"'></div>";
	  }
	}
	function clacImgZoomParam( maxWidth, maxHeight, width, height ){
		var param = {top:0, left:0, width:width, height:height};
		if( width>maxWidth || height>maxHeight )
		{
			rateWidth = width / maxWidth;
			rateHeight = height / maxHeight;
			
			if( rateWidth > rateHeight )
			{
				param.width =  maxWidth;
				param.height = Math.round(height / rateWidth);
			}else
			{
				param.width = Math.round(width / rateHeight);
				param.height = maxHeight;
			}
		}
		
		param.left = Math.round((maxWidth - param.width) / 2);
		param.top = Math.round((maxHeight - param.height) / 2);
		return param;
	}
	</script>
</head>
<body>
	<div align="center">
		<h2>鲜花发布</h2>
		<form name="myform"
			action="${pageContext.request.contextPath}/addBouquet" method="post"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td align="right">名称：</td>
					<td align="left"><input type="text" name="name" value="${bouquet.name}"></td>
				</tr>
				<tr>
					<td align="right">价格：</td>
					<td align="left"><input type="text" name="price" value="${bouquet.price}">（元）</td>
				</tr>
				<tr>
					<td align="right">花语：</td>
					<td align="left"><input type="text" name="meanings" value="${bouquet.meanings}"></td>
				</tr>
				<tr>
					<td align="right">分类：</td>
					<td align="left"><input type="checkbox" name="type" value="2"
						checked>爱情 <input type="checkbox" name="type" value="3">生日
						<input type="checkbox" name="type" value="5">新年 <input
						type="checkbox" name="type" value="7">家庭 <input
						type="checkbox" name="type" value="11">亲情 <input
						type="checkbox" name="type" value="13">道歉 <input
						type="checkbox" name="type" value="17">开业 <input
						type="checkbox" name="type" value="19">会议</td>
				</tr>
				<tr>
					<td align="right">花材：</td>
					<td align="left"><input type="checkbox" name="material"
						value="2" checked>玫瑰 <input type="checkbox"
						name="material" value="3">百合 <input type="checkbox"
						name="material" value="5">郁金香 <input type="checkbox"
						name="material" value="7">康乃馨 <input type="checkbox"
						name="material" value="11">太阳花 <input type="checkbox"
						name="material" value="13">勿忘勿</td>
				</tr>
				<tr>
					<td align="right">图片:</td>
					<td align="left">
						<div id="preview">
							<img id="imghead" border=0 src='images/null2.jpg'>
						</div> <input type="file" name="pictureFile"
						onchange="previewImage(this)">
					</td>
				</tr>
				<tr>
					<td align="right">&nbsp;</td>
					<td align="right"><input type="submit" name="submit"
						value="发布" width="50px"></td>
				</tr>
			</table>

		</form>
	</div>
</body>
</html>
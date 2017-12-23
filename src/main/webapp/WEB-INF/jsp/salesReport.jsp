<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script type="text/javascript">
	function jump(obj){
		switch(obj){
			case 1:
				document.getElementById("iframe").src="LineChart";
				break;
			case 2:
				document.getElementById("iframe").src="PieChart";
				break;
			case 3:
				document.getElementById("iframe").src="BarChart";
				break;
		}
	}
</script>
<style type="text/css">
	#center{
		width: 100%;
		height:1000px;
	}
	
#navigation {
	font-family:Arial;
}
#navigation ul {
	list-style-type:none;				/* 不显示项目符号 */
	margin:0px;
	padding:0px;
}
#navigation li {
	float:left;							/* 水平显示各个项目 */
}
#navigation li a{
	display:block;						/* 区块显示 */
	padding:3px 6px 3px 6px;
	text-decoration:none;
	border:1px solid #711515;
	margin:1px;
}
#navigation li a:link, #navigation li a:visited{
	background-color:#c11136;
	color:#FFFFFF;
}
#navigation li a:hover{					/* 鼠标经过时 */
	background-color:#990020;			/* 改变背景色 */
	color:#ffff00;						/* 改变文字颜色 */
}
	
</style>
<ul id=navigation>
	<li><a href="javascript:void(0)" onclick="jump(1)">销售走势折线图</a></li>
	<li><a href="javascript:void(0)" onclick="jump(2)">各个价位鲜花销售总额分布饼图</a></li>
	<li><a href="javascript:void(0)" onclick="jump(3)">各种类鲜花销售总额统计柱状图</a></li>	
</ul>
<div id="center">
<iframe id="iframe" width="100%" height="100%" frameborder="0" src="PieChart" scrolling="auto"></iframe>
</div>
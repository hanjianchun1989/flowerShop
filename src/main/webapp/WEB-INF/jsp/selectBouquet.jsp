<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<link rel="stylesheet" type="text/css" href="css/lrtk.css" />
<script type="text/javascript" src="js/jquery-1.3.1.js"></script>
<script type="text/javascript">
    $(function () {
        //选中filter下的所有a标签，为其添加hover方法，该方法有两个参数，分别是鼠标移上和移开所执行的函数。
        $("#filter a").hover(
            function () {
                $(this).addClass("seling");
            },
            function () {
                $(this).removeClass("seling");
            }
        );


        //选中filter下所有的dt标签，并且为dt标签后面的第一个dd标签下的a标签添加样式seled。(感叹jquery的强大)
        $("#filter dt+dd a").attr("class", "seled"); /*注意：这儿应该是设置(attr)样式，而不是添加样式(addClass)，
                                                      不然后面通过$("#filter a[class='seled']")访问不到class样式为seled的a标签。*/       

        //为filter下的所有a标签添加单击事件
        $("#filter a").click(function () {
            $(this).parents("dl").children("dd").each(function () {
				//下面三种方式效果相同（第三种写法的内部就是调用了find()函数，所以，第二、三种方法是等价的。）
                //$(this).children("div").children("a").removeClass("seled");
				//$(this).find("a").removeClass("seled");
				$('a',this).removeClass("seled");
            });

            $(this).attr("class", "seled");

            document.getElementById("iframe").src=RetSelecteds();
        });
        document.getElementById("iframe").src=RetSelecteds();
    });

    function RetSelecteds() {
        var result = "selectedBouquet.jsp?conditions=";
        $("#filter a[class='seled']").each(function () {
            result += $(this).html()+"_";
        });
        return result;
    }
</script>


<!-- 代码 开始 -->
	<div id="filter">
        <dl>
            <dt>用途：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>爱情</a></div></dd>
            <dd><div><a>生日</a></div></dd>
            <dd><div><a>新年</a></div></dd>
            <dd><div><a>家庭</a></div></dd>
            <dd><div><a>亲情</a></div></dd>
            <dd><div><a>道歉</a></div></dd>
            <dd><div><a>开业</a></div></dd>
            <dd><div><a>会议</a></div></dd>
        </dl>
        <dl>
            <dt>价格：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>100~200</a></div></dd>
            <dd><div><a>200~300</a></div></dd>
            <dd><div><a>300~400</a></div></dd>
            <dd><div><a>400~500</a></div></dd>
            <dd><div><a>500~600</a></div></dd>
            <dd><div><a>600~700</a></div></dd>
            <dd><div><a>700以上</a></div></dd>       
        </dl>
        <dl>
            <dt>花材：</dt>
            <dd><div><a>全部</a></div></dd>
            <dd><div><a>玫瑰</a></div></dd>
            <dd><div><a>百合</a></div></dd>
            <dd><div><a>郁金香</a></div></dd>
            <dd><div><a>康乃馨</a></div></dd>
            <dd><div><a>太阳花</a></div></dd>
            <dd><div><a>勿忘我</a></div></dd>
        </dl>        
    </div>
	<iframe id="iframe" width="100%" height="100%" frameborder="0" scrolling="auto"></iframe>
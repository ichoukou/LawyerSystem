<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>律师事务所</title>
<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
<link rel="stylesheet" type="text/css" href="../css/lisw.css"/>

<link rel="stylesheet" type="text/css" href="../css/jquery.slider.css" />
<s:set name="video_address" value="address" scope="page"/>
<%
   String address = (String)pageContext.getAttribute("video_address");
	String video_path = basePath+"video/"+address;
 %>
 <script src="../Scripts/swfobject.js" type="text/javascript"></script>
</head>
<body>


<!--右悬浮-->
<script type="text/javascript" src="../css/jquery-1.8.1.min.js"></script>

<script type="text/javascript" src="../css/jquery.slider.min.js"></script>
<script type="text/javascript" src="../css/jquery.nicescroll.js"></script>
<script type="text/javascript" src="../css/jquery.zoomImgRollover.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $(".testimg").zoomImgRollover();
});
</script>
<script type="text/javascript">
$(document).ready(function($){
  var $width=window.screen.width;
  var $height;
  
 if ($.browser.msie && $.browser.version <= 6.0) {
  $height=700;
}else{
	
 if($width>=1440){
  $height=document.documentElement.clientHeight;
  }else{
	  $height=700;
	  }
}
	$(".slider").slideshow({
		width      : $width,
		height     : $height,
		transition : ['explode', 'square','Rain','squareRandom']
		//transition:'explode/square'
	});
});
</script>

<div class="flash theme-default" >
    
	<div class="slider">
		<div><img src="../image/s1.jpg" alt="" width="100%" height="100%"/></div>
		<div><img src="../image/s2.jpg" alt="" width="100%" height="100%"/></div>
        <div><img src="../image/s3.jpg" alt="" width="100%" height="100%"/></div>
	</div> 
</div>



  <div class="headtopnb"> 
  <div class="zsp1"><img src="../image/guaj.jpg" /></div>
  <div class="zsp2"><img src="../image/guaj2.jpg" /></div>
<div class="menuw">
  <div class="logo left"><img src="../image/logo.jpg" /></a></div>
  <div class="menulist left">
  <a href="../index.html">网站首页</a>
  <a href="qyjj.html" >关于我们</a>
  <a href="example.html" >成功案例</a>
  <a href="list.html" class="on">视频资料</a>
  <a href="order.html" >事务预约</a>
  <a href="cansulation.html" >法律咨询</a>
  <a href="contact.html">联系我们</a>
  <a href="../login.jsp" target="_blank">管理系统</a>
 <div class="clear"></div> 
<div class="clear"></div>
</div>  

  </div>

<script language="javascript">
$(document).ready(function(){
 $(".gpic").mouseover(function(){
	 $(".gpw").slideDown();

	 }).mouseleave(function(){
	 $(".gpw").slideUp();	 
	 })
	
	})

</script>



<div id="counter2">
   <div class="counter">
<script language="javascript">
$(document).ready(function(){
	$(".gstelist a").mouseover(function(){
		$(this).stop().animate({paddingLeft:5},500)
		}).mouseout(function(){
		$(this).stop().animate({paddingLeft:0},500)	
			})
	})
</script>

<div class="new_left left">
<div class="wentel mbot">类别</div>
<div class="gstelist">
<a href="qyjj.html"><font>·</font>关于我们</a>
<a href="order.html"><font>·</font>事务预约</a>
<a href="cansulation.html"><font>·</font>法律咨询</a>
</div>

<div class="wentel mbot top10">联系我们</div>
 <div class="lxwmimg"><img src="../image/lxwm.jpg" /></div>
 <div class="lxadr">
<p>
<font>地址：</font>
江苏省无锡市滨湖区
</p>
<p>
<font>电话：</font>
4234563
</p>
<p>
<font>手机：</font>
13608197694
</p>
<p>
<font>邮箱：</font>
</p>
<p>
<font>联系人：</font>

</p>
</div>


</div>
<div class="new_right left">



<div class="casetelgsjs"><p>&nbsp;</p></div>
<div  id="CuPlayer" align="center"/>




</div>
<script src="../js/jquery.nicescroll.js"></script>
<script>
$(".newcontext").niceScroll({  
cursorcolor:"#08699a",  
cursoropacitymax:1,  
touchbehavior:true,  
cursorwidth:"5px",  
cursorborder:"0",  
cursorborderradius:"5px"  
}); 
</script>


<script type="text/javascript">
var so = new SWFObject("CuPlayerMiniV4.swf","CuPlayerV4","600","410","9","#000000");
so.addParam("allowfullscreen","true");
so.addParam("allowscriptaccess","always");
so.addParam("wmode","opaque");
so.addParam("quality","high");
so.addParam("salign","lt");
so.addVariable("CuPlayerSetFile","CuPlayerSetFile.xml"); //播放器配置文件地址,例SetFile.xml、SetFile.asp、SetFile.php、SetFile.aspx
so.addVariable("CuPlayerFile","<%=video_path%>"); //视频文件地址
so.addVariable("CuPlayerImage","../image/start.jpg");//视频略缩图,本图片文件必须正确
so.addVariable("CuPlayerWidth","600"); //视频宽度
so.addVariable("CuPlayerHeight","410"); //视频高度
so.addVariable("CuPlayerAutoPlay","no"); //是否自动播放
so.write("CuPlayer");
</script>


</div>

</div>

<div class="clear"></div>

</div>
</div>



<script language="javascript">
$(document).ready(function(){
 $(".dbfx a").mouseover(function(){
    $(this).children(".img").stop().animate({marginTop:"0px"},300)
	}).mouseleave(function(){
   $(this).children(".img").stop().animate({marginTop:"-33px"},300)
	 })
	
	})

</script>

<div class="dblist">
 <div class="opty">
 <div class="dbfx"></div>      
</div>

</body>
</html>

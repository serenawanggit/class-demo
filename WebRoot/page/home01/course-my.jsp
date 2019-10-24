<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>全部分类</title>
	
	<style type="text/css">
	.course-img{float: left;width: 60px;height: 60px;border-radius: 100%;}
	.layadmin-caller{padding-top:15px;}
	.layadmin-caller .caller-contar .caller-item{padding:6px 0;overflow: hidden;border-bottom: 1px solid #e0e0e0;}
	.layadmin-caller .caller-contar .caller-item .caller-main p:first-child{padding-top:8px;}
	.lesson_div_top{
		position: relative;
	    padding-bottom: 36%;
	    padding-top:10px;
	    color: white;
	    background-repeat: no-repeat;
	    background-position: center center;
	    background-size: cover;
	    background-image: url(../image/agency-top.jpg);}
	.lesson_div_top .user_div{
		position: absolute;
		left: 45%;
	    right: 0;
	    top: 45%;
	}
	</style>
	
</head>
<body>
 <div class="page-container" id="page-container">
   <div class="lesson_div_top">
   	  <h2 style="text-align:center;">我的订单/课程</h2>
   	  <div class="user_div">
      	<img src="${pageContext.request.contextPath}/image/default_avatar.jpg" alt="" class="course-img"><br><br><br>
      	<b style="margin-top:10px;">欢迎回来！</b>
   	  </div>
   </div>
   <div class="layadmin-caller">
      <div class="caller-contar">
        <div class="caller-item" id="course-0">
          <img src="${pageContext.request.contextPath}/image/351.jpg" class="course-img">
          <div class="caller-main caller-fl" style="float:left;width:50%;">       
            <p><a href="${pageContext.request.contextPath}/page/myCourse/video_view.jsp">简单有效的科学唱歌方法12</a></p>
            <b style="color:red;font-size:16px;">￥79</b>
          </div>
          <div style="width:10%;height:30px;float:right;">
          	<button class="layui-btn layui-btn-primary layui-btn-xs" onclick="del(0)"><i class="layui-icon">&#xe640;</i></button>
          </div>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/image/351.jpg" alt="" class="course-img">
          <div class="caller-main caller-fl" style="float:left;width:50%;">       
            <p><a href="${pageContext.request.contextPath}/page/myCourse/video_view.jsp">简单有效的科学唱歌方法</a></p>
            <b style="color:red;font-size:16px;">￥79</b>
          </div>
          <div style="width:10%;height:30px;float:right;"><button class="layui-btn layui-btn-primary layui-btn-xs"><i class="layui-icon">&#xe640;</i></button></div>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/image/351.jpg" alt="" class="course-img">
          <div class="caller-main caller-fl" style="float:left;width:50%;">       
            <p><a href="${pageContext.request.contextPath}/page/myCourse/video_view.jsp">简单有效的科学唱歌方法</a></p>
            <b style="color:red;font-size:16px;">￥79</b>
          </div>
          <div style="width:10%;height:30px;float:right;"><button class="layui-btn layui-btn-primary layui-btn-xs"><i class="layui-icon">&#xe640;</i></button></div>
        </div>
      </div>
    </div>
    
    <script type="text/javascript">
    	function toVideo(){
    		window.parent.frames.location.href = "${pageContext.request.contextPath}/page/myCourse/video_view.jsp";
    	}
    </script>
    


	
	<script type="text/javascript">
		function del(data){
			layer.open({
			  content: '确定删除该课程吗？'
			  ,btn: ['确定', '取消']
			  ,yes: function(index, layero){
				$("#course-"+data).remove();
			    layer.close(index);
			  }
			});
		}
	</script>
     
  </body>
</html>

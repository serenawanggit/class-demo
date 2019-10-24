<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no">
<meta name="full-screen" content="yes">
<meta name="browsermode" content="application">
<meta name="x5-orientation" content="portrait">
<meta name="x5-fullscreen" content="true">
<meta name="x5-page-mode" content="app">
<title>题库</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index-v=3.2.0.css" />
<style type="text/css">
/* body{background-color: #fff;}  */
.content{padding:25px;}
.content div{height:40px;line-height:40px;}
.content .question{font-weight:bold;font-size:16px;}
.layui-form div{padding-left:10px;}
.content .layui-btn-fluid{margin-top:15px;}
.button_div{margin:10px 10px;}
#page-container{background-color: #fff;height:100%;}
#result{padding:25px;}
#result div{ margin:5px; width:30px; height:35px; float:left; line-height:30px; text-align:center; font-weight:blod; font-size:16px; }
</style>
</head>
<body>
	<div class="page-container" id="page-container">
		<form class="layui-form" lay-filter="component-form-group">
			<div class="content" id="question">
			</div>
			<div id="result">
				<h2 style="text-align:center;">结果</h2>
			</div>
			<div class="button_div"><button type="button" class="layui-btn layui-btn-fluid" id="next">下一题</button></div>
			<div class="button_div"><button type="button" class="layui-btn layui-btn-fluid" id="submit">提交</button></div>
			<input type="hidden" id="questionNum">
		</form>
		
		<script>
			layui.use('form', function(){
			  	var form = layui.form;
				var questionArr;
			  	form.render(null, 'component-form-group');
				$("#result").hide();
			  	$("#submit").hide();
			  	$("#next").show();
			  	$.ajax({
			      	type:"POST",
			      	url:"${pageContext.request.contextPath }/course/queryCourseQuestion",
			      	data:{ courseId: 7},
			      	dataType: "json",
			      	success: function(msg){
			      		questionArr = msg.data;
			      		var arr = ['A','B','C','D','E','F','G','H'];
						var option = questionArr[0].options.split(";");
						var str = "<div class='question'>一 . "+questionArr[0].problem+"</div>";
						$.each(option, function(i, dom){
							str += "<div><input type='radio' name='answer' value="+dom+" title='"+arr[i]+"."+dom+"'></div>";
						});
						$("#question").html(str);
						form.render();
		      			$("#questionNum").val("1");
			      	}
		      	});
			  
			  	$("#next").click(function(){
			  		var arr = ['A','B','C','D','E','F','G','H'], arr_ch = ['1','2','3','4','5','6','7','8','9','10'];
			  		var checkAnswer = $("input[name='answer']:checked").val();
			  		if($.trim(questionArr[parseInt($("#questionNum").val())-1].answer) == $.trim(checkAnswer)){
			  			$("#result").append("<div style='background-color:#00FF0F;'>"+arr_ch[parseInt($("#questionNum").val())-1]+"<div>");
			  		}else{
			  			$("#result").append("<div style='background-color:#FF0023;'>"+arr_ch[parseInt($("#questionNum").val())-1]+"<div>");
			  		}
			  	
			  		if(parseInt($("#questionNum").val())==questionArr.length-1){
			  			$("#next").hide();
			  			$("#submit").show();
			  		}
					var option = questionArr[parseInt($("#questionNum").val())].options.split(";");
					var str = "<div class='question'>"+arr_ch[parseInt($("#questionNum").val())]+" . "+questionArr[parseInt($("#questionNum").val())].problem+"</div>";
					$.each(option, function(i, dom){
						str += "<div><input type='radio' name='answer' value="+dom+" title='"+arr[i]+"."+dom+"'></div>";
					});
					$("#question").html(str);
					form.render();
					$("#questionNum").val(parseInt($("#questionNum").val())+1);
			  	});
			  	
			  	$("#submit").click(function(){
			  		if($.trim($(this).text()) == $.trim("确定")){
				  		var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						parent.layer.close(index);
// 			  			location.href = "${pageContext.request.contextPath}/page/course-my.jsp";
			  		}else{
				  		var arr_ch = ['1','2','3','4','5','6','7','8','9','10'];
				  		var checkAnswer = $("input[name='answer']:checked").val();
				  		if($.trim(questionArr[questionArr.length-1].answer) == $.trim(checkAnswer)){
				  			$("#result").append("<div style='background-color:#00FF0F;'>"+arr_ch[questionArr.length-1]+"<div>");
				  		}else{
				  			$("#result").append("<div style='background-color:#FF0023;'>"+arr_ch[questionArr.length-1]+"<div>");
				  		}
				  		$("#result").show();
				  		$("#question").hide();
				  		$(this).text("确定");
// 				  		$(this).hide();
			  		}
			  	});
			  
			});
		</script>
	</div>
</body>
</html>

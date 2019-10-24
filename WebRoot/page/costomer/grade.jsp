<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学习平台</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  	
<!--   	<script type="text/html" id="toolbarDemo"> -->
<!--   		<div class="layui-btn-container"> -->
<!-- 	    	<button class="layui-btn layui-btn-sm" lay-event="add"><i class="layui-icon">&#xe654;</i></button> -->
<!-- 	    	<button class="layui-btn layui-btn-sm" lay-event="delete"><i class="layui-icon">&#xe640;</i></button> -->
<!--   		</div> -->
<!-- 	</script> -->
  	
  	<div class="layui-col-md12">
    	<div class="layui-card">
          	<div class="layui-card-body">
          		<table id="demo" lay-filter="test" ></table>
          	</div>
       	</div>
    </div>
    
    <script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">禁用</a>
	</script>
          
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use(['table','form'], function(){
		  	var table = layui.table, form = layui.form;
		  
		  	//第一个实例
		  	table.render({
			    elem: '#demo'
			    ,id: "roleTableId"
			    ,height: 450
			    ,url: '${pageContext.request.contextPath }/grade/queryGrade' //数据接口
			    ,page: true //开启分页
			    ,cols: [[{checkbox: true}
			      	,{field: 'id', title: 'ID', width:120, sort: true}
			      	,{field: 'courseName', title: '课程名称', edit: true}
			      	,{field: 'costomerName', title: '客户名称', edit: true}
			      	,{field: 'score', title: '分数', edit: false}
			    ]]
			    ,toolbar: '#toolbarDemo'
		  	});
		  	
		  	/* table.on('edit(test)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
				$.ajax({
			      	type:"POST",
			      	url:"${pageContext.request.contextPath }/course/updateCourseByIdToEdit",
			      	data:{ value : obj.value.trim(), field : obj.field , id : obj.data.id},
			      	dataType: "json",
			      	success: function(msg){
			      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourse" });
	        			layer.close(index);
			      	}
		      	});
			});
			
			table.on('tool(test)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'del'){
			       $.ajax({
				      	type:"POST",
				      	url:"${pageContext.request.contextPath }/course/updateCourseByIdToEdit",
				      	data:{ isFlag : 1 , id : data.id},
				      	dataType: "json",
				      	success: function(msg){
				      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourse" });
				      	}
			       });
			    } else if(obj.event === 'edit'){
			    	$.ajax({
				      	type:"POST",
				      	url:"${pageContext.request.contextPath }/course/queryCourse",
				      	data:{ id : data.id},
				      	dataType: "json",
				      	success: function(msg){
				      		form.val("component-form-group", { "courseType": msg.data[0].courseTypeId });
// 					       	$('#courseType').val(msg.data[0].courseTypeId);
					       	$('#courseName').val(msg.data[0].name);
					       	$('#price').val(msg.data[0].price);
					       	$('#isFlag').val(msg.data[0].isFlag);
					       	$('#imageValue').val(msg.data[0].image);
					       	$('#videoValue').val(msg.data[0].video);
					       	$('#test10').html("<img src='"+basePath+"/uploadFiles/"+msg.data[0].image+"' style='width:200px;height:100px;'>");
					       	$('#test8').html(msg.data[0].video);
				    	   	layer.open({ type: 1, title:"修改课程", closeBtn: false, shift: 2, 
				    	   		area: ['450px', '540px'], shadeClose: true, content: $('#add-main')
					       	});
				      	}
			       });
			    }
			});
		  	
		  	//头部监听事件
		  	table.on('toolbar(test)', function(obj){
			  	var checkStatus = table.checkStatus(obj.config.id);
			  	switch(obj.event){
				    case 'add':
// 				    	$("#courseName").val(" ");
				    	layer.open({ type: 1, title:"添加课程", closeBtn: false, shift: 2, 
				    		area: ['450px', '540px'], shadeClose: true, content: $('#add-main')
				      	});
				    break;
				    case 'delete':
				    	layer.confirm('确定删除？', {
						  	btn: ['确定', '取消'] //可以无限个按钮
						}, function(index, layero){
							var checkStatus = table.checkStatus('roleTableId'), data = checkStatus.data;
					    	var idArr = [];
					    	$.each(data, function(i,dom){
					    		idArr.push(dom.id);
					    	});
						    var ids = JSON.stringify(idArr);
						    ids = ids.replace("[","").replace("]","");
					      	$.ajax({
						      	type:"POST",
						      	url:"${pageContext.request.contextPath }/course/delCourseById",
						      	data:{ids: ids},
						      	dataType: "json",
						      	success: function(msg){
						      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourse" });
				        			layer.close(index);
						      	}
					      	});
							layer.close(index);
						});
				    break;
			  	};
			}); */
			
			
			
		});
	</script>
	
  </body>
</html>

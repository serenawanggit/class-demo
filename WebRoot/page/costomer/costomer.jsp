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
  	
  	<script type="text/html" id="toolbarDemo">
  		<div class="layui-btn-container">
	    	<button class="layui-btn layui-btn-sm" lay-event="add"><i class="layui-icon">&#xe654;</i></button>
	    	<button class="layui-btn layui-btn-sm" lay-event="delete"><i class="layui-icon">&#xe640;</i></button>
  		</div>
	</script>
  	
  	<div class="layui-col-md12">
    	<div class="layui-card">
          	<div class="layui-card-body">
          		<!-- <div class="layui-btn-group demoTable" style="margin-bottom:10px;" >
	                <button class="layui-btn layui-btn-sm" lay-event="add"><i class="layui-icon">&#xe654;</i></button>
	                <button class="layui-btn layui-btn-sm" lay-event="delete"><i class="layui-icon">&#xe640;</i></button>
				</div> -->
          		<table id="demo" lay-filter="test" ></table>
          	</div>
       	</div>
    </div>
    
    <script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	
	<!-- 添加弹窗 -->
	<div id="add-main" style="display: none;margin-top:20px;">
    	<div class="layui-form-item">
         	<label class="layui-form-label" style="width: 100px">客户名称</label>
         	<div class="layui-input-block"><input id="costomerNameVal" required style="width: 200px" lay-verify="required" class="layui-input"></div>
    	</div>
    	<div class="layui-form-item">
         	<label class="layui-form-label" style="width: 100px">客户密码</label>
         	<div class="layui-input-block"><input id="costomerPasswordVal" required style="width: 200px" lay-verify="required" class="layui-input"></div>
    	</div>
    	<div class="layui-form-item">
         	<label class="layui-form-label" style="width: 100px">手机号码</label>
         	<div class="layui-input-block"><input id="costomerPhoneVal" required style="width: 200px" lay-verify="required" class="layui-input"></div>
    	</div>
    </div>
          
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use('table', function(){
		  	var table = layui.table;
		  
		  	//第一个实例
		  	table.render({
			    elem: '#demo'
			    ,id: "costomerTableId"
			    ,height: 450
			    ,url: '${pageContext.request.contextPath }/costomer/query' //数据接口
			    ,page: true //开启分页
			    ,cols: [[{checkbox: true}
			      ,{field: 'id', title: '客户ID', width:120}
			      ,{field: 'name', title: '客户名称' , edit: true}
			      ,{field: 'password', title: '客户密码', edit: true}
			      ,{field: 'phone', title: '客户号码', edit: true}
			    ]]
			    ,toolbar: '#toolbarDemo'
		  	});
		  	
		  	table.on('edit(test)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
				$.ajax({
			      	type:"POST",																	
			      	url:"${pageContext.request.contextPath }/costomer/updateCostomerById",
			      	data:{ value : obj.value.trim(), field : obj.field , id : obj.data.id},
			      	dataType: "json",
			      	success: function(msg){
			      		table.reload('costomerTableId', { url: '/class-demo/costomer/query' });
	        			layer.close(index);
			      	}
		      	});
			});
		  	
		  	//头部监听事件
		  	table.on('toolbar(test)', function(obj){
			  	var checkStatus = table.checkStatus(obj.config.id);
			  	switch(obj.event){
				    case 'add':
				    	$("#costomerNameVal").val(" ");
				    	layer.open({
				    		btn:['提交','取消'], type: 1, title:"添加客户", closeBtn: false,
					        shift: 2, area: ['400px', '500px'], shadeClose: true, content: $("#add-main"),
					        success: function(layero, index){},
					        yes:function(index){
					        	var name = $("#costomerNameVal").val();
					        	var password = $("#costomerPasswordVal").val();
					        	var phone = $("#costomerPhoneVal").val();
					        	if(name==null || name==""&&password==null || password==""&&phone==null||phone==""){
					        		layer.msg("请填写正确的信息！");
					        	}else{
					        		$.ajax({
								      	type:"POST",
								      	url:"${pageContext.request.contextPath }/costomer/addCostomer",
								      	data:{name:name.trim(),password:password.trim(),phone:phone.trim()},
								      	dataType: "json",
								      	success: function(msg){
								      		table.reload('costomerTableId', { url: '/class-demo/costomer/query' });
						        			layer.close(index);
								      	}
							      	});
					        	}
					        }
				      	});
				    break;
				    case 'delete':
				    	layer.confirm('确定删除？', {
						  	btn: ['确定', '取消'] //可以无限个按钮
						}, function(index, layero){
							var checkStatus = table.checkStatus('costomerTableId'), data = checkStatus.data;
					    	var idArr = [];
					    	$.each(data, function(i,dom){
					    		idArr.push(dom.id);
					    	});
						    var ids = JSON.stringify(idArr);
						    ids = ids.replace("[","").replace("]","");
					      	$.ajax({
						      	type:"POST",
						      	url:"${pageContext.request.contextPath }/costomer/delCostomerById",
						      	data:{ids: ids},
						      	dataType: "json",
						      	success: function(msg){
						      		table.reload('costomerTableId', { url: '/class-demo/costomer/query' });
				        			layer.close(index);
						      	}
					      	});
							layer.close(index);
						});
				    break;
			  	};
			});
			
			
			
		  
		});
	</script>
	
  </body>
</html>

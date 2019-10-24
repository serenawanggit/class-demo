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
	</script>
	
	<!-- 添加弹窗 -->
	<div id="add-main" style="display: none;margin-top:20px;">
    	<div class="layui-card">
	      <div class="layui-card-body" style="padding: 15px;" >
	  <form class="layui-form" lay-filter="component-form-group" id="addCourseForm">
        <div class="layui-form-item">
          
          
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">课程列表名称</label>
          <div class="layui-input-block"><input name="name" id="name" lay-verify="title" autocomplete="off" style="width: 200px" placeholder="请输入" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">负责课程</label>
          <div class="layui-input-block" style="width: 200px">
          <select id="courseId" name="courseId" lay-filter="courseId">
              <option value="">--请选择--</option>
            </select>
          </div>
        </div>
    	<input type="hidden" id="id" name="id">
      </form>
      </div>
      </div>
    </div>
          
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
		<script>
		//Demo
		layui.use('form', function(){
		  var form = layui.form;
		  form.render(null, 'component-form-group');
		});
	</script>
	<script>
		layui.use(['table','form'], function(){
		  	var table = layui.table, form = layui.form;
		  
		  	var localObj = window.location; //�������˼�ǻ�ȡ��ǰҳ��ĵ�ַ
		    var protocol = location.protocol;// ��ȡhttp��https
		    var host = localObj.host;// ��ȡJSP��ַ��IP�Ͷ˿ں� //localhost:8080
		    var contextPath = localObj.pathname.split("/")[1];// ��ȡ��Ŀ��
		    var basePath = protocol +"//"+host+"/"+contextPath;
		  
		  	$.ajax({
		     	type:"POST",
		     	url: basePath + "/courselist/queryCourse",
		     	dataType: "json",
		     	success: function(msg){
		     		var data1 = msg.data;
		     		var str = "<option value='0'>--请选择--</option>";
		     		$.each(data1, function(i, dom){
		     			str += "<option value='"+dom.id+"'>"+dom.name+"</option>";
		     		});
		     		$("#courseId").html(str);
		     		form.render('select');
		     	}
		    });
		  	//第一个实例
		  	table.render({
			    elem: '#demo'
			    ,id: "courselistTableId"
			    ,height: 450
			    ,url: '${pageContext.request.contextPath }/courselist/query' //数据接口
			    ,page: true //开启分页
			    ,cols: [[{checkbox: true}
			      ,{field: 'id', title: '课程ID', width:120}
			      ,{field: 'name', title: '课程列表名称'}
			      ,{field: 'course', title: '课程'}
			       ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
			    ]]
			    ,toolbar: '#toolbarDemo'
		  	});
		  	//头部监听事件
		  	 table.on('tool(test)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'edit'){
			    	$.ajax({
				      	type:"POST",
				      	url:"${pageContext.request.contextPath }/courselist/query",
				      	data:{ id : data.id},
				      	dataType: "json",
				      	success: function(msg){
				      	form.val("component-form-group", { "courseId": msg.data[0].courseId});
				        	$("#name").val(msg.data[0].name);
				        	$("#id").val(msg.data[0].id);
					       	layer.open({ btn:['提交','取消'], type: 1, title:"修改课程列表", closeBtn: false,
						        shift: 2, area: ['400px', '450px'], shadeClose: true, content: $("#add-main"),
						        success: function(layero, index){},
						        yes:function(index){
						       	    var id = $("#id").val();
						        	var courseId = $("#courseId").val();
						        	var name = $("#name").val();
						        	if(name==null || name==""){
						        		layer.msg("请填写正确的信息！");
						        	}else{
						        		$.ajax({
									      	type:"POST",
									      	url:"${pageContext.request.contextPath }/courselist/updateCourseById",
									      	data:{name:name,courseId:courseId,id:id},
									      	dataType: "json",
									      	success: function(msg){
									      		table.reload('courselistTableId', 
									      			{ url: "${pageContext.request.contextPath }/courselist/query" });
							        			layer.close(index);
									      	}
								      	});
						        	}
						        }
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
				    	$("#addCourseForm")[0].reset();
                        layui.form.render();
 				    	layer.open({
				    		btn:['提交','取消'], type: 1, title:"课程列表", closeBtn: false,
					        shift: 2, area: ['400px', '450px'], shadeClose: true, content: $("#add-main"),
					        success: function(layero, index){},
					        yes:function(index){
					        	var name = $("#name").val();
					        	var courseId = $("#courseId").val();
					        	if(name==null || name==""){
					        		layer.msg("请填正确的信息！");
					        	}else{
					        		$.ajax({
								      	type:"POST",
								      	url:"${pageContext.request.contextPath }/courselist/addCourse",
								      	data:{name:name,courseId:courseId},
								      	dataType: "json",
								      	success: function(msg){
								      		table.reload('courselistTableId', 
								      			{ url: "${pageContext.request.contextPath }/courselist/query" });
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
							var checkStatus = table.checkStatus('courselistTableId'), data = checkStatus.data;
					    	var idArr = [];
					    	$.each(data, function(i,dom){
					    		idArr.push(dom.id);
					    	});
						    var ids = JSON.stringify(idArr);
						    ids = ids.replace("[","").replace("]","");
					      	$.ajax({
						      	type:"POST",
						      	url:"${pageContext.request.contextPath }/courselist/delCourseById",
						      	data:{ids: ids},
						      	dataType: "json",
						      	success: function(msg){
						      		table.reload('courselistTableId', { url: '/class-demo/courselist/query' });
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

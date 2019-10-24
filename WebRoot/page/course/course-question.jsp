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
          		<table id="demo" lay-filter="test" ></table>
          	</div>
       	</div>
    </div>
    
    <script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">禁用</a>
	</script>
	
	<!-- 添加弹窗 -->
	<div id="add-main" style="display: none;margin-top:20px;">
    	<div class="layui-card">
	      <div class="layui-card-body" style="padding: 15px;" >
	  <form class="layui-form" lay-filter="component-form-group" id="addCourseForm">
        <div class="layui-form-item">
          <label class="layui-form-label">课程分类</label>
          <div class="layui-input-block" style="width: 200px">
            <select id="courseId" name="courseId" lay-filter="courseId">
              <option value=""></option>
            </select>
          </div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">问&nbsp;&nbsp;题 </label>
          <div class="layui-input-block"><input name="problem" id="problem" lay-verify="title" autocomplete="off" style="width: 200px" placeholder="请输入" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">选&nbsp;&nbsp;项 </label>
          <div class="layui-input-block"><input name="options" id="options" lay-verify="title" autocomplete="off" style="width: 200px" placeholder="请输入" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
          <label class="layui-form-label">答&nbsp;&nbsp;案 </label>
          <div class="layui-input-block"><input name="answer" id="answer" lay-verify="title" autocomplete="off" style="width: 200px" placeholder="请输入" class="layui-input"></div>
        </div>
    	<div class="layui-form-item">
         	<label class="layui-form-label">类&nbsp;&nbsp;型  </label>
         	<div class="layui-input-block">
         		<input type="radio" name="type" value="0" title="简答题" checked>
      			<input type="radio" name="type" value="1" title="单选题">
      			<input type="radio" name="type" value="2" title="多选题">
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
		     	url: basePath + "/course/queryCourse",
		     	dataType: "json",
		     	success: function(msg){
		     		var data1 = msg.data;
		     		var str = "<option value='0'>请选择</option>";
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
			    ,id: "roleTableId"
			    ,height: 450
			    ,url: '${pageContext.request.contextPath }/course/queryCourseQuestion' //数据接口
			    ,page: true //开启分页
			    ,cols: [[{checkbox: true}
			      	,{field: 'id', title: 'ID', width:120, sort: true}
			      	,{field: 'problem', title: '问题', edit: true}
			      	,{field: 'options', title: '选项', edit: true}
			      	,{field: 'answer', title: '答案', edit: true}
			      	,{field: 'course', title: '课程', edit: false}
			      	,{field: 'type', title: '类型', edit: false, templet: function(d){
			      		if(d.type=="0") return "简答题";
			      		else if(d.type=="1") return "单选题";
			      		else return "多选题";
				  	}}
				  	,{field: 'isFlag', title: '是否可用', edit: false, templet: function(d){
			      		if(d.type=="0") return "可用";
			      		else return "禁用";
				  	}}
				  	,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
			    ]]
			    ,toolbar: '#toolbarDemo'
		  	});
		  	
		  	table.on('edit(test)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
				$.ajax({
			      	type:"POST",
			      	url:"${pageContext.request.contextPath }/course/updateCourseQuestionByIdToEdit",
			      	data:{ value : obj.value.trim(), field : obj.field , id : obj.data.id},
			      	dataType: "json",
			      	success: function(msg){
			      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourseQuestion" });
	        			layer.close(index);
			      	}
		      	});
			});
			
			table.on('tool(test)', function(obj){
			    var data = obj.data;
			    if(obj.event === 'del'){
			       $.ajax({
				      	type:"POST",
				      	url:"${pageContext.request.contextPath }/course/updateCourseQuestionById",
				      	data:{ isFlag : 1 , id : data.id},
				      	dataType: "json",
				      	success: function(msg){
				      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourseQuestion" });
				      	}
			       });
			    } else if(obj.event === 'edit'){
			    	$.ajax({
				      	type:"POST",
				      	url:"${pageContext.request.contextPath }/course/queryCourseQuestion",
				      	data:{ id : data.id},
				      	dataType: "json",
				      	success: function(msg){
				      		form.val("component-form-group", { "courseId": msg.data[0].courseId, "type": msg.data[0].type});
				        	$("#problem").val(msg.data[0].problem);
				        	$("#options").val(msg.data[0].options);
				        	$("#answer").val(msg.data[0].answer);
				        	$("#id").val(msg.data[0].id);
					       	layer.open({ btn:['提交','取消'], type: 1, title:"添加课题", closeBtn: false,
						        shift: 2, area: ['400px', '450px'], shadeClose: true, content: $("#add-main"),
						        success: function(layero, index){},
						        yes:function(index){
						        	var id = $("#id").val();
						        	var courseId = $("#courseId").val();
						        	var problem = $("#problem").val();
						        	var options = $("#options").val();
						        	var answer = $("#answer").val();
						        	var type = $("input[name='type']:checked").val();
						        	if(problem==null || problem==""){
						        		layer.msg("请填写问题！");
						        	}else{
						        		$.ajax({
									      	type:"POST",
									      	url:"${pageContext.request.contextPath }/course/updateCourseQuestionById",
									      	data:{problem:problem, options:options, answer:answer, type:type, courseId:courseId, id:id},
									      	dataType: "json",
									      	success: function(msg){
									      		table.reload('roleTableId', 
									      			{ url: "${pageContext.request.contextPath }/course/queryCourseQuestion" });
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
				    		btn:['提交','取消'], type: 1, title:"添加课题", closeBtn: false,
					        shift: 2, area: ['400px', '450px'], shadeClose: true, content: $("#add-main"),
					        success: function(layero, index){},
					        yes:function(index){
					        	var courseId = $("#courseId").val();
					        	var problem = $("#problem").val();
					        	var options = $("#options").val();
					        	var answer = $("#answer").val();
					        	var type = $("input[name='type']:checked").val();
					        	if(problem==null || problem==""){
					        		layer.msg("请填写问题！");
					        	}else{
					        		$.ajax({
								      	type:"POST",
								      	url:"${pageContext.request.contextPath }/course/addCourseQuestion",
								      	data:{problem:problem, options:options, answer:answer, type:type, courseId:courseId},
								      	dataType: "json",
								      	success: function(msg){
								      		table.reload('roleTableId', 
								      			{ url: "${pageContext.request.contextPath }/course/queryCourseQuestion" });
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
							var checkStatus = table.checkStatus('roleTableId'), data = checkStatus.data;
					    	var idArr = [];
					    	$.each(data, function(i,dom){
					    		idArr.push(dom.id);
					    	});
						    var ids = JSON.stringify(idArr);
						    ids = ids.replace("[","").replace("]","");
					      	$.ajax({
						      	type:"POST",
						      	url:"${pageContext.request.contextPath }/course/delCourseQuestionById",
						      	data:{ids: ids},
						      	dataType: "json",
						      	success: function(msg){
						      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourseQuestion" });
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

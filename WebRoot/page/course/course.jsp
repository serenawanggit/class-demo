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
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/course-add.js"></script>
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
	        <form class="layui-form" lay-filter="component-form-group">
	          <div class="layui-form-item">
	            <label class="layui-form-label">课程分类</label>
	            <div class="layui-input-block">
	              <select id="courseType" name="courseType" lay-filter="courseType">
	                <option value=""></option>
	              </select>
	            </div>
	          </div>
	          <div class="layui-form-item">
	            <label class="layui-form-label">课程名称</label>
	            <div class="layui-input-block"><input name="courseName" id="courseName" lay-verify="title" autocomplete="off" placeholder="请输入" class="layui-input"></div>
	          </div>
	          <div class="layui-form-item">
	            <label class="layui-form-label">价格</label>
	            <div class="layui-input-block"><input name="" id="price" lay-verify="title" autocomplete="off" placeholder="请输入" class="layui-input"></div>
	          </div>
	          <div class="layui-form-item">
	            <label class="layui-form-label">封面图片</label>
	            <div class="layui-input-block">
	               <div id="test10"><div class="layui-upload-drag"><p>点击上传图片</p></div></div>
	            </div>
	          </div>
	          <div class="layui-form-item">
	            <label class="layui-form-label">课程视频</label>
	            <div class="layui-input-block">
	               <div class="layui-upload">
					  <div id="test8" style="white-space: nowrap;float:left;width:65%;height:29px;border:1px #E6E6E6 solid;line-height:29px;padding-left:5px;"><p>点击上传</p></div>
				  	  <button type="button" class="layui-btn layui-btn-primary layui-btn-sm" id="uploadVideo">开始上传</button>
				   </div>
	            </div>
	          </div>
	          <div class="layui-form-item">
	            <label class="layui-form-label">课程标签</label>
	            <div class="layui-input-block"><input name="courseRemark" id="courseRemark" lay-verify="title" autocomplete="off" placeholder="请输入" class="layui-input"></div>
	          </div>
	          <div class="layui-form-item">
	            <label class="layui-form-label">是否可用</label>
	            <div class="layui-input-block"><input type="checkbox" checked id="isFlag" value="0" lay-skin="switch" lay-filter="component-form-switchTest" lay-text="可用|禁用"></div>
	          </div>
	          <div class="layui-form-item">
	            <div class="layui-input-block">
	              <div class="layui-footer" style="left: 0;">
	                <button class="layui-btn" id="submitCourse" >立即提交</button>
	                <button type="button" class="layui-btn layui-btn-primary" id="cancel">取消</button>
	              </div>
	            </div>
	          </div>
	          <input type="hidden" id="imageValue">
	          <input type="hidden" id="videoValue">
	          <button id="uploadImg" style="display:none;"></button>
	        </form>
	      </div>
	    </div>
    </div>
          
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		//Demo
		layui.use('form', function(){
		  var form = layui.form;
		  
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    return false;
		  });
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
		  
		  	//第一个实例
		  	table.render({
			    elem: '#demo'
			    ,id: "roleTableId"
			    ,height: 450
			    ,url: '${pageContext.request.contextPath }/course/queryCourse' //数据接口
			    ,page: true //开启分页
			    ,cols: [[{checkbox: true}
			      	,{field: 'id', title: 'ID', width:120, sort: true}
			      	,{field: 'name', title: '课程名称', edit: true}
			      	,{field: 'price', title: '价格', edit: true}
			      	,{field: 'image', title: '封面图片', edit: false}
			      	,{field: 'video', title: '视频资源', edit: false}
			      	,{field: 'remark', title: '课程标签', edit: true}
			      	,{field: 'isFlag', title: '是否可用', edit: false, templet: function(d){
			      		if(d.isFlag=="0") return "可用";
			      		else return "禁用";
				  	}}
				  	,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}
			    ]]
			    ,toolbar: '#toolbarDemo'
		  	});
		  	
		  	table.on('edit(test)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"
				$.ajax({
			      	type:"POST",
			      	url:"${pageContext.request.contextPath }/course/updateCourseByIdToEdit",
			      	data:{ value : obj.value.trim(), field : obj.field , id : obj.data.id},
			      	dataType: "json",
			      	success: function(msg){
			      		layer.msg("修改成功");
// 			      		table.reload('roleTableId', { url: "${pageContext.request.contextPath }/course/queryCourse" });
// 	        			layer.close(index);
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
			});
			
			
			
		});
	</script>
	
  </body>
</html>

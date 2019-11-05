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
  				<div class="layui-btn-group demoTable" style="margin-bottom:10px;" >
	              <a href="order-unfinished.jsp" class="layui-btn layui-btn-sm"> <i class="layui-icon">未完成</i> </a>
				</div>
	</script>
  	
  	<div class="layui-col-md12">
    	<div class="layui-card">
          	<div class="layui-card-body">
          		
          		<table id="demo" lay-filter="test" ></table>
          	</div>
       	</div>
    </div>  
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use('table', function(){
		  	var table = layui.table;
		  
		  	//第一个实例
		  	table.render({
			    elem: '#demo'
			    ,id: "roleTableId"
			    ,height: 450
			    ,url: '${pageContext.request.contextPath }/order/query' //数据接口
			    ,page: true //开启分页
			    ,cols: [[{checkbox: true}
			      ,{field: 'id', title: 'ID', width:120, sort: true}
			      ,{field: 'costomerId', title: '客户名称'}
			      ,{field: 'costomerPhone', title: '客户号码'}
			       ,{field: 'courseId', title: '课程名称'}
			      ,{field: 'isFinal', title: '订单程度',templet: function(d){
			      		if(d.isFinal=="0") 
			      			return "未完成";
			      		else return "已完成";
				  	}}
			    ]]
			    ,toolbar: '#toolbarDemo'
		  	});
		});
	</script>
	
  </body>
</html>

layui.config({
    base: '../../assets/layuiadmin/' //��̬��Դ����·��
  }).extend({
    index: 'lib/index' //�����ģ��
  }).use(['index', 'form', 'laydate', 'upload', 'element'], function(){
    var $ = layui.$ ,admin = layui.admin ,element = layui.element ,layer = layui.layer
    ,laydate = layui.laydate ,form = layui.form ,upload = layui.upload, element = layui.element;;
    
    var localObj = window.location;
    var protocol = location.protocol;
    var host = localObj.host;
    var contextPath = localObj.pathname.split("/")[1];
    var basePath = protocol +"//"+host+"/"+contextPath;
    
    $.ajax({
     	type:"POST",
     	url: basePath + "/course/queryCourseType",
     	dataType: "json",
     	success: function(msg){
     		var data1 = msg.data;
     		var str = "<option value='0'>请选择</option>";
     		$.each(data1, function(i, dom){
     			str += "<option value='"+dom.id+"'>"+dom.name+"</option>";
     		});
     		$("#courseType").html(str);
     		form.render('select');
     	}
    });
    
    form.render(null, 'component-form-group');
    laydate.render({
      elem: '#LAY-component-form-group-date'
    });

	$("#submitCourse").click(function(){
//		$("#uploadImg").trigger('click'); 
    	var courseType = $("#courseType").val();
		var name = $("#courseName").val();
    	var price = $("#price").val();
    	var isFlag = $("#isFlag").val();
    	var imageValue = $("#imageValue").val();
    	var videoValue = $("#videoValue").val();
    	var remark = $("#courseRemark").val();
    	if(name==null || name==""){
    		layer.msg("课程名称不能为空！");
    	}else{
    		$.ajax({
		      	type:"POST",
		      	url: basePath + "/course/addCourse",
		      	data:{name:name.trim(), courseTypeId:courseType, price: price.trim(), 
		      		isFlag:isFlag, image: imageValue, video: videoValue,remark:remark},
		      	dataType: "json",
		      	success: function(msg){
		      		table.reload('roleTableId', { url: basePath + '/course/queryCourse' });
        			layer.close(index);
		      	}
	      	});
    	}
	});
    
    form.on('switch(component-form-switchTest)', function(data){
		if(this.checked) this.value = "0";
		else this.value = "1";
    });
    
	  upload.render({
	    elem: '#test10'
	    ,url: basePath + '/course/uploadFile/'
//  		,auto: false 
//  		,bindAction: '#uploadImg' 
	    ,choose: function(obj){
		    obj.preview(function(index, file, result){
		      $('#test10').html("<img src='"+result+"' style='width:200px;height:100px;'>");
		    });
		  }
	    ,done: function(res){
	    	$("#imageValue").val(res.uploadData.src);
	    }
	  });
	  
	  upload.render({
	    elem: '#test8'
	    ,url: basePath + '/course/uploadFile/'
	    ,auto: false
	    //,multiple: true
	    ,accept: 'video'
	    ,bindAction: '#uploadVideo'
    	,choose: function(obj){
    		obj.preview(function(index, file, result){
  		      $('#test8').html(file.name);
  		    });
		  }
	  	,progress: function(n){
		    var percent = n + '%'; //获取进度百分比
		    if(n%10==0) layer.msg("上传进度："+percent);
		}
	    ,done: function(res){
	    	$("#videoValue").val(res.uploadData.src);
	    	layer.msg(res.msg);
	    }
	  });
	  
	  $("#cancel").click(function(){
		  layer.closeAll();
	  });
	  
  });
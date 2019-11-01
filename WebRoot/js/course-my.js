var localObj = window.location;
var protocol = location.protocol;
var host = localObj.host;
var contextPath = localObj.pathname.split("/")[1];
var basePath = protocol +"//"+host+"/"+contextPath;

$(function() {
	//查询用户信息
	$.ajax({
      	type:"POST",
      	url:basePath + "/costomer/query",
      	data:{id: 1},
      	dataType: "json",
      	success: function(msg){
      		$("#username").html(msg.data[0].name);
      	}
  	});
	queryOrderAndCourseByAll();

	$("#tabTopUl li").click(function(){
		var index = $(this).index();
		if(index==0) queryOrderAndCourseByAll();
		else queryOrderAndCourseByPaid(index);
		$(this).addClass('tab_item_on').siblings().removeClass('tab_item_on');
	});
});
//全部订单
function queryOrderAndCourseByAll(){
	$.ajax({
      	type:"POST",
      	url:basePath + "/home/myCourse",
      	data:{costomerId: 1},
      	dataType: "json",
      	async:false,
      	success: function(msg){
      		var str = '';
      		$.each(msg, function(i, dom){
      			str += '<div class="caller-item" id="course-0"><a href="javascript:toVideo();">';
      			str += '<img src="'+basePath+'/uploadFiles/'+dom.image+'" class="course-img">';
      			str += '<div class="flex10" style="padding-left:8px;width:45%;float:left;"><div>';
      			str += '<div class="grid_title2"><span class="grid_info">课程名称：</span>'+dom.name+'</div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">课程规格：</span>长期有效</div>';
      			if(dom.state==0) str += '<div class="flex0 font_12"><span class="grid_info">订单状态：</span><i class="green-color">待付款</i></div>';
      			if(dom.state==1) str += '<div class="flex0 font_12"><span class="grid_info">订单状态：</span><i class="red-color">已付款</i></div>';
      			if(dom.state==2) str += '<div class="flex0 font_12"><span class="grid_info">订单状态：</span><i>已取消</i></div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">下单时间：</span>'+dom.updateTime+'</div>';
      			str += '</a></div></div>';
      			str += '<div style="width:10%;height:30px;float:right;">';
      			if(dom.state==0) str += '<button type="button" class="layui-btn layui-btn-xs">付款</button>';
      			if(dom.state==1) str += '<button type="button" class="layui-btn layui-btn-danger layui-btn-xs">取消</button>';
      			if(dom.state==2) str += '<button class="layui-btn layui-btn-disabled layui-btn-xs">已取消</button>';
      			str += '</div></div>';
      		});
      		$("#courseList").html(str);
      	}
  	});
}

//订单状态为0，已付款
function queryOrderAndCourseByPaid(index){
	$.ajax({
      	type:"POST",
      	url:basePath + "/home/myCourse",
      	data:{costomerId: 1,state: parseInt(index)-1},
      	dataType: "json",
      	async:false,
      	success: function(msg){
      		var str = '';
      		$.each(msg, function(i, dom){
      			str += '<div class="caller-item" id="course-0"><a href="javascript:toVideo();">';
      			str += '<img src="'+basePath+'/uploadFiles/'+dom.image+'" class="course-img">';
      			str += '<div class="flex10" style="padding-left:8px;width:45%;float:left;"><div>';
      			str += '<div class="grid_title2"><span class="grid_info">课程名称：</span>'+dom.name+'</div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">课程规格：</span>长期有效</div>';
      			if(dom.state==0) str += '<div class="flex0 font_12"><span class="grid_info">订单状态：</span><i class="green-color">待付款</i></div>';
      			if(dom.state==1) str += '<div class="flex0 font_12"><span class="grid_info">订单状态：</span><i class="red-color">已付款</i></div>';
      			if(dom.state==2) str += '<div class="flex0 font_12"><span class="grid_info">订单状态：</span><i>已取消</i></div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">下单时间：</span>'+dom.updateTime+'</div>';
      			str += '</a></div></div>';
      			str += '<div style="width:10%;height:30px;float:right;">';
      			if(dom.state==0) str += '<button type="button" class="layui-btn layui-btn-xs">付款</button>';
      			if(dom.state==1) str += '<button type="button" class="layui-btn layui-btn-danger layui-btn-xs">取消</button>';
      			if(dom.state==2) str += '<button class="layui-btn layui-btn-disabled layui-btn-xs">已取消</button>';
      			str += '</div></div>';
      		});
      		$("#courseList").html(str);
      	}
  	});
}

function toVideo(){
	location.href = basePath + "/home/toVideoView?courseId=11";
}

function del(data){
	layer.open({content: '确定删除该课程吗？',btn: ['确定', '取消'],
		yes: function(index, layero){
	  		$("#course-"+data).remove();
	  		layer.close(index);
		}
	});
}

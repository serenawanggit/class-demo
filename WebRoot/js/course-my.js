var localObj = window.location;
var protocol = location.protocol;
var host = localObj.host;
var contextPath = localObj.pathname.split("/")[1];
var basePath = protocol +"//"+host+"/"+contextPath;

$(function() {
	$.ajax({
      	type:"POST",
      	url:basePath + "/course/queryCourse",
//      	data:{parentId: 0},
      	dataType: "json",
      	success: function(msg){
  			var str = '';
  			
      		$.each(msg.data, function(i, dom){
      			str += '<div class="caller-item" id="course-0">';
      			str += '<img src="${pageContext.request.contextPath}/uploadFiles/'+dom.image+'" class="course-img">';
      			str += '<div class="flex10" style="padding-left:8px;width:45%;float:left;"><div>';
      			str += '<div class="grid_title2"><span class="grid_info">课程名称：</span>'+dom.name+'</div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">课程规格：</span>长期有效</div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">核销状态：</span><i class="green-color">未核销</i></div>';
      			str += '<div class="flex0 font_12"><span class="grid_info">下单时间：</span>2019-10-10</div>';
      			str += '</div></div>';
      			str += '<div style="width:10%;height:30px;float:right;">';
      			str += '<button class="layui-btn layui-btn-primary layui-btn-xs" onclick="del(0)"><i class="layui-icon">&#xe640;</i></button>';
      			str += '</div></div>';
      		});
      		$("#courseList").html(str);
      	}
  	});
});
function del(data){
	layer.open({content: '确定删除该课程吗？',btn: ['确定', '取消'],
		yes: function(index, layero){
	  		$("#course-"+data).remove();
	  		layer.close(index);
		}
	});
}

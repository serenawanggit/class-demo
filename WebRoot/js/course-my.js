var localObj = window.location;
var protocol = location.protocol;
var host = localObj.host;
var contextPath = localObj.pathname.split("/")[1];
var basePath = protocol +"//"+host+"/"+contextPath;

$(function() {
	$.ajax({
      	type:"POST",
      	url:basePath + "/course/queryCourseType",
      	data:{parentId: 0},
      	dataType: "json",
      	success: function(msg){
  			var str = '<a id="courseTypeA-0" href="javascript:queryCourseTypeByParentIdNotNull();" class="nav_menu_item_selected"><li class="nav_menu_item"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">全部类别</li></a>';
      		$.each(msg.data, function(i, dom){
      			str += '<a id="courseTypeA-'+dom.id+'" href="javascript:showCourseType('+dom.id+');"><li class="nav_menu_item"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">'+dom.name+'</li></a>';
      		});
      		$("#courseTypeParentUl").html(str);
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

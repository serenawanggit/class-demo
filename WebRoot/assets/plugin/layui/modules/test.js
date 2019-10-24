layui.define(['jquery'], function(exports){
    var $ = layui.jquery;
    var obj = {
        alert: function(msg){
        	alert(msg);
        }
    };
    //输出接口
    exports('test', obj);
});
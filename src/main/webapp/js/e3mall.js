var E3MALL = {
	checkLogin : function(){
		var _ticket = $.cookie("token");
		if(!_ticket){
			return ;
		}
		function getContextPath() {
		    return window.location.protocol + "//" + window.location.hostname;
		}
		$.ajax({
			url : getContextPath()+":8082/user/token/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data){
				if(data!=null){
					var username = data.username;
					var permission=data.permission;
					var html ="<span style='color:red;font-weight:bold'>"+ username+"</span>" + "，欢迎来到百货之家！<a href=\""+getContextPath()+":8082/user/logout\" class=\"link-logout\">[退出]</a>";
					if(permission==1){
						html+="&nbsp;&nbsp;<a href='/mall/manager?username="+username+"'>管理员通道</a>";
					}
					if(permission==3){
						html+="&nbsp;&nbsp;<a href='/mall/manager?username="+username+"'>管理员通道</a>";
					}
					$("#loginbar").html(html);
				}
			}
		});
	}
}

$(function(){
	// 查看是否已经登录，如果已经登录查询登录信息
	E3MALL.checkLogin();
});
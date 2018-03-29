<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>百货之家后台管理系统</title>
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.4.1/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/css/e3.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/css/default.css" />
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${basePath}/js/common.js"></script>
<script type="text/javascript" src="${basePath }/js/toJson.js"></script>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
    <!-- 头部标题 -->
	<div data-options="region:'north',border:false" style="height:100px; padding:5px; background:#F3F3F3"> 
		<span class="northTitle"><a href="/mall"><img src="${basePath}/images/logo.png" /></a></span>
	    <span class="loginInfo">登录用户：${user.username }&nbsp;&nbsp;昵称：${user.nickname}&nbsp;&nbsp;
	    	角色:<c:if test="${user.permission==1 }"><span style="color:red">超级管理员</span></c:if>
	    	<c:if test="${user.permission==3 }">管理员</c:if>
	    </span>
	</div>
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    	<input type="hidden" id="basePath" value="${basePath}">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
         	<li>
         		<span>商品管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'itemAdd'}">新增商品</li>
	         		<li data-options="attributes:{'url':'itemList'}">查询商品</li>
	         		<!-- <li data-options="attributes:{'url':'itemParamList'}">规格参数</li> -->
	         	</ul>
         	</li>
         	<li>
         		<span>网站内容管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'contentCategory'}">内容分类管理</li>
	         		<li data-options="attributes:{'url':'content'}">内容管理</li>
	         	</ul>
         	</li>
         	<li>
         		<span>索引库管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'indexItem'}">solr索引库维护</li>
	         	</ul>
         	</li>
         	<c:if test="${user.permission==1 }">
         		<li>
         		<span>用户管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'userList'}">查询用户</li>
	         	</ul>
         	</li>
         	</c:if>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="首页" style="padding:20px;">
		        	<div style="color:red">超级管理员:可以对用户更改</div>
		        	<div>管理员:不可以对用户更改</div>
		    </div>
		</div>
    </div>
    <!-- 页脚信息 -->
	<div data-options="region:'south',border:false" style="height:20px; background:#F3F3F3; padding:2px; vertical-align:middle;">
		<span id="sysVersion">系统版本：V1.0</span>
	    <span id="nowTime"></span>
	</div>
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
setInterval("document.getElementById('nowTime').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
</script>
</body>
</html>
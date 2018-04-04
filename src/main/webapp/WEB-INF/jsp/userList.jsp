<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table class="easyui-datagrid" id="userList" title="用户列表"  
       data-options="singleSelect:false,fitColumns:true,collapsible:true,pagination:true,url:'${basePath}/user/list',method:'get',pageSize:30,toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'id',width:60">用户ID</th>
            <th data-options="field:'username',width:200">帐号</th>
            <th data-options="field:'phone',width:100">手机</th>
            <th data-options="field:'email',width:100">邮件</th>
            <th data-options="field:'nickname',width:100">昵称</th>
            <th data-options="field:'permission',width:100,formatter : function(value,row,index){  
                                        if(value=='1'){  return '超级管理员'}   else if(value=='2'){return '普通用户'}   else if(value=='3'){return '管理员'}                       
                                   }">角色</th>
            <th data-options="field:'created',width:130,align:'center',formatter:E3.formatDateTime">创建日期</th>
            <th data-options="field:'updated',width:130,align:'center',formatter:E3.formatDateTime">更新日期</th>
        </tr>
    </thead>
</table>
<div id="userEditWindow" class="easyui-window" title="编辑用户" data-options="modal:true,closed:true,iconCls:'icon-save',href:'${basePath}/user/editPage'" style="width:30%;height:50%;padding:10px;">
<div id="userAddWindow" class="easyui-window" title="添加用户" data-options="modal:true,closed:true,iconCls:'icon-save',href:'${basePath}/user/addPage'" style="width:30%;height:50%;padding:10px;">
</div>
<script>
    function getSelectionsIds(){
    	var userList = $("#userList");
    	var sels = userList.datagrid("getSelections");
    	var ids = [];
    	for(var i in sels){
    		ids.push(sels[i].id);
    	}
    	ids = ids.join(",");
    	return ids;
    }
    	var toolbar = [{
            text:'新增',
            iconCls:'icon-add',
            handler:function(){
            	$("#userAddWindow").window("open");
            }
        },{
            text:'编辑',
            iconCls:'icon-edit',
            handler:function(){
            	var ids = getSelectionsIds();
            	if(ids.length == 0){
            		$.messager.alert('提示','必须选择一个用户才能编辑!');
            		return ;
            	}
            	if(ids.indexOf(',') > 0){
            		$.messager.alert('提示','只能选择一个用户!');
            		return ;
            	}
            	
            	$("#userEditWindow").window({
            		onLoad :function(){
            			//回显数据
            			var data = $("#userList").datagrid("getSelections")[0];
            			$("#userEditForm").form("load",data);
            		}
            	}).window("open");
            }
        },{
            text:'删除',
            iconCls:'icon-cancel',
            handler:function(){
            	var ids = getSelectionsIds();
            	if(ids.length == 0){
            		$.messager.alert('提示','未选中用户!');
            		return ;
            	}
            	$.messager.confirm('确认','确定删除ID为 '+ids+' 的用户吗？',function(r){
            	    if (r){
            	    	var params = {"ids":ids};
                    	$.post("${basePath}/user/delete",params, function(data){
                			if(data == 1){
                				$.messager.alert('提示','删除用户成功!',undefined,function(){
                					$("#userList").datagrid("reload");
                				});
                			}else{
                				$.messager.alert('提示','删除用户失败!',undefined,function(){
                                    $("#userList").datagrid("reload");
                                });
                			}
                		});
            	    }
            	});
            }
        }];
</script>
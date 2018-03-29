<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${basePath }/js/toJson.js"></script>
<div style="padding: 10px 10px 10px 10px">
	<form id="userAddForm" method="post">
		<input type="hidden" name="id" />
		<table cellpadding="5">
			<tr>
				<td>帐号:</td>
				<td><input class="easyui-textbox" name="username"
					data-options="validType:'length[0,50]',required:true"
					style="height: 60px; width: 280px;"></input></td>
			</tr>
			<tr>
				<td>昵称:</td>
				<td><input class="easyui-textbox" name="nickname"
					data-options="validType:'length[0,50]',required:true"
					style="height: 60px; width: 280px;"></input></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input class="easyui-textbox" name="password"
					data-options="validType:'length[0,50]',required:true"
					style="height: 60px; width: 280px;"></input></td>
			</tr>
			<tr>
				<td>手机:</td>
				<td><input class="easyui-numberbox" type="text" name="phone"
					style="height: 60px; width: 280px;" /></td>
			</tr>
			<tr>
				<td>邮件:</td>
				<td><input class="easyui-textbox" type="text" name="email"
					data-options="validType:'length[0,50]',required:true"
					style="height: 60px; width: 280px;" /></td>
			</tr>
			<tr>
				<td>角色:</td>
				<td>
					<select name="permission">
					<option value="1">超级管理员</option>
					<option value="2"  selected="selected">普通用户</option>
					<option value="3" >管理员</option>
				</select>
				</td>
			</tr>
		</table>
	</form>
	<div style="padding: 5px">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="submitForm()">提交</a>
	</div>
</div>
<script type="text/javascript">
	function submitForm() {
		if (!$('#userAddForm').form('validate')) {
			$.messager.alert('提示', '表单还未填写完成!');
			return;
		}
		$.ajax({
			url : "${basePath}/user/add",
			type : "POST",
			data : JSON.stringify($('#userAddForm').serializeObject()),
			contentType : 'application/json;charset=UTF-8',
			success : function(data) {
				if (data == 1) {
					$.messager.alert('提示', '添加成功!', 'info', function() {
						$("#userAddWindow").window('close');
						$("#userList").datagrid("reload");
					});
				}
				if (data == 2) {
					$.messager.alert('提示', '用户名已存在!', 'warning', function() {
						$("#userAddWindow").window('close');
						$("#userList").datagrid("reload");
					});
				}
			}
		})
	}
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form id="receiverEditForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>收货人姓名:</td>
	            <td>
	            	<input class="easyui-textbox" type="text" name="username" value="${receiver.username }" data-options="validType:'length[0,50]',required:true"  style="width: 280px;"></input>	
	            </td>
	        </tr>
	        <tr>
	            <td>收货人电话:</td>
	            <td><input  class="easyui-textbox" type="text" name="phone" value="${receiver.phone }" data-options="validType:'length[0,50]',required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>省:</td>
	            <td><input class="easyui-textbox" name="province"  value="${receiver.province }"   data-options="validType:'length[0,50]',required:true" style="height:60px;width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>市:</td>
	            <td><input class="easyui-textbox" type="text" name="city"  value="${receiver.city }"  data-options="validType:'length[0,50]',required:true" />
	            </td>
	        </tr>
	        <tr>
	            <td>区:</td>
	            <td><input   class="easyui-textbox" type="text" name="district"  value="${receiver.district }"  data-options="validType:'length[0,50]',required:true" /></td>
	        </tr>
	        <tr>
	            <td>详细地址:</td>
	            <td>
	            	<textarea class="easyui-textbox" name="detailAddress"    style="width:800px;height:200px" data-options="validType:'length[0,50]',required:true" >
	            		${receiver.detailAddress }
	            	</textarea>
	            </td>
	        </tr>
	    </table>
	    <input type="hidden" name="userId" value="${userId }"/>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	</div>
	<script>
	function submitForm(){
		if(!$('#receiverEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		$.ajax({
			url:"${basePath}/order/receiver/update",
			type:"POST",
			data:$('#receiverEditForm').serialize(),
			success:function(data){
				if(data == 1){
	                $.messager.alert('提示','修改成功!','info',function(){
	                    $("#receiverEditWindow").window('close');
	                    parent.location.reload();
	                });
	            }
			}
		})
	}
	</script>
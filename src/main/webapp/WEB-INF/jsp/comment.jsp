<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="${basePath }/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="${basePath }/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${basePath }/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript" src="${basePath }/js/toJson.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="itemeEditForm" class="itemForm" method="post">
	        <tr>
	        	<td>评价:</td>
	            <td>
	                <span><label for="good">好评</label></span><input type="radio" id="good" name="level"  checked="checked"  value="1"/>&nbsp;&nbsp;
	                <span><label for="mid">中评</label></span><input type="radio" name="level"  value="2"/>&nbsp;&nbsp;
	               	<span><label for="bad">差评</label></span> <input type="radio" name="level"  value="3"/>&nbsp;&nbsp;
	            </td>
	        </tr>
	        <tr>
	            <td></td>
	            <td>
	                <textarea style="width:700px;height:300px;visibility:hidden;" name="content">该小伙伴未作出评价</textarea>
	            </td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	</div>
</div>
<script type="text/javascript">
	var itemEditEditor ;
	$(function(){
		//实例化编辑器
		itemEditEditor = E3.createEditor("#itemeEditForm [name=content]");
	});
	
	function submitForm(){
		if(!$('#itemeEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		var data={
				level:$('#itemeEditForm [name=level]:checked').val(),
				content:itemEditEditor.html()
		}
		$.ajax({
			url:"${basePath}/items/comment/"+_SF_CFG.productId,
			type:"POST",
			data:data,
			success:function(data){
				if(data == 1){
	                $.messager.alert('提示','评论成功!','info',function(){
	                    $("#itemCommentWindow").window('close');
	                    window.parent.location.reload();
	                });
	            }
				if(data == 2){
	                $.messager.alert('提示','请登录!','info',function(){
	                    window.location.href=location.protocol+"//"+location.hostname+":8082/login";
	                });
	            }
			}
		})
	}
</script>

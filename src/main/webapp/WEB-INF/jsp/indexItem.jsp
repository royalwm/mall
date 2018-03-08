<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	 <a class="easyui-linkbutton" onclick="importItems()">一键导入商品数据到索引库</a>
</div>
<script type="text/javascript">
	function importItems() {
		MaskUtil.mask();
		$.post("${basePath}/items/import",null,function(data){
			MaskUtil.unmask();
			if(data == 1){
				$.messager.alert('提示','导入索引库成功！');
			} else {
				$.messager.alert('提示','导入索引库失败！');
			}
		});
	}
	var MaskUtil = (function(){ 
        var $mask,$maskMsg; 
        var defMsg = '正在处理，请稍待。。。'; 
        function init(){ 
         if(!$mask){ 
          $mask = $("<div class=\"datagrid-mask mymask\"></div>").appendTo("body"); 
         } 
         if(!$maskMsg){ 
          $maskMsg = $("<div class=\"datagrid-mask-msg mymask\">"+defMsg+"</div>") 
           .appendTo("body").css({'font-size':'12px'}); 
         } 
         $mask.css({width:"100%",height:$(document).height()}); 
         var scrollTop = $(document.body).scrollTop(); 
         $maskMsg.css({ 
          left:( $(document.body).outerWidth(true) - 190 ) / 2 
          ,top:( ($(window).height() - 45) / 2 ) + scrollTop 
         }); 
        } 
        return { 
         mask:function(msg){ 
          init(); 
          $mask.show(); 
          $maskMsg.html(msg||defMsg).show(); 
         } 
         ,unmask:function(){ 
          $mask.hide(); 
          $maskMsg.hide(); 
         } 
        } 
       }());
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
   <meta http-equiv="pragma" content="no-cache">
   <meta http-equiv="cache-control" content="no-cache">
   <meta http-equiv="expires" content="0"> 
   <meta name="format-detection" content="telephone=no">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
   <meta name="format-detection" content="telephone=no">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="${basePath }/css/jquery.alerts.css" />
<link rel="stylesheet" type="text/css" href="${basePath }/css/head.css" />
<link rel="stylesheet" type="text/css" href="${basePath }/css/cart.css">
<link rel="stylesheet" type="text/css" href="${basePath }/css/cartCommon.css" />
<script type="text/javascript" src="${basePath }/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${basePath }/js/jquery.price_format.2.0.min.js"></script>
<script type="text/javascript" src="${basePath }/js/jquery.alerts.js"></script>
<script type="text/javascript" src="${basePath }/js/cart.js"></script>
 <script type="text/javascript" src="${basePath }/js/cookie.js"></script>
<script type="text/javascript" src="${basePath }/js/shadow.js"></script>
<script type="text/javascript" src="${basePath }/js/cartCommon.js"></script>
   <title>我的购物车 - 百货之家</title>
<body> 
<jsp:include page="commons/header.jsp" />
<div class="cartMain">
	<div class="cartHead">
		<h3 class="cartMy">我的购物车</h3>
		<div class="clear"></div>
	</div>
	<div class="cartMain">
      <div class="cartThead">
        <div class="tCol tCheckbox"><input name="acart_list_check" id="allCheckbox" type="checkbox" onclick="allCheckbox(this)"> 全选</div>
        <div class="tCol tGoods">商品</div>
        <div class="tCol tPrice">单价</div>
        <div class="tCol tPromotion">优惠</div>
        <div class="tCol tQuantity">数量</div>
        <div class="tCol tWeight">重量(含包装)</div>
        <div class="tCol tSubtotal">小计</div>
        <div class="tCol tInventory">库存状态</div>
        <div class="tCol tOperator">操作</div>
      </div>
      <div class="cartTbody">
		<div class="cartList youxuan" id="all_putong">
		<div style="margin: 20px; text-align: center; display: none;" id="danjianload"></div>
		<div id="danjian">
			<div class="cartItem">
				<c:forEach items="${cartList}" var="cart">
				<c:set var="totalPrice"  value="${ totalPrice + (cart.price * cart.num)}"/>
				<c:set var="itemsIds" >${itemsIds}${cart.id},</c:set>
				<div class="cartPInfo" id="danjian-0-229363">
					<div class="clearit">
						<div class="pItem pCheckbox">
							<input name="cart_list" class="putong"	itemId="${cart.id }"  type="checkbox"/>
						</div>
						<div class="pItem pGoods">
							<div class="cart_pimg">
								<a target="_blank" title="${cart.title }" href="${basePath }/items/${cart.id }/detial">
								<img src="${cart.images[0] }" style="width: 60px;height: 60px;"/>
								</a>
							</div>
							<div class="cart_pname">
								<div>
								<a target="_blank" href="${basePath }/items/${cart.id }/detial">${cart.title }</a>
								</div>
								<div class="cdzg">产地直供</div>
							</div>
						</div>
						<div class="pItem pPrice">
							<div style="position: relative;">
								<strong>¥<fmt:formatNumber groupingUsed="false" value="${cart.price / 100}" maxFractionDigits="2" minFractionDigits="2"/></strong>
							</div>
						</div>
						<div class="pItem pPromotion">&nbsp;</div>
						<div class="pItem pQuantity">
							<div class="cartAmount">
								<a href="javascript:void(0);" class="cartCountBtn decrement" onclick="decrementNum(this)">-</a> 
								<input type="text" value="${cart.num }" class="amount itemnum" itemPrice="${cart.price}" itemId="${cart.id}" id="amountdanjian-0-229363" name="amount">
								<a href="javascript:void(0);" class="cartCountBtn increment" onclick="incrementNum(this)">+</a> 
							</div>
						</div>
						<div class="pItem pWeight">0.05kg<br></div>
						<div class="pItem pSubtotal">
							<span id="total_price" class="totalprice">¥<fmt:formatNumber groupingUsed="false" value="${cart.price / 100 * cart.num}" maxFractionDigits="2" minFractionDigits="2"/></span>
						</div>
						<div class="pItem pInventory">现货</div>
						<div class="pItem pOperator">
							<a id="cartDel" href="javascript:void(0)" onclick="deleteCart(this,${cart.id})">删除</a>
							<script type="text/javascript">
							function incrementNum(obj){
								var inputDom=$(obj).siblings("input");
								inputDom.val(inputDom.val()*1+1);
								window.location.href="${basePath}/cart/update?num="+inputDom.val()+"&itemId="+inputDom.attr("itemId");
							}
							function decrementNum(obj){
								var inputDom=$(obj).siblings("input");
								if(inputDom.val()*1==1)return;
								inputDom.val(inputDom.val()*1-1);
								window.location.href="${basePath}/cart/update?num="+inputDom.val()+"&itemId="+inputDom.attr("itemId");
							}
							function deleteCart(obj,id){
								$.ajax({
									url:"${basePath}/cart/delete/"+id,
									type:"POST",
									async:false,
									success:function(data){
										if(data==1){
											$(obj).parents(".cartPInfo").remove();
											location.href="${basePath}/cart/add";
										}
									}
								})
							}
							</script>
						</div>
					</div>
		</div>
		</c:forEach>
		</div>
	</div>
	</div>
	
	</div>
      <div class="cartOrderCount" id="orderCount">
        <div class="cartButtons">
          <input type="button" value="删除选中的商品" onclick="javascript:cartDelMore();" class="cartclear">
          <input type="button" value="清空购物车" onclick="javascript:delAll();" class="cartclear">
          <script>
          function cartDelMore(){
        	  var itemCart=$("input[name=cart_list]");
        	  var arr=[];
        	  for(var i=0;i<itemCart.length;i++){
        		  if(itemCart.eq(i).attr("checked")==true){
        			  deleteCart(itemCart.eq(i),itemCart.eq(i).attr("itemId"));
        		  }
        	  }
          }
          function delAll(){
        	  var itemsIds="${itemsIds}";
        	  var ids=itemsIds.substring(0,itemsIds.length-1);
        	  $.ajax({
					url:"${basePath}/cart/delete/"+ids,
					type:"POST",
					success:function(data){
						if(data==1){
						   $("#all_putong").remove();
							location.href="${basePath}/cart/add";
						}
					}
				})
        	}
          function allCheckbox(obj){
        	  var itemCart=$("input[name=cart_list]");
        	  if($(obj).attr("checked")==true){
        		  for(var i=0;i<itemCart.length;i++){
            		  itemCart.eq(i).attr("checked",true);
            	  }
        	  }else{
        		  for(var i=0;i<itemCart.length;i++){
            		  itemCart.eq(i).attr("checked",false);
            	  }
        	  }
          }
          </script>
        </div>
        <div class="cartTotalItem">
          <span id="all_shopePrice">（不含运费）</span>&nbsp;&nbsp;&nbsp;&nbsp;商品总计：
          <span class="cartPrice" id="allMoney2">¥<fmt:formatNumber value="${totalPrice / 100}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
          </span>
        </div>
      </div>
      <div class="cartJsuan">
         <input onclick="javascript:document.location.href='${basePath }'" class="goshop" value="继续购物" type="button">
         <input onclick="pay()" class="jiesuan" value="去结算" type="button">
         <script>
         	function pay(){
         		if('${cartList}'!=""){
         			document.location.href='${basePath }/order/page';
         		}else{
         			jAlert("结算失败，原因是：购物车没有物品!","提示",function(){
         				window.location.href="${basePath}";
         			});
         		}
         	}
         </script>
      </div>
    </div>
</div>
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" /> 
<meta name="format-detection" content="telephone=no" />  
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>订单结算页 -百货之家</title>
<!--结算页面样式-->	
<link rel="stylesheet" type="text/css" href="${basePath }/css/jquery.alerts.css" />
<link rel="stylesheet" type="text/css" href="${basePath }/css/head.css" />
<link rel="stylesheet" type="text/css" href="${basePath }/css/order.css">
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.4.1/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.4.1/themes/icon.css" />
<script type="text/javascript" src="${basePath }/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="${basePath }/js/jquery.alerts.js"></script>
<script type="text/javascript" src="${basePath }/js/cart.js"></script>
<script type="text/javascript" src="${basePath }/js/cookie.js"></script>
<script type="text/javascript" src="${basePath }/js/shadow.js"></script>
<script src="${basePath }/js/common.js" type="text/javascript"></script>
<script src="${basePath }/js/jquery.region.js" type="text/javascript"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script src="${basePath }/js/order.js" type="text/javascript"></script>
</head>	
<body id="mainframe">
<jsp:include page="commons/header.jsp" />
<div class="orderMain">
<div id="receiverEditWindow" class="easyui-window" title="编辑收货人" data-options="modal:true,closed:true,iconCls:'icon-save',href:'${basePath}/order/receiver'" style="width:80%;height:40%;padding:10px;">
</div>
<form id="orderForm" class="hide" action="${basePath }/order/create" method="post">
	<input type="hidden" name="userId" value="${userId }"/>
	<input type="hidden" name="paymentType" value="2"/>
	<input type="hidden" name="postFee" value="10"/>
	<c:forEach items="${cartList }" var="cart" varStatus="status">
		<c:set var="totalPrice"  value="${ totalPrice + (cart.price * cart.num)}"/>
		<input type="hidden" name="orderItemsList[${status.index}].itemId" value="${cart.id}"/>
		<input type="hidden" name="orderItemsList[${status.index}].num" value="${cart.num }"/>
		<input type="hidden" name="orderItemsList[${status.index}].price" value="${cart.price}"/>
		<input type="hidden" name="orderItemsList[${status.index}].totalFee" value="${cart.price * cart.num}"/>
		<input type="hidden" name="orderItemsList[${status.index}].title" value="${cart.title}"/>
		<input type="hidden" name="orderItemsList[${status.index}].picPath" value="${cart.image}"/>
	</c:forEach>
	<input type="hidden" name="payment" value="<fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2" value="${totalPrice/100 }"/>"/>
	<input type="hidden" name="orderUser.receiverName" value="wangmeng"/>
	<input type="hidden" name="orderUser.receiverMobile" value="15961300931"/>
	<input type="hidden" name="orderUser.receiverState" value="北京"/>
	<input type="hidden" name="orderUser.receiverCity" value="北京"/>
	<input type="hidden" name="orderUser.receiverDistrict" value="昌平区"/>
	<input type="hidden" name="orderUser.receiverAddress" value="北京市昌平区北七家镇 修正大厦"/>
</form>
  <h3 class="orderHd">填写并核对订单信息</h3>
  <div id="userAddrId" class="orderTbody ">
    <h3 class="orderTitle">收货人信息：<c:if test="${receiver!=null }"><span class="addrAlter" style="display:inline;">[修改]</span></c:if>
    <c:if test="${receiver==null }"><span class="addReceiver" style="display:inline;">[添加]</span></c:if>
    </h3>
    <div class="orderItem">
        <div class="orderCurr" id="userAddress" style="display:block;">
          <ul>
            <c:if test="${receiver!=null}">
            	<li>${receiver.username}&nbsp;&nbsp;&nbsp;&nbsp;${receiver.phone}&nbsp;&nbsp;&nbsp;&nbsp;${receiver.province}&nbsp;&nbsp;
            ${receiver.city}&nbsp;&nbsp;${receiver.district}&nbsp;&nbsp;${receiver.detailAddress}</li>
            </c:if>
          </ul>
        </div>
    </div>
  </div>

  <div class="orderTbody" style="width:958px;border-bottom:0 none;">
  <div class="backToCart"><a style=" text-decoration:underline;" target="" href="${basePath }/cart/add">返回修改购物车</a></div>
  <h3 class="orderTitle">商品信息：</h3>
  <span class="clear"></span>
  <div class="orderPItem">
  <div id="producthtml">

	<div id="chaidanorder2" class="">
		<div class="orderItem">
			<div class="dateShow">
				<strong>商品下单后尽快为您发货</strong>
			</div>
			<div class="orderTbl">
				<div class="orderThead">
					<div class="tCol">商品图片</div>
					<div class="tCol pGoods">商品名称</div>
					<div class="tCol pPrice">单价</div>
					<div class="tCol pPromotion">返现</div>
					<div class="tCol pInventory">库存状态</div>
					<div class="tCol pQuantity">数量</div>
					<div class="tCol pWeight">重量(含包装)</div>
					<div class="tCol pSubtotal">小计</div>
				</div>
				<c:forEach items="${cartList }" var="cart" varStatus="status">
				<div class="orderPInfo">
					<div class="pItem">
						<a target="_blank" title="${cart.title }" href="${basePath }/items/${cart.id }/detial">
						<img src="${cart.image }" style="width: 60px;height: 60px;"/>
						</a>
					</div>
					<div class="pItem pGoods">
						<a target="_blank" href="${basePath }/items/${cart.id }/detial">${cart.title }</a>
					</div>
					<div class="pItem pPrice" style="position: relative; z-index: 99">
						¥<fmt:formatNumber
							groupingUsed="false" maxFractionDigits="2"
							minFractionDigits="2" value="${cart.price / 100 }" />
					</div>
					<div class="pItem pPromotion">¥0</div>
					<div class="pItem pInventory" pid="57111">现货</div>
					<div class="pItem pQuantity">${cart.num}</div>
					<div class="pItem pWeight">0.72kg</div>
					<div class="pItem pSubtotal">¥${cart.price / 100 * cart.num}</div> 
					<span class="clear"></span>
				</div>
				</c:forEach>
				<div class="orderPInfo order_xj">
					<span class="sp1">运费小计：</span> <span class="sp2">¥10</span>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
  <div class="orderItem" style="position:relative;padding-top:10px;">

    <div id="ordercoupon1" class="ordercoupon"><span id="ordercoupon"></span></div>
    <div class="order-info" style="z-index: -1;">
      <div class="orderWeight fl">商品总重量：0.72kg（含包装）</div>
      <div id="priceitems" class="priceitem">
        <dl class="fl">
          <dd>
            <div>1 件商品，总商品金额：</div><span class="priceArea">¥<span id="yingProce">
				<fmt:formatNumber value="${totalPrice / 100 }" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
			</span></span>
          </dd>
          <dd>
            <div>运费金额：</div><span class="priceArea">¥<span id="shopping_price">10</span></span>
          </dd>
          <dd>
            <div>应付总额：</div><span class="priceArea">¥<span id="allPrice">
            	<fmt:formatNumber value="${totalPrice / 100 + 10}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
            </span></span>
          </dd>
        </dl>
      </div>
    </div>
  </div>
  </div>
  <div class="orderTFoot">
  	<div id="orderSaveTip" class="ct"></div>            
    <div class="submitOrder">
      <div class="orderSubmit">
      	<input id="save" name="save" onclick="submitOrder()" class="submitBtn" value="提交订单 " type="button"/>
      	<script type="text/javascript">
			function submitOrder(){
				if('${receiver}'==''){
					jAlert("请填写收货人");
					return;
				}
				$('#orderForm').submit();
			}
		</script>
      </div>
      <div class="orderAccount">
        <span class="t">应付总额：</span>
        <span class="p">¥</span>
        	<span id="countPrice" class="p"><fmt:formatNumber value="${totalPrice / 100 + 10}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
        </span>
      </div>
      <span class="clear"></span>
    </div>
  </div>
</div>
<!-- /main -->
<jsp:include page="commons/footer.jsp" />
</body>
</html>
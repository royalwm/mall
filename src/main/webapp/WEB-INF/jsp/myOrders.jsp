<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
			<meta name="format-detection" content="telephone=no">
				<meta name="viewport"
					content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
<title>我的订单 - 百货之家</title>
<body>
	<jsp:include page="commons/header.jsp" />
	<div class="cartMain">
		<div class="cartHead">
			<h3 class="cartMy">我的订单</h3>
			<div class="clear"></div>
		</div>
		<div class="cartMain">
			<div class="cartThead">
				<div class="tCol tGoods">产品</div>
				<div class="tCol tPrice" style="width:180px;">单价</div>
				<div class="tCol tQuantity" style="width:180px;">数量</div>
				<div class="tCol tSubtotal" style="width:180px;">小计</div>
				<div class="tCol tOperator" style="width:180px;">操作</div>
			</div>
			<div class="cartTbody">
				<div class="cartList youxuan" id="all_putong">
					<div style="margin: 20px; text-align: center; display: none;"
						id="danjianload"></div>
					<div id="danjian">
						<div class="cartItem">
						<ul>
							<c:forEach items="${orderItems}" var="orderItem">
							<li style="border-bottom:10px solid #ccc;position:relative">
												<input name="itemId" 
													itemId="${items.orderId }" type="hidden" />
								<c:forEach items="${orderItem}" var="items"  varStatus="status">
									<div class="cartPInfo" id="danjian-0-229363">
										<div class="clearit">
											<div class="pItem pGoods">
												<div class="cart_pimg">
													<a target="_blank" title="${items.title }"
														href="${basePath }/items/${items.itemId }/detial"> <img
														src="${items.picPath }" style="width: 60px; height: 60px;" />
													</a>
												</div>
												<div class="cart_pname">
													<div>
														<a target="_blank"
															href="${basePath }/items/${items.itemId }/detial">${items.title }</a>
													</div>
													<div class="cdzg">产地直供</div>
												</div>
											</div>
											<div class="pItem pPrice" style="width:180px;">
												<div style="position: relative;">
													<strong>¥<fmt:formatNumber groupingUsed="false"
															value="${items.price / 100}" maxFractionDigits="2"
															minFractionDigits="2" /></strong>
												</div>
											</div>
											<div class="pItem pQuantity" style="width:180px;">
													<div class="cartAmount">
														<div>${items.num }</div> 
													</div>
											</div>
											<div class="pItem pSubtotal" style="width:180px;">
												<span id="total_price" class="totalprice">¥<fmt:formatNumber
														groupingUsed="false"
														value="${items.price / 100 * items.num}"
														maxFractionDigits="2" minFractionDigits="2" /></span>
											</div>
											<c:if test="${ status.index ==0}">
												<div class="pItem pOperator" style="position:absolute;right:40px;bottom:50px;font-size:20px;font-weight:bold;">
												<a id="cartDel" href="javascript:void(0)"
													onclick="deleteOrder(this,'${items.orderId}')">删除</a>
											</div>
											</c:if>
										</div>
									</div>
								</c:forEach>
								</li>
							</c:forEach>
							<script>
								function deleteOrder(obj,orderId){
									$.ajax({
										url:"${basePath}/order/delete/"+orderId,
										type:"post",
										success:function(data){
											if(data=="1"){
												window.location.reload();
											}
										}
									})
								}
							</script>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- footer start -->
	<jsp:include page="commons/footer.jsp" />
	<!-- footer end -->
</html>
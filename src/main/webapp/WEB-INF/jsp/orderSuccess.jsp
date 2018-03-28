<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="${basePath }/css/jquery.alerts.css" />
<link rel="stylesheet" type="text/css" href="${basePath }/css/head.css" />
<link rel="stylesheet" type="text/css"
	href="${basePath }/css/newpay.css" />
<script type="text/javascript" src="${basePath }/js/jquery-2.0.3.js"></script>
<title>订单成功页面 - 百货之家</title>
<style>
.input_text {
	padding: 10px 10px;
	border: 1px solid #d5d9da;
	border-radius: 5px;
	box-shadow: 0 0 5px #e8e9eb inset;
	width: 100px;
	font-size: 1em;
	outline: 0;
}

.input_text:focus {
	border: 1px solid #b9d4e9;
	border-top-color: #b6d5ea;
	border-bottom-color: #b8d4ea;
	box-shadow: 0 0 5px #b9d4e9;
}

.button {
	color: #666;
	background-color: #EEE;
	border-color: #EEE;
	font-weight: 300;
	font-size: 16px;
	font-family: "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial,
		"Lucida Grande", sans-serif;
	text-decoration: none;
	text-align: center;
	line-height: 40px;
	height: 40px;
	padding: 0 40px;
	margin: 0;
	display: inline-block;
	appearance: none;
	cursor: pointer;
	border: none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition-property: all;
	transition-property: all;
	-webkit-transition-duration: .3s;
	transition-duration: .3s;
}

.button-primary {
	background-color: #1B9AF7;
	border-color: #1B9AF7;
	color: #FFF;
}

.button-primary:visited:visited {
	color: #FFF;
}

.button-primary:hover, .button-primary:focus {
	background-color: #4cb0f9;
	border-color: #4cb0f9;
	color: #FFF;
}

.button-pill {
	border-radius: 200px;
}

.alipay_select {
	width: 120px;
	background: url(http://codepay.fateqq.com/img/alipay.jpg) no-repeat 14px
		0;
}

.qqpay_select {
	width: 130px;
	background: url(http://codepay.fateqq.com/img/qqpay.jpg) no-repeat 14px
		0;
}

.wechat_select {
	width: 120px;
	background: url(http://codepay.fateqq.com/img/weixin.jpg) no-repeat 16px
		0;
}

.type_select {
	float: left;
	padding: 1px;
	margin: 5px 5px 0px 0px;
	border: 1px solid #80C5FF;
	color: #0061F3;
	font-size: 13px;
	padding: 5px;
	margin-left: 0px;
	float: left;
	padding-left: 2px;
	padding-right: 20px;
	padding-top: 14px;
	height: 20px;
}
</style>
</head>
<body id="mainframe">
	<!--shortcut start-->
	<jsp:include page="commons/shortcut.jsp" />
	<!--shortcut end-->
	<div class="logoPay">
		<div class="logoPayBox">
			<a href="${basePath }"><img src="${basePath }/images/logo.png"
				width="600" height="86" border="0"></a>
		</div>
	</div>
	<div class="pay_main">
		<div class="pay_newbox">
			<div class="pay_left">
				<span class="pay_word1"> <i class="payOkicon"></i>订单提交成功，请您及时付款，以便尽快为您发货~
				</span> <span class="pay_word2">请您在提交订单后 <em>4小时</em>
					内完成支付，超时订单会自动取消。 <br></br>订单号：</br>
				<span style="color: red">${orderId }</span></span>
			</div>
			<span class="pay_Rmoney">应付金额 : <em class="pay_price">￥ <fmt:formatNumber
						value="${payment}" maxFractionDigits="2" minFractionDigits="2"
						groupingUsed="true" />
			</em></span>
		</div>
				<form name="form1" id="form1" method="get" action="${basePath}/order/pay">
				<input type="hidden" name="price" value="${payment}"/>
					<div>
						<table width="980" border="0" align="center" cellpadding="8"
							cellspacing="1" bgcolor="#cccccc" style="margin:100px auto">
							<tbody>
								<tr>
									<td colspan="2">
										<div align="center">
											<strong>在线充值</strong>
										</div>
									</td>
								</tr>
								<!--          注释以下代码 可禁止自己输入价格-->
								<!--              注释结束位置            -->
								<tr>
									<td>
										<div align="right">用户：</div>
									</td>

									<td><input name="pay_id" id="pay_id" type="text" value="${orderUser }"
										class="input_text" style="width: 200px;" readonly></td>

								</tr>
								<tr>
									<td>
										<div align="right">支付：</div>
									</td>
									<td><label>
											<div class="type_select alipay_select">
												<input type="radio" name="type" value="1" checked="checked">
											</div>
									</label> <label>
											<div class="type_select wechat_select">
												<input type="radio" name="type" value="3">
											</div>
									</label> <label>
											<div class="qqpay_select type_select">
												<input type="radio" name="type" value="2">
											</div>
									</label></td>
								</tr>

								<tr>
									<td>
										<div align="right"></div>
									</td>
									<td><label> <input type="submit" id="Submit"
											class="button button-pill button-primary" value="支付宝支付"></label></td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
				<script type="text/javascript">
					var type = document.getElementsByName('type');
					var price = document.getElementById('price');
					var money = document.getElementById('money');
					var FormSubmit = document.getElementById('Submit');
					for (var i = 0; i < type.length; i++) {
						type[i].onclick = function() {
							switch (parseInt(this.value)) {
							case 1:
								FormSubmit.value = '支付宝支付';
								break;
							case 2:
								FormSubmit.value = 'QQ钱包支付';
								break;
							case 3:
								FormSubmit.value = '微信支付';
								break;
							default:
								FormSubmit.value = '支付宝支付';
							}
						}
					}
					$(".w-pay-money").click(function() {
						$(".w-pay-money").removeClass('w-pay-money-selected');
						$(this).addClass('w-pay-money-selected');
						price.value = $(this).attr('data');
						money.value = $(this).attr('data');
					});
				</script>

	</div>
	<jsp:include page="commons/footer.jsp"></jsp:include>
	<!-- footer end -->
</body>
</html>
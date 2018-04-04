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
<script type="text/javascript" src="${basePath }/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${basePath }/js/jquery.alerts.js"></script>
 <script type="text/javascript" src="${basePath }/js/cookie.js"></script>
<script type="text/javascript" src="${basePath }/js/shadow.js"></script>
   <title>新闻 - 百货之家</title>
<body> 
<jsp:include page="commons/header.jsp" />
<div class="newsMain" style="width:50%;margin:10px auto">
	<div id="detail" class="m">
		 <div class="mt">
		 <h1 style="width:50%;margin:10px auto;align:center">${content.title}</h1>
			<div class="summary" style="width:50%;margin:10px auto;align:center">时间：${content.updated }&nbsp;&nbsp;&nbsp;&nbsp;</div>
		 </div>
		 <div class="mc">
		 	${content.content }
		 </div>
		</div>
</div>
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->

</html>
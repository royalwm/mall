<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String basePath=request.getContextPath();
String url=request.getScheme()+"://"+request.getServerName();
pageContext.setAttribute("url", url);
pageContext.setAttribute("basePath", basePath);
%>
<!--shortcut start-->
<jsp:include page="shortcut.jsp" />
<!--shortcut end-->
<div id="header">
  <div class="header_inner">
    <div class="logo">
		<a name="sfbest_hp_hp_head_logo" href="${basePath }" class="trackref logoleft">
		</a>
		</div>
    <div class="index_promo"></div>
    <div class="search">
      <form action="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr" id="searchForm" name="query" method="GET">
        <input type="text" class="text keyword ac_input" name="keyword" id="keyword" value="" style="color: rgb(153, 153, 153);" onkeydown="javascript:if(event.keyCode==13) search_keys('searchForm');" autocomplete="off">
        <input type="button" value="" class="submit" onclick="search_keys('searchForm')">
      </form>
      <div class="search_hot">
       <c:forEach items="${searchHotList}" var="searchHot" varStatus="status">
            <a target="_blank" href="${searchHot.url }">${searchHot.title }</a>
        </c:forEach> 
      </div>
    </div>
    <div class="shopingcar" id="topCart">
      <s class="setCart"></s><a href="http://localhost:8089/cart/cart.html" class="t" rel="nofollow">我的购物车</a><b id="cartNum">0</b>
      <span class="outline"></span>
      <span class="blank"></span>
      <div id="cart_lists">
        <!--cartContent-->   
        <div class="clear"></div>
      </div>
    </div>
  </div>
</div>
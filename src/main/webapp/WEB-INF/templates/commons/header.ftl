<!--shortcut start-->
<#include "shortcut.ftl" />
<!--shortcut end-->
<div id="header">
  <div class="header_inner">
    <div class="logo">
            <a name="sfbest_hp_hp_head_logo" href="/mall" class="trackref logoleft">
        </a>
            <div class="logo-text">
                <img src="/images/html/logo_word.jpg">
            </div>
        </div>
    <div class="index_promo"></div>
    <div class="search">
    <form action="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr" id="searchForm" name="query" method="GET">
        <input type="text" class="text keyword ac_input" name="keyword" id="keyword" value="" style="color: rgb(153, 153, 153);" onkeydown="javascript:if(event.keyCode==13) search_keys('searchForm');" autocomplete="off">
        <input type="button" value="" class="submit" onclick="search_keys('searchForm')">
      </form>
      <div class="search_hot">
       <#list searchHotList as searchHot>
            <a target="_blank" href="${searchHot.url }">${searchHot.title }</a>
        </#list> 
      </div>
    </div>
    <div class="shopingcar" id="topCart">
      <s class="setCart"></s><a href="${scheme}://${serverName}:8081${basePath}/cart/add" class="t" rel="nofollow">我的购物车</a>
      <span class="outline"></span>
      <span class="blank"></span>
      <div id="cart_lists">
        <!--cartContent-->   
        <div class="clear"></div>
      </div>
    </div>
  </div>
</div>
<%@page import="com.mysql.jdbc.interceptors.SessionAssociationInterceptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String basePath=request.getContextPath();
pageContext.setAttribute("basePath", basePath);
%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
    <title>百货之家</title>
    <meta name="Keywords" content="进口食品,网上超市,网上购物,进口奶粉,宜立方商城,sfbest,母婴用品,营养保健品,生鲜食品,粮油,酒水,休闲食品">
    <meta name="Description" content="精选来自60多个国家和地区的进口食品，正品行货，支持货到付款。销售包括进口奶粉、母婴用品、营养保健品、生鲜食品、粮油、酒水、休闲食品等近万种商品。">
    <meta property="wb:webmaster" content="3a008ad947166307">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/base_w1200.css?v=2016071333">
    <link rel="stylesheet" type="text/css" href="${basePath}/css/index.css?v=2016071312">
	<script type="text/javascript" src="${basePath}/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="${basePath}/js/global_index.js"></script>
<style id="style-1-cropbar-clipper">
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style></head>
<body>
<!-- header start -->
<jsp:include page="commons/header.jsp" />
<jsp:include page="commons/mainmenu.jsp" />
<!-- header end -->
<!----row1------->
<div class="slide_show" id="slide_show">
	<div class="indexW">
      <div id="index_slide" class="slide_wrap">
		<ol>
			 <c:forEach items="${bigAdList}" var="node" varStatus="status">
			<li>
			  <a name="sfbest_hp_hp_focus_${status.index }" class="fore_pic trackref" href="${node.url }" target="_blank"> 
				<img id="lunbo_1" alt="${node.title }"	src="${node.pic }">
			  </a>
			</li>
			</c:forEach> 
		</ol>
	</div>      
    <%--  <div class="rSide">	
		           <a name="sfbest_hp_hp_focus_right-ad1" class="a-img r-img1 trackref" href="/html/activity/1472440858.html" target="_blank">
          <img alt="8.30-9.5 月饼" src="${basePath}/images/html/ddf3f66b114f3a3bfbbe0b47693cdbf0.jpg">
          <div class="rmask"></div>
          </a>
		 		           <a name="sfbest_hp_hp_focus_right-ad2" class="a-img r-img2 trackref" href="/html/activity/1472471068.html" target="_blank">
          <img s="" alt="8.30-9.5" src="${basePath}/images/html/51e357022c1f826f13211222831a4b13.jpg">
          <div class="rmask"></div>
          </a>
		  
		 			
          <a name="sfbest_hp_hp_focus_right-ad3" class="a-img r-img3 trackref" href="/html/activity/1473011294.html" target="_blank">
          <img alt="9.5中秋菜谱" src="${basePath}/images/html/838abc2055e36f423701de255bbc9914.jpg">
          <div class="rmask"></div>
          </a>
		   	  </div> --%>   
 	</div>
      <ul class="none" id="lunboNum">
      			<c:forEach items="${bigAdList }" varStatus="status">
      			<li class="<c:if test="${status.index==0 }">cur</c:if>">${status.index+1 }</li>
      			</c:forEach>
		      </ul>
      <div class="indexbg" id="indexbg">
      <dl style="left: -1903px;">
	        <dd style="width: 1903px; background: rgb(20, 16, 13);"></dd>
	        <dd style="width: 1903px; background: rgb(119, 96, 86);"></dd>
	        <dd style="width: 1903px; background: rgb(17, 12, 55);"></dd>
	        <dd style="width: 1903px; background: rgb(239, 244, 248);"></dd>
	        <dd style="width: 1903px; background: rgb(231, 32, 37);"></dd>
	        <dd style="width: 1903px; background: rgb(128, 29, 92);"></dd>
	        <dd style="width: 1903px; background: rgb(117, 144, 1);"></dd>
	        <dd style="width: 1903px; background: rgb(253, 213, 29);"></dd>
	        </dl>
      </div>
    </div>
<!----row1 end------->
<!-- 口碑甄选 start -->
<div class="indexW mt1">
	<div class="bestbuy">
	<div class="b_left">
	<h2>推荐必买<span></span></h2>
				<ul class="bbig" id="bigPerfect">
				<c:forEach items="${recommendList }" varStatus="status"  var="recommend">
                    <li class="price_list0" goods="215383" eid="b_215383_0"
                        id="cx_b_215383_0"><a
                        href="#"
                        title="${recommend.title}" target="_blank"><img class="lazy"
                            src="${recommend.pic}"
                            style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn" style="top: 260px;">
                            <a pid="215383"
                                data_url="${recommend.url}"
                                href="javascript:void(0)" indexflag="1">加入购物车</a>
                        </div>
                        <div class="bprice" id="priceK_b_215383_0">
                            <span><sup>￥</sup></span>${recommend.subTitle}
                        </div>
                        <div style="position:relative;bottom:14px;left:10px;font-size:16px;font-weight:bold;font-family:'微软雅黑';color:#000">${recommend.titleDesc}</div>
                        </li>
                </c:forEach>
				</ul>
			</div>   
	<!-- 口碑甄选 end --> 
	<div class="rSide1">
			
    	<div class="rImg2">
      	<a name="sfbest_hp_hp_news_right-ad" class="trackref" href="/html/activity/1472464260.html" target="_blank"><img salt="9.2-9.5" src="${basePath}/images/goods/751d2091c008c2a49c1934545730f041.jpg"></a>
   		</div>
		 
        <div class="sfNews">
          <div class="rTitle"><h2>最新动态</h2><a href="/www/173/" target="_blank" class="more">更多&gt;</a></div>
          <ul>
		              <li><a name="sfbest_hp_hp_news_1" href="/www/173/8531.html" target="_blank" class=" red trackref" title="受杭州G20峰会影响的配送问题公告">受杭州G20峰会影响的配送问题公告</a></li>
		              <li><a name="sfbest_hp_hp_news_2" href="/www/173/8449.html" target="_blank" class=" trackref" title="购买燕麦片满49元抽奖活动中奖公告">购买燕麦片满49元抽奖活动中奖公告</a></li>
		              <li><a name="sfbest_hp_hp_news_3" href="/www/173/8447.html" target="_blank" class=" trackref" title="满299抽iPhone6s活动中奖公告">满299抽iPhone6s活动中奖公告</a></li>
		              <li><a name="sfbest_hp_hp_news_4" href="/www/173/8445.html" target="_blank" class=" trackref" title="《珍膳米，带你冲上云霄》活动中奖名单公布">《珍膳米，带你冲上云霄》活动中奖名单公布</a></li>
		            </ul>
        </div>
    </div>
	</div>
	<div class="clr"></div>
</div>
<!--楼层 start-->
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;"><a name="sfbest_hp_hp_banner_1" class="trackref" href="/html/activity/1472461333.html" target="_blank"><img alt="8.30-9.5" class="lazy" 
 src="${basePath}/images/goods/8f42d6d2deead3da7d50c8a702a3c939.jpg" style="display: inline;"></a>
	 </div>
<div class="indexW mt2 ie6 fresh">
    <div class="category">
	<ul class="mTitle">
		<li>
		<div class="cir"></div>
		<h2>
			<em></em>
			<a name="sfbest_hp_hp_floor1_floor-category1" class="trackref" href="/fresh/52-0-0-0-0-2-0-0-0-0-0.html" target="_blank">水果</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor1_floor-category2" class="trackref" href="/fresh/55-0-0-0-0-2-0-0-0-0-0.html" target="_blank">蔬菜</a>
		</h2>
		</li>
	</ul>
		<div class="lCont"><a name="sfbest_hp_hp_floor1_left-ad" class="trackref" href="/html/activity/1472459562.html" target="_blank">
		<img alt="8.30-9.5" class="lazy" src="${basePath}/images/goods/26336113289bf7273823080488a9d200.jpg" style="display: inline;"></a></div>
	  </div>
  <div class="sfRight">
      <div class="subCont">
				<ul class="pList" id="floor-gap-1">
					<li class="price_list1" eid="l_218031_7_297" goods="218031"
						id="cx_l_218031_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218031.html#trackref=sfbest_hp_hp_floor1_item1"
								target="_blank" title="泰国金柚700-1200g"><img class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="泰国金柚700-1200g"
								src="${basePath}/images/goods/160x160-1.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218031"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218031.html#trackref=sfbest_hp_hp_floor1_item1"
								target="_blank" title="泰国金柚700g-1200g">泰国金柚700g-1200g</a>
						</div>
						<div class="price" id="priceL_l_218031_7_297">
							<b>￥19.9</b>
						</div></li>
					<li class="price_list1" eid="l_218155_7_297" goods="218155"
						id="cx_l_218155_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218155.html#trackref=sfbest_hp_hp_floor1_item2"
								target="_blank" title="天山一号火焰山哈密瓜1.4kg-2kg【下单后3-5天发货】"><img
								class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="天山一号火焰山哈密瓜1.4kg-2kg【下单后3-5天发货】"
								src="${basePath}/images/goods/160x160-2.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218155"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218155.html#trackref=sfbest_hp_hp_floor1_item2"
								target="_blank" title="天山一号火焰山哈密瓜">天山一号火焰山哈密瓜</a>
						</div>
						<div class="price" id="priceL_l_218155_7_297">
							<b>￥22.8</b>
						</div></li>
					<li class="price_list1" eid="l_236853_7_297" goods="236853"
						id="cx_l_236853_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236853.html#trackref=sfbest_hp_hp_floor1_item3"
								target="_blank" title="一点红冬枣1000g"><img class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="一点红冬枣1000g"
								src="${basePath}/images/goods/160x160-3.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236853"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236853.html#trackref=sfbest_hp_hp_floor1_item3"
								target="_blank" title="一点红冬枣1kg">一点红冬枣1kg</a>
						</div>
						<div class="price" id="priceL_l_236853_7_297">
							<b>￥69.9</b>
						</div></li>
					<li class="price_list1" eid="l_218955_7_297" goods="218955"
						id="cx_l_218955_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218955.html#trackref=sfbest_hp_hp_floor1_item4"
								target="_blank" title="墨西哥牛油果420g（3个装）"><img class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="墨西哥牛油果420g（3个装）"
								src="${basePath}/images/goods/160x160-4.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218955"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218955.html#trackref=sfbest_hp_hp_floor1_item4"
								target="_blank" title="墨西哥牛油果3粒420g">墨西哥牛油果3粒420g</a>
						</div>
						<div class="price" id="priceL_l_218955_7_297">
							<b>￥29.9</b>
						</div></li>
					<li class="price_list1" eid="l_236863_7_297" goods="236863"
						id="cx_l_236863_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236863.html#trackref=sfbest_hp_hp_floor1_item5"
								target="_blank" title="佳沛zespri 佳沛新西兰金奇异果12个（36号）"><img
								class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="佳沛zespri 佳沛新西兰金奇异果12个（36号）"
								src="${basePath}/images/goods/160x160-5.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236863"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236863.html#trackref=sfbest_hp_hp_floor1_item5"
								target="_blank" title="佳沛 新西兰金奇异果12个">佳沛 新西兰金奇异果12个</a>
						</div>
						<div class="price" id="priceL_l_236863_7_297">
							<b>￥76</b>
						</div></li>
					<li class="price_list1" eid="l_236871_7_297" goods="236871"
						id="cx_l_236871_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236871.html#trackref=sfbest_hp_hp_floor1_item6"
								target="_blank" title="国产西梅1000g"><img class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="国产西梅1000g"
								src="${basePath}/images/goods/160x160-6.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236871"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/237/1800236871.html#trackref=sfbest_hp_hp_floor1_item6"
								target="_blank" title="国产西梅1kg">国产西梅1kg</a>
						</div>
						<div class="price" id="priceL_l_236871_7_297">
							<b>￥19.9</b>
						</div></li>
					<li class="price_list1" eid="l_218073_7_297" goods="218073"
						id="cx_l_218073_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218073.html#trackref=sfbest_hp_hp_floor1_item7"
								target="_blank" title="新西兰红玫瑰苹果720g(4个装)"><img class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="新西兰红玫瑰苹果720g(4个装)"
								src="${basePath}/images/goods/160x160-7.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218073"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218073.html#trackref=sfbest_hp_hp_floor1_item7"
								target="_blank" title="新西兰红玫瑰苹果4粒720g">新西兰红玫瑰苹果4粒720g</a>
						</div>
						<div class="price" id="priceL_l_218073_7_297">
							<b>￥35.8</b>
						</div></li>
					<li class="price_list1" eid="l_215405_7_297" goods="215405"
						id="cx_l_215405_7_297"><div class="pImg">
							<a
								href="http://www.e3mall.cn/html/products/216/1800215405.html#trackref=sfbest_hp_hp_floor1_item8"
								target="_blank" title="皇冠蜜梨1000g（4个装）"><img class="lazy"
								data="${basePath}/images/goods/160x160.jpg"
								alt="皇冠蜜梨1000g（4个装）"
								src="${basePath}/images/goods/160x160-8.jpg"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="215405"
									data_url="${basePath}/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/216/1800215405.html#trackref=sfbest_hp_hp_floor1_item8"
								target="_blank" title="皇冠蜜梨4粒1kg">皇冠蜜梨4粒1kg</a>
						</div>
						<div class="price" id="priceL_l_215405_7_297">
							<b>￥15.9</b>
						</div></li>
				</ul>
			</div>
      <div class="redge">
        <ul class="rHot">
		            <li><a name="sfbest_hp_hp_floor1_Keywords1" class="trackref" href="/productlist/search/?categoryId=8&amp;keyword=%E8%93%9D%E8%8E%93&amp;o=saleNum%3Adesc" target="_blank">蓝莓</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords2" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E6%A4%B0%E9%9D%92" target="_blank">椰青</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords3" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E7%81%AB%E9%BE%99%E6%9E%9C" target="_blank">火龙果</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords4" class="trackref" href="/productlist/search/?categoryId=8&amp;keyword=%E6%B0%B4%E8%9C%9C%E6%A1%83&amp;o=saleNum" target="_blank">水蜜桃</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords5" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E7%89%9B%E6%B2%B9%E6%9E%9C" target="_blank">牛油果</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords6" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E4%BD%B3%E6%B2%9B" target="_blank">佳沛</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords7" class="trackref" href="/productlist/search?inputBox=1&amp;categoryId=0&amp;keyword=%E6%96%B0%E5%A5%87%E5%A3%AB" target="_blank">新奇士</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords8" class="trackref" href="/fresh/6162-0-0-0-0-2-0-0-0-0-0.html" target="_blank">加工蔬菜</a></li>
		             <li><a name="sfbest_hp_hp_floor1_Keywords9" class="trackref" href="/fresh/55-9695-0-0-0-2-0-0-0-0-0.html" target="_blank">加利利</a></li>
		           </ul>
        <div class="clr"></div>
        <div class="rimg">
		     
          <a name="sfbest_hp_hp_floor1_right-ad" class="ht1 trackref" href="/html/activity/1472547970.html" target="_blank"><img alt="8.30-9.5" class="lazy" data="http://001.sfimg.cn/web/1dd1130a/1dd1130a9c0103f6ec8a13fa13f27641.jpg" src="http://001.sfimg.cn/web/1dd1130a/1dd1130a9c0103f6ec8a13fa13f27641.jpg" style="display: inline;"></a>
          <div class="rbutton"><a href="/html/activity/1472547970.html" target="_blank"></a></div>
		          </div>
      </div>
  </div>
  <!----天天生鲜 -->
    <span class="clr"></span>
</div>
<!--楼层 end -->

<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
</body>
</html>
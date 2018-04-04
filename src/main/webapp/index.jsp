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
    <link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.4.1/themes/gray/easyui.css" />
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.4.1/themes/icon.css" />
	<script type="text/javascript" src="${basePath}/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="${basePath}/js/global_index.js"></script>
	<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${basePath}/js/wmShow.js"></script>
<script>
function getContextPath() {
    return window.location.protocol + "//" + window.location.hostname;
}
var _ticket = $.cookie("token");
if(_ticket){
	$.ajax({
		url : getContextPath()+":8082/user/token/" + _ticket,
		dataType : "jsonp",
		type : "GET",
		success : function(data){
			if(data!=null){
				var nickname = data.nickname;
				wmShow.show({
					time:5000,
					boxBgColor:"#ccc",
					width:"350px",
					height:"200px",
					border:"5px solid #ccc",
					title:"提示",
					body:"欢迎"+nickname,
					bodyStyle:{
						borderRadius:"5px",
						color:"#000",
						fontSize:"20px",
						padding:"10px"
					},
					titleStyle:{
							background:"#428bca",
							borderRadius:"5px",
							color:"#000",
							fontSize:"16px",
							padding:"5px"
					}
				})
			}
		}
	});
}
</script>
<style>
	ul li img{transition:all 1s;}
	ul li img:hover{transform:scale(1.2)}
</style>
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
<body bgColor="#f0f3ef">
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
    <%-- <div class="rSide">	
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
		   	  </div>   --%>
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
                    <li  class="price_list0" goods="215383" eid="b_215383_0"
                        id="cx_b_215383_0"><a
                        href="${recommend.url}"
                        title="${recommend.titleDesc}" target="_blank"><img class="lazy"
                            src="${recommend.pic}"
                            style="display: inline;"></a>
                    <div class="gBtn p-btn bbtn" style="top: 260px;">
                            <a pid="215383"
                                data_url="${recommend.url}"
                                href="${recommend.url}" indexflag="1">加入购物车</a>
                        </div>
                        <div class="bprice" id="priceK_b_215383_0">
                            <span><sup>￥</sup></span>${recommend.subTitle}
                        </div>
                        <div style="position:absolute;bottom:14px;left:10px;font-size:15px;
                        font-weight:bold;font-family:'微软雅黑';color:#000;width:200px;overflow:hidden;height:16px;
                        line-height:16px;
                        white-space: nowrap;text-overflow: ellipsis;">${recommend.titleDesc}</div>
                        </li>
                </c:forEach>
				</ul>
			</div>   
	<!-- 口碑甄选 end --> 
	<div class="rSide1">
			
    	<%-- <div class="rImg2">
      	<a name="sfbest_hp_hp_news_right-ad" class="trackref" href="/html/activity/1472464260.html" target="_blank"><img salt="9.2-9.5" src="${basePath}/images/goods/751d2091c008c2a49c1934545730f041.jpg"></a>
   		</div> --%>
        <div class="sfNews">
          <div class="rTitle"><h2>最新动态</h2><a href="${basePath }/content/news/more" target="_blank" class="more">更多&gt;</a></div>
          <ul>
          		<c:forEach items="${newsFlashList }" varStatus="status"  var="newsFlash">
          		<li><a name="sfbest_hp_hp_news_1" href="${newsFlash.url }?id=${newsFlash.id}" target="_blank" class=" red trackref" title="${newsFlash.title }">${newsFlash.titleDesc }</a></li>
                </c:forEach>
		  </ul>
        </div>
    </div>
	</div>
	<div class="clr"></div>
</div>
<!--楼层 start-->
<div class="indexW mt2 full_ad" style="width:1190px;padding-left:10px;">
<!-- 智能先锋 start -->
<div class="floorhd" style="color:#222;padding:0 50px;font-family:'微软雅黑',font-weight:normal;font-size:28px;line-height:45px;text-align:center">-----智能先锋------</div>
	 </div>
<div class="indexW mt2 ie6 fresh">
    <div class="category">
	<ul class="mTitle" style="width:250px">
		<li>
		<div class="cir"></div>
		<h2>
			<em></em>
			<a name="sfbest_hp_hp_floor1_floor-category1" class="trackref" href="javascript:void(0)" target="_blank">智能</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor1_floor-category2" class="trackref" href="javascript:void(0)" target="_blank">先锋</a>
		</h2>
		</li>
	</ul>
		<div class="lCont"><a name="sfbest_hp_hp_floor1_left-ad" class="trackref" href="javascript:void(0)" target="_blank">
		<img alt="8.30-9.5" class="lazy"  src="${basePath}/images/index/智能先锋.jpg!q90!cc_340x420" style="display: inline;"></a></div>
	  </div>
  <div class="sfRight">
      <div class="subCont">
				<ul class="pList" id="floor-gap-1">
				<c:forEach items="${intelligentPioneerList }" varStatus="status"  var="intelligentPioneer">
					<li class="price_list1" eid="l_218031_7_297" goods="218031"
						id="cx_l_218031_7_297"><div class="pImg">
							<a
								href="${intelligentPioneer.url }"
								target="_blank" title="${intelligentPioneer.title }"><img class="lazy"
								data="${intelligentPioneer.pic}"
								alt="泰国金柚700-1200g"
								src="${intelligentPioneer.pic}"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218031"
									data_url="${intelligentPioneer.pic}"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218031.html#trackref=sfbest_hp_hp_floor1_item1"
								target="_blank" title="${intelligentPioneer.title}">${intelligentPioneer.titleDesc}</a>
						</div>
						<div class="price" id="priceL_l_218031_7_297">
							<b>￥${intelligentPioneer.subTitle}</b>
						</div></li>
                </c:forEach>
					
				</ul>
			</div>
      <!-- <div class="redge">
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
      </div> -->
  </div>
	 <!-- 智能先锋 end -->
	 <!-- 生活百货 start -->
<div class="floorhd" style="color:#222;padding:0 50px;font-family:'微软雅黑',font-weight:normal;font-size:28px;line-height:45px;text-align:center">-----生活百货------</div>
	 </div>
<div class="indexW mt2 ie6 fresh">
    <div class="category">
	<ul class="mTitle" style="width:250px">
		<li>
		<div class="cir"></div>
		<h2>
			<em></em>
			<a name="sfbest_hp_hp_floor1_floor-category1" class="trackref" href="javascript:void(0)" target="_blank">生活</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor1_floor-category2" class="trackref" href="javascript:void(0)" target="_blank">百货</a>
		</h2>
		</li>
	</ul>
		<div class="lCont"><a name="sfbest_hp_hp_floor1_left-ad" class="trackref" href="javascript:void(0)" target="_blank">
		<img alt="8.30-9.5" class="lazy"  src="${basePath}/images/index/生活百货.jpg!q90!cc_340x420" style="display: inline;"></a></div>
	  </div>
  <div class="sfRight">
      <div class="subCont">
				<ul class="pList" id="floor-gap-1">
				<c:forEach items="${lifeStyleList }" varStatus="status"  var="lifeStyle">
					<li class="price_list1" eid="l_218031_7_297" goods="218031"
						id="cx_l_218031_7_297"><div class="pImg">
							<a
								href="${lifeStyle.url }"
								target="_blank" title="${lifeStyle.title }"><img class="lazy"
								data="${lifeStyle.pic}"
								alt="泰国金柚700-1200g"
								src="${lifeStyle.pic}"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218031"
									data_url="${lifeStyle.pic}"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218031.html#trackref=sfbest_hp_hp_floor1_item1"
								target="_blank" title="${lifeStyle.title}">${lifeStyle.titleDesc}</a>
						</div>
						<div class="price" id="priceL_l_218031_7_297">
							<b>￥${lifeStyle.subTitle}</b>
						</div></li>
                </c:forEach>
					
				</ul>
			</div>
  </div>
	 <!-- 生活百货 end -->
	 <!-- 居家优品 start -->
<div class="floorhd" style="color:#222;padding:0 50px;font-family:'微软雅黑',font-weight:normal;font-size:28px;line-height:45px;text-align:center">-----居家优品------</div>
	 </div>
<div class="indexW mt2 ie6 fresh">
    <div class="category">
	<ul class="mTitle" style="width:250px">
		<li>
		<div class="cir"></div>
		<h2>
			<em></em>
			<a name="sfbest_hp_hp_floor1_floor-category1" class="trackref" href="javascript:void(0)" target="_blank">居家</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor1_floor-category2" class="trackref" href="javascript:void(0)" target="_blank">优品</a>
		</h2>
		</li>
	</ul>
		<div class="lCont"><a name="sfbest_hp_hp_floor1_left-ad" class="trackref" href="javascript:void(0)" target="_blank">
		<img alt="8.30-9.5" class="lazy"  src="${basePath}/images/index/居家优品.jpg!q90!cc_340x420" style="display: inline;"></a></div>
	  </div>
  <div class="sfRight">
      <div class="subCont">
				<ul class="pList" id="floor-gap-1">
				<c:forEach items="${familyStyleList }" varStatus="status"  var="familyStyle">
					<li class="price_list1" eid="l_218031_7_297" goods="218031"
						id="cx_l_218031_7_297"><div class="pImg">
							<a
								href="${familyStyle.url }"
								target="_blank" title="${familyStyle.title }"><img class="lazy"
								data="${familyStyle.pic}"
								alt="泰国金柚700-1200g"
								src="${familyStyle.pic}"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218031"
									data_url="${familyStyle.pic}"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218031.html#trackref=sfbest_hp_hp_floor1_item1"
								target="_blank" title="${familyStyle.title}">${familyStyle.titleDesc}</a>
						</div>
						<div class="price" id="priceL_l_218031_7_297">
							<b>￥${familyStyle.subTitle}</b>
						</div></li>
                </c:forEach>
					
				</ul>
			</div>
  </div>
	 <!-- 居家优品 end -->
	 <!-- 时尚达人 start -->
<div class="floorhd" style="color:#222;padding:0 50px;font-family:'微软雅黑',font-weight:normal;font-size:28px;line-height:45px;text-align:center">-----时尚达人------</div>
	 </div>
<div class="indexW mt2 ie6 fresh">
    <div class="category">
	<ul class="mTitle" style="width:250px">
		<li>
		<div class="cir"></div>
		<h2>
			<em></em>
			<a name="sfbest_hp_hp_floor1_floor-category1" class="trackref" href="javascript:void(0)" target="_blank">时尚</a>&nbsp;&nbsp;<a name="sfbest_hp_hp_floor1_floor-category2" class="trackref" href="javascript:void(0)" target="_blank">达人</a>
		</h2>
		</li>
	</ul>
		<div class="lCont"><a name="sfbest_hp_hp_floor1_left-ad" class="trackref" href="javascript:void(0)" target="_blank">
		<img alt="8.30-9.5" class="lazy"  src="${basePath}/images/index/时尚达人.jpg!q90!cc_340x420" style="display: inline;"></a></div>
	  </div>
  <div class="sfRight">
      <div class="subCont">
				<ul class="pList" id="floor-gap-1">
				<c:forEach items="${fashionStyleList }" varStatus="status"  var="fashionStyle">
					<li class="price_list1" eid="l_218031_7_297" goods="218031"
						id="cx_l_218031_7_297"><div class="pImg">
							<a
								href="${fashionStyle.url }"
								target="_blank" title="${fashionStyle.title }"><img class="lazy"
								data="${fashionStyle.pic}"
								alt="泰国金柚700-1200g"
								src="${fashionStyle.pic}"
								style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218031"
									data_url="${fashionStyle.pic}"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://www.e3mall.cn/html/products/219/1800218031.html#trackref=sfbest_hp_hp_floor1_item1"
								target="_blank" title="${fashionStyle.title}">${fashionStyle.titleDesc}</a>
						</div>
						<div class="price" id="priceL_l_218031_7_297">
							<b>￥${fashionStyle.subTitle}</b>
						</div></li>
                </c:forEach>
				</ul>
			</div>
  </div>
	 <!-- 居家优品 end -->
  <!----天天生鲜 -->
    <span class="clr"></span>
</div>
<!--楼层 end -->
<!-- footer start -->
<jsp:include page="commons/footer.jsp" />
<!-- footer end -->
</body>
</html>
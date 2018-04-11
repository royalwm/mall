<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String basePath = request.getContextPath();
    pageContext.setAttribute("basePath", basePath);
%>
<div class="mainNav">
	<div class="navmenu">
		<div class="categories hover">
			<div class="dt">
				<a name="sfbest_hp_hp_menu_all" class="trackref topall"
					href="javascript:void(0)">精选商品分类</a>
			</div>
			<div id="allSort" class="dd">
				<div id="booksort">
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="fresh"></p>
								<a class="trackref" href="javascript:void(0)" fro_id="1" target="_blank"
									name="sfbest_Uhead_Uhead_menu_category1-hot0">肉类海鲜</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛肉"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category1-hot1">牛肉</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=虾"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category1-hot2">虾</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=羊肉"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category1-hot3">羊肉</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=鱼"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category1-hot4">鱼</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category1-2" class="trackref"
												href="javascript:void(0)"
												target="_blank">精品肉类 </a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category1-2"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛肉">牛肉</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-3"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=羊肉">羊肉</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-4"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=猪肉">猪肉</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-5"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=禽类">禽类</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-6"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=腌制肉品">腌腊肉品</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-7"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=肉类礼盒">肉类礼盒</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category1-8" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=澳洲牛肉">澳洲牛肉</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category1-9" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛排">牛排</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category1-10" class="trackref"
												href="javascript:void(0)">海鲜水产
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category1-11"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=虾">虾</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-12"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=鱼">鱼</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-13"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蟹">蟹/贝</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-14"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=参鲍">参鲍</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-15"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=海鲜礼盒">海鲜礼盒</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-16"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=其他水产">其他水产</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category1-17" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白虾">白虾</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category1-18" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=鳕鱼">鳕鱼</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category1-19" class="trackref"
												href="javascript:void(0)">速冻食品
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category1-20"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=中式面点">中式面点</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-21"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=西式面点">西式面点</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-22"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=西式料理">西式料理</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-23"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=加工水产">加工水产</a>
											<a name="sfbest_Uhead_Uhead_menu_category1-24"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=其他肉类">其他肉类</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category1-25" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=饺子">饺子</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category1-26" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=披萨">披萨</a>
										</dd>
									</dl>

								</div>
								<a name="sfbest_Uhead_Uhead_menu_category1-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛肉大餐"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1463455028.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="baby"></p>
								<a class="trackref" name="sfbest_hp_hp_menu_category2-hot1"
									href="javascript:void(0)" fro_id="2" target="_blank">熟食蛋奶</a>
							</h3>
							<ul class="subCat">
								<li><a name="sfbest_Uhead_Uhead_menu_category2-hot1"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=熟食"
									target="_blank">熟食</a></li>
								<li><a name="sfbest_Uhead_Uhead_menu_category2-hot2"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蛋品"
									target="_blank">蛋品</a></li>
								<li><a name="sfbest_Uhead_Uhead_menu_category2-hot3"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=低温奶"
									target="_blank">低温奶</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a name="sfbest_hp_hp_menu_category2-1"
												class="trackref"
												href="javascript:void(0)">肉类熟食</a></strong>
										</dt>
										<dd>
											<a name="sfbest_hp_hp_menu_category2-2" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=香肠">香肠</a>
											<a name="sfbest_hp_hp_menu_category2-3" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=火腿">火腿</a>
											<a name="sfbest_hp_hp_menu_category2-4" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=培根">培根</a>
											<a name="sfbest_hp_hp_menu_category2-5" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=其他熟食">其他熟食</a>
											<a style="color: #fa6400;"
												name="sfbest_hp_hp_menu_category2-6" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=荷美尔">荷美尔</a>
											<a style="color: #fa6400;"
												name="sfbest_hp_hp_menu_category2-7" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=月盛斋">月盛斋</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a name="sfbest_hp_hp_menu_category2-8"
												class="trackref"
												href="javascript:void(0)">蛋品</a></strong>
										</dt>
										<dd>
											<a name="sfbest_hp_hp_menu_category2-9" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=鸡蛋">鸡蛋</a>
											<a name="sfbest_hp_hp_menu_category2-10" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=松花蛋">松花蛋</a>
											<a name="sfbest_hp_hp_menu_category2-10" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=咸鸭蛋">咸鸭蛋</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a name="sfbest_hp_hp_menu_category2-13"
												class="trackref"
												href="javascript:void(0)">冷藏奶品饮品</a></strong>
										</dt>
										<dd>
											<a name="sfbest_hp_hp_menu_category2-14" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=低温奶">低温奶</a>
											<a name="sfbest_hp_hp_menu_category2-15" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奶制品">奶制品</a>
											<a name="sfbest_hp_hp_menu_category2-16" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=冷藏果汁">冷藏果汁</a>
											<a name="sfbest_hp_hp_menu_category2-17" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奶酪">奶酪</a>
											<a name="sfbest_hp_hp_menu_category2-18" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=黄油">黄油</a>
											<a name="sfbest_hp_hp_menu_category2-19" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=酸奶">酸奶</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a name="sfbest_hp_hp_menu_category2-20"
												class="trackref"
												href="javascript:void(0)">速食冰品</a></strong>
										</dt>
										<dd>
											<a name="sfbest_hp_hp_menu_category2-21" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=冰淇淋">冰淇淋</a>
											<a name="sfbest_hp_hp_menu_category2-22" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=冷冻甜点">冷冻甜点</a>
											<a style="color: #fa6400;"
												name="sfbest_hp_hp_menu_category2-6" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=哈根达斯">哈根达斯</a>
										</dd>
									</dl>

								</div>
								<a name="sfbest_hp_hp_menu_category2-banner" class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=酱肉"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1463456854.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="pastry"></p>
								<a class="trackref" href="javascript:void(0)"
									fro_id="3" target="_blank"
									name="sfbest_hp_hp_menu_category3-hot0">水果蔬菜</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=水果"
									target="_blank" name="sfbest_Uhead_Uhead_menu_category3-hot1">水果</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蔬菜"
									target="_blank" name="sfbest_Uhead_Uhead_menu_category3-hot3">蔬菜</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a name="sfbest_hp_hp_menu_category3-1"
												class="trackref"
												href="javascript:void(0)">水果</a></strong>
										</dt>
										<dd>
											<a name="sfbest_hp_hp_menu_category3-2" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=车厘子">车厘子</a>
											<a name="sfbest_hp_hp_menu_category3-2" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=樱桃">樱桃</a>
											<a name="sfbest_hp_hp_menu_category3-3" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=橙">橙类</a>
											<a name="sfbest_hp_hp_menu_category3-4" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=柚">柚类</a>
											<a name="sfbest_hp_hp_menu_category3-5" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=柠檬">柠檬</a>
											<a name="sfbest_hp_hp_menu_category3-6" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=苹果">苹果</a>
											<a name="sfbest_hp_hp_menu_category3-7" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛油果">牛油果</a>
											<a name="sfbest_hp_hp_menu_category3-8" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=香蕉">香蕉</a>
											<a name="sfbest_hp_hp_menu_category3-9" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=火龙果">火龙果</a>
											<a name="sfbest_hp_hp_menu_category3-10" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=菠萝">菠萝</a>
											<a name="sfbest_hp_hp_menu_category3-10" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=凤梨">凤梨</a>
											<a name="sfbest_hp_hp_menu_category3-10" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=猕猴桃">猕猴桃</a>
											<a name="sfbest_hp_hp_menu_category3-12" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奇异果">奇异果</a>
											<a name="sfbest_hp_hp_menu_category3-11" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=梨">梨</a>
											<a name="sfbest_hp_hp_menu_category3-13" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=提子">提子</a>
											<a name="sfbest_hp_hp_menu_category3-13" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=葡萄">葡萄</a>
											<a name="sfbest_hp_hp_menu_category3-14" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=瓜">瓜类</a><a
												name="sfbest_hp_hp_menu_category3-16" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=桃">桃</a>
											<a name="sfbest_hp_hp_menu_category3-17" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=芒果">芒果</a>
											<a name="sfbest_hp_hp_menu_category3-18" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=水果">原产地水果</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category3-21" class="trackref"
												href="javascript:void(0)">蔬菜</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category3-22"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=有机蔬菜">有机蔬菜</a>
											<a name="sfbest_Uhead_Uhead_menu_category3-24"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=菌菇">菌菇类</a>
											<a name="sfbest_Uhead_Uhead_menu_category3-25"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=菜">叶菜</a>
											<a name="sfbest_Uhead_Uhead_menu_category3-26"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=豆">豆</a>
											<a name="sfbest_Uhead_Uhead_menu_category3-27"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蔬菜">蔬菜</a>
											<a name="sfbest_Uhead_Uhead_menu_category3-29"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=礼盒">礼盒</a>
											<a style="color: #fa6400;"
												name="sfbest_hp_hp_menu_category2-30" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=加利利">加利利</a>
											<a style="color: #fa6400;"
												name="sfbest_hp_hp_menu_category2-31" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=黄瓜">黄瓜</a>
										</dd>
									</dl>
								</div>
								<a name="sfbest_Uhead_Uhead_menu_category3-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=水果"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1468837571.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="drinks"></p>
								<a class="trackref"
									href="javascript:void(0)"
									fro_id="4" target="_blank"
									name="javascript:void(0)">酒水饮料</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=葡萄酒"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category4-hot1">葡萄酒 </a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=啤酒"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category4-hot2">啤酒</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白酒"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category4-hot3">白酒</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛奶"
									target="_blank" class="trackref"
									name="sfbest_Uhead_Uhead_menu_category4-hot4">牛奶</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a name="sfbest_hp_hp_menu_category4-1"
												class="trackref"
												href="javascript:void(0)">葡萄酒</a></strong>
										</dt>
										<dd>
											<a name="sfbest_hp_hp_menu_category4-2" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=红葡萄酒">红葡萄酒</a>
											<a name="sfbest_hp_hp_menu_category4-3" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白葡萄酒">白葡萄酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-4"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=桃红葡萄酒">桃红葡萄酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-5"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=香槟酒">香槟酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-5"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=起泡酒">起泡酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-6"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=甜酒">甜酒/贵腐酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-8"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=礼盒">礼盒</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-9" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=列级庄">列级庄</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-10" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=中级庄">中级庄</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category4-11" class="trackref"
												href="javascript:void(0)">洋酒
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category4-12"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=威士忌">威士忌</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-13"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=伏特加">伏特加</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-14"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白兰地">白兰地</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-14"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=利口酒">利口酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-15"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=朗姆酒">朗姆酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-16"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=预调酒">预调酒</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-19" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=芝华士">芝华士</a> <a
												style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-20" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=马爹利">马爹利</a> <a
												style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-21" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=人头马">人头马</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category4-22" class="trackref"
												href="javascript:void(0)">啤酒</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category4-23"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=黑啤">黑啤</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-24"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=黄啤">黄啤</a>
											<a name="sfbest_Uhead_Uhead_menu_category2-25"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白啤">白啤</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-26"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=果味啤酒">果味啤酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-27"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=量贩装啤酒">量贩装啤酒</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-26" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=比利时啤酒">比利时啤酒</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category4-27" class="trackref"
												href="javascript:void(0)">白酒</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category4-28"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=茅台">茅台</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-29"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=五粮液">五粮液</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-30"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=剑南春">剑南春</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-31"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=洋河">洋河</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-32"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=郎酒">郎酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-33"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=泸州老窖">泸州老窖</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-34"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=汾酒">汾酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-35"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛栏山">牛栏山</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-38" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白云边">白云边</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-39" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=古井贡">古井贡</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category4-40" class="trackref"
												href="javascript:void(0)">其他酒品
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category4-41"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=黄酒">黄酒</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-42"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=养生酒">养生酒</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-43" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=竹叶青">竹叶青</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category4-42" class="trackref"
												href="javascript:void(0)">牛奶乳品
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category4-43"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牛奶">牛奶</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-44"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=低温奶">低温奶</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-45"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=酸奶">酸奶</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-47" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=韦沃">韦沃</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category4-48" class="trackref"
												href="javascript:void(0)">饮料/水
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category4-49"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=碳酸饮料">碳酸饮料</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-50"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=果蔬饮料">果蔬饮料</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-51"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=茶饮料">茶饮料</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-52"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=水">水</a>
											<a name="sfbest_Uhead_Uhead_menu_category4-53"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=咖啡">咖啡饮料</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-55" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=巴黎水">巴黎水</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category4-56" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=伯郎">伯朗</a>
										</dd>
									</dl>
								</div>
								<a name="sfbest_Uhead_Uhead_menu_category4-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=威士忌"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1471311447.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="food"></p>
								<a class="trackref"
									href="javascript:void(0)"
									fro_id="5" target="_blank"
									name="sfbest_Uhead_Uhead_menu_category5-hot0">休闲食品</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=巧克力"
									target="_blank" name="sfbest_Uhead_Uhead_menu_category5-hot1"
									class="trackref">巧克力</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=坚果"
									target="_blank name="
									sfbest_uhead_uhead_menu_category5-hot2"="" class="trackref""="">坚果</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=曲奇"
									target="_blank" name="sfbest_Uhead_Uhead_menu_category5-hot3"
									class="trackref">曲奇</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=月饼"
									target="_blank" name="sfbest_Uhead_Uhead_menu_category5-hot4"
									class="trackref">月饼</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category5-1" class="trackref"
												href="javascript:void(0)">休闲零食</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category5-2"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=果干">果干</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-3"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=肉类零食">肉类零食</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-4"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=果冻">果冻</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-5"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=年节礼盒">年节礼盒</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category5-7" class="trackref"
												href="javascript:void(0)">坚果炒货</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category5-8"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=扁桃仁">扁桃仁</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-9"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=开心果">开心果</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-10"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=腰果">腰果</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-11"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=松子">松子</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-12"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=瓜子">瓜子</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-13"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=花生">花生</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category5-15" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=万多福">万多福</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category5-16" class="trackref"
												href="javascript:void(0)">糖果/巧克力
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category5-17"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=巧克力">巧克力</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-18"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=糖果">糖果</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category5-19" class="trackref"
												href="javascript:void(0)">饼干糕点
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category5-20"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=曲奇">曲奇</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-21"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=饼干">饼干</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-22"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=糕点">糕点</a>
											<a name="sfbest_Uhead_Uhead_menu_category5-22"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=威化">威化</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category5-21" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奇华">奇华</a> <a
												style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category5-22" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=祖母">祖母</a> <a
												style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category5-22" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=捷森">捷森</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category5-19" class="trackref"
												href="javascript:void(0)">季节性食品
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category5-20"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=月饼">月饼</a>
										</dd>
									</dl>
								</div>
								<a name="sfbest_Uhead_Uhead_menu_category5-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=肉干"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1472521250.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="tea"></p>
								<a class="trackref"
									href="javascript:void(0)"
									fro_id="6" target="_blank"
									name="sfbest_hp_hp_menu_category6-hot0">冲调茶饮</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蜂蜜"
									name="sfbest_hp_hp_menu_category6-hot1 target=" _blank"="">蜂蜜</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=咖啡"
									name="sfbest_hp_hp_menu_category6-hot2 target=" _blank"="">咖啡</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=麦片"
									name="sfbest_hp_hp_menu_category6-hot3 target=" _blank"="">麦片</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=茶"
									name="sfbest_hp_hp_menu_category6-hot4 target=" _blank"="">茶</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category6-1" class="trackref"
												href="javascript:void(0)">休闲冲饮</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category6-2"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蜂蜜">蜂蜜</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-3"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=粥">粥</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-4"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=蜜炼茶">蜜炼茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-5"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=巧克力粉">巧克力粉</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-6"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奶茶">奶茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-7"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=天然谷物粉">天然谷物粉</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-8"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=麦卢卡">麦卢卡</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-9"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=柚子茶">柚子茶</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-10"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=维多麦">维多麦</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-11"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=果酱">果酱/涂抹酱</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category6-10" class="trackref"
												href="javascript:void(0)">咖啡/伴侣</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category6-11"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=速溶咖啡">速溶咖啡</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-12"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=咖啡粉">咖啡粉/豆</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-13"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=调糖">调糖/伴侣</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category6-15" class="trackref"
												href="javascript:void(0)">进口茶</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category6-16"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=红茶">红茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-17"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=花茶">花茶/果茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-17"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=果茶">果茶</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-19" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=斯里兰卡">斯里兰卡</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category6-20" class="trackref"
												href="javascript:void(0)">国产茗茶</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category6-21"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=绿茶">绿茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-22"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=红茶">红茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-23"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=白茶">白茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-24"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=乌龙茶">乌龙茶</a>
											<a name="sfbest_Uhead_Uhead_menu_category6-25"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=黑茶">黑茶/普洱茶</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-28" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=铁观音">铁观音</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category6-29" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=大红袍">大红袍</a>
										</dd>
									</dl>
								</div>
								<a name="sfbest_Uhead_Uhead_menu_category6-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=茶"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1472521203.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="oil"></p>
								<a class="trackref"
									href="javascript:void(0)"
									fro_id="3" target="_blank"
									name="sfbest_Uhead_Uhead_menu_category7-hot0">粮油干货</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=橄榄油"
									target="_blank">橄榄油</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=大米"
									target="_blank">大米</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=枣"
									target="_blank">枣</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category7-1" class="trackref"
												href="javascript:void(0)">食用油</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category7-2"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=橄榄油">橄榄油</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-5"
												class="trackref" style="color: #fa6400;"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=欧丽薇兰">欧丽薇兰</a>
											<a style="color: #fa6400;"
												name="sfbest_Uhead_Uhead_menu_category7-6" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=希腊橄榄油">希腊橄榄油</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category7-7" class="trackref"
												href="javascript:void(0)">米面杂粮</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category7-8"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=大米">大米</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-9"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=意大利面">意大利面</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-10"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=面粉">面粉/面条</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-11"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=杂粮">杂粮</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category7-13" class="trackref"
												href="javascript:void(0)">厨房调料</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category7-14"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=酱油">酱油</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-14"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=醋">醋</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-15"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=调料油">调味油/汁</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-16"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=调料酱">调味料/粉/酱</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category7-20" class="trackref"
												href="javascript:void(0)">方便速食</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category7-21"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=速食面">速食面/汤</a><a
												name="sfbest_Uhead_Uhead_menu_category7-23" class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=速食罐头">速食罐头</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category7-24" class="trackref"
												href="javascript:void(0)">南北干货
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category7-25"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=和田枣">和田枣</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-27"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=香菇">香菇</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-28"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=茶树菇">茶树菇</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-29"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=猴头菇">猴头菇</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-31"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=木耳">木耳</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-32"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=银耳">银耳</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-33"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=枸杞">枸杞</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-34"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=莲子">莲子</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-35"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=紫菜">紫菜</a>
											<a name="sfbest_Uhead_Uhead_menu_category7-37"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=桂圆">桂圆</a>
										</dd>
									</dl>
								</div>
								<a name="sfbest_Uhead_Uhead_menu_category7-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=橄榄油"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1472521236.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<span class="i-master">
							<h3 class="dev">
								<p class="health"></p>
								<a class="trackref" href="javascript:void(0)" fro_id="8"
									target="_blank" name="sfbest_Uhead_Uhead_menu_category8-hot0">优选国际
								</a>
							</h3>
							<ul class="subCat">
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奶粉"
									name="sfbest_Uhead_Uhead_menu_category8-hot1" target="_blank">奶粉</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=纸尿裤"
									name="sfbest_Uhead_Uhead_menu_category8-hot2" target="_blank">纸尿裤</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=韩妆"
									name="sfbest_Uhead_Uhead_menu_category8-hot3" target="_blank">韩妆</a></li>
								<li><a
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=保健"
									name="sfbest_Uhead_Uhead_menu_category8-hot4" target="_blank">保健</a></li>
							</ul> <s></s>
						</span>
						<div class="i-cm">
							<div class="i-left">
								<div class="cat-sort">
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category8-1" class="trackref"
												href="javascript:void(0)">母婴食品</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category8-2"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奶粉">奶粉</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-7"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=羊奶粉">羊奶粉</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-8"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=有机奶粉">有机奶粉</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-9"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=辅食">辅食</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-10"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=米粉">米粉/米糊</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-11"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=宝宝零食">宝宝零食</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-12"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=营养品">营养品</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-13"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=钙铁锌">钙铁锌</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-14"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=维生素">维生素</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-15"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=DHA">DHA</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category8-16" class="trackref"
												href="javascript:void(0)">母婴用品</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category8-18"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=拉拉裤">拉拉裤</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-19"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=婴儿湿巾">婴儿湿巾</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-20"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=婴儿洗护">婴儿洗护</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-21"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=洗发沐浴">洗发沐浴</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-22"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=婴儿护肤">婴儿护肤</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-23"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=驱蚊蛀虫">驱蚊防虫</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-24"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=口腔护理">口腔护理</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-25"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=喂养用品">喂养用品</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-26"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=妈妈用品">妈妈用品</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category8-27" class="trackref"
												href="javascript:void(0)">美妆个护
											</a></strong>
										</dt>
										<dd>
											<a name="sfbest_Uhead_Uhead_menu_category8-28"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=面部护理">面部护理</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-29"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=缤纷彩妆">缤纷彩妆</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-30"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=口腔护理">口腔护理</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-31"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=美发护发">美发护发</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-32"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=沐浴用品">沐浴用品</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-33"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=女士护理">女士护理</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-34"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=面膜">面膜</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-35"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=防晒">防晒</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-36"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=洁面">洁面</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-37"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=护肤套装">护肤套装</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-38"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=BB霜">BB霜</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-40"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=牙膏">牙膏</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-41"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=洗发露">洗护发</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-42"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=沐浴露">沐浴露</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-43"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=卫生巾">卫生巾</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-44"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=女性洗液">女性洗液</a>
										</dd>
									</dl>
									<dl>
										<dt>
											<strong><a
												name="sfbest_Uhead_Uhead_menu_category8-45" class="trackref"
												href="javascript:void(0)">营养保健</a></strong>
										</dt>
										<dd>

											<a name="sfbest_Uhead_Uhead_menu_category8-46"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=营养补充">营养补充</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-47"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=健康养护">健康养护</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-48"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=女士保养">女士保养</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-49"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=男士保健">男士保健</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-50"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=关爱老年">关爱老年</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-51"
												class="trackref"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=滋补养生">滋补养生</a>
											<a name="sfbest_Uhead_Uhead_menu_category8-53"
												class="trackref" style="color: #fa6400;"
												href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=欧洲保健">澳洲保健</a>
										</dd>
									</dl>
								</div>
								<a name="sfbest_Uhead_Uhead_menu_category8-banner"
									class="trackref"
									href="<%=request.getScheme() %>://<%=request.getServerName() %>:8080/solr?keyword=奶粉"
									target="_blank">
									<div class="i-img">
										<img src="${basePath}/images/html/1471311388.jpg">
									</div>
								</a>
							</div>
							<div class="i-right">
								<span onclick="$('.item').removeClass('hover')" class="i-close"></span>
							</div>
						</div>
					</div>
				</div>

				<!----百度统计代码开始------->

				<!----百度统计代码结束------->
			</div>
		</div>
		<!----menufloat------->
		<div class="menu1">
			<ul>
				<li><a name="sfbest_hp_hp_nav_nav1" href="${basePath }"
					class="trackref btndown">首页</a></li>

				<li id="cat1"><a name="sfbest_hp_hp_nav_nav3" class="trackref"
					href="javascript:void(0)">优选生鲜</a></li>
				<li><a
					href="javascript:void(0)"
					target="_blank">全球美食</a></li>
				<li><a target="_blank"
					href="javascript:void(0)">优选厨房</a>
				</li>
				<li><a target="_blank"
					href="javascript:void(0)">新品尝鲜</a>
				</li>
				<li id="cat2"><a target="_blank" href="javascript:void(0)" rel="nofollow">优选国际</a>
				</li>
				<li id="cat3"><a target="_blank" href="javascript:void(0)" rel="nofollow">企业专区</a>
				</li>

				<li class="ad"><a name="sfbest_hp_hp_head_ad_1"
					class="trackref" href="javascript:void(0)" target="_blank"><img
						alt="优选卡 送健康"
						src="${basePath}/images/html/7a80fda907bf5107f6967add2a304a51.jpg"
						width="196" height="38"></a></li> 
			</ul>
		</div>
		<span class="clear"></span>
	</div>
</div>
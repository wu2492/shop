<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
	<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<title>unique</title>
<link type="text/css" href="${contextPath}/assets/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${contextPath}/assets/js/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/assets/js/js.js"></script>
<script type="text/javascript" src="${contextPath}/assets/js/myjs.js"></script>

</head>

<body>
	 <jsp:include page="top.jsp" />
	<form action="#" method="get" class="proDingzhi">
		<img src="${contextPath}/assets/images/dingzhi.jpg" width="972" height="167" />
		<div class="bdsharebuttonbox">
			<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
				class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#"
				class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#"
				class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#"
				class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#"
				class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
		</div>
		<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
		<table class="proDSel">
			<tr>
				<th>
					<h3>品牌</h3>
				</th>
				<td>
					<div class="proPosition">
						<ul class="xuan">
							<li><input type="checkbox" /><a href="#">三星/SAMSUNG</a></li>
							<li><input type="checkbox" /><a href="#">小米/MI</a></li>
							<li><input type="checkbox" /><a href="#">苹果/Apple</a></li>
							<li><input type="checkbox" /><a href="#">华为/HUAWEI</a></li>
							<li><input type="checkbox" /><a href="#">HTC</a></li>
							<li><input type="checkbox" /><a href="#">诺基亚/NOKIA</a></li>
							<li><input type="checkbox" /><a href="#">酷派/Coolpad</a></li>
							<li><input type="checkbox" /><a href="#">vivo</a></li>
							<li><input type="checkbox" /><a href="#">联想/Lenovo</a></li>
							<li><input type="checkbox" /><a href="#">OPPO</a></li>
							<li><input type="checkbox" /><a href="#">中兴/ZTE</a></li>
							<li><input type="checkbox" /><a href="#">索尼/SONY</a></li>
							<li><input type="checkbox" /><a href="#">魅族/MEIZU</a></li>
							<li><input type="checkbox" /><a href="#">努比亚/nubia</a></li>
							<li><input type="checkbox" /><a href="#">金立/GIONEE</a></li>
							<li><input type="checkbox" /><a href="#">华硕/ASUS</a></li>
							<li><input type="checkbox" /><a href="#">TCL</a></li>
							<li><input type="checkbox" /><a href="#">飞利浦/PHILIPS</a></li>
							<div class="clearfix"></div>
						</ul>
						<!--xuan/-->
						<span class="duoxuan"> 多选 </span>
						<!--duoxuan/-->
						<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
						<div class="more-shou">
							<span class="more"> 更多 &gt; </span> <span class="shou"> 收起
								&gt; </span>
						</div>
						<!--more-shou/-->
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<h3>大家都在选</h3>
				</th>
				<td>
					<div class="proPosition">
						<ul class="xuan moreHeight">
							<li><input type="checkbox" /><a href="#">屏幕不错</a></li>
							<li><input type="checkbox" /><a href="#">电池耐用</a></li>
							<li><input type="checkbox" /><a href="#">系统流畅</a></li>
							<li><input type="checkbox" /><a href="#">外观靓丽</a></li>
							<li><input type="checkbox" /><a href="#">性能好</a></li>
							<li><input type="checkbox" /><a href="#">通话质量好</a></li>
							<li><input type="checkbox" /><a href="#">很轻便</a></li>
							<li><input type="checkbox" /><a href="#">性价比很高</a></li>
							<li><input type="checkbox" /><a href="#">外设不错</a></li>
							<li><input type="checkbox" /><a href="#">包装不错哦</a></li>
							<li><input type="checkbox" /><a href="#">包装不错哦</a></li>
							<div class="clearfix"></div>
						</ul>
						<!--xuan/-->
						<span class="duoxuan"> 多选 </span>
						<!--duoxuan/-->
						<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
						<div class="more-shou">
							<span class="more"> 更多 &gt; </span> <span class="shou"> 收起
								&gt; </span>
						</div>
						<!--more-shou/-->
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<h3>价格</h3>
				</th>
				<td>
					<div class="proPosition">
						<ul class="xuan">
							<li><a href="#">0-500元</a></li>
							<li><a href="#">500-1000元</a></li>
							<li><a href="#">1000-1500元</a></li>
							<li><a href="#">1500-2000元</a></li>
							<li><a href="#">2000-3000元</a></li>
							<li><a href="#">3000元以上</a></li>
							<div class="clearfix"></div>
						</ul>
						<!--xuan/-->
						<div class="jiage">
							<input type="text" />&nbsp;-&nbsp; <input type="text" />&nbsp;
							<input type="image" src="${contextPath}/assets/images/queding.png" class="queen" />
						</div>
						<!--jiage/-->
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<h3>CPU</h3>
				</th>
				<td>
					<div class="proPosition">
						<ul class="xuan">
							<li><input type="checkbox" /><a href="#">八核</a></li>
							<li><input type="checkbox" /><a href="#">四核</a></li>
							<li><input type="checkbox" /><a href="#">双核</a></li>
							<li><input type="checkbox" /><a href="#">单核</a></li>
							<li><input type="checkbox" /><a href="#">其他</a></li>
							<div class="clearfix"></div>
						</ul>
						<!--xuan/-->
						<span class="duoxuan"> 多选 </span>
						<!--duoxuan/-->
						<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<h3>特点</h3>
				</th>
				<td>
					<div class="proPosition">
						<ul class="xuan moreHeight">
							<li><input type="checkbox" /><a href="#">女性手机</a></li>
							<li><input type="checkbox" /><a href="#">儿童手机</a></li>
							<li><input type="checkbox" /><a href="#">儿童手机</a></li>
							<li><input type="checkbox" /><a href="#">儿童手机</a></li>
							<li><input type="checkbox" /><a href="#">3G视频通话</a></li>
							<li><input type="checkbox" /><a href="#">音乐手机</a></li>
							<li><input type="checkbox" /><a href="#">商务手机</a></li>
							<li><input type="checkbox" /><a href="#">手写输入</a></li>
							<div class="clearfix"></div>
						</ul>
						<!--xuan/-->
						<span class="duoxuan"> 多选 </span>
						<!--duoxuan/-->
						<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
						<div class="more-shou">
							<span class="more"> 更多 &gt; </span> <span class="shou"> 收起
								&gt; </span>
						</div>
						<!--more-shou/-->
					</div>
					</div>
				</td>
			</tr>
			<tr>
				<th>
					<h3>高级功能</h3>
				</th>
				<td>
					<div class="proPosition">
						<ul class="xuan moreHeight">
							<li><input type="checkbox" /><a href="#">双卡双待</a></li>
							<li><input type="checkbox" /><a href="#">高清视频</a></li>
							<li><input type="checkbox" /><a href="#">WIFI</a></li>
							<li><input type="checkbox" /><a href="#">前置摄像头</a></li>
							<li><input type="checkbox" /><a href="#">电视播放</a></li>
							<div class="clearfix"></div>
						</ul>
						<!--xuan/-->
						<span class="duoxuan"> 多选 </span>
						<!--duoxuan/-->
						<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<ul class="xuan2">
						<li><a href="#">网络制式</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">摄像头像素</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">上市时间</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">显示屏尺寸</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">操控</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">外观</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">系统</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">屏幕色彩</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">分辨率</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">电池可拆卸</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">单卡双卡</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<li><a href="#">手机内存</a>
							<div class="chilXuan">
								<div class="chilXBox">
									<div>
										<input type="checkbox" /><a href="#">选项1</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项2</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项3</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项4</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项5</a>
									</div>
									<div>
										<input type="checkbox" /><a href="#">选项6</a>
									</div>
									<div class="clears"></div>
									<span class="duoxuan"> 多选 </span>
									<!--duoxuan/-->
									<input type="image" src="${contextPath}/assets/images/queding.png" class="queen2" />
								</div>
								<!--chilXBox-->
							</div>
							<!--chilXuan/--></li>
						<div class="clearfix"></div>
					</ul>
					<!--xuan2/-->
				</td>
			</tr>
		</table>
		<!--proDSel/-->
		<div style="height: 15px;">&nbsp;</div>
		<ul class="proSelect">
			<li>综合</li>
			<li>销量 &darr;</li>
			<li>评论 &darr;</li>
			<li>价格 &darr;</li>
			<div class="clears"></div>
		</ul>
		<!--proSelect/-->
		<div class="phoneBox">
		 <c:forEach items="${pros}" var="pro">
			<dl>
				<dt>
					<a href="${contextPath}/buyinfo/${pro.id}"><img src="${contextPath}/customer-pictures/${pro.printUrl}" /></a>
				</dt>
				<dd>
					<h3>${pro.price }</h3>
					<div class="phonePars">${pro.describe }</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar" name="${pro.id}">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			</c:forEach>
			<%-- <dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone4.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone3.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone2.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone1.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl> --%>
			<%-- <dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone5.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone4.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone3.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone2.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone1.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone5.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone4.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone3.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone2.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone1.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone5.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone4.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone3.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone2.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="buyinfo.jsp"><img src="${contextPath}/assets/images/phone1.png" /></a>
				</dt>
				<dd>
					<h3>￥4800.00</h3>
					<div class="phonePars">Apple 苹果 iPhone 5s 16G
						TD-LTE/TD-SCDMA/WCDMA/GSM 4G手机 金</div>
					<!--phonePar/-->
					<div class="xiaoliang">
						<span class="blue">157451条评价</span> <span class="pad">上海有货</span>
					</div>
					<!--xiaoliang/-->
					<div class="jiaru-shoucang">
						<span class="jiaruCar">加入购物车</span> <span class="shoucangCar"><a
							href="quanjing/index.jsp">选用此模型</a></span>
						<div class="clears"></div>
					</div>
					<!--jiaru-shoucang/-->
				</dd>
			</dl> --%>
			<div class="clears"></div>
		</div>
		<!--phoneBox/-->
	</form>
	<!--proDingzhi/-->
	<div class="footBox">
		<div class="footers">
			<div class="footersLeft">
				<a href="index.jsp"><img src="${contextPath}/assets/images/ftlogo.jpg" width="240"
					height="64" /></a>
				<h3 class="ftphone">400 000 0000</h3>
				<div class="ftKe">
					客服 7x24小时(全年无休)<br /> <span>客服邮箱：kefu@webqin.net </span>
				</div>
				<!--ftKe/-->
			</div>
			<!--footersLeft/-->
			<div class="footersRight">
				<ul>
					<li class="ftTitle">新手指南</li>
					<li><a href="#">购物流程</a></li>
					<li><a href="#">会员计划及划分</a></li>
					<li><a href="#">优惠券规则</a></li>
					<li><a href="#">联系客服</a></li>
					<li><a href="#">常见问题</a></li>
				</ul>
				<ul>
					<li class="ftTitle">付款方式</li>
					<li><a href="#">在线支付</a></li>
					<li><a href="#">礼品卡支付</a></li>
					<li><a href="#">货到付款</a></li>
					<li><a href="#">银行付款</a></li>
				</ul>
				<ul>
					<li class="ftTitle">配送服务</li>
					<li><a href="#">配送时效及运费</a></li>
					<li><a href="#">超时赔付</a></li>
					<li><a href="#">验货与签收</a></li>
					<li><a href="#">配货信息跟踪</a></li>
				</ul>
				<ul>
					<li class="ftTitle">售后服务</li>
					<li><a href="#">退换货政策</a></li>
					<li><a href="#">退换货区域</a></li>
					<li><a href="#">退款时限</a></li>
					<li><a href="#">先行赔付</a></li>
					<li><a href="#">发票说明</a></li>
				</ul>
				<ul>
					<li class="ftTitle">特色服务</li>
					<li><a href="#">礼品卡</a></li>
					<li><a href="#">产品试用</a></li>
					<li><a href="#">花粉中心</a></li>
					<li><a href="#">快速购物</a></li>
					<li><a href="#">推荐好友</a></li>
				</ul>

				<div class="clears"></div>
			</div>
			<!--footersRight/-->
			<div class="clears"></div>
		</div>
		<!--footers/-->
	</div>
	<!--footBox/-->
	<div class="footer" style="text-align: left;">
		<a href="#">关于我们</a> <a href="#">友情链接</a> <a href="#">版权声明</a> <a
			href="#">网站地图</a> <br /> <span>&copy; 2014 Unqezi 使用前必读 沪ICP备
			12007626号-1</span>
	</div>
	<!--footer/-->
</body>
</html>

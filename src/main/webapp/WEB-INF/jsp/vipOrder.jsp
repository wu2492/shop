<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
	<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>unique</title>
<link type="text/css" href="${contextPath}/assets/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${contextPath}/assets/js/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/assets/js/js.js"></script>

</head>

<body>
  <jsp:include page="top.jsp" />
 <div class="vipBox">
   <jsp:include page="vipleft.jsp" />
  <div class="vipRight">
   <h2 class="vipTitle">我的订单</h2>
   
   <h2 class="oredrName">
    我的订单 <span style="margin-left:40px;">待发货 <span class="red">10</span> </span>
    <span>待收货 <span class="red">15</span></span>
    </h2>
    <table class="vipOrder">
     <c:forEach items="${orders}" var="order">
     <tr>
     
      <td>
      	<c:forEach items="${order.pros}" var="pro">
      		<img src="${contextPath}/customer-pictures/${pro.printUrl}" width="60" height="55"/>
      	</c:forEach>
     </td>
      <td>${order.merchant}</td>
      <td>
      <c:set var="proMoney" value="0"></c:set>
      <c:forEach items="${order.pros}" var="pro">
     	 ${proMoney+pro.price*order.count}
      </c:forEach>
      <br/>
      <c:choose>
      	<c:when test="${order.paymentMode == 0}">未选择支付方式</c:when>
      	<c:when test="${order.paymentMode == 1}">支付宝支付</c:when>
      	<c:when test="${order.paymentMode == 2}">微信支付</c:when>
      	<c:when test="${order.paymentMode == 3}">银行卡支付</c:when>
      </c:choose>
     </td>
      <td>${order.orderTime}</td>
      <td>
      <c:choose>
      	<c:when test="${order.paymentStatus==0}"><a href="success.jsp"><strong>未支付</strong></a></c:when>
      	<c:when test="${order.paymentStatus==1}"><strong>已支付</strong></c:when>
      </c:choose>
      
      </td>
      <td><a href="${contextPath}/vipXiaofei/${order.id}">查看</a></td>
     </tr>
     </c:forEach>
    <%--  <tr>
      <td><a href="proinfo.jsp"><img src="${contextPath}/assets/images/phone.png" width="60" height="55"></a></td>
      <td>张益达</td>
      <td>￥16.9<br />支付宝支付</td>
      <td>2014年6月23日11:32:17</td>
      <td><a href="success.jsp"><strong>等待付款</strong></a></td>
      <td><a href="vipXiaofei.jsp">查看</a></td>
     </tr>
     <tr>
      <td><a href="proinfo.jsp"><img src="${contextPath}/assets/images/phone.png" width="60" height="55"></a></td>
      <td>张益达</td>
      <td>￥16.9<br />支付宝支付</td>
      <td>2014年6月23日11:32:17</td>
      <td><a href="success.jsp"><strong>等待付款</strong></a></td>
      <td><a href="vipXiaofei.jsp">查看</a></td>
     </tr>
     <tr>
      <td><a href="proinfo.jsp"><img src="${contextPath}/assets/images/phone.png" width="60" height="55"></a></td>
      <td>张益达</td>
      <td>￥16.9<br />支付宝支付</td>
      <td>2014年6月23日11:32:17</td>
      <td><a href="success.jsp"><strong>等待付款</strong></a></td>
      <td><a href="vipXiaofei.jsp">查看</a></td>
     </tr>
     <tr>
      <td><a href="proinfo.jsp"><img src="${contextPath}/assets/images/phone.png" width="60" height="55"></a></td>
      <td>张益达</td>
      <td>￥16.9<br />支付宝支付</td>
      <td>2014年6月23日11:32:17</td>
      <td><a href="success.jsp"><strong>等待付款</strong></a></td>
      <td><a href="vipXiaofei.jsp">查看</a></td>
     </tr> --%>
    </table><!--vipOrder/-->
  </div><!--vipRight/-->
  <div class="clears"></div>
 </div><!--vipBox/-->
 <div class="footBox">
  <div class="footers">
   <div class="footersLeft">
    <a href="index.jsp"><img src="${contextPath}/assets/images/ftlogo.jpg" width="240" height="64" /></a>
    <h3 class="ftphone">400 000 0000 </h3>
    <div class="ftKe">
     客服 7x24小时(全年无休)<br />
     <span>客服邮箱：kefu@webqin.net </span>
    </div><!--ftKe/-->
   </div><!--footersLeft/-->
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
   </div><!--footersRight/-->
   <div class="clears"></div>
  </div><!--footers/-->
 </div><!--footBox/-->
 <div class="footer" style="text-align:left;">
  <a href="#">关于我们</a>
  <a href="#">友情链接</a>
  <a href="#">版权声明</a>
  <a href="#">网站地图</a>
  <br />
  <span>&copy; 2014 Unqezi 使用前必读 沪ICP备 12007626号-1</span>
 </div><!--footer/-->
</body>
</html>

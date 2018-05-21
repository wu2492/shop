<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    <c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
    
<div class="vipLeft">
   <h2 class="headImg"><img src="${contextPath}/${personalCenter.portraitUrl == null ? 'assets/images/vipImg.jpg':'customer-pictures/${personalCenter.portraitUrl}' }" width="183" height="169" /></h2>
   <h3 class="vipName">测试webqin</h3>
   <dl class="vipNav">
    <dt class="vip_1 vipCur">买家中心</dt>
     <dd><a href="${contextPath}/vipOrder">我的订单</a></dd>
     <dd><a href="vipShoucang.jsp">收藏关注</a></dd>
    <dt class="vip_2">账户设置</dt>
     <dd class="ddCur"><a href="${contextPath}/vip">个人信息</a></dd>
     <dd><a href="${contextPath}/updatePassword">密码修改</a></dd>
     <dd><a href="${contextPath}/vipAddress">收货地址</a></dd>
     <dd><a href="vipXiaofei.jsp">消费记录</a></dd>
    <dt class="vip_3">客户服务</dt>
     <dd><a href="vipQuxiao.jsp">取消订单/退货</a></dd>
     
     <dd><a href="vipTousu.jsp">我的投诉</a></dd>
   </dl><!--vipNav/-->
  </div><!--vipLeft/-->
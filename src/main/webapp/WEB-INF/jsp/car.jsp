<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	
	<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
	<c:set var="countMonry" value="0"></c:set>
	
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
 <div class="car">
  <div class="cont">
   <div class="carImg"><img src="${contextPath}/assets/images/car1.jpg" width="951" height="27" /></div>
   <h4 class="orderTitle">收货地址</h4>
   <table class="ord">
    <c:forEach items="${address}" var="addres">
	    <tr>
	     <td width="30%">
	      <input type="radio" name="addresId" value="${addres.id}"/> ${addres.consignee}
	     </td>
	     <td width="50%">
	    ${addres.region},${addres.detailedAddres},${addres.postcode},${addres.consigneePhone}
	     </td>
	     <td>
	      <span class="green upd" value="${addres.id}">[修改]</span> | <span class="green add">[添加]
	     </td>
	    </tr>
    </c:forEach>
   </table><!--ord/-->
   <div class="address">
   <form:form action="${contextPath}/vipAddress" method="post" class="address2">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <div class="addList">
     <label><span class="red">* </span>选择地区:</label>
     <select name="region">
      <option >请选择省</option>
      <option >湖南</option>
     </select>
     <select  name="region">
      <option>请选择市</option>
      <option>长沙</option>
     </select>
     <select name="region">
      <option >请选择地区</option>
      <option >开福</option>
     </select>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>详细地址:</label>
     <input type="text" name="detailedAddres" class="addres_detailedAddres"/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>邮政编码:</label>
     <input type="text" name="postcode"/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>收件人:</label>
     <input type="text" name="consignee"/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>手机号码:</label>
     <input type="text" name="consigneePhone"/>
    </div><!--addList--> 
    <div class="addList2">
     <input type="image" src="${contextPath}/assets/images/queren.jpg" width="100" height="32" />
    </div><!--addList2/-->
    </form:form>
   </div><!--address/-->
   <table class="orderList">
    <tr>
     <th width="20"></th>
     <th width="450">商品</th>
     <th width="130">单价</th>
     <th width="130">数量</th>
     <th width="130">总金额</th>
     <th width="105">操作</th>
      
    </tr>
    <c:forEach items="${cars}" var="car">
   
	    <tr class="car${car.id}">
	     <td><input type="checkbox" /></td>
	     <td colspan="5" style="text-align:left;color:#930; font-weight:bold;">
	      <img src="${contextPath}/customer-pictures/${car.pro.printUrl}" width="20" height="15" style="position:relative;top:2px;" />
	      店铺：unique VIP店铺 上海分店
	     </td>
	    </tr>
	    <tr class="car${car.id}" name="car">
	     <td><input type="checkbox" name="carIds" value="${car.id}"/></td>
	     <td>
	      <dl>
	       <dt><a href="proinfo.jsp"><img src="${contextPath}/assets/images/phone.png" width="85" height="85" /></a></dt>
	       <dd>全球最大的中文搜索引擎、致力于让网民更便捷<br /><span class="red">有货：</span>从上海出发</dd>
	      </dl>
	     </td>
	     <td><strong class="red">￥${car.pro.price}</strong></td>
	     <td>
	     <div class="jia_jian">
	      <img src="${contextPath}/assets/images/jian.jpg" width="21" height="25" class="jian" name="${car.id}" />
	      <input type="text" class="shuliang" value="${car.count}" name="${car.id}"/>
	      <img src="${contextPath}/assets/images/jia.jpg" width="21" height="25" class="jia" name="${car.id}" />
	     </div>
	     </td>
	     <td class="${car.id}"><strong class="red" name="${car.id}">￥${car.pro.price * car.count}</strong></td>
	     <td><a href="#" class="green">收藏</a><br /><a href="#" class="green" name="${car.id}" >删除</a></td>
	    </tr>
	      <c:set var="countMonry" value="${countMonry + car.pro.price * car.count}"></c:set>
    </c:forEach>
    <%-- <tr>
     <td><input type="checkbox" /></td>
     <td colspan="5" style="text-align:left;color:#930; font-weight:bold;">
      <img src="${contextPath}/assets/images/dianpu.gif" width="20" height="15" style="position:relative;top:2px;" />
      店铺：unique VIP店铺 北京分店
     </td>
    </tr>
    <tr>
     <td><input type="checkbox" /></td>
     <td>
      <dl>
       <dt><a href="proinfo.jsp"><img src="${contextPath}/assets/images/phone.png" width="85" height="85" /></a></dt>
       <dd>全球最大的中文搜索引擎、致力于让网民更便捷<br /><span class="red">有货：</span>从上海出发</dd>
       <div class="clears"></div>
      </dl>
     </td>
     <td><strong class="red">￥70.20</strong></td>
     <td>
     <div class="jia_jian">
      <img src="${contextPath}/assets/images/jian.jpg" width="21" height="25" class="jian" />
      <input type="text" class="shuliang" value="1" />
      <img src="${contextPath}/assets/images/jia.jpg" width="21" height="25" class="jia" />
     </div>
     </td>
     <td><strong class="red">￥70.20</strong></td>
     <td><a href="#" class="green">收藏</a><br /><a href="#" class="green">删除</a></td>
    </tr> --%>
    
    <tr>
     <td colspan="6"><div class="shanchu"><img src="${contextPath}/assets/images/lajio.jpg" /> 全部删除</div></td>
    </tr>
   </table><!--orderList/-->
   <div class="zongji">
    <strong>所需运费：</strong>￥0.00 &nbsp;&nbsp;
    <strong>总计(不含运费)：</strong><strong class="red" name ="all">￥${countMonry}</strong>
   </div><!--zongji/-->
   <div class="jiesuan">
    <a href="index.jsp" class="jie_1">继续购物&gt;&gt;</a>
    <a class="jie_2">立即结算&gt;&gt;</a>
    <div class="clears"></div>
   </div><!--jiesuan/-->
   <div class="clears"></div>
  </div><!--cont/-->
 </div><!--car/-->
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
 <form action="${contextPath}/createOrder" method="post" 
 	id="batch-submit-from" style="display: note;" >
 	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
 	  <input type="text" />
 </form>
 
</body>
</html>

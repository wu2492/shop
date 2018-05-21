<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<!-- 	把token放在meta中方便ajax获取 -->
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
</head>

<body>
  <jsp:include page="top.jsp" />
 <div class="vipBox">
   <jsp:include page="vipleft.jsp" />
  <div class="vipRight">
   <h2 class="vipTitle">收货地址   <span class="green add">[添加]</span></h2>

   
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
     <input value="确 认 " type="submit" class="submit" />
    </div><!--addList2/-->
    </form:form>
   </div><!--address/-->
   <table class="vipAdress">
    <tr>
     <th>收货人</th>
     <th>所在地区</th>
     <th>街道地址</th>
     <th>邮编</th>
     <th>电话/手机</th>
     <th>操作</th>
    </tr>
    <c:forEach items="${address}" var="addres">
    <tr>
     <td>${addres.consignee}</td>
     <td>${addres.region}</td>
     <td>${addres.detailedAddres}</td>
     <td>${addres.postcode}</td>
     <td>${addres.consigneePhone}</td>
     <td><span class="green upd" value="${addres.id}">[修改]</span> | <span class="green add">[添加]</span> </td>
    </tr>
    </c:forEach>
    <%-- <tr>
     <td>张大炮</td>
     <td>上海 上海市 普陀区</td>
     <td>曹杨路1040弄中友大厦一号楼19楼</td>
     <td>200000</td>
     <td>13569888523</td>
     <td><span class="green upd" name="${contextPath}/${id}">[修改]</span> | <span class="green add">[添加]</span> </td>
    </tr>
    <tr>
     <td>李思明</td>
     <td>上海 上海市 普陀区</td>
     <td>曹杨路1040弄中友大厦一号楼19楼</td>
     <td>200000</td>
     <td>13569888523</td>
     <td><span class="green upd">[修改]</span> | <span class="green add">[添加]</span> </td>
    </tr>
    <tr>
     <td>成吉思汗</td>
     <td>上海 上海市 普陀区</td>
     <td>曹杨路1040弄中友大厦一号楼19楼</td>
     <td>200000</td>
     <td>13569888523</td>
     <td><span class="green upd">[修改]</span> | <span class="green add">[添加]</span> </td>
    </tr>
    <tr>
     <td>忽必烈</td>
     <td>上海 上海市 普陀区</td>
     <td>曹杨路1040弄中友大厦一号楼19楼</td>
     <td>200000</td>
     <td>13569888523</td>
     <td><span class="green upd">[修改]</span> | <span class="green add">[添加]</span> </td>
    </tr>
    <tr>
     <td>乾隆</td>
     <td>上海 上海市 普陀区</td>
     <td>曹杨路1040弄中友大厦一号楼19楼</td>
     <td>200000</td>
     <td>13569888523</td>
     <td><span class="green upd">[修改]</span> | <span class="green add">[添加]</span> </td>
    </tr> --%>
   </table><!--vipAdress/-->
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

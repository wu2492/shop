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

</head>

<body>
  <jsp:include page="top.jsp" />
 <div class="vipBox">
  <jsp:include page="vipleft.jsp" />
  <div class="vipRight">
   <h2 class="vipTitle">个人中心</h2>
   
   <form:form action="${contextPath}/vip-update" class="registerform" method="post" commandName="personalCenter" enctype="multipart/form-data" >
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
   <input type="hidden" name = "id" value="${personalCenter.id}"/>
      <table class="grzx" width="705" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="90"><span>*</span>真实姓名：</td>
          <td width="430"><!-- <input name="name" type="text" class="text inputxt" /> -->
          <input name="name" type="text" Class="text inputxt" value="${personalCenter.name}"/>
          </td><!-- ${contextPath}/assets/images/vipImg.jpg -->
          <td rowspan="8" valign="top"><div id="tx"><img src="${contextPath}/${personalCenter.portraitUrl == null ? 'assets/images/vipImg.jpg':'customer-pictures/${personalCenter.portraitUrl}' }" /></div>
            <span class="file"><input name="portrait" type="file" class="file1" value="选择文件"/></span></td>
        </tr>
        <tr>
          <td><span>*</span>所在城市：</td>
          <td><select name="city">
              <option>省</option>
              <option>湖南</option>
              <option>北京</option>
              <option>上海</option>
              <option>广州</option>
            </select>
            <select name="city">
              <option>市</option>
              <option>湖南</option>
              <option>北京</option>
              <option>上海</option>
              <option>广州</option>
            </select>
            <select name="city">
              <option>区</option>
              <option>湖南</option>
              <option>北京</option>
              <option>上海</option>
              <option>广州</option>
            </select></td>
        </tr>
        <tr>
          <td>&nbsp;性别：</td>
          <td><!-- <input type="radio" name="property" value="person" id="person" class="pr1" datatype="*" nullmsg="请选择性别！"  /> -->
       		<input type="radio" value="0" name="sex" ${personalCenter.sex!=null&&personalCenter.sex==0 ? 'checked':''} />
            男　
            <!-- <input type="radio" name="property" value="company" id="company" class="pr1" /> -->
  			<input type="radio" value="1" name="sex" ${personalCenter.sex!=null&&personalCenter.sex==1 ? 'checked':''} />     
            女</td>
        </tr>
        <tr>
          <td>&nbsp;EMAIL:</td>
          <td><input type="text" class="text1" name="email" value="<sec:authentication property='principal.user.eMail'/>" /></td>
        </tr>
        <tr>
          <td>&nbsp;身份证:</td>
          <td><!-- <input name="" type="text" class="text1 inputxt" datatype="idcard" nullmsg="请填写身份证号码！" errormsg="您填写的身份证号码不对！必须位数字且不低于18位" /> -->
          	<input type="text"  name="identityCard" value="${personalCenter.identityCard}"/>    
          </td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp;类别：</td>
          <td><select name="type">
              <option value="艺术家">艺术家</option>
              <option value="哲学家">哲学家</option>
            </select></td>
        </tr>
        <tr>
          <td>&nbsp;个人简介：</td>
          <td><textarea tip="请在这里输入您的简介。" altercss="gray" class="gray" name="ndividualResume" >${personalCenter.identityCard}</textarea>
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input value="保存资料" type="submit" class="submit" /></td>
        </tr>
      </table>
      </form:form>
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

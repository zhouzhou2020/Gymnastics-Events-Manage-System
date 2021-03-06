<%@ page language="java"  contentType="text/html;charset=utf-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath %>images/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath %>images/css/css.css" />
<script type="text/javascript" src="<%=basePath %>images/js/jquery1.9.0.min.js"></script>
</head> 
<body>
<jsp:include page="../low.jsp" />
<div class="right_cont">
<div class="title_right"><strong>成绩排名</strong></div>
<div style="width:900px;">
<form action="<%=basePath %>score?method=adminsort" method="post" name="form1" >
运动项目：
<select name="event" style="width:214px;height:25px;padding:3px 0;">
<c:forEach items="${QDATAS}" var="t" varStatus="st">
    <option value="${t.id}" <c:if test="${event==t.id}">selected</c:if>>${t.name}</option>
  </c:forEach>
  </select>&nbsp;
<input type="submit" value="查询" class="btn btn-info btn-small" style="width:120px;" />
</form>
   </div>  
<div style="width:100%;margin:auto;">
<form action="" method="post" name="form3">	
<table class="table table-bordered table-striped table-hover">
     <tbody>
       <tr align="center">
         <th>名次</th>
         <th>赛事名称</th>
         <th>参赛代表队</th>
         <th>运动项目名称</th>
		 <th>参赛编号</th>
		 <th>参赛人姓名</th>
         <th>参赛时间</th>
         <th>成绩</th>
         <th>成绩单位</th>
       </tr>
	  <c:forEach items="${DATAS}" var="t" varStatus="st">
       <tr align="center">
         <td>${st.index+1}</td>
         <td>${t.sportName}</td>
         <td>${t.teamname}</td>
         <td>${t.eventName}</td>
         <td>${t.mnum}</td>
		 <td>${t.mname}</td>
         <td>${t.eventCtime}</td>
         <td>${t.eventScore}</td>
         <td>${t.eventUnit}</td>
       </tr>
       </c:forEach>
     </tbody>
   </table>
   </form>
   </div>  
 </div>  
</body>
</html>

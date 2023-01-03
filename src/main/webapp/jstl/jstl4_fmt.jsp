<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<%
request.setCharacterEncoding("utf-8");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My jsp file</title>
</head>
<body>
<h3>jstl4_fmt.jsp</h3>

<fmt:formatNumber value="100000" type="currency" > <br /> </fmt:formatNumber>
<fmt:formatNumber value="100000" type="currency" pattern="#원"> <br /> </fmt:formatNumber>
<fmt:formatNumber value="100000" type="currency" pattern="###,###원"> <br /> </fmt:formatNumber>
<fmt:formatNumber value="100000" type="currency" pattern="###,###"> <br /> </fmt:formatNumber>
<fmt:formatNumber value="100000" type="currency" pattern="###,###,##"> <br /> </fmt:formatNumber>
<hr /> 
local <br />
<c:set var="now" value="<%=new java.util.Date() %>">
${now } <br /> 
<fmt:setLocale value="en_us"/>
${now } <br /> 
</c:set>

<c:set var="now" value="<%=new java.util.Date() %>" />
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now}" type="both" dateStyle= "short " pattern="YY-MM-DD"/><br />
<fmt:formatDate value="${now}" type="both" dateStyle= "medium " pattern="YY-MM-DD [a] hh:mm:ss"/><br />
<fmt:formatDate value="${now}" type="both" dateStyle= "short " /><br />
<fmt:formatDate value="${now}" type="both" dateStyle= "medium "/><br />
<fmt:formatDate value="${now}" type="both" dateStyle= "long " /><br />
<fmt:formatDate value="${now}" type="both" dateStyle= "full " /><br />
<fmt:formatDate value="${now}" type="both" dateStyle= "full " pattern="YY-MM-DD[E]"/><br />
<hr />
timeZone <br /> 
<fmt:setLocale value="en_us"/>
<fmt:formatDate value="${now}" type="both" dateStyle="short " pattern="YY-MM-dd" /><br />
<fmt:formatDate value="${now}" type="both" dateStyle="medium " pattern="YY-MM-dd [a] hh : mm :ss"  /><br />
<fmt:formatDate value="${now}" type="both" dateStyle="long " timeZone="America/Los_Angeles"  /><br />

<!-- 국가코드알아보기 --> <br /> 

</body>
</html>
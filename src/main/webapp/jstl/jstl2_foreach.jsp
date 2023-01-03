<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<h3>jstl2_foreach</h3>
<%
List<String> nameList=new ArrayList<String>(Arrays.asList("이름4","이름5","이름6"));
request.setAttribute("name3", nameList);
List<String> nameList2=new ArrayList<String>(Arrays.asList("이름7","이름8","이름9"));
request.setAttribute("name4", nameList2);

%>
<%-- <c:forEach var="name" items="이름1,이름2,이름3">
${name} <br />
</c:forEach>> --%>
<%-- <c:forEach var="name" items="${name3} ">
${name} <br />
</c:forEach>> --%>

<%-- <c:forEach var="name" items="${name3}" varStatus="st">
<br />${st.count} :<c:out value="${name} "></c:out>
</c:forEach>> --%>

<%-- <c:forEach begin="1" end="10" varStatus="st">
<br />${list3} :"${name4[st.index]} 
</c:forEach>>
  --%>

<!--  if문 접목 -->
 
<%--  <c:forEach begin="1" end="10"  var="1" varStatus="st">
${1} 
<c:if test="${st.last} ">,</c:if>

</c:forEach> --%>
 
 
<%--  <c:set value="0" var="n" />
 <c:forEach begin="1" end="10" var="i" varStatus="st">
 ${i} 
 <c:set value="${n+i} " var="n"></c:set>
 <c:if test=" ${not st.last} "> , </c:if>
 </c:forEach>
  --%>
 




</body>
</html>
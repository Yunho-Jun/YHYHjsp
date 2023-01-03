<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" tagdir="" %>    

    
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
<h3>jstl1_token</h3>

<%-- <c:forTokens items="이름1,이름1,이름1,이름1,이름1"  delims=",">
<br />반복 
</c:forTokens> --%>

<%-- <c:forTokens items="이름1,이름2,이름3,이름4,이름5"" delims="," var ="name">
${name } <br /> 
</c:forTokens> --%>

<c:forTokens items="이름1,이름2,이름3,이름4,이름5"" delims="," varStatus ="st">
index : ${st.index }  <br />
current : ${st.current} <br />
count : ${st.count} <br /> 
first : ${st.first} <br />
last : ${st.last} <br />
begin : <1>st.begin</1>
end : ${st.end } <br />
</c:forTokens>

</body>
</html>
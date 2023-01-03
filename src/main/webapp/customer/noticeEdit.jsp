<%@page import="notice.vo.Notice"%>
<%@page import="notice.dao.NoticeDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String num=request.getParameter("c");
if(num==null)
	num="1";

NoticeDao dao=new NoticeDao();
Notice n=dao.getNotice(num);
/* 
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url,user,pw);
//접속성공상태

//String sql="select * from notices where seq='"+num+"'";
String sql="select * from notices where seq=?";

//실행
//Statement st=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, num);
//ResultSet rs=st.executeQuery(sql);
ResultSet rs=pstmt.executeQuery();
rs.next();
System.out.println("value : "+rs.getString("title"));
 */
 %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeEdit.jsp</h3>

<form action="noticeEditProc.do" method="post">

<table class="twidth">

	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="5%" />
		<col width="35%" />
	</colgroup>
	<caption>Modify</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td><%=n.getSeq() %></td>
			<th class="left">조회수</th>
			<td><%=n.getHit() %></td>	
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td><%=n.getWriter() %></td>
			<th class="left">작성시간</th>
			<td><%=n.getRegdate() %></td>	
		</tr>
		<tr>
			<th class="left">제목</th>
			<td colspan="3" id="title">
				<input type="text" name="title" value="<%=n.getTitle() %>" />
			
			</td>
			
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">
				<textarea class="txt" name="content" ><%=n.getContent() %></textarea>
			
			</td>
			
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>
			
		</tr>
	</tbody>

</table>
<div>
	<input type="hidden" name="c" value="<%=n.getSeq() %>" />
	<input type="submit" value="수정" />
	<a href="noticeDetail.jsp?c=<%=n.getSeq() %>">취소</a>

</div>


</form>

</body>
</html>


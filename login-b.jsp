<%@ page import="java.sql.*"%>
<html>
<body>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/event","root","Ajeet@117089");
String sql="insert into signup values(?,?,?,?)";
PreparedStatement ps=cn.prepareStatement(sql);
String v1=request.getParameter("username");
String v2=request.getParameter("email");
String v3=request.getParameter("number");
String v4=request.getParameter("password");
ps.setString(1, v1);
ps.setString(2, v2);
ps.setString(3, v3);
ps.setString(4, v4);
ps.executeUpdate();
%>
<div style='text-align: center; margin-top: 30px;margin-top: 30px'>
<h1>Account created successfully </h1>

<%@ include file="login.html" %>
</div>
<%
}catch(Exception e){
	out.println(e);
}
%>




</body>
</html>
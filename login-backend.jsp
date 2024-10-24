
<%@ page import="java.sql.*"%>
<%@page import="com.mysql.cj.Session"%>

<html>
<body>
	<%
   try
	{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/event","root","Ajeet@117089");
	   String uid=request.getParameter("pass");
	  // String upass=request.getParameter("email");
	   
	   String sql="select * from signup where uemail=?";
	   PreparedStatement ps=con.prepareStatement(sql);
	   
	   ps.setString(1, request.getParameter("email"));
	 
	   ResultSet rst=ps.executeQuery();
	   if(rst.next())
	   {
		   String dpass=rst.getString(4);
		   if(uid.equals(dpass))
		   {
			  // String name=rst.getString(1);
			  // session.setAttribute("email",name );
			   response.sendRedirect("userhomepage.jsp");
			   return;
		   }
	   }
	   %>
	   
	   
	 
	   <div>
	   <h3>user id or password is incooret </h3>
	   
	   </div>
<%
}
	catch(Exception e)
	{
	   out.print(e);
	}
%>
</body>
</html>

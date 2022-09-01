<%@ page import="java.sql.*" %>
<html>
<body>
	<%
		PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
		ps.setString(1, request.getParameter("first"));
		ps.setString(2, request.getParameter("last"));
		ps.setString(3, request.getParameter("address"));
		ps.setString(4, request.getParameter("phone"));
		ps.setString(5, request.getParameter("email"));
		ps.setString(6, request.getParameter("cid"));
		ps.executeUpdate();
		response.sendRedirect("customer-list.jsp");
	%>
</body>
</html>
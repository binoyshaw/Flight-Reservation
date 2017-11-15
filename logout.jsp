<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<div style="background-color:#FF4500;color:white;padding:20px;">
<a href="home.html" style="text-decoration:none;"><img src="lg.png" style="float:left;margin-top:10px;margin-right:10px;border:none;border-radius:50px;width:50px;height:50px;"></a>
<h2><a href="home.html" style="text-decoration:none;">FlyJET</a></h2>
<a href="logout.jsp" style="text-decoration:none;float:right;margin-top:-15px;"><input type="submit" value="Log out"></a>
</div>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log Out</title>
</head>
<body>
<%
try{
	session = request.getSession();
	Object obj1 = session.getAttribute("key1");
	String mail = obj1.toString();
	Object obj2 = session.getAttribute("key2");
	String password = obj2.toString();
	Integer pass = Integer.parseInt(password);
	mail = null;
	pass = null;
	session.invalidate();
	response.sendRedirect("home.html");
	response.getWriter().append("Served at: ").append(request.getContextPath());
	
}
catch(Exception e1){response.sendRedirect("home.html");}
%>
</body>
</html>
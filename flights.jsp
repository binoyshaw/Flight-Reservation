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
</body>
<body>
<div style="background-color:#A9A9A9;color:white;padding:3px;">
<marquee><p><h3>Available Flights Of FlyJET</h3></p></marquee></div>
<p><center><h2>Domestic Flight Schedules</h2></center></p>
</body>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Details</title>
</head>
<body>
</body>
	<table style="margin-top:30px" width="1280px"align="center"  cellpadding="4" cellspacing="4">
    <thead>
    <th bgcolor="orange"> FLIGHT NUMBER</th>
    <th bgcolor="orange">DATE</th>
    <th bgcolor="orange">ARRIVAL TIME</th>
    <th bgcolor="orange">DEPARTURE TIME</th>
    <th bgcolor="orange">SOURCE</th>
    <th bgcolor="orange">DESTINATION</th>
    <th bgcolor="orange">PRICE</th>
    </thead>
      
<% try{

PreparedStatement ps=null;
ResultSet rs=null;
/*int flight_id=0;
String date=null;
String arrival_time=null;
String departure_time=null;
String flight_name=null;
String source =null;
String destination =null;
*/
//String eml = session.getAttribute("val1").toString();
String uname = session.getAttribute("key1").toString();
if(uname == "" || uname == null)
{
	response.sendRedirect("member.html");
}

else{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flightdb","root","");
ps=con.prepareStatement("select * from flight_details");
rs=ps.executeQuery();
while(rs.next())
{
   %>
   
   <tr>
   <td><%=rs.getString("flight_id")%></td>
   <td><%=rs.getString("date")%></td>
   <td><%=rs.getString("arrival_time")%></td>
   <td><%=rs.getString("departure_time")%></td>
   <td><%=rs.getString("source")%></td>
   <td><%=rs.getString("destination")%></td> 
   <td><%=rs.getString("price")%></td>
   <td bgcolor="#ff4c4c"><font color ="red"><a href='book.html?v=<%=rs.getString("flight_id") %>' style="text-decoration:none;">Book</a></font></td>   
   </tr>
   <% 
}
}
%>

</table>

<p>Username = <%=session.getAttribute("key1").toString() %></p>
<% 
rs.close();
}catch(Exception e){response.sendRedirect("member.html");}
%>

</table>
</body>

</html>
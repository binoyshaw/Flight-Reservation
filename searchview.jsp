<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
<head>
<body>
<div style="background-color:#FF4500;color:white;padding:20px;width:1302px">
<a href="home.html" style="text-decoration:none;"><img src="lg.png" style="float:left;margin-top:10px;margin-right:10px;border:none;border-radius:50px;width:50px;height:50px;"></a> 
<h2><a href="home.html" style="text-decoration:none;">FlyJET</a></h2>
</div>
</body>
</head>
    <head>
    </head>
    <body>
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
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                <td><%=pList.get(4)%></td>
                <td><%=pList.get(5)%></td>
                <td><%=pList.get(6)%></td>
                <td bgcolor="#ff4c4c"><font color ="red"><a href='book.html'style="text-decoration:none;">Book</a></font></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=6 align="center"
                    style="background-color:#eeffee"><b>No Flight is available..</b></td>
            </tr>
            <%            }
            %>
        </table>
    </body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.button {
  position: absolute;
  top: 80%;
  left: 40%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.button button {
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  background-color: #4CAF50;
  color: #fff;
}

.button button:hover {
  background-color: #3e8e41;
}

.button1 {
  position: absolute;
  top: 80%;
  left: 60%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.button1 button {
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  background-color: #4CAF50;
  color: #fff;
}

.button1 button:hover {
  background-color: #3e8e41;
}

	
</style>
</head>
<body>
	<h1 style="text-align: center;">View All Event Details Here</h1>
	
	<table border="5"  cellspacing= "10" cellpadding = "10" style="border-collapse: collapse; margin :auto;" >
	
		<tr style="background-color: blue; color: white;">
			<th>Id</th>	
			<th>Title</th>	
			<th>Location</th>	
			<th>Date</th>	
			<th>Guest</th>
			<th colspan="2">Action</th>		
		</tr>
	
	
	<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		while(rs.next())
		{
	%>
	
		<tr>
			<td> <%= rs.getInt(1) %></td>
			<td> <%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><a href = "delete?id=<%= rs.getInt(1)%>"><button style="background-color: red; color: white; border-radius: 5px; border: none;">Delete</button> </td></a> </td>
			<td><a href = "updatepage?id=<%= rs.getInt(1)%>"><button style="background-color: orange; color: white; border-radius: 5px; border: none;">Update</button> </td></a> </td>
		</tr>
	
	
	
	
	<%
		}
	%>
	
	</table>
	
	
	<a href="index.jsp" class="button"><button>Go To Index Page</button> </a>
	<a href="create.jsp" class="button1"><button>Go To Create Page</button> </a>
</body>
</html>
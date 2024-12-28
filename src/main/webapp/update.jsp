<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

	<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        
        .container {
            width: 20%;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }
       
        input[type="text"] {
            
            height: 20px;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        button[type="submit"] {
            width: 100%;
            height: 40px;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        button[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
<body>
<h1 style="text-align:center;">Welcome to Update page</h1>
	
	<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
	%>
	<div class="container">
        <h1>Update Page</h1>
        <form action="update">
            
            Id : <input type="text" name="id" readonly="readonly" value="<%= rs.getInt(1) %>"> <br> <br>
            Title : <input type="text" name="title" value="<%= rs.getString(2)%>"> <br> <br>
            Location : <input type="text" name="loc" value="<%= rs.getString(3)%>"> <br> <br>
            Date : <input type="text" name="date" value="<%= rs.getString(4)%>"> <br> <br>
           	Guest: <input type="text" name="guest" value="<%= rs.getString(5)%>"> <br> <br>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
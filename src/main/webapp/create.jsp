<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Event Page here</title>
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
</head>
<body>
    <div class="container">
        <h1>Create Page</h1>
        <form action="create">
            
            Id : <input type="text" name="id" placeholder="Enter Event Id"> <br> <br>
            Title : <input type="text" name="title" placeholder="Enter Event Title"> <br> <br>
            Location : <input type="text" name="loc" placeholder="Enter Event Location"> <br> <br>
            Date : <input type="text" name="date" placeholder="Enter Event Date"> <br> <br>
           	Guest: <input type="text" name="guest" placeholder="Enter Event Chief Guest Name"> <br> <br>
            <button type="submit">Submit</button>
        </form>
    </div>
    <br>
    <br>
    <a href="index.jsp"><button style="background-color: green; color: white; padding: 10px; border-radius: 5px; border: none; position: absolute; left: 40%;">Go To Index Page</button> </a>
    <a href="allevents"><button style="background-color: green; color: white; padding: 10px; border-radius: 5px; border: none; position: absolute; left: 50%;">View All Event Details</button> </a>
</body>
</html>

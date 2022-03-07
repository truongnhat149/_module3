<%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 2/27/2022
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Current Converter</title>
    <link rel="stylesheet" href="">
  </head>
  <body>
  <h2> Current Converter</h2>
  <form action="/convert" method="GET">
    <label>Rate:</label> <br/>
    <input type="text" name="rate" placeholder="RATE" value="23000"><br/>
    <label>USD: </label> <br/>
    <input type="text" name="usd" placeholder="USD" value="0"> <br>
    <input type="submit" id="submit" value="Converter">
  </form>
  </body>
</html>

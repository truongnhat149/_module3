<%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 2/28/2022
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Current Converter</title>
  </head>
  <body>
    <h2>Current Converter</h2>
    <form action="converter.jsp" method="get" >
      <label>Rate: </label> <br>
      <input type="text" name="rate" placeholder="RATE" value="23000"><br>
      <label>USD: </label> <br>
      <input type="text" name="usd" placeholder="USD" value="0"> <br>
      <input type="submit" id="submit" value="converter">
    </form>
  </body>
</html>

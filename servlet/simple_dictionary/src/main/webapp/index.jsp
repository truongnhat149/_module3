<%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 2/28/2022
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Dictionary</title>
  </head>
  <body>
    <h2>Vietnamese Dictionary</h2>
    <form action="/translate" method="get">
      <input type="text" name="txtSearch" placeholder="Enter your word: " required>
      <input type="submit" id="submit" value="Search">
    </form>
  </body>
</html>

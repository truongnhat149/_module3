<%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 2/28/2022
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h2>Discount Calculator</h2>
<form action="/calculator" method="post">
  <label>Product Description</label> <br/>
  <input type="text" name="description" > <br/>
  <label>List Price</label> <br/>
  <input type="text" name="price" > <br>
  <label>Discount Percent</label> <br/>
  <input type="text" name="percent"> <br/>
  <input type="submit" name="discount" value="Calculate Discount">
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 2/27/2022
  Time: 10:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <style>
    .login {
      height: 280px;
      width: 330px;
      margin: 0;
      padding: 10px;
      border: 1px #ccc solid;
    }

    .login input {
      padding: 5px;
      margin: 5px;
    }
  </style>
</head>
<body>
<form action="/login" method="post">
  <div class="login">
    <h2>Login</h2>
    <input type="text" name="username" size="30" placeholder="username" required>
    <input type="password" name="password" size="30" placeholder="password" required>
    <input type="submit" value="Sign In">
  </div>
</form>
</body>
</html>

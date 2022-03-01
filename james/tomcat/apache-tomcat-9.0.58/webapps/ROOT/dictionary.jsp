<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Truong
  Date: 2/28/2022
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simle Dictionary</title>
</head>
<body>
    <%!
       Map<String, String> dic = new HashMap<>();
    %>

    <%
        dic.put("hello", "Xin chào");
        dic.put("how", "thế nào");
        dic.put("book", "quyển vở");
        dic.put("computer", "máy tính");

        String search = request.getParameter("search");

        String result = dic.get(search);

        PrintWriter writer = response.getWriter();
        if (result != null) {
            writer.println("Word" + search);
            writer.println("Result " + result);
        } else  {
            writer.println("Not found");
        }
    %>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/11
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="" %>
<html>
<head>
    <title>Java Bean Test</title>
</head>
<body>
    <%!
        int i;
    %>
    <%
        application.setAttribute("counter",String.valueOf(++i));
    %>

    <%=i%>
</body>
</html>

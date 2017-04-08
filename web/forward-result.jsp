<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
  <head>
    <title>forward原始界面</title>
  </head>
  <body>
    <h3>forward 结果页</h3>
    <%=request.getParameter("age")%>
    <%=request.getParameter("username")%>
  </body>
</html>

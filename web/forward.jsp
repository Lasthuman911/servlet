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
    <h3>forward原始页</h3>
  <jsp:forward page="forward-result.jsp">
      <jsp:param name="age" value="3"></jsp:param>
      <jsp:param name="sex" value="man"></jsp:param>
  </jsp:forward>
  </body>
</html>

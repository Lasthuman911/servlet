<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
  <head>
    <title>forwardԭʼ����</title>
  </head>
  <body>
    <h3>forwardԭʼҳ</h3>
  <jsp:forward page="forward-result.jsp">
      <jsp:param name="age" value="3"></jsp:param>
      <jsp:param name="sex" value="man"></jsp:param>
  </jsp:forward>
  </body>
</html>

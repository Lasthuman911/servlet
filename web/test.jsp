<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<>
  <head>
    <title>第二个JSP界面</title>
  </head>
  <body>
     <%
         for (int i = 0; i < 7; i++)
         {
             out.println("<font size='" + i + "'>");
             %>
     疯狂 Java</font>
     <br/>
     <%}
     %>
  </body>
</html>

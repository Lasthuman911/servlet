<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ÏÂÎç9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>»¶Ó­</title>
  </head>
  <body>
    <table border="1" bgcolor="aqua">
     <%
        for (int i = 0;i < 10; i++){
     %>
        <tr>
            <td>Ñ­»·Öµ£º</td>
            <td><%=i%></td>
        </tr>
     <%
        }
     %>
    </table>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>����cookie</title>
  </head>
  <body>
    <%
//        ��ȡ�������
        String name  = request.getParameter("name");
//        ����һ��cookie����
        Cookie cookie = new Cookie("username",name);
//        ����Cookie�������������
        cookie.setMaxAge(24 * 3600);
//        ��ͻ�������Cookie����
        response.addCookie(cookie);
    %>
  </body>
</html>

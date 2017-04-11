<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>增加cookie</title>
  </head>
  <body>
    <%
//        获取请求参数
        String name  = request.getParameter("name");
//        创建一个cookie对象
        Cookie cookie = new Cookie("username",name);
//        设置Cookie对象的生存期限
        cookie.setMaxAge(24 * 3600);
//        向客户端增加Cookie对象
        response.addCookie(cookie);
    %>
  </body>
</html>

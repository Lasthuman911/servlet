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
    <title>���� cnCookie</title>
  </head>
  <body>
    <%
//        ��ȡ�������
        String name  = request.getParameter("name");
//        ����һ��cookie����
        Cookie cookie = new Cookie("cnName",java.net.URLEncoder.encode("�����","gbk"));
//        ����Cookie�������������
        cookie.setMaxAge(24 * 3600);
//        ��ͻ�������Cookie����
        response.addCookie(cookie);

        Cookie[] cookies = request.getCookies();
        for (Cookie c : cookies){
            if (cookie.getName().equals("cnName")){
                out.println(java.net.URLDecoder.decode(c.getValue()));
            }
        }
    %>
  </body>
</html>

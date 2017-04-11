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
    <%--page:此实例只在此当前界面有效--%>
    <jsp:useBean id="p1" class="com.example.model.Person" scope="page"/>
    <%--设置属性--%>
    <jsp:setProperty name="p1" property="age" value="23"/>
    <jsp:setProperty name="p1" property="name" value="wzm"/>
    <%--获取属性--%>
    <jsp:getProperty name="p1" property="name"/>
    <jsp:getProperty name="p1" property="age"/>
</body>
</html>

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
    <title>选择物品购买</title>
  </head>
  <body>
    <form method="post" action="processBuy.jsp">
        书籍：<input type="checkbox" name="item" value="book"/>
        电脑:<input type="checkbox" name="item" value="computer"/>
        汽车:<input type="checkbox" name="item" value="car"/>
        <input type="submit" value="购买"/>
    </form>
  </body>
</html>

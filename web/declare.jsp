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
    <title>声明示例</title>
  </head>
  <body>
     <%!
        //声明一个整形变量
         public int count;
         //声明一个方法
         public String info()
         {
             return "hello";
         }
     %>
  <%
      out.println(count++);
  %>
     <br/>
    <%-- % 和 = 必须连在一起--%>
     <%=count++%>
  <br/>
  <%
      out.println(info());
  %>
  </body>
</html>

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
    <title>new document</title>
  </head>
  <body>
    <span style="color:red;font-weight: bold">
        <%
            if (request.getAttribute("err") !=null){
                out.println(request.getAttribute("err")+"<br/>");
            }
        %>
    </span>
        <form id="login" method="post" action="login">
            userName:<input type="text" name="userName"/><br/>
            password:<input type="password" name="pass"/><br/>
            <input type="submit" value="login"/><br/>
        </form>
  </body>
</html>

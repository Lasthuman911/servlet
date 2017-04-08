<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <h1 align="center">Beer Recommendations JSP</h1>
    <p>

    <%
       List styles = (List)request.getAttribute("styles");
       Iterator it  = styles.iterator();
       while (it.hasNext()){
            response.getWriter().print("<br>try: "+it.next());//OK
       }
    %>
  </body>
</html>

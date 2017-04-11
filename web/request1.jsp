<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>获取请求头/请求参数</title>
  </head>
  <body>
    <%
        //获取所有请求头的名称
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()){
            String headerName = headerNames.nextElement();
            out.println(headerName+"----->"+request.getHeader(headerName)+"<br/>");
        }
        out.println("<hr/>");
        request.setCharacterEncoding("gb2312");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String national = request.getParameter("country");
        //获取多个值
        String[] color = request.getParameterValues("color");
    %>
    <%--依次输出表单的值,<hr> 标签在 HTML 页面中创建一条水平线。--%>
    您的名字：<%=name%><hr/>
    您的性别：<%=gender%>
    您喜欢的颜色:<%for (String c: color){
    out.println(c+" ");
    }%><hr/>
    您来自的国家：<%=national%><hr/>
  </body>
</html>

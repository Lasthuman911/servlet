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
    <title>����ʾ��</title>
  </head>
  <body>
     <%!
        //����һ�����α���
         public int count;
         //����һ������
         public String info()
         {
             return "hello";
         }
     %>
  <%
      out.println(count++);
  %>
     <br/>
    <%-- % �� = ��������һ��--%>
     <%=count++%>
  <br/>
  <%
      out.println(info());
  %>
  </body>
</html>

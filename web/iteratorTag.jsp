<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@taglib prefix="mytag" uri="http://www.wzm.org/mytaglib" %>
<html>
  <head>
    <title>����ǩ��ı�ǩ-��������ǩ</title>
  </head>
  <body>
    <%
        List<String> a = new ArrayList<String>();
        a.add("1");
        a.add("2");
        a.add("3");
        a.add("4");
        a.add("5");
//        ��List�������page��Χ��
        pageContext.setAttribute("a",a);
    %>
    <table border="1" bgcolor="aqua" width="300">
        <%--// collection = "a" item = "item">--%>
        <mytag:iterator>
            <jsp:attribute name="collection">
                a
            </jsp:attribute>

            <jsp:attribute name="item">
                item
            </jsp:attribute>
        <tr>
            <td>${pageScope.item}</td>
        </tr>
        </mytag:iterator>
    </table>
  </body>
</html>

<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>��ȡ����ͷ/�������</title>
  </head>
  <body>
    <%
        //��ȡ��������ͷ������
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
        //��ȡ���ֵ
        String[] color = request.getParameterValues("color");
    %>
    <%--�����������ֵ,<hr> ��ǩ�� HTML ҳ���д���һ��ˮƽ�ߡ�--%>
    �������֣�<%=name%><hr/>
    �����Ա�<%=gender%>
    ��ϲ������ɫ:<%for (String c: color){
    out.println(c+" ");
    }%><hr/>
    �����ԵĹ��ң�<%=national%><hr/>
  </body>
</html>

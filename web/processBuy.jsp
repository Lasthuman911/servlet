<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
    <%
        Map<String,Integer> itemMap = (Map<String, Integer>) session.getAttribute("itemMap");
        if (itemMap == null){
            itemMap = new HashMap<String, Integer>();
            itemMap.put("�鼮",0);
            itemMap.put("����",0);
            itemMap.put("����",0);
        }
        String[] buys = request.getParameterValues("item");
        for (String item : buys){
            if (item.equals("book")){
                int num1 = itemMap.get("�鼮").intValue();
                itemMap.put("�鼮",num1 +1);
            }
           if (item.equals("computer")){
                int num2 = itemMap.get("����").intValue();
                itemMap.put("����",num2 +1);
            }
          if (item.equals("car")){
                int num3 = itemMap.get("����").intValue();
                itemMap.put("����",num3 +1);
            }
        }
//        ��itemMap����ŵ����ó�session��Χ��itemMap����
    session.setAttribute("itemMap",itemMap);
    %>
<html>
<head>
    <title>ѡ����Ʒ����</title>
</head>
<body>
    �����������Ʒ��<br/>
    �鼮��<%=itemMap.get("�鼮")%>��<br/>
    ���ԣ�<%=itemMap.get("����")%>̨<br/>
    ������<%=itemMap.get("����")%>��
    <p><a href="shop.jsp">�ٴι���</a></p>
</body>
</html>

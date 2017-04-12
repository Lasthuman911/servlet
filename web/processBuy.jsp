<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
    <%
        Map<String,Integer> itemMap = (Map<String, Integer>) session.getAttribute("itemMap");
        if (itemMap == null){
            itemMap = new HashMap<String, Integer>();
            itemMap.put("书籍",0);
            itemMap.put("电脑",0);
            itemMap.put("汽车",0);
        }
        String[] buys = request.getParameterValues("item");
        for (String item : buys){
            if (item.equals("book")){
                int num1 = itemMap.get("书籍").intValue();
                itemMap.put("书籍",num1 +1);
            }
           if (item.equals("computer")){
                int num2 = itemMap.get("电脑").intValue();
                itemMap.put("电脑",num2 +1);
            }
          if (item.equals("car")){
                int num3 = itemMap.get("汽车").intValue();
                itemMap.put("汽车",num3 +1);
            }
        }
//        将itemMap对象放到设置成session范围的itemMap属性
    session.setAttribute("itemMap",itemMap);
    %>
<html>
<head>
    <title>选择物品购买</title>
</head>
<body>
    您所购买的物品：<br/>
    书籍：<%=itemMap.get("书籍")%>本<br/>
    电脑：<%=itemMap.get("电脑")%>台<br/>
    汽车：<%=itemMap.get("汽车")%>辆
    <p><a href="shop.jsp">再次购买</a></p>
</body>
</html>

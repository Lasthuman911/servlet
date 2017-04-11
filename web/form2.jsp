<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: 下午9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
  <head>
    <title>收集参数的表单页</title>
  </head>
  <body>
    <form id="login" action="request1.jsp" method="post">
        用户名：<br/>
        <input type="text" name="username">
        性别：<br/>
        男：<input type="radio" name="gender" value="男">
        女：<input type="radio" name="gender" value="女"/>
        喜欢的颜色：<br/>
        红：<input type="checkbox" name="color" value="红"/>
        蓝：<input type="checkbox" name="color" value="蓝"/>
        绿：<input type="checkbox" name="color" value="绿"/>
        来自的国家：<br/>
        <select name="country">
            <option value="中国">中国</option>
            <option value="美国">美国</option>
            <option value="俄罗斯">俄罗斯</option>
        </select><hr/>

        <input type="submit" value="提交">
        <input type="reset" value="重置">
    </form>
  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
  <head>
    <title>�ռ������ı�ҳ</title>
  </head>
  <body>
    <form id="login" action="request1.jsp" method="post">
        �û�����<br/>
        <input type="text" name="username">
        �Ա�<br/>
        �У�<input type="radio" name="gender" value="��">
        Ů��<input type="radio" name="gender" value="Ů"/>
        ϲ������ɫ��<br/>
        �죺<input type="checkbox" name="color" value="��"/>
        ����<input type="checkbox" name="color" value="��"/>
        �̣�<input type="checkbox" name="color" value="��"/>
        ���ԵĹ��ң�<br/>
        <select name="country">
            <option value="�й�">�й�</option>
            <option value="����">����</option>
            <option value="����˹">����˹</option>
        </select><hr/>

        <input type="submit" value="�ύ">
        <input type="reset" value="����">
    </form>
  </body>
</html>

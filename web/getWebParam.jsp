<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: œ¬ŒÁ9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>–°Ω≈±æ≤‚ ‘</title>
  </head>
  <body>
    <%
      String driver = application.getInitParameter("driver");
      String url = application.getInitParameter("url");
      String user = application.getInitParameter("user");
      String pass = application.getInitParameter("pass");

      Class.forName(driver);
      Connection conn = DriverManager.getConnection(url,user,pass);
      Statement stmt = conn.createStatement();
      ResultSet resultSet = stmt.executeQuery("SELECT * from durable");

/*
      Class.forName("oracle.jdbc.OracleDriver");
      Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@10.16.111.245:1521:testdb1","TRULYMESTST","trulymestst");
//      jdbc:oracle:thin:@dbip:port:databasename
      Statement statement = conn.createStatement();
      ResultSet resultSet = statement.executeQuery("SELECT * FROM durable");
*/

    %>
  <table bgcolor="#f5f5dc" border="1" width="300">
    <%
      while (resultSet.next()){
        %>
    <tr>
      <td><%=resultSet.getString(1)%></td>
      <td><%=resultSet.getString(2)%></td>
  </tr>
    <%}%>
  </table>
  </body>
</html>

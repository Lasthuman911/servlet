<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.imageio.ImageIO" %><%--
  Created by IntelliJ IDEA.
  User: lszhen
  Date: 2017/3/30
  Time: ����9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="image/jpeg; charset=GBK" language="java" errorPage="" %>
<html>
  <head>
    <title>�ڶ���JSP����</title>
  </head>
  <body>
    <%
        BufferedImage image = new BufferedImage(340,160,BufferedImage.TYPE_INT_RGB);
        Graphics g= image.getGraphics();

//        rect����
        g.fillRect(0,0,400,400);
        g.setColor(new Color(255,0,0));
//         40,40  ��ʾ�ڽ����ϵ�λ��
//        100,100 ��ʾͼ�εĴ�С
        g.fillArc(40,40,100,100,30,120);
        g.setColor(new Color(0,255,0));
//        arc ����
        g.fillArc(40,40,100,100,150,120);
        g.setColor(new Color(0,0,255));

        g.fillArc(40,40,100,100,270,120);
        g.setColor(new Color(0,0,0));

        g.setFont(new Font("Arial Black",Font.PLAIN,16));
        g.drawString("red:climb",200,60);
        g.drawString("green:swim",200,100);
        g.drawString("blue:jump",200,140);
        g.dispose();

        ImageIO.write(image,"jpg",response.getOutputStream());
    %>
  </body>
</html>

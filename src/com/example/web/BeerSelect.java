package com.example.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by lszhen on 2017/3/30.
 */
public class BeerSelect extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException{

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Beer Selection Advice<br>");
        String c = request.getParameter("color");
        out.println("<br>Got beer color "+c);
    }
}

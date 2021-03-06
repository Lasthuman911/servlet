package com.example.web;

import com.example.model.BeerExpert;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

/**
 * Created by lszhen on 2017/3/30.
 */
public class BeerSelect extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException{

/*        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Beer Selection Advice<br>");
        String c = request.getParameter("color");
        out.println("<br>Got beer color "+c);*/

        String c = request.getParameter("color");
        BeerExpert be = new BeerExpert();
        List result = be.getBrands(c);

 /*       response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("Beer Selection Advice<br>");

        Iterator it = result.iterator();
        while (it.hasNext()){
            out.print("<br>try: "+ it.next());
        }*/

        request.setAttribute("styles",result);
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request,response);
    }
}

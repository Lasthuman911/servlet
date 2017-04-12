package com.example.web;


import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;

/**
 * Name: admin
 * Date: 2017/4/11
 * Time: 16:53
 */
@WebServlet(loadOnStartup = 1)
public class TimerServlet extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        Timer t = new Timer(5000,new ActionListener()
        {
            public void actionPerformed(ActionEvent e) {
                System.out.println(new Date());
            }
        });
        t.start();
    }
}

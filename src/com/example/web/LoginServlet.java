package com.example.web;

import com.example.model.DBDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;

/**
 * Name: admin
 * Date: 2017/4/12
 * Time: 8:33
 */
@WebServlet(name = "login",urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String errMsg = "";
        RequestDispatcher requestDispatcher;
        String userName = req.getParameter("userName");
        String pass = req.getParameter("pass");
        String driver = "oracle.jdbc.OracleDriver";
        String url = "jdbc:oracle:thin:@10.16.111.245:1521:testdb1";
        try{
            DBDao dbDao = new DBDao(driver,url,"TRULYMESTST","trulymestst");
            ResultSet resultSet = dbDao.query(" select password from userprofile "+
            " where userid = ?",userName);
            if (resultSet.next()){
                if (resultSet.getString("password").equals(pass)){
                    HttpSession session = req.getSession(true);
                    session.setAttribute("name",userName);
//                    请求转发
                    requestDispatcher = req.getRequestDispatcher("/first.jsp");
                    requestDispatcher.forward(req,resp);
                }else {
                    errMsg +="password is wrong";
                }
            }else {
                errMsg += "用户名不存在";
            }
        }catch (Exception e){
            e.printStackTrace();
        }
//            若出错，请求转发，重新登录
        if (errMsg != null && !errMsg.equals("")){
            requestDispatcher = req.getRequestDispatcher("/login.jsp");//// TODO: 2017/4/12 看是否需要/
            req.setAttribute("err",errMsg);
            requestDispatcher.forward(req,resp);
        }
    }
}

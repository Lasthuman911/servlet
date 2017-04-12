package com.example.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Name: admin
 * Date: 2017/4/12
 * Time: 8:38
 */
public class DBDao {
    private Connection conn;
    private String driver;
    private String url;
    private String userName;
    private String pass;
    public DBDao(){}

    public DBDao(String driver, String url, String userName, String pass) {
        this.driver = driver;
        this.url = url;
        this.userName = userName;
        this.pass = pass;
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
//    获取数据库连接
    public Connection getConnection() throws Exception{
        if (conn == null){
            Class.forName(driver);
            conn = DriverManager.getConnection(url,userName,pass);
        }
        return conn;
    }

    public boolean insert(String sql, Object... args) throws Exception{
        PreparedStatement preparedStatement = this.getConnection().prepareStatement(sql);
        for (int i=0;i<args.length;i++){
            preparedStatement.setObject(i+1,args[i]);//注意i+1
        }
        if (preparedStatement.executeUpdate() != 1) {
            return false;
        }
        return true;
    }

    public ResultSet query(String sql, Object... args) throws Exception{
        PreparedStatement preparedStatement = this.getConnection().prepareStatement(sql);
        for (int i=0;i<args.length;i++){
            preparedStatement.setObject(i+1,args[i]);//注意i+1
        }
        return preparedStatement.executeQuery();
    }

    public void modify(String sql, Object... args) throws Exception{
        PreparedStatement preparedStatement = this.getConnection().prepareStatement(sql);
        for (int i=0;i<args.length;i++){
            preparedStatement.setObject(i+1,args[i]);//注意i+1
        }
        preparedStatement.executeUpdate();
        preparedStatement.close();
    }

    public void closeConn() throws Exception{
        if (conn != null && !conn.isClosed()){
            conn.close();
        }
    }
}

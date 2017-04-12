package com.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * doTag() 方法负责生成页面内容
 * Name: admin
 * Date: 2017/4/12
 * Time: 10:06
 */
public class HelloWord extends SimpleTagSupport {
    @Override
    public void doTag() throws JspException, IOException {
//        获取页面输出流，并输出字符串
        getJspContext().getOut().write("hello "+
        new java.util.Date());
    }
}

package com.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Collection;

/**
 * Name: admin
 * Date: 2017/4/12
 * Time: 11:02
 */
public class IteratorTag extends SimpleTagSupport {

    private String collection;
    private String item;

    public String getCollection() {
        return collection;
    }

    public void setCollection(String collection) {
        this.collection = collection;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    @Override
    public void doTag() throws JspException, IOException {
//        从page scope 中获取属性名为collection的集合
        Collection itemList = (Collection) getJspContext().getAttribute(collection);

        for (Object s : itemList){
//            将集合的元素设置为page范围
            getJspContext().setAttribute(item, s);
//            输出标签体
            getJspBody().invoke(null);//// TODO: 2017/4/12 null:?
        }
    }
}

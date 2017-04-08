package com.example.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Name: admin
 * Date: 2017/3/31
 * Time: 11:30
 */
public class BeerExpert {
    public List getBrands(String color){
        List brands = new ArrayList();
        if (color.equals("amber")){
            brands.add("jack Amber");
            brands.add("Red Moose");
        }else {
            brands.add("Jail Pale Ale");
            brands.add("Gout Stout");
        }

        return brands;
    }
}

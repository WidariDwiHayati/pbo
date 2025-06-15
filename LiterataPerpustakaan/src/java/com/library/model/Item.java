/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.library.model;

/**
 *
 * @author ADVAN
 */
public abstract class Item {
    protected String id;
    protected String name;

    public Item(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public abstract String getInfo();
}

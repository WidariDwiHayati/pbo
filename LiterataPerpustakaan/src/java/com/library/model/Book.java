/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.library.model;

/**
 *
 * @author ADVAN
 */
public class Book extends Item implements Searchable {
    private String author;
    private int year;

    public Book(String id, String title, String author, int year) {
        super(id, title);
        this.author = author;
        this.year = year;
    }

    @Override
    public String getInfo() {
        return "Buku: " + name + " oleh " + author + " (" + year + ")";
    }

    @Override
    public boolean matches(String keyword) {
        return name.toLowerCase().contains(keyword.toLowerCase()) ||
               author.toLowerCase().contains(keyword.toLowerCase());
    }

    public String getId() {
        return id;
    }
    public String getTitle() {
        return name;
    }
    public String getAuthor() {
        return author;
    }
    public int getYear() {
        return year;
    }
    public void setTitle(String title) {
        this.name = title;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.library.util;

/**
 *
 * @author ADVAN
 */
import com.library.model.Book;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class BookUtils {
    public static void sortBooksByTitle(ArrayList<Book> books) {
        Collections.sort(books, new Comparator<Book>() {
            @Override
            public int compare(Book b1, Book b2) {
                return b1.getTitle().compareToIgnoreCase(b2.getTitle());
            }
        });
    }

    public static ArrayList<Book> filterBooks(ArrayList<Book> books, String keyword) {
        ArrayList<Book> filtered = new ArrayList<>();
        for (Book book : books) {
            if (book.matches(keyword)) {
                filtered.add(book);
            }
        }
        return filtered;
    }
}

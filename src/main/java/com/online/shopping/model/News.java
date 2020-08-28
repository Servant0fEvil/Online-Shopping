package com.online.shopping.model;

import java.util.Date;

public class News {
    private int id;
    private String title;
    private String content;
    private int idAdmin;
    private Date postDate;
    private int state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getIdAdmin(){
        return idAdmin;
    }

    public void setIdAdmin(int admin) {
        this.idAdmin = admin;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}

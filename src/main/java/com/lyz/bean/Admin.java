package com.lyz.bean;

import org.springframework.stereotype.Component;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-04  10:17
 */
@Component
public class Admin {

    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    private String username;
    private String password;

    public Admin() {
    }

    public Admin(String id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}

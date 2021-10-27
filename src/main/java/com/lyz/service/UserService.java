package com.lyz.service;

import com.lyz.bean.User;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-23  23:01
 */
public interface UserService {


    String isUserExist(User user);

    List<User> getAllUser();

    int addUser(User user);

    User getUserByUsername(String username);

    boolean isPasswordCorrect(String username, String password);
}

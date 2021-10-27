package com.lyz.service.impl;

import com.lyz.bean.User;
import com.lyz.mapper.UserMapper;
import com.lyz.service.UserService;
import com.lyz.util.Md5Code;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @AUTHOR LYZ
 * @CREATE 2021-08-23  23:05
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public String isUserExist(User user) {
        User user1 = userMapper.getUserByNickname(user.getNickname());
        User user2 = userMapper.getUserByUsername(user.getUsername());


        if (user1 != null){
            if (user2 != null){
                return "username";
            }else{
                return "nickname";
            }
        }
        return null;

    }

    public int addUser(User user){

        String MD5password = null;

        try {
            MD5password = Md5Code.createMd5Code(user.getPassword());
        } catch (Exception e) {
            e.printStackTrace();
        }

        user.setPassword(MD5password);

        int i = userMapper.addUser(user);

        return i;
    }

    @Override
    public User getUserByUsername(String username) {
        return userMapper.getUserByUsername(username);
    }


    @Override
    public boolean isPasswordCorrect(String username, String password) {

        String MD5password = null;
        try {
            MD5password = Md5Code.createMd5Code(password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        User user = userMapper.getUserByUsername(username);
        return  MD5password.equals(user.getPassword());

    }

    @Override
    public List<User> getAllUser() {
        return userMapper.getAllUsers();
    }



}

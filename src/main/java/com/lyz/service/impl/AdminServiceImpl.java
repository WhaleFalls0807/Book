package com.lyz.service.impl;

import com.lyz.bean.Admin;
import com.lyz.mapper.AdminMapper;
import com.lyz.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-04  10:40
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public boolean isAdmin(String username,String password) {
        Admin admin = adminMapper.getAdminByName(username);

        String password1 = admin.getPassword();

        return (password == password1);
    }


    @Override
    public int updatePasswordById(Admin admin,String newPassword) {
        String id = admin.getId();
        String oldPassword = admin.getPassword();
        return adminMapper.updatePasswordById(id,oldPassword,newPassword);
    }



    @Override
    public Admin getAdminByAdminName(String adminName) {
        return adminMapper.getAdminByName(adminName);
    }


}

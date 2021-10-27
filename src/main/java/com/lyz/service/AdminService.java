package com.lyz.service;

import com.lyz.bean.Admin;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-04  10:40
 */
public interface AdminService {

    boolean isAdmin(String username,String password);

    Admin getAdminByAdminName(String username);

    int updatePasswordById(Admin admin,String newPassword);


}

package com.lyz.mapper;

import com.lyz.bean.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-04  10:19
 */
@Repository
public interface AdminMapper {

    Admin getAdminByName(String username);

    int updatePasswordById(@Param("id") String id, @Param("oldPassword") String oldPassword, @Param("newPassword") String newPassword);

    int updateAdmin(Admin admin);

    int deleteAdmin(String username);

    int addAdmin(Admin admin);

    int updatePassword(String id,String password);
}

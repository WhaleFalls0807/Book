package com.lyz.mapper;

import com.lyz.bean.User;

import java.sql.SQLException;
import java.util.List;


public interface UserMapper {
	
	/**
	 * 添加新用户
	 * @param user
	 * @throws SQLException 
	 * @throws Exception 
	 */
	int addUser(User user);
	
	/**
	 * 通过username获取User
	 * @param username
	 * @return
	 * @throws SQLException 
	 */
	 User getUserByUsernameAndNickname(String nickname,String username);

	 User getUserByUsername(String username);

	 User getUserByNickname(String nickname);
	
	/**
	 * 通过id获取User
	 * @param id
	 * @return
	 * @throws SQLException 
	 */
	User getUserById(int id);
	
	/**
	 * 获取所有用户
	 * @return
	 */
	List<User> getAllUsers() ;
	
	/**
	 * 更新用户信息
	 * @return
	 */

	int updateUser(User user);
	
	/**
	 * 删除某一个用户
	 * @throws Exception 
	 */
	int deleteUser(int id);

}

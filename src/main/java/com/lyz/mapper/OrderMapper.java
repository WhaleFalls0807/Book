package com.lyz.mapper;

import com.lyz.bean.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  16:19
 */
@Repository
public interface OrderMapper {

    List<Order> getAllOrders();

    List<Order> getOrderById(int id);
}

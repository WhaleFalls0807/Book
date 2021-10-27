package com.lyz.service;

import com.lyz.bean.Order;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  16:23
 */
@Service
public interface OrderService {

    List<Order> getAllOrders();
}

package com.lyz.service.impl;

import com.lyz.bean.Order;
import com.lyz.mapper.OrderMapper;
import com.lyz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @AUTHOR LYZ
 * @CREATE 2021-09-12  16:24
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> getAllOrders() {
        return orderMapper.getAllOrders();
    }
}

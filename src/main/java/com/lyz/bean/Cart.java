package com.lyz.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

/**
 * 购物车类对象
 * @AUTHOR LYZ
 * @CREATE 2021-11-07  21:41
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Component
public class Cart {

    /**
     * 购物车id
     */
    private String id;

    private Integer bookId;

    private Integer userId;

    private String bookName;

    private String bookAva;

    private BigDecimal price;

    /**
     * 库存
     */
    private Integer store;

    /**
     * 数量
     */
    private Integer quantity;
}

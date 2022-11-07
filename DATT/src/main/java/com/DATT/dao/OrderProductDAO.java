package com.DATT.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.DATT.entity.OrderProduct;

public interface OrderProductDAO extends JpaRepository<OrderProduct, Long>{

}

package com.flower.ssm.mapper;

import com.flower.ssm.pojo.OrderList;
import com.flower.ssm.pojo.OrderListExample;
import com.flower.ssm.pojo.custom.OrderListCustom;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderListMapper {
	
	List<OrderListCustom> selectOrderListByCustom(OrderListCustom orderListCustom);
    long countByExample(OrderListExample example);

    int deleteByExample(OrderListExample example);

    int deleteByPrimaryKey(Integer orderId);

    int insert(OrderList record);

    int insertSelective(OrderList record);

    List<OrderList> selectByExample(OrderListExample example);

    OrderList selectByPrimaryKey(Integer orderId);

    int updateByExampleSelective(@Param("record") OrderList record, @Param("example") OrderListExample example);

    int updateByExample(@Param("record") OrderList record, @Param("example") OrderListExample example);

    int updateByPrimaryKeySelective(OrderList record);

    int updateByPrimaryKey(OrderList record);
}
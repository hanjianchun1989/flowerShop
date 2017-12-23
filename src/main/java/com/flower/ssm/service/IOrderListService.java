package com.flower.ssm.service;

import java.util.List;

import com.flower.ssm.pojo.Bouquet;
import com.flower.ssm.pojo.OrderList;
import com.flower.ssm.pojo.custom.OrderListCustom;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月17日 上午11:42:51 
 * @version 1.0 
 */

public interface IOrderListService {
	/**
	 * 查询代发货和已发货的订单，前提，没有退回的
	 * @return
	 */
	List<OrderList> queryOrders(boolean delivered,boolean returnBouquet);

	List<OrderListCustom> queryOrdersCustom(boolean delivered, boolean returnBouquet);
	/**
	 * 更改状态为发货，并向message里面插入一条数据
	 * @param delivered
	 * @param returnBouquet
	 */
	void deliver(OrderListCustom oListCustom);
	
	/**
	 * 拒接
	 * @param oListCustom
	 */
	void delete(OrderListCustom oListCustom);
	/**
	 * 同意退货申请
	 * @param oListCustom
	 */
	void addAgreeRetuen(OrderListCustom oListCustom);
	/**
	 * 拒绝退货申请
	 * @param oListCustom
	 */
	void addRejectReturn(OrderListCustom oListCustom);

}

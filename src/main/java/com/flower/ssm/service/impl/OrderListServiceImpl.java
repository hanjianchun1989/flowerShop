package com.flower.ssm.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.ssm.mapper.MessagesMapper;
import com.flower.ssm.mapper.OrderListMapper;
import com.flower.ssm.pojo.Messages;
import com.flower.ssm.pojo.OrderList;
import com.flower.ssm.pojo.OrderListExample;
import com.flower.ssm.pojo.OrderListExample.Criteria;
import com.flower.ssm.pojo.custom.OrderListCustom;
import com.flower.ssm.service.IMessagesService;
import com.flower.ssm.service.IOrderListService;

/**
 * @author 韩建春 hanjianchun:
 * @date 创建时间：2017年12月19日 下午7:34:42
 * @version 1.0
 */
@Service
public class OrderListServiceImpl implements IOrderListService {
	@Autowired
	OrderListMapper orderListMapper;
	@Autowired
	IMessagesService messagesService;

	@Override
	public List<OrderList> queryOrders(boolean delivered, boolean returnBouquet) {
		return null;
	}

	/**
	 * List<OrderListCustom> selectOrderListByCustom(OrderListCustom
	 * orderListCustom); 在orderListMapper.xml中加入
	<select id="selectOrderListByCustom" parameterType="com.flower.ssm.pojo.custom.OrderListCustom"
		resultType="com.flower.ssm.pojo.custom.OrderListCustom">
		select o.*,b.name bouquetName,b.price,m.rank memberRank from
		order_list o,bouquet b,member m
		where o.bouquet_id=b.bouquet_id and
		o.member_name=m.name
		<if test="isreturn ==null">

		</if>
		<choose>
			<when test="isreturn ==null">
				<if test="isdelivered !=null">
					and isdelivered=#{isdelivered}
				</if>
			</when>
			<otherwise>and isreturn=#{isreturn}</otherwise>
		</choose>
		and ispaied=true

	</select>
	 */
	@Override
	public List<OrderListCustom> queryOrdersCustom(boolean delivered, boolean returnBouquet) {
		OrderListCustom orderListCustom = new OrderListCustom();
		if (returnBouquet) {
			orderListCustom.setIsreturn(returnBouquet);
		} else {
			orderListCustom.setIsdelivered(delivered);
		}
		orderListCustom.setIspaied(true);// 已付款的
		List<OrderListCustom> orderList = orderListMapper.selectOrderListByCustom(orderListCustom);
		return orderList;
	}

	@Override
	public void deliver(OrderListCustom oListCustom) {
		OrderListExample oExample = new OrderListExample();
		oExample.createCriteria().andOrderIdEqualTo(oListCustom.getOrderId());
		OrderList oList = new OrderList();
		oList.setIsdelivered(true);
		orderListMapper.updateByExampleSelective(oList, oExample);
		// 向message插入数据

		Messages messages = new Messages();

		String content = oListCustom.getMemberName() + ",您订购的鲜花\"" + oListCustom.getBouquetName() + "\", 共"
				+ oListCustom.getOrderQuantity() + "束，已经派送，请注意查收！";
		messages.setMemberName(oListCustom.getMemberName());
		messages.setMessagesType("发货信息");
		messages.setContent(content);
		messages.setDate(new Date());
		messages.setReaded(false);
		messagesService.addMessages(messages);
	}

	@Override
	public void delete(OrderListCustom oListCustom) {
		orderListMapper.deleteByPrimaryKey(oListCustom.getOrderId());

		Messages messages = new Messages();
		String content = oListCustom.getMemberName() + ",很抱歉，由于本店的不是，您的订单(\"" + oListCustom.getBouquetName() + "\","
				+ oListCustom.getOrderQuantity() + "束)暂时无法发出，请选购其他花束，给您带来不便，请见谅！";
		messages.setMemberName(oListCustom.getMemberName());
		messages.setMessagesType("发货信息");
		messages.setContent(content);
		messages.setDate(new Date());
		messages.setReaded(false);
		messagesService.addMessages(messages);
	}

	@Override
	public void addAgreeRetuen(OrderListCustom oListCustom) {
		orderListMapper.deleteByPrimaryKey(oListCustom.getOrderId());
		// 向message插入数据
		Messages messages = new Messages();

		String content = oListCustom.getMemberName() + ",您的申请退货(\"" + oListCustom.getBouquetName() + "\","
				+ oListCustom.getOrderQuantity() + "束)已受理，本店将在7个工作日内退还全部费用，欢迎下次光临！";
		messages.setMemberName(oListCustom.getMemberName());
		messages.setMessagesType("退货消息");
		messages.setContent(content);
		messages.setDate(new Date());
		messages.setReaded(false);
		messagesService.addMessages(messages);
	}

	@Override
	public void addRejectReturn(OrderListCustom oListCustom) {
		OrderList record = new OrderList();
		record.setIsreturn(false);
		record.setOrderId(oListCustom.getOrderId());
		orderListMapper.updateByPrimaryKeySelective(record);

		// 向message插入数据
		Messages messages = new Messages();

		String content = oListCustom.getMemberName() + ",由于您的订单已发出，无法追回，您的申请退货(\"" + oListCustom.getBouquetName()
				+ "\"," + oListCustom.getOrderQuantity() + "束)本店无法满足，很抱歉！";
		messages.setMemberName(oListCustom.getMemberName());
		messages.setMessagesType("退货消息");
		messages.setContent(content);
		messages.setDate(new Date());
		messages.setReaded(false);
		messagesService.addMessages(messages);
	}

}

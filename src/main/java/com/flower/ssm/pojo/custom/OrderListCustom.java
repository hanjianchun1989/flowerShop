package com.flower.ssm.pojo.custom;

import java.util.Date;

import com.flower.ssm.pojo.OrderList;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月20日 上午10:07:53 
 * @version 1.0 
 */
public class OrderListCustom extends OrderList{
	
	private int memberRank;
	private String bouquetName;
	private double price;
	//订单日期是否超过7天
	private boolean over7day;
	public int getMemberRank() {
		return memberRank;
	}
	public void setMemberRank(int memberRank) {
		this.memberRank = memberRank;
	}
	public String getBouquetName() {
		return bouquetName;
	}
	public void setBouquetName(String bouquetName) {
		this.bouquetName = bouquetName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public boolean getOver7day() {
		return (new Date().getTime()- this.getOrderDate().getTime())>7*24*60*60*1000;
	}
	public void setOver7day(boolean over7day) {
		this.over7day = over7day;
	}

}

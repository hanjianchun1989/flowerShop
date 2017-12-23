package com.flower.ssm.pojo;

import java.util.Date;

public class OrderList {
    private Integer orderId;

    private Integer bouquetId;

    private String memberName;

    private Integer orderQuantity;

    private Date orderDate;

    private Boolean ispaied;

    private Boolean isdelivered;

    private Boolean isreturn;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getBouquetId() {
        return bouquetId;
    }

    public void setBouquetId(Integer bouquetId) {
        this.bouquetId = bouquetId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName == null ? null : memberName.trim();
    }

    public Integer getOrderQuantity() {
        return orderQuantity;
    }

    public void setOrderQuantity(Integer orderQuantity) {
        this.orderQuantity = orderQuantity;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Boolean getIspaied() {
        return ispaied;
    }

    public void setIspaied(Boolean ispaied) {
        this.ispaied = ispaied;
    }

    public Boolean getIsdelivered() {
        return isdelivered;
    }

    public void setIsdelivered(Boolean isdelivered) {
        this.isdelivered = isdelivered;
    }

    public Boolean getIsreturn() {
        return isreturn;
    }

    public void setIsreturn(Boolean isreturn) {
        this.isreturn = isreturn;
    }
}
package com.flower.ssm.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class OrderListExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderListExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andOrderIdIsNull() {
            addCriterion("order_id is null");
            return (Criteria) this;
        }

        public Criteria andOrderIdIsNotNull() {
            addCriterion("order_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrderIdEqualTo(Integer value) {
            addCriterion("order_id =", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotEqualTo(Integer value) {
            addCriterion("order_id <>", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThan(Integer value) {
            addCriterion("order_id >", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("order_id >=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThan(Integer value) {
            addCriterion("order_id <", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThanOrEqualTo(Integer value) {
            addCriterion("order_id <=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdIn(List<Integer> values) {
            addCriterion("order_id in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotIn(List<Integer> values) {
            addCriterion("order_id not in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdBetween(Integer value1, Integer value2) {
            addCriterion("order_id between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotBetween(Integer value1, Integer value2) {
            addCriterion("order_id not between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdIsNull() {
            addCriterion("bouquet_id is null");
            return (Criteria) this;
        }

        public Criteria andBouquetIdIsNotNull() {
            addCriterion("bouquet_id is not null");
            return (Criteria) this;
        }

        public Criteria andBouquetIdEqualTo(Integer value) {
            addCriterion("bouquet_id =", value, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdNotEqualTo(Integer value) {
            addCriterion("bouquet_id <>", value, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdGreaterThan(Integer value) {
            addCriterion("bouquet_id >", value, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("bouquet_id >=", value, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdLessThan(Integer value) {
            addCriterion("bouquet_id <", value, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdLessThanOrEqualTo(Integer value) {
            addCriterion("bouquet_id <=", value, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdIn(List<Integer> values) {
            addCriterion("bouquet_id in", values, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdNotIn(List<Integer> values) {
            addCriterion("bouquet_id not in", values, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdBetween(Integer value1, Integer value2) {
            addCriterion("bouquet_id between", value1, value2, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andBouquetIdNotBetween(Integer value1, Integer value2) {
            addCriterion("bouquet_id not between", value1, value2, "bouquetId");
            return (Criteria) this;
        }

        public Criteria andMemberNameIsNull() {
            addCriterion("member_name is null");
            return (Criteria) this;
        }

        public Criteria andMemberNameIsNotNull() {
            addCriterion("member_name is not null");
            return (Criteria) this;
        }

        public Criteria andMemberNameEqualTo(String value) {
            addCriterion("member_name =", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotEqualTo(String value) {
            addCriterion("member_name <>", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameGreaterThan(String value) {
            addCriterion("member_name >", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameGreaterThanOrEqualTo(String value) {
            addCriterion("member_name >=", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameLessThan(String value) {
            addCriterion("member_name <", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameLessThanOrEqualTo(String value) {
            addCriterion("member_name <=", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameLike(String value) {
            addCriterion("member_name like", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotLike(String value) {
            addCriterion("member_name not like", value, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameIn(List<String> values) {
            addCriterion("member_name in", values, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotIn(List<String> values) {
            addCriterion("member_name not in", values, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameBetween(String value1, String value2) {
            addCriterion("member_name between", value1, value2, "memberName");
            return (Criteria) this;
        }

        public Criteria andMemberNameNotBetween(String value1, String value2) {
            addCriterion("member_name not between", value1, value2, "memberName");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityIsNull() {
            addCriterion("order_quantity is null");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityIsNotNull() {
            addCriterion("order_quantity is not null");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityEqualTo(Integer value) {
            addCriterion("order_quantity =", value, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityNotEqualTo(Integer value) {
            addCriterion("order_quantity <>", value, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityGreaterThan(Integer value) {
            addCriterion("order_quantity >", value, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityGreaterThanOrEqualTo(Integer value) {
            addCriterion("order_quantity >=", value, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityLessThan(Integer value) {
            addCriterion("order_quantity <", value, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityLessThanOrEqualTo(Integer value) {
            addCriterion("order_quantity <=", value, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityIn(List<Integer> values) {
            addCriterion("order_quantity in", values, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityNotIn(List<Integer> values) {
            addCriterion("order_quantity not in", values, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityBetween(Integer value1, Integer value2) {
            addCriterion("order_quantity between", value1, value2, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderQuantityNotBetween(Integer value1, Integer value2) {
            addCriterion("order_quantity not between", value1, value2, "orderQuantity");
            return (Criteria) this;
        }

        public Criteria andOrderDateIsNull() {
            addCriterion("order_date is null");
            return (Criteria) this;
        }

        public Criteria andOrderDateIsNotNull() {
            addCriterion("order_date is not null");
            return (Criteria) this;
        }

        public Criteria andOrderDateEqualTo(Date value) {
            addCriterionForJDBCDate("order_date =", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("order_date <>", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateGreaterThan(Date value) {
            addCriterionForJDBCDate("order_date >", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("order_date >=", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateLessThan(Date value) {
            addCriterionForJDBCDate("order_date <", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("order_date <=", value, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateIn(List<Date> values) {
            addCriterionForJDBCDate("order_date in", values, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("order_date not in", values, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("order_date between", value1, value2, "orderDate");
            return (Criteria) this;
        }

        public Criteria andOrderDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("order_date not between", value1, value2, "orderDate");
            return (Criteria) this;
        }

        public Criteria andIspaiedIsNull() {
            addCriterion("ispaied is null");
            return (Criteria) this;
        }

        public Criteria andIspaiedIsNotNull() {
            addCriterion("ispaied is not null");
            return (Criteria) this;
        }

        public Criteria andIspaiedEqualTo(Boolean value) {
            addCriterion("ispaied =", value, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedNotEqualTo(Boolean value) {
            addCriterion("ispaied <>", value, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedGreaterThan(Boolean value) {
            addCriterion("ispaied >", value, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedGreaterThanOrEqualTo(Boolean value) {
            addCriterion("ispaied >=", value, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedLessThan(Boolean value) {
            addCriterion("ispaied <", value, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedLessThanOrEqualTo(Boolean value) {
            addCriterion("ispaied <=", value, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedIn(List<Boolean> values) {
            addCriterion("ispaied in", values, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedNotIn(List<Boolean> values) {
            addCriterion("ispaied not in", values, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedBetween(Boolean value1, Boolean value2) {
            addCriterion("ispaied between", value1, value2, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIspaiedNotBetween(Boolean value1, Boolean value2) {
            addCriterion("ispaied not between", value1, value2, "ispaied");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredIsNull() {
            addCriterion("isdelivered is null");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredIsNotNull() {
            addCriterion("isdelivered is not null");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredEqualTo(Boolean value) {
            addCriterion("isdelivered =", value, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredNotEqualTo(Boolean value) {
            addCriterion("isdelivered <>", value, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredGreaterThan(Boolean value) {
            addCriterion("isdelivered >", value, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredGreaterThanOrEqualTo(Boolean value) {
            addCriterion("isdelivered >=", value, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredLessThan(Boolean value) {
            addCriterion("isdelivered <", value, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredLessThanOrEqualTo(Boolean value) {
            addCriterion("isdelivered <=", value, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredIn(List<Boolean> values) {
            addCriterion("isdelivered in", values, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredNotIn(List<Boolean> values) {
            addCriterion("isdelivered not in", values, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredBetween(Boolean value1, Boolean value2) {
            addCriterion("isdelivered between", value1, value2, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsdeliveredNotBetween(Boolean value1, Boolean value2) {
            addCriterion("isdelivered not between", value1, value2, "isdelivered");
            return (Criteria) this;
        }

        public Criteria andIsreturnIsNull() {
            addCriterion("isreturn is null");
            return (Criteria) this;
        }

        public Criteria andIsreturnIsNotNull() {
            addCriterion("isreturn is not null");
            return (Criteria) this;
        }

        public Criteria andIsreturnEqualTo(Boolean value) {
            addCriterion("isreturn =", value, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnNotEqualTo(Boolean value) {
            addCriterion("isreturn <>", value, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnGreaterThan(Boolean value) {
            addCriterion("isreturn >", value, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnGreaterThanOrEqualTo(Boolean value) {
            addCriterion("isreturn >=", value, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnLessThan(Boolean value) {
            addCriterion("isreturn <", value, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnLessThanOrEqualTo(Boolean value) {
            addCriterion("isreturn <=", value, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnIn(List<Boolean> values) {
            addCriterion("isreturn in", values, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnNotIn(List<Boolean> values) {
            addCriterion("isreturn not in", values, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnBetween(Boolean value1, Boolean value2) {
            addCriterion("isreturn between", value1, value2, "isreturn");
            return (Criteria) this;
        }

        public Criteria andIsreturnNotBetween(Boolean value1, Boolean value2) {
            addCriterion("isreturn not between", value1, value2, "isreturn");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}
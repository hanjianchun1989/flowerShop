package com.flower.ssm.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SaleListExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SaleListExample() {
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

        public Criteria andSaleListIdIsNull() {
            addCriterion("sale_list_id is null");
            return (Criteria) this;
        }

        public Criteria andSaleListIdIsNotNull() {
            addCriterion("sale_list_id is not null");
            return (Criteria) this;
        }

        public Criteria andSaleListIdEqualTo(Integer value) {
            addCriterion("sale_list_id =", value, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdNotEqualTo(Integer value) {
            addCriterion("sale_list_id <>", value, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdGreaterThan(Integer value) {
            addCriterion("sale_list_id >", value, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("sale_list_id >=", value, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdLessThan(Integer value) {
            addCriterion("sale_list_id <", value, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdLessThanOrEqualTo(Integer value) {
            addCriterion("sale_list_id <=", value, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdIn(List<Integer> values) {
            addCriterion("sale_list_id in", values, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdNotIn(List<Integer> values) {
            addCriterion("sale_list_id not in", values, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdBetween(Integer value1, Integer value2) {
            addCriterion("sale_list_id between", value1, value2, "saleListId");
            return (Criteria) this;
        }

        public Criteria andSaleListIdNotBetween(Integer value1, Integer value2) {
            addCriterion("sale_list_id not between", value1, value2, "saleListId");
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

        public Criteria andSaleQuantityIsNull() {
            addCriterion("sale_quantity is null");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityIsNotNull() {
            addCriterion("sale_quantity is not null");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityEqualTo(Integer value) {
            addCriterion("sale_quantity =", value, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityNotEqualTo(Integer value) {
            addCriterion("sale_quantity <>", value, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityGreaterThan(Integer value) {
            addCriterion("sale_quantity >", value, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityGreaterThanOrEqualTo(Integer value) {
            addCriterion("sale_quantity >=", value, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityLessThan(Integer value) {
            addCriterion("sale_quantity <", value, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityLessThanOrEqualTo(Integer value) {
            addCriterion("sale_quantity <=", value, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityIn(List<Integer> values) {
            addCriterion("sale_quantity in", values, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityNotIn(List<Integer> values) {
            addCriterion("sale_quantity not in", values, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityBetween(Integer value1, Integer value2) {
            addCriterion("sale_quantity between", value1, value2, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleQuantityNotBetween(Integer value1, Integer value2) {
            addCriterion("sale_quantity not between", value1, value2, "saleQuantity");
            return (Criteria) this;
        }

        public Criteria andSaleDateIsNull() {
            addCriterion("sale_date is null");
            return (Criteria) this;
        }

        public Criteria andSaleDateIsNotNull() {
            addCriterion("sale_date is not null");
            return (Criteria) this;
        }

        public Criteria andSaleDateEqualTo(Date value) {
            addCriterionForJDBCDate("sale_date =", value, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("sale_date <>", value, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateGreaterThan(Date value) {
            addCriterionForJDBCDate("sale_date >", value, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("sale_date >=", value, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateLessThan(Date value) {
            addCriterionForJDBCDate("sale_date <", value, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("sale_date <=", value, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateIn(List<Date> values) {
            addCriterionForJDBCDate("sale_date in", values, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("sale_date not in", values, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("sale_date between", value1, value2, "saleDate");
            return (Criteria) this;
        }

        public Criteria andSaleDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("sale_date not between", value1, value2, "saleDate");
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
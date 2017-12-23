package com.flower.ssm.mapper;

import com.flower.ssm.pojo.SaleList;
import com.flower.ssm.pojo.SaleListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SaleListMapper {
    long countByExample(SaleListExample example);

    int deleteByExample(SaleListExample example);

    int deleteByPrimaryKey(Integer saleListId);

    int insert(SaleList record);

    int insertSelective(SaleList record);

    List<SaleList> selectByExample(SaleListExample example);

    SaleList selectByPrimaryKey(Integer saleListId);

    int updateByExampleSelective(@Param("record") SaleList record, @Param("example") SaleListExample example);

    int updateByExample(@Param("record") SaleList record, @Param("example") SaleListExample example);

    int updateByPrimaryKeySelective(SaleList record);

    int updateByPrimaryKey(SaleList record);
}
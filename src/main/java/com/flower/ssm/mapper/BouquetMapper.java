package com.flower.ssm.mapper;

import com.flower.ssm.pojo.Bouquet;
import com.flower.ssm.pojo.BouquetExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BouquetMapper {
    long countByExample(BouquetExample example);

    int deleteByExample(BouquetExample example);

    int deleteByPrimaryKey(Integer bouquetId);

    int insert(Bouquet record);

    int insertSelective(Bouquet record);

    List<Bouquet> selectByExample(BouquetExample example);

    Bouquet selectByPrimaryKey(Integer bouquetId);

    int updateByExampleSelective(@Param("record") Bouquet record, @Param("example") BouquetExample example);

    int updateByExample(@Param("record") Bouquet record, @Param("example") BouquetExample example);

    int updateByPrimaryKeySelective(Bouquet record);

    int updateByPrimaryKey(Bouquet record);
}
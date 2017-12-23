package com.flower.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.ssm.mapper.BouquetMapper;
import com.flower.ssm.pojo.Bouquet;
import com.flower.ssm.pojo.BouquetExample;
import com.flower.ssm.service.IBouquetService;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月17日 上午11:46:27 
 * @version 1.0 
 */
@Service
public class BouquetServiceImpl implements IBouquetService{
	@Autowired
	BouquetMapper bouquetMapper;

	@Override
	public boolean addBouquet(Bouquet bouquet) {
		return bouquetMapper.insertSelective(bouquet)>0;
	}

	@Override
	public List<Bouquet> queryBouquetByType(String type) {
		BouquetExample example=new BouquetExample();
//		example.createCriteria().andType
		return bouquetMapper.selectByExample(example);
	}

	@Override
	public void updateBouquet(Bouquet bouquet) {
		BouquetExample example=new BouquetExample();
		example.createCriteria().andBouquetIdEqualTo(bouquet.getBouquetId());
		bouquetMapper.updateByExampleSelective(bouquet, example);
	}

	@Override
	public void deleteBouquet(Integer bouquetId) {
		bouquetMapper.deleteByPrimaryKey(bouquetId);
	}

	@Override
	public Bouquet queryBouquetById(Integer bouquetId) {
		return bouquetMapper.selectByPrimaryKey(bouquetId);
	}

}

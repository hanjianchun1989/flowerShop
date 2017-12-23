package com.flower.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.ssm.mapper.SaleListMapper;
import com.flower.ssm.pojo.SaleList;
import com.flower.ssm.service.ISaleListService;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月22日 上午9:23:23 
 * @version 1.0 
 */
@Service
public class SaleListServiceImpl implements ISaleListService {
	@Autowired
	SaleListMapper saleListMapper;
	@Override
	public List<SaleList> queryAll() {
		return saleListMapper.selectByExample(null);
	}

}

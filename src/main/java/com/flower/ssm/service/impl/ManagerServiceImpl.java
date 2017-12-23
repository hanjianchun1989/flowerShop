package com.flower.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.ssm.mapper.ManagerMapper;
import com.flower.ssm.pojo.Manager;
import com.flower.ssm.pojo.ManagerExample;
import com.flower.ssm.pojo.ManagerExample.Criteria;
import com.flower.ssm.service.IManagerService;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月17日 上午10:11:21 
 * @version 1.0 
 */
@Service
public class ManagerServiceImpl implements IManagerService{
	@Autowired
	ManagerMapper managerMapper;

	@Override
	public boolean loginCheck(String name, String password) {
		ManagerExample example=new ManagerExample();
		Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(name);
		criteria.andPasswordEqualTo(password);
		List<Manager> list = managerMapper.selectByExample(example);
		return list.size()>0;
	}

	@Override
	public Manager getManagerInfoByUsername(String username) {
		ManagerExample example=new ManagerExample();
		Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(username);
		List<Manager> list = managerMapper.selectByExample(example);
		if (list!=null&&list.size()>0) {
			return list.get(0);
		}
		return null;
	}

}

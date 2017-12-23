package com.flower.ssm.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flower.ssm.mapper.MemberMapper;
import com.flower.ssm.pojo.Member;
import com.flower.ssm.pojo.MemberExample;
import com.flower.ssm.pojo.MemberExample.Criteria;
import com.flower.ssm.service.IMemberService;

/**
 * @author 韩建春 hanjianchun:
 * @date 创建时间：2017年12月17日 上午10:04:27
 * @version 1.0
 */
@Service
public class MemberServiceImpl implements IMemberService {
	@Autowired
	MemberMapper memberMapper;

	@Override
	public boolean loginCheck(String userName, String password) {
		MemberExample example = new MemberExample();
		Criteria criteria = example.createCriteria();
		memberMapper.selectByExample(example);
		return false;
	}

	@Override
	public List<Member> queryall(String searchName, String searchType) {
		MemberExample memberExample = new MemberExample();
		memberExample.setOrderByClause("rank");
		if (StringUtils.isNoneBlank(searchName, searchType)) {
			if ("like".equals(searchType)) {
				memberExample.createCriteria().andNameLike("%" + searchName + "%");
			} else if ("all".equals(searchType)) {
				memberExample.createCriteria().andNameEqualTo(searchName);
			}
		}
		return memberMapper.selectByExample(memberExample);
	}

}

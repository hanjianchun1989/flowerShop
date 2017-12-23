package com.flower.ssm.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flower.ssm.pojo.Member;
import com.flower.ssm.service.IMemberService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月20日 下午4:09:34 
 * @version 1.0 
 */
@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	IMemberService memberService;
	@RequestMapping("/queryMembers")
	public String queryMembers(@RequestParam(defaultValue="1")Integer pageNow,String searchName,@RequestParam(defaultValue="like")String searchType,Model model){
		logger.debug("查询的会员条件pageNow{}==searchName：{}",pageNow,searchName);
		
		PageHelper.startPage(pageNow, 5);
		List<Member> list = memberService.queryall(searchName,searchType);
		logger.debug("查询的会员条数{}",list.size());
		PageInfo<Member> pageInfo=new PageInfo<Member>(list, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "manage/manageMember";
		
	}

}

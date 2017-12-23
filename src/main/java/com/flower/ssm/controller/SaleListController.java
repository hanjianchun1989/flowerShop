package com.flower.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flower.ssm.pojo.SaleList;
import com.flower.ssm.service.ISaleListService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月22日 上午9:25:17 
 * @version 1.0 
 */
@Controller
public class SaleListController {
	@Autowired
	ISaleListService saleListService;
	@RequestMapping("/querySalesRecord")
	public String queryAll(@RequestParam(defaultValue="1")Integer pageNum,Model model){
		PageHelper.startPage(pageNum, 10);
		List<SaleList> list = saleListService.queryAll();
		PageInfo<SaleList> pageInfo=new PageInfo<>(list,5);
		model.addAttribute("pageInfo", pageInfo);
		return "manage/manageSalesRecord";
	}

}

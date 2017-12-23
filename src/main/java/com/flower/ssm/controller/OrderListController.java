package com.flower.ssm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flower.ssm.pojo.custom.OrderListCustom;
import com.flower.ssm.service.IOrderListService;

/**
 * @author 韩建春 hanjianchun:
 * @date 创建时间：2017年12月19日 下午7:00:12
 * @version 1.0
 */
@Controller
@RequestMapping("/order")
public class OrderListController {
	private static final Logger logger = LoggerFactory.getLogger(OrderListController.class);
	@Autowired
	IOrderListService orderListService;

	@RequestMapping("/queryList")
	public String queryOrderList(@RequestParam(defaultValue = "false") Boolean delivered, Model model) {
		logger.debug("delivered===={}", delivered);
		model.addAttribute("delivered", delivered);
		model.addAttribute("orderList", orderListService.queryOrdersCustom(delivered, false));
		return "manage/manageOrder";
	}
	//发货
	@RequestMapping("/deliver")
	public String deliver(OrderListCustom oListCustom) {
		orderListService.deliver(oListCustom);
		return "redirect:/order/queryList";
	}
	//拒接
	@RequestMapping("/reject")
	public String reject(OrderListCustom oListCustom) {
		orderListService.delete(oListCustom);
		return "redirect:/order/queryList";
	}
	//查询退货
	@RequestMapping("/queryReturnList")
	public String queryOrderReturnList(Model model) {
		// 第一个参数没有效果
		model.addAttribute("orderList", orderListService.queryOrdersCustom(true, true));
		return "manage/manageReturnBouquet";
	}
	//同意退货
	@RequestMapping("/agreeReturn")
	public String agreeReturn(OrderListCustom oListCustom) {
		orderListService.addAgreeRetuen(oListCustom);
		return "redirect:/order/queryReturnList";
	}
	//拒绝退货
	@RequestMapping("/rejectReturn")
	public String rejectReturn(OrderListCustom oListCustom) {
		orderListService.addRejectReturn(oListCustom);
		return "redirect:/order/queryReturnList";
	}

}

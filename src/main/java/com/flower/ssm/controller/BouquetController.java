package com.flower.ssm.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.flower.ssm.pojo.Bouquet;
import com.flower.ssm.service.IBouquetService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * @author 韩建春 hanjianchun:
 * @date 创建时间：2017年12月17日 上午11:50:31
 * @version 1.0
 */
@Controller
public class BouquetController {
	private static final Logger logger = LoggerFactory.getLogger(BouquetController.class);
	@Autowired
	IBouquetService bouquetService;
	/**
	 * 自定义类型转换器
	 */
	@InitBinder
	public void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
		binder.registerCustomEditor(Date.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	@RequestMapping("/addBouquet")
	public String addBouquet(HttpServletRequest request, Bouquet bouquet, Integer[] type, Integer[] material,
			MultipartFile pictureFile) throws Exception {
		// 处理多选框
		int types = 1;
		int materials = 1;
		for (Integer i : type) {
			types *= i;
		}
		for (Integer i : material) {
			materials *= i;
		}
		bouquet.setType(types);// 分类
		bouquet.setMaterial(materials);// 花材

		if (!pictureFile.isEmpty()) {
			String filePath = request.getServletContext().getRealPath("/"); // 获取项目的跟路径
			String uploadPath = filePath + "\\images\\flowers"; // 上传文件的目录
			logger.debug("上传图片地址：{}", uploadPath);
			logger.debug("上传图片的名字：{}", pictureFile.getOriginalFilename());
			String filename = UUID.randomUUID().toString();
			if (StringUtils.isNotBlank(filename)) {

				File file = new File(uploadPath, filename);
				pictureFile.transferTo(file);
				bouquet.setPicture(filename);
			} 
		}
		// 获得系统时间, 若是直接添加花束，即发布新品，则发布时间用系统时间
		Date d = new Date();
		bouquet.setDate(d);
		if(bouquet.getBouquetId()!=null){//如果有id就是更新
			bouquetService.updateBouquet(bouquet);
			HttpSession session = request.getSession();
			Integer pageNum=(Integer) session.getAttribute("pageNum");//当前页
			session.removeAttribute("pageNum");
			return "redirect:/queryBouquet?pageNow="+pageNum;
		}
		
		bouquetService.addBouquet(bouquet);
		request.setAttribute("msg", "添加成功！");
		return "manage/addBouquet";
	}

	@RequestMapping("queryBouquet")
	public String queryBouquet(@RequestParam(defaultValue = "1") Integer pageNow, String searchType, Model model) {

		PageHelper.startPage(pageNow, 5);
		List<Bouquet> list = bouquetService.queryBouquetByType(null);
		PageInfo<Bouquet> pageInfo = new PageInfo<Bouquet>(list, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "manage/manageBouquet";

	}
	@RequestMapping("editBouquet")
	public String editBouquet(HttpSession session,Integer bouquetId,Integer pageNum, Model model) {
		session.setAttribute("pageNum", pageNum);//当前页
		Bouquet bouquet = bouquetService.queryBouquetById(bouquetId);
		model.addAttribute("bouquet", bouquet);
		return "manage/editBouquet";
		
	}

	@RequestMapping("deleteBouquet")
	public String deleteBouquet(Integer bouquetId,Integer pageNum) {
		
		bouquetService.deleteBouquet(bouquetId);
		return "redirect:/queryBouquet?pageNow="+pageNum;
		
	}
}

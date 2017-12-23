package com.flower.ssm.service;

import java.util.List;

import com.flower.ssm.pojo.Bouquet;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月17日 上午11:42:51 
 * @version 1.0 
 */

public interface IBouquetService {
	boolean addBouquet(Bouquet bouquet);
	void updateBouquet(Bouquet bouquet);
	void deleteBouquet(Integer bouquetId);
	Bouquet queryBouquetById(Integer bouquetId);
	List<Bouquet> queryBouquetByType(String type);

}

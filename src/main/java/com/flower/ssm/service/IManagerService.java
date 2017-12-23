package com.flower.ssm.service;

import com.flower.ssm.pojo.Manager;

/** 
 * @author  韩建春 hanjianchun: 
 * @date 创建时间：2017年12月17日 上午10:01:03 
 * @version 1.0 
 *
 *1、获取用户的登陆信息
 *2、根据用户传递的登陆信息，查询数据库，验证登陆信息是否正确
 *		a、若登陆信息有误，则跳转至登陆界面，并传递错误消息
 *		b、若认证成功，做三件事：1）则先将登陆信息回写到客户端，即写Cookie
 *							  2）在服务器端的session中设置标志位标记已通过认证
 *						      3）跳转到登陆前的页面
 *
 *
 */

public interface IManagerService {
	//登陆验证的函数
 	boolean loginCheck(String name,String password);
 	//根据用户名查询用户信息，用于shiro验证
	Manager getManagerInfoByUsername(String username);

}

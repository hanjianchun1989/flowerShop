package com.flower.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.kaptcha.Constants;

/**
 * @author 韩建春 hanjianchun:
 * @date 创建时间：2017年12月19日 下午2:06:39
 * @version 1.0
 */
@Controller
@RequestMapping("/login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping("/managerLogin")
	public String managerLogin(HttpServletRequest request, String name, String password) {
		logger.debug("登录Controller {}=={}", name, password);
		Subject currentUser = SecurityUtils.getSubject();

		if (!currentUser.isAuthenticated()) {
			// 把用户名和密码封装为 UsernamePasswordToken 对象
			UsernamePasswordToken token = new UsernamePasswordToken(name, password);
			// rememberme
			// token.setRememberMe(true);
			try {
				// 执行登录.
				currentUser.login(token);
				HttpSession session = request.getSession();
				session.setAttribute("ManagerLoginPass", "yes");
				session.setAttribute("ManagerName", name);
				// 修改session最大保留时间
				session.setMaxInactiveInterval(1000);
				return "manage/manage";
			}
			// ... catch more exceptions here (maybe custom ones specific to
			// your application?
			// 所有认证时异常的父类.
			catch (AuthenticationException ae) {
				// unexpected condition? error?
				System.out.println("登录失败: " + ae.getMessage());
			}
		}
		return "redirect:/managerLogin.html";

	}

/*	@RequestMapping(value = "check", method = RequestMethod.POST)
	@ResponseBody
	public String loginCheck(HttpServletRequest request,
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "kaptcha", required = true) String kaptchaReceived) {
		// 用户输入的验证码的值
		String kaptchaExpected = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		// 校验验证码是否正确
		if (kaptchaReceived == null || !kaptchaReceived.equals(kaptchaExpected)) {
			return "kaptcha_error";// 返回验证码错误
		}
		// 校验用户名密码
		// ……
		// ……
		return "success"; // 校验通过返回成功
	}*/
}

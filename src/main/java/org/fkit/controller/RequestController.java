package org.fkit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.fkit.dto.UserModule;
import org.fkit.service.IdentityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/um")
public class RequestController {
	
	/** 1.定义业务层对象 */
	@Resource // by type
	private IdentityService identityService;
	
	@RequestMapping(value="/login")
	public String requestLogin(){
		System.out.println("登录成功了！");
		return "login";
	}
	
	@RequestMapping(value="/main")
	public String requestMain(Model model){
		try {
			//查询出当前用户拥有的所有模块权限
			List<UserModule> userModules = identityService.getUserPopedomModules();
			model.addAttribute("userPopedomModules", userModules);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main";
	}
	
	@RequestMapping(value="/home")
	public String requestHome(){
		return "home";
	}
}

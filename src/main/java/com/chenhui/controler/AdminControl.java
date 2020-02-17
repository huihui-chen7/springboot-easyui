package com.chenhui.controler;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chenhui.Admin.service.AdminService;

/**
 * 控制层
 * @author xiaohuihui
 *
 */

@EnableAutoConfiguration
@ComponentScan(basePackages= {"com.chenhui.controler","com.chenhui.Admin.service.Impl"})
@MapperScan(value="com.chenhui.Admin.dao")
@Controller
public class AdminControl {

	@Autowired
	private AdminService service;
	
	/**
	 * 根据id查询所有
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/adminm.do")
	@ResponseBody
	public List<Map<String,Object>> getAdmin(@RequestParam(defaultValue="0")String id){
		//System.out.println("aaaaaa");
		return service.admins(id);
	}
	
	/**
	 * 显示所有菜单栏
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping(value="/caidan.do")
	@ResponseBody
	public Map<String,Object> all(Integer page,Integer rows){
		//System.out.println("aaaaaa");
		return service.caidanadmins(page,rows);
	}
	
}

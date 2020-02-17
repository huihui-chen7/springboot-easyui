package com.chenhui.Admin.service.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chenhui.Admin.dao.AdminDao;
import com.chenhui.Admin.service.AdminService;

/**
 * 实现导航栏信息的服务层
 * @author xiaohuihui
 *
 */
@Service
public class AdminServiceImpl implements AdminService {
    
	@Autowired
	private AdminDao dao;
	
	
	/* (non-Javadoc)
	 * @see com.chenhui.Admin.service.Impl.AdminService#admins()
	 */
	@Override
	public List<Map<String ,Object>> admins(String id){
		return dao.addAll(id);
	}


	@Override
	public Map<String, Object> caidanadmins(Integer page,Integer rows) {
		int startIndex = (page-1)*rows;
		int total = dao.countnv();//查询所有的数据
		List<Map<String,Object>>  rewList = dao.caidans(startIndex,rows);
		Map<String,Object> map =new HashMap<String,Object>(); 
		map.put("total", total);
		map.put("rows", rewList);
 		return map;
	}
}

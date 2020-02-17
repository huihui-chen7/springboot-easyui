package com.chenhui.Admin.service;

import java.util.List;
import java.util.Map;

public interface AdminService {

	List<Map<String, Object>> admins(String id);

	Map<String, Object> caidanadmins(Integer page,Integer rows);

}
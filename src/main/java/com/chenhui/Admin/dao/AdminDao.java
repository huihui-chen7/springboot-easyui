package com.chenhui.Admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * 获取导航栏信息
 * @author xiaohuihui
 *
 */
public interface AdminDao {

	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	@Select("SELECT *FROM tree where pid=#{arg0}")
	public List<Map<String,Object>> addAll(String id);

	/**
	 * 分页查询
	 * @param startIndex  开始索引
	 * @param rows   行数
	 * @return
	 */
	@Select("SELECT *FROM tree LIMIT #{startIndex},#{rows}")
	public List<Map<String, Object>> caidans(@Param(value="startIndex")int startIndex,@Param(value="rows")int rows);
	
	/**
	 * 查询所有的记录
	 * @return
	 */
	@Select("SELECT COUNT(*) num FROM tree")
	public int countnv();
}

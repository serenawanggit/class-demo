package com.yanyi.dao;

import java.util.List;
import java.util.Map;

import com.yanyi.entity.RoleDto;

public interface RoleDao {

	List<RoleDto> queryRole(Map<String, String> map);
	
	int addRole(RoleDto role);
	
	int updateRoleById(RoleDto role);
	
	int delRoleById(String ids);
}

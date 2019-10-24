package com.yanyi.service;

import java.util.List;
import java.util.Map;

import com.yanyi.entity.RoleDto;

public interface RoleService {
	List<RoleDto> queryRole(Map<String, String> map);

	int addRole(RoleDto role);
	
	int updateRoleById(RoleDto role);

	int delRoleById(String ids);
}

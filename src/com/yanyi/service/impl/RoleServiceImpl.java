package com.yanyi.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yanyi.dao.RoleDao;
import com.yanyi.entity.RoleDto;
import com.yanyi.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	private RoleDao roleDao;
	
	@Override
	public List<RoleDto> queryRole(Map<String, String> map) {
		return roleDao.queryRole(map);
	}
	
	@Override
	public int addRole(RoleDto role) {
		return roleDao.addRole(role);
	}

	@Override
	public int updateRoleById(RoleDto role) {
		return roleDao.updateRoleById(role);
	}

	@Override
	public int delRoleById(String ids) {
		return roleDao.delRoleById(ids);
	}
	
}

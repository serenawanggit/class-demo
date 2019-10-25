package com.yanyi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.RoleDto;
import com.yanyi.service.RoleService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private RoleService roleService;

	@ResponseBody
	@RequestMapping("queryRole")
	public String queryRoleTable(){
		PageTableResult result = new PageTableResult();
		List<RoleDto> queryRole = roleService.queryRole(new HashMap<String, String>());
		result.setData(queryRole);
		result.setCode(0);
		return JsonUtil.object2Json(result);
	}
	
	@ResponseBody
	@RequestMapping("/addRole")
	public String addRole(RoleDto role){
		return roleService.addRole(role)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/updateRoleById")
	public String updateRoleById(String value,String field, String id){
		RoleDto role = null;
		if(Objects.equals(field, "name")) role = new RoleDto(Integer.parseInt(id), value);
		return roleService.updateRoleById(role)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/delRoleById")
	public String delRoleById(String ids){
		return roleService.delRoleById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
}

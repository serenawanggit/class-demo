package com.yanyi.dao;

import java.util.List;

import com.yanyi.entity.GradeDto;

public interface GradeDao {

	List<GradeDto> queryGradeByDto(GradeDto dto);
}

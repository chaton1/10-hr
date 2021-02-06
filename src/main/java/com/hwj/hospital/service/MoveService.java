package com.hwj.hospital.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.hwj.hospital.entity.Move;

public interface MoveService extends IService<Move>{

	/**
	 * 查询所有的调动记录
	 * @return
	 */
	List<Move> selectList();
}

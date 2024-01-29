package com.dao;

import com.entity.JingdiangonglveEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingdiangonglveVO;
import com.entity.view.JingdiangonglveView;


/**
 * 景点攻略
 * 
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface JingdiangonglveDao extends BaseMapper<JingdiangonglveEntity> {
	
	List<JingdiangonglveVO> selectListVO(@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);
	
	JingdiangonglveVO selectVO(@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);
	
	List<JingdiangonglveView> selectListView(@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);

	List<JingdiangonglveView> selectListView(Pagination page,@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);
	
	JingdiangonglveView selectView(@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);
	
}

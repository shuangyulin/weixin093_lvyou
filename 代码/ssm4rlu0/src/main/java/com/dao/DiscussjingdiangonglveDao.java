package com.dao;

import com.entity.DiscussjingdiangonglveEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjingdiangonglveVO;
import com.entity.view.DiscussjingdiangonglveView;


/**
 * 景点攻略评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface DiscussjingdiangonglveDao extends BaseMapper<DiscussjingdiangonglveEntity> {
	
	List<DiscussjingdiangonglveVO> selectListVO(@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);
	
	DiscussjingdiangonglveVO selectVO(@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);
	
	List<DiscussjingdiangonglveView> selectListView(@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);

	List<DiscussjingdiangonglveView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);
	
	DiscussjingdiangonglveView selectView(@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);
	
}

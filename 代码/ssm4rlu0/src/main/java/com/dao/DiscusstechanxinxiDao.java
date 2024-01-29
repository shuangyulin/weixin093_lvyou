package com.dao;

import com.entity.DiscusstechanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusstechanxinxiVO;
import com.entity.view.DiscusstechanxinxiView;


/**
 * 特产信息评论表
 * 
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface DiscusstechanxinxiDao extends BaseMapper<DiscusstechanxinxiEntity> {
	
	List<DiscusstechanxinxiVO> selectListVO(@Param("ew") Wrapper<DiscusstechanxinxiEntity> wrapper);
	
	DiscusstechanxinxiVO selectVO(@Param("ew") Wrapper<DiscusstechanxinxiEntity> wrapper);
	
	List<DiscusstechanxinxiView> selectListView(@Param("ew") Wrapper<DiscusstechanxinxiEntity> wrapper);

	List<DiscusstechanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusstechanxinxiEntity> wrapper);
	
	DiscusstechanxinxiView selectView(@Param("ew") Wrapper<DiscusstechanxinxiEntity> wrapper);
	
}

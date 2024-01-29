package com.dao;

import com.entity.TechanleixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TechanleixingVO;
import com.entity.view.TechanleixingView;


/**
 * 特产类型
 * 
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface TechanleixingDao extends BaseMapper<TechanleixingEntity> {
	
	List<TechanleixingVO> selectListVO(@Param("ew") Wrapper<TechanleixingEntity> wrapper);
	
	TechanleixingVO selectVO(@Param("ew") Wrapper<TechanleixingEntity> wrapper);
	
	List<TechanleixingView> selectListView(@Param("ew") Wrapper<TechanleixingEntity> wrapper);

	List<TechanleixingView> selectListView(Pagination page,@Param("ew") Wrapper<TechanleixingEntity> wrapper);
	
	TechanleixingView selectView(@Param("ew") Wrapper<TechanleixingEntity> wrapper);
	
}

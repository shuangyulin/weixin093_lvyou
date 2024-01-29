package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TechanleixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TechanleixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TechanleixingView;


/**
 * 特产类型
 *
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface TechanleixingService extends IService<TechanleixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TechanleixingVO> selectListVO(Wrapper<TechanleixingEntity> wrapper);
   	
   	TechanleixingVO selectVO(@Param("ew") Wrapper<TechanleixingEntity> wrapper);
   	
   	List<TechanleixingView> selectListView(Wrapper<TechanleixingEntity> wrapper);
   	
   	TechanleixingView selectView(@Param("ew") Wrapper<TechanleixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TechanleixingEntity> wrapper);
   	
}


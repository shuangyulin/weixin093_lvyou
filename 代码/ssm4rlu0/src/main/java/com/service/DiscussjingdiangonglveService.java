package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjingdiangonglveEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjingdiangonglveVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjingdiangonglveView;


/**
 * 景点攻略评论表
 *
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface DiscussjingdiangonglveService extends IService<DiscussjingdiangonglveEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjingdiangonglveVO> selectListVO(Wrapper<DiscussjingdiangonglveEntity> wrapper);
   	
   	DiscussjingdiangonglveVO selectVO(@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);
   	
   	List<DiscussjingdiangonglveView> selectListView(Wrapper<DiscussjingdiangonglveEntity> wrapper);
   	
   	DiscussjingdiangonglveView selectView(@Param("ew") Wrapper<DiscussjingdiangonglveEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjingdiangonglveEntity> wrapper);
   	
}


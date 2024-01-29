package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingdiangonglveEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingdiangonglveVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingdiangonglveView;


/**
 * 景点攻略
 *
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface JingdiangonglveService extends IService<JingdiangonglveEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingdiangonglveVO> selectListVO(Wrapper<JingdiangonglveEntity> wrapper);
   	
   	JingdiangonglveVO selectVO(@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);
   	
   	List<JingdiangonglveView> selectListView(Wrapper<JingdiangonglveEntity> wrapper);
   	
   	JingdiangonglveView selectView(@Param("ew") Wrapper<JingdiangonglveEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingdiangonglveEntity> wrapper);
   	
}


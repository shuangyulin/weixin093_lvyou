package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.MeishileixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.MeishileixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.MeishileixingView;


/**
 * 美食类型
 *
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface MeishileixingService extends IService<MeishileixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MeishileixingVO> selectListVO(Wrapper<MeishileixingEntity> wrapper);
   	
   	MeishileixingVO selectVO(@Param("ew") Wrapper<MeishileixingEntity> wrapper);
   	
   	List<MeishileixingView> selectListView(Wrapper<MeishileixingEntity> wrapper);
   	
   	MeishileixingView selectView(@Param("ew") Wrapper<MeishileixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MeishileixingEntity> wrapper);
   	
}


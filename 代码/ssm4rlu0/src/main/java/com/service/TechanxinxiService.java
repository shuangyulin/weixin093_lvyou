package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TechanxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TechanxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TechanxinxiView;


/**
 * 特产信息
 *
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public interface TechanxinxiService extends IService<TechanxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TechanxinxiVO> selectListVO(Wrapper<TechanxinxiEntity> wrapper);
   	
   	TechanxinxiVO selectVO(@Param("ew") Wrapper<TechanxinxiEntity> wrapper);
   	
   	List<TechanxinxiView> selectListView(Wrapper<TechanxinxiEntity> wrapper);
   	
   	TechanxinxiView selectView(@Param("ew") Wrapper<TechanxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TechanxinxiEntity> wrapper);
   	
}


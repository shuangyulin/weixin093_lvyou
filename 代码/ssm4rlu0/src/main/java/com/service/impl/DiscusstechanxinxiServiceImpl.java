package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscusstechanxinxiDao;
import com.entity.DiscusstechanxinxiEntity;
import com.service.DiscusstechanxinxiService;
import com.entity.vo.DiscusstechanxinxiVO;
import com.entity.view.DiscusstechanxinxiView;

@Service("discusstechanxinxiService")
public class DiscusstechanxinxiServiceImpl extends ServiceImpl<DiscusstechanxinxiDao, DiscusstechanxinxiEntity> implements DiscusstechanxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusstechanxinxiEntity> page = this.selectPage(
                new Query<DiscusstechanxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscusstechanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusstechanxinxiEntity> wrapper) {
		  Page<DiscusstechanxinxiView> page =new Query<DiscusstechanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusstechanxinxiVO> selectListVO(Wrapper<DiscusstechanxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusstechanxinxiVO selectVO(Wrapper<DiscusstechanxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusstechanxinxiView> selectListView(Wrapper<DiscusstechanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusstechanxinxiView selectView(Wrapper<DiscusstechanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

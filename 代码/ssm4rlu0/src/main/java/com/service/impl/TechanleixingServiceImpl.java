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


import com.dao.TechanleixingDao;
import com.entity.TechanleixingEntity;
import com.service.TechanleixingService;
import com.entity.vo.TechanleixingVO;
import com.entity.view.TechanleixingView;

@Service("techanleixingService")
public class TechanleixingServiceImpl extends ServiceImpl<TechanleixingDao, TechanleixingEntity> implements TechanleixingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TechanleixingEntity> page = this.selectPage(
                new Query<TechanleixingEntity>(params).getPage(),
                new EntityWrapper<TechanleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TechanleixingEntity> wrapper) {
		  Page<TechanleixingView> page =new Query<TechanleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TechanleixingVO> selectListVO(Wrapper<TechanleixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TechanleixingVO selectVO(Wrapper<TechanleixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TechanleixingView> selectListView(Wrapper<TechanleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TechanleixingView selectView(Wrapper<TechanleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

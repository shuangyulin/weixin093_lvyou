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


import com.dao.DiscussjingdiangonglveDao;
import com.entity.DiscussjingdiangonglveEntity;
import com.service.DiscussjingdiangonglveService;
import com.entity.vo.DiscussjingdiangonglveVO;
import com.entity.view.DiscussjingdiangonglveView;

@Service("discussjingdiangonglveService")
public class DiscussjingdiangonglveServiceImpl extends ServiceImpl<DiscussjingdiangonglveDao, DiscussjingdiangonglveEntity> implements DiscussjingdiangonglveService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussjingdiangonglveEntity> page = this.selectPage(
                new Query<DiscussjingdiangonglveEntity>(params).getPage(),
                new EntityWrapper<DiscussjingdiangonglveEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussjingdiangonglveEntity> wrapper) {
		  Page<DiscussjingdiangonglveView> page =new Query<DiscussjingdiangonglveView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussjingdiangonglveVO> selectListVO(Wrapper<DiscussjingdiangonglveEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussjingdiangonglveVO selectVO(Wrapper<DiscussjingdiangonglveEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussjingdiangonglveView> selectListView(Wrapper<DiscussjingdiangonglveEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussjingdiangonglveView selectView(Wrapper<DiscussjingdiangonglveEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

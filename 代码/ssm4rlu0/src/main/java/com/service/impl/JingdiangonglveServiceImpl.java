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


import com.dao.JingdiangonglveDao;
import com.entity.JingdiangonglveEntity;
import com.service.JingdiangonglveService;
import com.entity.vo.JingdiangonglveVO;
import com.entity.view.JingdiangonglveView;

@Service("jingdiangonglveService")
public class JingdiangonglveServiceImpl extends ServiceImpl<JingdiangonglveDao, JingdiangonglveEntity> implements JingdiangonglveService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingdiangonglveEntity> page = this.selectPage(
                new Query<JingdiangonglveEntity>(params).getPage(),
                new EntityWrapper<JingdiangonglveEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingdiangonglveEntity> wrapper) {
		  Page<JingdiangonglveView> page =new Query<JingdiangonglveView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingdiangonglveVO> selectListVO(Wrapper<JingdiangonglveEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingdiangonglveVO selectVO(Wrapper<JingdiangonglveEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingdiangonglveView> selectListView(Wrapper<JingdiangonglveEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingdiangonglveView selectView(Wrapper<JingdiangonglveEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

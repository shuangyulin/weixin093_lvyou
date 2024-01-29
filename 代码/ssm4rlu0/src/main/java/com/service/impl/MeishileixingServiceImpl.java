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


import com.dao.MeishileixingDao;
import com.entity.MeishileixingEntity;
import com.service.MeishileixingService;
import com.entity.vo.MeishileixingVO;
import com.entity.view.MeishileixingView;

@Service("meishileixingService")
public class MeishileixingServiceImpl extends ServiceImpl<MeishileixingDao, MeishileixingEntity> implements MeishileixingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MeishileixingEntity> page = this.selectPage(
                new Query<MeishileixingEntity>(params).getPage(),
                new EntityWrapper<MeishileixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MeishileixingEntity> wrapper) {
		  Page<MeishileixingView> page =new Query<MeishileixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MeishileixingVO> selectListVO(Wrapper<MeishileixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MeishileixingVO selectVO(Wrapper<MeishileixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MeishileixingView> selectListView(Wrapper<MeishileixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MeishileixingView selectView(Wrapper<MeishileixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

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


import com.dao.TechanxinxiDao;
import com.entity.TechanxinxiEntity;
import com.service.TechanxinxiService;
import com.entity.vo.TechanxinxiVO;
import com.entity.view.TechanxinxiView;

@Service("techanxinxiService")
public class TechanxinxiServiceImpl extends ServiceImpl<TechanxinxiDao, TechanxinxiEntity> implements TechanxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TechanxinxiEntity> page = this.selectPage(
                new Query<TechanxinxiEntity>(params).getPage(),
                new EntityWrapper<TechanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TechanxinxiEntity> wrapper) {
		  Page<TechanxinxiView> page =new Query<TechanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TechanxinxiVO> selectListVO(Wrapper<TechanxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TechanxinxiVO selectVO(Wrapper<TechanxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TechanxinxiView> selectListView(Wrapper<TechanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TechanxinxiView selectView(Wrapper<TechanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

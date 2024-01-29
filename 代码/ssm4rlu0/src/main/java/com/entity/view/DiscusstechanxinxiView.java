package com.entity.view;

import com.entity.DiscusstechanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 特产信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
@TableName("discusstechanxinxi")
public class DiscusstechanxinxiView  extends DiscusstechanxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusstechanxinxiView(){
	}
 
 	public DiscusstechanxinxiView(DiscusstechanxinxiEntity discusstechanxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discusstechanxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}

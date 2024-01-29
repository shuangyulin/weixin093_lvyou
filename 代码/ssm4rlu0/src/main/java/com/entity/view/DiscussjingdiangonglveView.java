package com.entity.view;

import com.entity.DiscussjingdiangonglveEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 景点攻略评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
@TableName("discussjingdiangonglve")
public class DiscussjingdiangonglveView  extends DiscussjingdiangonglveEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussjingdiangonglveView(){
	}
 
 	public DiscussjingdiangonglveView(DiscussjingdiangonglveEntity discussjingdiangonglveEntity){
 	try {
			BeanUtils.copyProperties(this, discussjingdiangonglveEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}

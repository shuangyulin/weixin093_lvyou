package com.entity.model;

import com.entity.JingdianmeishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 景点美食
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-24 19:51:27
 */
public class JingdianmeishiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 美食类型
	 */
	
	private String meishileixing;
		
	/**
	 * 美食图片
	 */
	
	private String meishitupian;
		
	/**
	 * 美食介绍
	 */
	
	private String meishijieshao;
		
	/**
	 * 美食详情
	 */
	
	private String meishixiangqing;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
		
	/**
	 * 价格
	 */
	
	private Float price;
				
	
	/**
	 * 设置：美食类型
	 */
	 
	public void setMeishileixing(String meishileixing) {
		this.meishileixing = meishileixing;
	}
	
	/**
	 * 获取：美食类型
	 */
	public String getMeishileixing() {
		return meishileixing;
	}
				
	
	/**
	 * 设置：美食图片
	 */
	 
	public void setMeishitupian(String meishitupian) {
		this.meishitupian = meishitupian;
	}
	
	/**
	 * 获取：美食图片
	 */
	public String getMeishitupian() {
		return meishitupian;
	}
				
	
	/**
	 * 设置：美食介绍
	 */
	 
	public void setMeishijieshao(String meishijieshao) {
		this.meishijieshao = meishijieshao;
	}
	
	/**
	 * 获取：美食介绍
	 */
	public String getMeishijieshao() {
		return meishijieshao;
	}
				
	
	/**
	 * 设置：美食详情
	 */
	 
	public void setMeishixiangqing(String meishixiangqing) {
		this.meishixiangqing = meishixiangqing;
	}
	
	/**
	 * 获取：美食详情
	 */
	public String getMeishixiangqing() {
		return meishixiangqing;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
			
}

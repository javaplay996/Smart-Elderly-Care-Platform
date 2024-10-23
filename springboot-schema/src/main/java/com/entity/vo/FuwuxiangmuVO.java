package com.entity.vo;

import com.entity.FuwuxiangmuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 服务项目
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-03-02 17:48:05
 */
public class FuwuxiangmuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 服务类型
	 */
	
	private String fuwuleixing;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 项目价格
	 */
	
	private Integer xiangmujiage;
		
	/**
	 * 劳工姓名
	 */
	
	private String laogongxingming;
		
	/**
	 * 项目详情
	 */
	
	private String xiangmuxiangqing;
				
	
	/**
	 * 设置：服务类型
	 */
	 
	public void setFuwuleixing(String fuwuleixing) {
		this.fuwuleixing = fuwuleixing;
	}
	
	/**
	 * 获取：服务类型
	 */
	public String getFuwuleixing() {
		return fuwuleixing;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：项目价格
	 */
	 
	public void setXiangmujiage(Integer xiangmujiage) {
		this.xiangmujiage = xiangmujiage;
	}
	
	/**
	 * 获取：项目价格
	 */
	public Integer getXiangmujiage() {
		return xiangmujiage;
	}
				
	
	/**
	 * 设置：劳工姓名
	 */
	 
	public void setLaogongxingming(String laogongxingming) {
		this.laogongxingming = laogongxingming;
	}
	
	/**
	 * 获取：劳工姓名
	 */
	public String getLaogongxingming() {
		return laogongxingming;
	}
				
	
	/**
	 * 设置：项目详情
	 */
	 
	public void setXiangmuxiangqing(String xiangmuxiangqing) {
		this.xiangmuxiangqing = xiangmuxiangqing;
	}
	
	/**
	 * 获取：项目详情
	 */
	public String getXiangmuxiangqing() {
		return xiangmuxiangqing;
	}
			
}

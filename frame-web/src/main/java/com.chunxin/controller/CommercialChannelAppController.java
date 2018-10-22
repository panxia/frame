package com.chunxin.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chunxin.entity.CommercialChannelAppEntity;
import com.chunxin.service.CommercialChannelAppService;
import com.ffcs.utils.PageUtils;
import com.ffcs.utils.Query;
import com.ffcs.utils.R;


/**
 * 商业聚到搭建及应用
 * 
 * @author panxia
 * @email panxia_px@163.com
 * @date 2018-10-18 21:31:24
 */
@RestController
@RequestMapping("commercialchannelapp")
public class CommercialChannelAppController {
	@Autowired
	private CommercialChannelAppService commercialChannelAppService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("commercialchannelapp:list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
		Object key= params.get("key");
		if(key!=null){
			try {
				params.put("key",new String(key.toString().getBytes("ISO-8859-1"), "utf-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
        Query query = new Query(params);

		List<CommercialChannelAppEntity> commercialChannelAppList = commercialChannelAppService.queryList(query);
		int total = commercialChannelAppService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(commercialChannelAppList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("commercialchannelapp:info")
	public R info(@PathVariable("id") Long id){
		CommercialChannelAppEntity commercialChannelApp = commercialChannelAppService.queryObject(id);
		
		return R.ok().put("commercialChannelApp", commercialChannelApp);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping("/save")
	@RequiresPermissions("commercialchannelapp:save")
	public R save(@RequestBody CommercialChannelAppEntity commercialChannelApp){
		commercialChannelApp.setCreateTime(new Timestamp(new Date().getTime()));
		commercialChannelAppService.save(commercialChannelApp);
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@RequestMapping("/update")
	@RequiresPermissions("commercialchannelapp:update")
	public R update(@RequestBody CommercialChannelAppEntity commercialChannelApp){
		commercialChannelAppService.update(commercialChannelApp);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("commercialchannelapp:delete")
	public R delete(@RequestBody Long[] ids){
		commercialChannelAppService.deleteBatch(ids);
		
		return R.ok();
	}
	
}

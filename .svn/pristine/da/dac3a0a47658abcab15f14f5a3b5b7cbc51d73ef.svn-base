package com.chunxin.controller;

import com.chunxin.entity.TaxDeclarationEntity;
import com.chunxin.service.TaxDeclarationService;
import com.ffcs.annotation.SysLog;
import com.ffcs.utils.ExcelUtil.ExcelLogs;
import com.ffcs.utils.ExcelUtil.ExcelUtil;
import com.ffcs.utils.PageUtils;
import com.ffcs.utils.Query;
import com.ffcs.utils.R;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;


/**
 * 税务申报
 * 
 * @author panxia
 * @email panxia_px@163.com
 * @date 2018-10-04 16:23:43
 */
@RestController
@RequestMapping("taxdeclaration")
public class TaxDeclarationController {
	@Autowired
	private TaxDeclarationService taxDeclarationService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/list")
	@RequiresPermissions("taxdeclaration:list")
	public R list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);

		List<TaxDeclarationEntity> taxDeclarationList = taxDeclarationService.queryList(query);
		int total = taxDeclarationService.queryTotal(query);
		
		PageUtils pageUtil = new PageUtils(taxDeclarationList, total, query.getLimit(), query.getPage());
		
		return R.ok().put("page", pageUtil);
	}
	
	
	/**
	 * 信息
	 */
	@RequestMapping("/info/{id}")
	@RequiresPermissions("taxdeclaration:info")
	public R info(@PathVariable("id") int id){
		TaxDeclarationEntity taxDeclaration = taxDeclarationService.queryObject(id);
		
		return R.ok().put("taxDeclaration", taxDeclaration);
	}
	
	/**
	 * 保存
	 */
	@SysLog("保存税务申报")
	@RequestMapping("/save")
	@RequiresPermissions("taxdeclaration:save")
	public R save(@RequestBody TaxDeclarationEntity taxDeclaration){
		taxDeclarationService.save(taxDeclaration);
		
		return R.ok();
	}
	
	/**
	 * 修改
	 */
	@SysLog("修改税务申报")
	@RequestMapping("/update")
	@RequiresPermissions("taxdeclaration:update")
	public R update(@RequestBody TaxDeclarationEntity taxDeclaration){
		taxDeclarationService.update(taxDeclaration);
		
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@SysLog("删除税务申报")
	@RequestMapping("/delete")
	@RequiresPermissions("taxdeclaration:delete")
	public R delete(@RequestBody Integer[] ids){
		taxDeclarationService.deleteBatch(ids);
		return R.ok();
	}


	/**
	 *d导入
	 */
	@SysLog("导入税务申报")
	@RequestMapping("/import")
	@RequiresPermissions("taxdeclaration:import")
	public R importExcel(HttpServletRequest request){
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		System.out.println("通过传统方式form表单提交方式导入excel文件！");

		InputStream in =null;
		List<TaxDeclarationEntity> listob = null;
		MultipartFile file = multipartRequest.getFile("file");
		if(file.isEmpty()){
			return R.error("文件不存在！");
		}
		try {
			in = file.getInputStream();

		ExcelLogs excelLogs=new ExcelLogs();
		listob = (List<TaxDeclarationEntity>) ExcelUtil.importExcel(TaxDeclarationEntity.class,in,"",excelLogs,null);
		in.close();
		for (TaxDeclarationEntity taxDeclarationEntity: listob) {
			taxDeclarationService.save(taxDeclarationEntity);
		}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return R.ok();
	}
	
}

package com.chunxin.service;

import com.chunxin.entity.TaxDeclarationEntity;

import java.util.List;
import java.util.Map;

/**
 * 税务申报
 * 
 * @author panxia
 * @email panxia_px@163.com
 * @date 2018-10-04 16:23:43
 */
public interface TaxDeclarationService {
	
	TaxDeclarationEntity queryObject(int id);
	
	List<TaxDeclarationEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(TaxDeclarationEntity taxDeclaration);
	
	void update(TaxDeclarationEntity taxDeclaration);
	
	void delete(int id);
	
	void deleteBatch(Integer[] ids);
}

package com.chunxin.service.impl;

import com.chunxin.service.TaxDeclarationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.chunxin.dao.TaxDeclarationDao;
import com.chunxin.entity.TaxDeclarationEntity;


@Service("taxDeclarationService")
public class TaxDeclarationServiceImpl implements TaxDeclarationService {
	@Autowired
	private TaxDeclarationDao taxDeclarationDao;
	
	@Override
	public TaxDeclarationEntity queryObject(int id){
		return taxDeclarationDao.queryObject(id);
	}
	
	@Override
	public List<TaxDeclarationEntity> queryList(Map<String, Object> map){
		return taxDeclarationDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return taxDeclarationDao.queryTotal(map);
	}
	
	@Override
	public void save(TaxDeclarationEntity taxDeclaration){
		taxDeclarationDao.save(taxDeclaration);
	}
	
	@Override
	public void update(TaxDeclarationEntity taxDeclaration){
		taxDeclarationDao.update(taxDeclaration);
	}
	
	@Override
	public void delete(int id){
		taxDeclarationDao.delete(id);
	}
	
	@Override
	public void deleteBatch(Integer[] ids){
		taxDeclarationDao.deleteBatch(ids);
	}
	
}

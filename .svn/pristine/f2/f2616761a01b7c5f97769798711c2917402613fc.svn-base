package com.chunxin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.chunxin.dao.CommercialChannelAppDao;
import com.chunxin.entity.CommercialChannelAppEntity;
import com.chunxin.service.CommercialChannelAppService;



@Service("commercialChannelAppService")
public class CommercialChannelAppServiceImpl implements CommercialChannelAppService {
	@Autowired
	private CommercialChannelAppDao commercialChannelAppDao;
	
	@Override
	public CommercialChannelAppEntity queryObject(Long id){
		return commercialChannelAppDao.queryObject(id);
	}
	
	@Override
	public List<CommercialChannelAppEntity> queryList(Map<String, Object> map){
		return commercialChannelAppDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return commercialChannelAppDao.queryTotal(map);
	}
	
	@Override
	public void save(CommercialChannelAppEntity commercialChannelApp){
		commercialChannelAppDao.save(commercialChannelApp);
	}
	
	@Override
	public void update(CommercialChannelAppEntity commercialChannelApp){
		commercialChannelAppDao.update(commercialChannelApp);
	}
	
	@Override
	public void delete(Long id){
		commercialChannelAppDao.delete(id);
	}
	
	@Override
	public void deleteBatch(Long[] ids){
		commercialChannelAppDao.deleteBatch(ids);
	}
	
}

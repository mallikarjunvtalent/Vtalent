package com.userstores.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.userstores.Entity.StoreBean;
import com.userstores.dao.StoredDao;

@Service
public class StoredServiceImpl implements StoredService {
	
	@Autowired
	private StoredDao storedDao;
	
	@Override
	@Transactional
	public void saveAll(StoreBean storeBean) {
		
	      storedDao.saveAll(storeBean);
	}

	@Override
	@Transactional
	public List<StoreBean> getAllStores() {
		return storedDao.getAllStores();
	}

	@Override
	@Transactional
	public StoreBean updateStore(int id) {
		return storedDao.getStore(id);
	}

	@Override
	@Transactional
	public void deleteStore(int id) {
		 storedDao.deleteStore(id);
	}

}

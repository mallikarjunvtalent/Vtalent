package com.userstores.service;

import java.util.List;

import com.userstores.Entity.StoreBean;

public interface StoredService {

	void saveAll(StoreBean storeBean);

	List<StoreBean> getAllStores();

	StoreBean updateStore(int id);

	void deleteStore(int id);

}

package com.userstores.dao;

import java.util.List;

import com.userstores.Entity.StoreBean;

public interface StoredDao {

	void saveAll(StoreBean storeBean);

	List<StoreBean> getAllStores();

	StoreBean getStore(int id);

	void deleteStore(int id);

}

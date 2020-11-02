package com.userstores.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.userstores.Entity.StoreBean;

@Repository
public class StoredDaoImpl implements StoredDao {
	
	@Autowired
	private SessionFactory factory;
	
	@Override
	public void saveAll(StoreBean storeBean) {
		Session session= factory.getCurrentSession();
		session.saveOrUpdate(storeBean);
	}

	@Override
	public List<StoreBean> getAllStores() {
		
		Session session = factory.getCurrentSession();
		Query<StoreBean> query = session.createQuery("from StoreBean ",StoreBean.class);
		List<StoreBean> beans = query.getResultList();
		return beans;
	}

	@Override
	public StoreBean getStore(int id) {
		
		Session session= factory.getCurrentSession();
		StoreBean query = session.get(StoreBean.class, id); 
		return query;
	}

	@Override
	public void deleteStore(int id) {
		
		Session session = factory.getCurrentSession();
		Query<StoreBean> query=session.createQuery("Delete  from StoreBean where storeId=:storeId");
		query.setParameter("storeId",id);
		query.executeUpdate();
		
	}

}

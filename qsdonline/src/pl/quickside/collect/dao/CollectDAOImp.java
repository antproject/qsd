package pl.quickside.collect.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import pl.quickside.collect.BO.CollectBO;
import pl.quickside.hibernate.util.ContansHibernate;
import pl.quickside.hibernate.util.HibernateUtil;

public class CollectDAOImp implements CollectDAO, ContansHibernate {

	@SuppressWarnings("unchecked")
	@Override
	public List<CollectBO> getListTypeClothes(String kod) {
		List<CollectBO> listClothes = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try{
			criteria = session.createCriteria(CollectBO.class).add(Restrictions.eq("kodUbrania", kod));
			listClothes = criteria.list();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		
		return listClothes;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CollectBO> getOneDetails(String kod) {
		List<CollectBO> listClothes = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try{
			criteria = session.createCriteria(CollectBO.class).add(Restrictions.eq("idKod", kod));
			listClothes = criteria.list();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		
		return listClothes;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CollectBO> getPhotoClothes(String idKod) {
		List<CollectBO> photoClothes = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try{
			criteria = session.createCriteria(CollectBO.class).add(Restrictions.eq("idKod", idKod));
			photoClothes = criteria.list();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		

		return photoClothes;
	}
	/**
	 * Pobiera listę produktów tygodnia
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<CollectBO> getListWeeks() {
		List<CollectBO> list = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try {
			criteria = session.createCriteria(CollectBO.class).add(Restrictions.eq("prdTyg", 'T'));
			list = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateUtil.closeSession(session);
		}
		return list;
	}

}

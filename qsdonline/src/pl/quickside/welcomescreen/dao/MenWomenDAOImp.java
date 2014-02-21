package pl.quickside.welcomescreen.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import pl.quickside.hibernate.util.ContansHibernate;
import pl.quickside.hibernate.util.HibernateUtil;
import pl.quickside.welcomescreen.BO.MenWomenBO;

public class MenWomenDAOImp implements MenWomenDAO, ContansHibernate{

	/**
	 * metoda zwracajaca zdjecia dla niej i dla niego
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<MenWomenBO> getPhoto(int photoid) {
		List<MenWomenBO> listPhoto = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try{
			criteria = session.createCriteria(MenWomenBO.class).add(Restrictions.eq("id", photoid));
			listPhoto = criteria.list();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		
		return listPhoto;
	}

	@Override
	public List<MenWomenBO> getAllPhoto() {
		List<MenWomenBO> listPhoto = null;
		Session session = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try{
			listPhoto = (List<MenWomenBO>)session.createQuery("from MenWomenBO").list();
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		
		return listPhoto;
	}

}

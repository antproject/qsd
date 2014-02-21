package pl.quickside.welcomescreen.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import pl.quickside.collect.BO.CollectBO;
import pl.quickside.hibernate.util.HibernateUtil;
import pl.quickside.hibernate.util.ContansHibernate;
import pl.quickside.welcomescreen.BO.AktualBO;
/**
 * DAO do aktualno�ci
 * @author michal
 *
 */
public class ActualInfoDAOImp implements ActualInfoDAO, ContansHibernate {
	/**
	 * pobranie ostatni rekord
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String getLastElement(){
		Session session = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		List<AktualBO> info = null;
		String element = null;
		try{
			info = (List<AktualBO>)session.createQuery("from AktualBO").list();
			for (AktualBO actualInfoBean : info) {
				element = actualInfoBean.getText();
			}
		}catch(HibernateException e){
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		return element;
	}
	/**
	 * pobranie pelnej listy
	 */
	public List<AktualBO> getList(){
		Session session = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		List<AktualBO> info = null;
		try{
			info = (List<AktualBO>)session.createQuery("from AktualBO A ORDER BY A.id DESC").list();
		}catch(HibernateException e){
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		return info;
	}
	public List<AktualBO> getPhotoClothes(int idKod) {
		List<AktualBO> photo = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try{
			criteria = session.createCriteria(AktualBO.class).add(Restrictions.eq("id", idKod));
			photo = criteria.list();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		

		return photo;
	}
	
}

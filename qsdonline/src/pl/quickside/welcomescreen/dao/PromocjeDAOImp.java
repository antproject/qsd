package pl.quickside.welcomescreen.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import pl.quickside.hibernate.util.ContansHibernate;
import pl.quickside.hibernate.util.HibernateUtil;
import pl.quickside.welcomescreen.BO.AktualBO;
import pl.quickside.welcomescreen.BO.PromocjeBO;

public class PromocjeDAOImp implements PromocjeDAO, ContansHibernate{

	
	@Override
	public String getLastElement() {
		Session session = HibernateUtil.getSession();
		session.beginTransaction();
		List<PromocjeBO> info = null;
		String element = null;
		try{
			info = (List<PromocjeBO>)session.createQuery("from PromocjeBO").list();
			for (PromocjeBO pro : info) {
				element = pro.getText();
			}
		}catch(HibernateException e){
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		return element;
	}

	@Override
	public List<PromocjeBO> getList() {
		Session session = HibernateUtil.getSession();
		session.beginTransaction();
		List<PromocjeBO> info = null;
		try{
			info = (List<PromocjeBO>)session.createQuery("from PromocjeBO").list();
		}catch(HibernateException e){
			e.printStackTrace();
		}finally{
			HibernateUtil.closeSession(session);
		}
		return null;
	}

}

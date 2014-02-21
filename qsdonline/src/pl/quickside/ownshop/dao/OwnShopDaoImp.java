package pl.quickside.ownshop.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import pl.quickside.collect.BO.CollectBO;
import pl.quickside.hibernate.util.ContansHibernate;
import pl.quickside.hibernate.util.HibernateUtil;
import pl.quickside.ownshop.BO.OwnShopBO;
import pl.quickside.welcomescreen.BO.MenWomenBO;

/**
 * Implementacja interfejsu do pobierania listy miast
 * 
 * @author michal
 * 
 */
public class OwnShopDaoImp implements OwnShopDAO, ContansHibernate {

	@Override
	/**
	 * metoda do pobierania pełnej listy miast
	 */
	public List<OwnShopBO> getList() {
		List<OwnShopBO> listTown = null;
		Session session = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try {
			listTown = (List<OwnShopBO>) session.createQuery("from OwnShopBO")
					.list();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			HibernateUtil.closeSession(session);
		}
		return listTown;
	}

	@Override
	public List<OwnShopBO> getListDetails(char kod_woj) {
		List<OwnShopBO> listTownD = null;
		Session session = null;
		Criteria criteria = null;
		session = HibernateUtil.getSession();
		session.beginTransaction();
		try {
			criteria = session.createCriteria(OwnShopBO.class).add(Restrictions.eq("wojKod", kod_woj));
			listTownD = criteria.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			HibernateUtil.closeSession(session);
		}
		return listTownD;
	}

}

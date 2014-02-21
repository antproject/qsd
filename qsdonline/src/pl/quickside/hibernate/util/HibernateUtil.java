package pl.quickside.hibernate.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory hbmSessionFactory;

	static {
		try {
			Configuration cfg = new Configuration()
					.configure(ContansHibernate._HIBERNATE_CONFIG_LOCATION);
			hbmSessionFactory = cfg.buildSessionFactory();
		} catch (RuntimeException ex) {
			System.out.println("********* Error occurred while reading config file *********");
			ex.printStackTrace();
		}
	}

	/**
	 * getSession creates hibernate Session & returns it
	 */
	public static Session getSession() {
		return hbmSessionFactory.openSession();
	}


	/**
	 * closeSession closes the session, if it exists
	 */
	public static void closeSession(Session inSession) {
		if (inSession != null) {
			inSession.close();
		}
	}
}
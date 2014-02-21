package pl.quickside.welcomescreen.delegates;

import java.util.List;

import pl.quickside.welcomescreen.BO.PromocjeBO;
import pl.quickside.welcomescreen.dao.PromocjeDAO;
import pl.quickside.welcomescreen.dao.PromocjeDAOImp;

public class PromocjeDelegate {

	PromocjeDAO dao = (PromocjeDAO) new PromocjeDAOImp();
	
	/**
	 * delegat do pobrania listy
	 * @return
	 */
	public List<PromocjeBO> getList(){
		return dao.getList();
	}
	public String getLastElement(){
		return dao.getLastElement();
	}
	
}

package pl.quickside.ownshop.delegates;

import java.util.List;

import pl.quickside.ownshop.BO.OwnShopBO;
import pl.quickside.ownshop.dao.OwnShopDAO;
import pl.quickside.ownshop.dao.OwnShopDaoImp;

public class OwnShopDelegates {

	OwnShopDAO dao = (OwnShopDAO) new OwnShopDaoImp();
	
	/**
	 * delegat do pobrania listy miast
	 * @return
	 */
	public List<OwnShopBO> getAllList(){
		return dao.getList();
	}
	public List<OwnShopBO> getWojDetails(char kod_woj){
		return dao.getListDetails(kod_woj);
	}
}

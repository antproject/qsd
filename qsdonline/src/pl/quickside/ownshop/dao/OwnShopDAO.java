package pl.quickside.ownshop.dao;

import java.util.List;

import pl.quickside.ownshop.BO.OwnShopBO;

/**
 * interfejs do pobierania listy miast
 * @author michal
 *
 */
public interface OwnShopDAO {

	List<OwnShopBO> getList();
	List<OwnShopBO> getListDetails(char kod_woj);
}

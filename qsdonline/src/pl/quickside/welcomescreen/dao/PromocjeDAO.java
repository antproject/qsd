package pl.quickside.welcomescreen.dao;

import java.util.List;

import pl.quickside.welcomescreen.BO.PromocjeBO;

/**
 * interfejs deklarujacy metody do pobierania danych z tabeli Promocje
 * @author michal
 *
 */
public interface PromocjeDAO {
	/**
	 * Pobranie ostatniego elementu
	 * @return
	 */
	public String getLastElement();
	/**
	 * Pobranie pełnej listy
	 * @return
	 */
	List<PromocjeBO> getList();

}

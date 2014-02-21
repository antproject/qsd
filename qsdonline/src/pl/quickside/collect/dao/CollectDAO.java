package pl.quickside.collect.dao;

import java.util.List;

import pl.quickside.collect.BO.CollectBO;

public interface CollectDAO {

	/**
	 * pobranie listy rodzaju ubran
	 * @return
	 */
	public List<CollectBO> getListTypeClothes(String kod);
	/**
	 * pobranie jednego rodzaju ubrania
	 * @return
	 */
	public List<CollectBO> getOneDetails(String kod);
	
	public List<CollectBO> getPhotoClothes(String idKod);
	
	public List<CollectBO> getListWeeks();

}

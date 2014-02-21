package pl.quickside.collect.delegates;

import java.util.List;

import pl.quickside.collect.BO.CollectBO;
import pl.quickside.collect.dao.CollectDAO;
import pl.quickside.collect.dao.CollectDAOImp;

public class CollectDelegate {

	CollectDAO dao = (CollectDAO) new CollectDAOImp();
	
	public List<CollectBO> getListTypeClothes(String kod){
		return dao.getListTypeClothes(kod);
	}
	public List<CollectBO> getOneClothesDetails(String kod){
		return dao.getOneDetails(kod);
	}
	public List<CollectBO> getPhotoClothes(String idKod){
		return dao.getPhotoClothes(idKod);
	}
	public List<CollectBO> getListWeeks(){
		return dao.getListWeeks();
	}
	
}

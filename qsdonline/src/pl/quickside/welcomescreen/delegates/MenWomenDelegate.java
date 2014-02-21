package pl.quickside.welcomescreen.delegates;

import java.util.List;

import pl.quickside.welcomescreen.BO.AktualBO;
import pl.quickside.welcomescreen.BO.MenWomenBO;
import pl.quickside.welcomescreen.dao.ActualInfoDAO;
import pl.quickside.welcomescreen.dao.ActualInfoDAOImp;
import pl.quickside.welcomescreen.dao.MenWomenDAO;
import pl.quickside.welcomescreen.dao.MenWomenDAOImp;

public class MenWomenDelegate {

	MenWomenDAO dao = (MenWomenDAO) new MenWomenDAOImp();
	ActualInfoDAO daoActual = (ActualInfoDAO) new ActualInfoDAOImp();
	/**
	 * delegat do pobrania zdjec
	 * @return
	 */
	public List<MenWomenBO> getPhoto(int photoid){
		return dao.getPhoto(photoid);
	}
	public List<MenWomenBO> getPhotolist(){
		return dao.getAllPhoto();
	}
	public List<AktualBO> getAllActualInfo(){
		return daoActual.getList();
	}
	public List<AktualBO> getPhotoAktual(int idKod){
		return daoActual.getPhotoClothes(idKod);
	}
}

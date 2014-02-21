package pl.quickside.welcomescreen.dao;

import java.util.List;

import pl.quickside.welcomescreen.BO.AktualBO;

public interface ActualInfoDAO {

	public String getLastElement();
	List<AktualBO> getList();
	public List<AktualBO> getPhotoClothes(int idKod);
}

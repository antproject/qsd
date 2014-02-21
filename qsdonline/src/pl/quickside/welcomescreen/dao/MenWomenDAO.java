package pl.quickside.welcomescreen.dao;

import java.util.List;

import pl.quickside.welcomescreen.BO.MenWomenBO;

public interface MenWomenDAO {

	public List<MenWomenBO> getPhoto(int photoid);

	public List<MenWomenBO> getAllPhoto();
}

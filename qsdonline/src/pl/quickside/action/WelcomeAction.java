package pl.quickside.action;

import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;

import pl.quickside.collect.BO.CollectBO;
import pl.quickside.collect.delegates.CollectDelegate;
import pl.quickside.welcomescreen.BO.AktualBO;
import pl.quickside.welcomescreen.BO.MenWomenBO;
import pl.quickside.welcomescreen.beans.AktualnosciBeans;
import pl.quickside.welcomescreen.dao.ActualInfoDAOImp;
import pl.quickside.welcomescreen.delegates.MenWomenDelegate;
import pl.quickside.welcomescreen.delegates.PromocjeDelegate;
import pl.quickside.welcomescreen.forms.MenWomenForms;

@SuppressWarnings("serial")
public class WelcomeAction extends MenWomenForms {

	private MenWomenDelegate daodelegate = new MenWomenDelegate();
	private PromocjeDelegate delegate = new PromocjeDelegate();
	private CollectDelegate collectDelegate = new CollectDelegate();
	ActualInfoDAOImp daoManager;
	AktualnosciBeans beans;

	public WelcomeAction() {
		daoManager = new ActualInfoDAOImp();
	}

	@Override
	public String execute() throws Exception {
		getPromocje();
		getInfoAktual();
		getMenWomenPhoto();
		getProduktyTygodnia();
		return SUCCESS;
	}

	private void getProduktyTygodnia() {
		List<CollectBO> list = collectDelegate.getListWeeks();
		if (list.isEmpty()) {
			getServletRequest().setAttribute("emptyWeek", true);
		} else {
			this.setCollectList(list);
		}

	}

	private void getPromocje() {
		String promocjeList = delegate.getLastElement();
		if (promocjeList != null) {
			this.setLastPromocje(promocjeList);
		}
	}

	public String showPhoto() throws Exception {
		List<MenWomenBO> photoList = daodelegate.getPhoto(this.getPhotoid());
		if (photoList != null) {
			MenWomenBO photoBO = (MenWomenBO) photoList.get(0);
			if (photoBO != null) {
				this.setPhoto(photoBO);
			}
		}
		return SUCCESS;
	}

	private void getMenWomenPhoto() {
		List<MenWomenBO> photoList = daodelegate.getPhotolist();
		if (photoList != null) {
			this.setListPhoto(photoList);
		}
	}

	public String showPhotoAktual() throws Exception{
		List<AktualBO> photoList = daodelegate.getPhotoAktual(getLastAktualId());
		if (photoList != null) {
			AktualBO photoBO = (AktualBO)photoList.get(0);
			if(photoBO != null){
				this.setPhotoAktual(photoBO);
			}
		}
		return SUCCESS;
	}
	private void getInfoAktual() {
		List<AktualBO> tmp = daodelegate.getAllActualInfo();
		for (AktualBO item : tmp) {
			this.setLastAktualText(item.getText());
			this.setLastAktualId(item.getId());
			this.setLastTytulAktual(item.getTytul());
			this.setLastCzasAktual(item.getCzas());
			break;
		}

	}

	public ActualInfoDAOImp getDaoManager() {
		return daoManager;
	}

	public void setDaoManager(ActualInfoDAOImp daoManager) {
		this.daoManager = daoManager;
	}

}

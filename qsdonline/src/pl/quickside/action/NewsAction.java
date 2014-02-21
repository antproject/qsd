package pl.quickside.action;

import java.util.List;

import pl.quickside.welcomescreen.BO.AktualBO;
import pl.quickside.welcomescreen.dao.ActualInfoDAOImp;

public class NewsAction extends DefaultAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6049833241793347031L;
	private List<AktualBO> getList = null;
	ActualInfoDAOImp daoManager;
	public NewsAction(){
		daoManager = new ActualInfoDAOImp();
	}
	@Override
	public String execute() throws Exception {
		List<AktualBO> getAllList = daoManager.getList();
		this.setGetList(getAllList);
		return SUCCESS;
	}

	public List<AktualBO> getGetList() {
		return getList;
	}

	public void setGetList(List<AktualBO> getList) {
		this.getList = getList;
	}
}

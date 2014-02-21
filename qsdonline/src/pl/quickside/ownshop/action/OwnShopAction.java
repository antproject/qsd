package pl.quickside.ownshop.action;

import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;

import pl.quickside.ownshop.BO.OwnShopBO;
import pl.quickside.ownshop.delegates.OwnShopDelegates;
import pl.quickside.ownshop.forms.OwnShopForms;

/**
 * Klasa akcji do obsługi listy miast
 * @author michal
 *
 */
public class OwnShopAction extends OwnShopForms{

	private static final Logger logger = Logger.getLogger(OwnShopAction.class);
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3716263062582315663L;
	
	OwnShopDelegates delegate = new OwnShopDelegates();
	@Override
	public String execute() throws Exception {
		logger.info("execute");
		List<OwnShopBO> townList = delegate.getAllList();
		this.setListK(townList);
		return SUCCESS;
	}
	/**
	 * dolnoslaskie
	 * @return
	 * @throws Exception
	 */
	public String getShowDetails() throws Exception{
		List<OwnShopBO> townList = delegate.getWojDetails(getWoj());
		if(townList.isEmpty()){
			getServletRequest().setAttribute("emptyList", true);
		}
		Collections.sort(townList);
		this.setListD(townList);
		return SUCCESS;
	}
}

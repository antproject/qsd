package pl.quickside.collect.action;

import java.util.List;

import pl.quickside.collect.BO.CollectBO;
import pl.quickside.collect.delegates.CollectDelegate;
import pl.quickside.collect.forms.CollectForms;

public class CollectAction extends CollectForms {

	CollectDelegate delegate = new CollectDelegate();
	/**
	 * 
	 */
	private static final long serialVersionUID = 7151253868203253664L;

	/**
	 * pobranie listy ubrań
	 */
	@Override
	public String execute() throws Exception {
		List<CollectBO> listClothes = delegate.getListTypeClothes(getKod());
		if (listClothes.isEmpty()) {
			getServletRequest().setAttribute("emptyList", true);
		} else {
			for (CollectBO collectBO : listClothes) {
				if ("SPD".equals(collectBO.getKodUbrania()) || "SPM".equals(collectBO.getKodUbrania())) {
					getServletRequest().setAttribute("spodnie", true);
					break;
				} 
			}
			this.setListClothes(listClothes);
		}
		return SUCCESS;
	}

	/**
	 * pobranie pojedynczej rzeczy
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getPhotoDetails() throws Exception {
		List<CollectBO> getDetails = delegate.getOneClothesDetails(getDetal());
		if (getDetails.isEmpty()) {
			getServletRequest().setAttribute("emptyDetails", true);
		}else{
			this.setListClothes(getDetails);
			for (CollectBO item : getDetails) {
				if ("SPD".equals(item.getKodUbrania()) || "SPM".equals(item.getKodUbrania())) {
					getServletRequest().setAttribute("spodnie", true);
				}
				if(item.getSmall() == null){
					getServletRequest().setAttribute("emptyPhoto", true);
				}
				this.setTytul(item.getNazwaPrd());
				this.setIdKod(item.getIdKod());
				this.setRozmiar(item.getRozmiar());
				this.setKolor(item.getKolor());
				this.setSklad(item.getSkladUbrania());
				this.setDodOpis(item.getDodOpis());
				this.setWarSprz(item.getWarSprz());
				this.setOpis(item.getOpis());
			}
			
		}
		String prdWeeks = (String) getServletRequest().getParameter("prdTyg");
		if("T".equals(prdWeeks)){
			getServletRequest().setAttribute("prdTyg", true);
		}
		
		return SUCCESS;
	}
	public String getPhotoClothes() throws Exception{
		List<CollectBO> photoList = delegate.getPhotoClothes(getIdKod());
		if (photoList != null) {
			CollectBO photoBO = (CollectBO)photoList.get(0);
			if(photoBO != null){
				this.setPhoto(photoBO);
			}
		}
		return SUCCESS;
	}
}

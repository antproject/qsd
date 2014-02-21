package pl.quickside.welcomescreen.forms;

import java.util.List;

import pl.quickside.action.DefaultAction;
import pl.quickside.collect.BO.CollectBO;
import pl.quickside.welcomescreen.BO.AktualBO;
import pl.quickside.welcomescreen.BO.MenWomenBO;
import pl.quickside.welcomescreen.BO.PromocjeBO;

public class MenWomenForms extends DefaultAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1624048839965106644L;

	private List<MenWomenBO> listPhoto = null;

	private List<CollectBO> collectList = null;

	private List<PromocjeBO> promocjeList = null;

	private String lastAktualText;

	private int lastAktualId;

	private String lastPromocje;

	private MenWomenBO photo;

	private AktualBO photoAktual;

	private int photoid;

	private String lastTytulAktual;

	private String lastCzasAktual;

	public List<MenWomenBO> getListPhoto() {
		return listPhoto;
	}

	public void setListPhoto(List<MenWomenBO> listPhoto) {
		this.listPhoto = listPhoto;
	}

	public MenWomenBO getPhoto() {
		return photo;
	}

	public void setPhoto(MenWomenBO photo) {
		this.photo = photo;
	}

	public int getPhotoid() {
		return photoid;
	}

	public void setPhotoid(int photoid) {
		this.photoid = photoid;
	}

	public List<PromocjeBO> getPromocjeList() {
		return promocjeList;
	}

	public void setPromocjeList(List<PromocjeBO> promocjeList) {
		this.promocjeList = promocjeList;
	}

	public String getLastPromocje() {
		return lastPromocje;
	}

	public void setLastPromocje(String lastPromocje) {
		this.lastPromocje = lastPromocje;
	}

	public List<CollectBO> getCollectList() {
		return collectList;
	}

	public void setCollectList(List<CollectBO> collectList) {
		this.collectList = collectList;
	}

	public String getLastAktualText() {
		return lastAktualText;
	}

	public void setLastAktualText(String lastAktualText) {
		this.lastAktualText = lastAktualText;
	}

	public int getLastAktualId() {
		return lastAktualId;
	}

	public void setLastAktualId(int lastAktualId) {
		this.lastAktualId = lastAktualId;
	}

	public AktualBO getPhotoAktual() {
		return photoAktual;
	}

	public void setPhotoAktual(AktualBO photoAktual) {
		this.photoAktual = photoAktual;
	}

	public String getLastTytulAktual() {
		return lastTytulAktual;
	}

	public void setLastTytulAktual(String lastTytulAktual) {
		this.lastTytulAktual = lastTytulAktual;
	}

	public String getLastCzasAktual() {
		return lastCzasAktual;
	}

	public void setLastCzasAktual(String lastCzasAktual) {
		this.lastCzasAktual = lastCzasAktual;
	}

}

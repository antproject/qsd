package pl.quickside.collect.forms;

import java.util.List;

import pl.quickside.action.DefaultAction;
import pl.quickside.collect.BO.CollectBO;

public class CollectForms extends DefaultAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4525241355972390647L;

	private String kod;
	private List<CollectBO> listClothes;

	private CollectBO photo;

	private String idKod;

	private String detal;

	private String tytul;

	private String rozmiar;

	private String kolor;

	private String sklad;

	private String dodOpis;

	private String warSprz;
	
	private String opis;

	public String getKod() {
		return kod;
	}

	public void setKod(String kod) {
		this.kod = kod;
	}

	public List<CollectBO> getListClothes() {
		return listClothes;
	}

	public void setListClothes(List<CollectBO> listClothes) {
		this.listClothes = listClothes;
	}

	public CollectBO getPhoto() {
		return photo;
	}

	public void setPhoto(CollectBO photo) {
		this.photo = photo;
	}

	public String getIdKod() {
		return idKod;
	}

	public void setIdKod(String idKod) {
		this.idKod = idKod;
	}

	public String getDetal() {
		return detal;
	}

	public void setDetal(String detal) {
		this.detal = detal;
	}

	public String getTytul() {
		return tytul;
	}

	public void setTytul(String tytul) {
		this.tytul = tytul;
	}

	public String getRozmiar() {
		return rozmiar;
	}

	public void setRozmiar(String rozmiar) {
		this.rozmiar = rozmiar;
	}

	public String getKolor() {
		return kolor;
	}

	public void setKolor(String kolor) {
		this.kolor = kolor;
	}

	public String getSklad() {
		return sklad;
	}

	public void setSklad(String sklad) {
		this.sklad = sklad;
	}

	public String getDodOpis() {
		return dodOpis;
	}

	public void setDodOpis(String dodOpis) {
		this.dodOpis = dodOpis;
	}

	public String getWarSprz() {
		return warSprz;
	}

	public void setWarSprz(String warSprz) {
		this.warSprz = warSprz;
	}

	public String getOpis() {
		return opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}

}

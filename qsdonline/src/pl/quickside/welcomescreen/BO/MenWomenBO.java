package pl.quickside.welcomescreen.BO;
// default package
// Generated 2014-01-05 14:27:17 by Hibernate Tools 3.4.0.CR1

import java.util.Arrays;

/**
 * MenWomenId generated by hbm2java
 */
public class MenWomenBO implements java.io.Serializable {

	private int id;
	private byte[] image;

	public MenWomenBO() {
	}

	public MenWomenBO(int id, byte[] image) {
		this.id = id;
		this.image = image;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}
}

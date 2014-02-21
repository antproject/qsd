package pl.quickside.action;

import org.mindrot.BCrypt;


/**
 * pusta akcja sluzaca tylko do przejscia do nastepnej strony
 * @author michal
 *
 */
public class EmptyAction extends DefaultAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9222332541344603621L;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}


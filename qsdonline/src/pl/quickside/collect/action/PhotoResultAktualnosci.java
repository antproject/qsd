package pl.quickside.collect.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import pl.quickside.action.WelcomeAction;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

public class PhotoResultAktualnosci implements Result {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5459097767910636718L;

	public void execute(ActionInvocation invocation) throws Exception {
		WelcomeAction action = (WelcomeAction) invocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setContentType("image/jpeg");//sprawdzic jak wyglda
		response.setHeader("Content-Disposition", "");
		response.setHeader("cache-control", "no-cache");
		response.getOutputStream().write(action.getPhotoAktual().getImages());//ziarno byte
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}

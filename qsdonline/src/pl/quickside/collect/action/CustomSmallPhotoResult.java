package pl.quickside.collect.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

public class CustomSmallPhotoResult implements Result {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5459097767910636718L;

	public void execute(ActionInvocation invocation) throws Exception {
		CollectAction action = (CollectAction) invocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setContentType("image/jpeg");//sprawdzic jak wyglda
		response.setHeader("Content-Disposition", "");
		response.setHeader("cache-control", "no-cache");
		response.getOutputStream().write(action.getPhoto().getSmall());//ziarno byte
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}

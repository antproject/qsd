package pl.quickside.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.Result;

public class CustomPhotoResult implements Result {
	
	private static final long serialVersionUID = 1L;

	public void execute(ActionInvocation invocation) throws Exception {
		WelcomeAction action = (WelcomeAction) invocation.getAction();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setContentType("image/jpeg");//sprawdzic jak wyglda
		response.setHeader("Content-Disposition", "");
		response.setHeader("cache-control", "no-cache");
		response.getOutputStream().write(action.getPhoto().getImage());//ziarno byte
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}

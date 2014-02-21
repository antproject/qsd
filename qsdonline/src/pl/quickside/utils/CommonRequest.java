package pl.quickside.utils;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

public final class CommonRequest {

	private static Logger      logger           = Logger.getLogger(CommonRequest.class);
	
	public static Object getAttribute (final String name){
		return ServletActionContext.getRequest().getAttribute(name);
	}
	public static void setAttribute(final String name, final Object attr) {

	      ServletActionContext.getRequest().setAttribute(name, attr);
	      StringBuilder sb = new StringBuilder();
	      sb.append("Do requestu wstawiono atrybut ");
	      sb.append(name).append("=").append(attr);
	      logger.info(sb.toString());
	   }
}

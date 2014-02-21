package pl.quickside.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DefaultAction extends ActionSupport implements ServletRequestAware, ServletResponseAware{

	private HttpServletRequest  request;

	private HttpServletResponse response;
	
	
	
	private Object formBean;
	
	public Object getFormBean() {
		return formBean;
	}

	public void setFormBean(final Object formBean) {
		this.formBean = formBean;
	}

	public HttpServletRequest getServletRequest() {
        return request;
    }
 
    public void setServletRequest(HttpServletRequest req){
        this.request = req;
    }
 
    public HttpServletResponse getServletResponse() {
        return response;
    }
 
    public void setServletResponse(HttpServletResponse resp) {
        this.response = resp;
    }
    /**
     * metoda akcji do wypisania wszystkich newsów
     * @return
     * @throws Exception
     */
    public String getAllNewsAction() throws Exception{
    	return SUCCESS;
    }
}

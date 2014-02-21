<%@ tag description="Forma" pageEncoding="ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="key" required="false" rtexprvalue="true" description="key links"%>

<a href="<s:url action='${key}'/>">
	<jsp:doBody/>
</a>

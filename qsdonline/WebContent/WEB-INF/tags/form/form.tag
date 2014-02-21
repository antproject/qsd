<%@ tag body-content="scriptless" description="tag opisujacy formatke" pageEncoding="ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ attribute name="name" required="true" rtexprvalue="true" description="klucz komentarza"%>

<c:set var="formname" value="${name}" scope="request"></c:set>

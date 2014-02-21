<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>


<div style="text-align: center">
	<s:iterator value="getList" var="list">
		<p class="titleStyle" style="padding-bottom: 15px;">
			<s:property value="tytul" />
		</p>
		<p>
			<s:property value="text" escape="false" />
		</p>
		<p style="font-size: 26px; font: italic; padding-top: 15px;">Serdecznie Zapraszamy.</p>
		<p>
			<img alt="" width="250px" height="390px"
				src="showPhotoAktual.html?lastAktualId=<s:property value="id"/>">
		</p>
		<p style="padding-top: 10px;">
			<s:property value="czas"/>
		</p>
		<hr style="margin-bottom: 25px; margin-top: 15px">
	</s:iterator>
</div>
<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>

<c:if test="${emptyList}">
	Przepraszamy, ale nie posiadamy ubrañ tego typu
</c:if>
<c:if test="${!emptyList}">



	<div style="text-align: center;overflow: hidden;margin-left: 30px;">
		<s:iterator value="listClothes" var="list">
			<span style="float:left ;width: 305px; margin-bottom: 20px;">
				<a
					href="<s:url action="collectdetails"><s:param name="detal"><s:property value="idKod"/></s:param></s:url>">
					<img alt="" class="${spodnie ? 'photolist2' : 'photolist'}  photolist"
					src="photoclothes.html?idKod=<s:property value="idKod"/>">
				</a>
				<s:property value="idKod" />
			</span>
		</s:iterator>

	</div>
</c:if>





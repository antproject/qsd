<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%><!-- poprawic tagi -->
<div style="padding: 20px">
	<div style="text-align: center;">
		<span class="qsdTitle">PROMOCJE</span> <br /> <br />
		<%-- <s:property value="lastPromocje" /> --%>
	</div>
	
	<hr style="opacity: 0.5 ;margin: 40px;">

	<div style="padding-bottom: 20px; text-align: center;">
		<div style="float: left; font-size: 26px; margin-left: 220px">
			<s:text name="collect.qsd.women"></s:text>
		</div>
		<div style="float: right; font-size: 26px; margin-right: 220px;">
			<s:text name="collect.qsd.men"></s:text>
		</div>
		<div style="width: 100%; padding-top: 40px;">
			<s:iterator value="listPhoto" var="list">
				<c:if test="${id == 1 }">
					<a href="<s:url action="collect/collectwomen"></s:url>">
				</c:if>
				<c:if test="${id == 2 }">
					<a href="<s:url action="collect/collectmen"></s:url>">
				</c:if>
				<img alt="" width="390px" height="250px"
					src="showmenwomen.html?photoid=<s:property value="id"/>">
				</a>
			</s:iterator>
		</div>
	</div>
	<hr style="opacity: 0.5 ;margin: 40px;">

	<div style="text-align: center">
		<div style="padding-bottom: 10px;"><span class="qsdTitle"><s:text name="produkt.tygodnia"></s:text>  </span></div>
		<c:if test="${emptyWeek}">
			<span style="font-size: 13px;"><s:text name="empty.produkt"></s:text></span>
		</c:if>

		<c:if test="${!emptyWeek}">
			<div style="text-align: center; overflow: hidden;">
				<s:iterator value="collectList" var="list">
					<span style="width: 305px"> <a
						href="<s:url action="collect/collectdetails"><s:param name="detal"><s:property value="idKod"/></s:param>
						<s:param name="prdTyg">T</s:param>
					</s:url>">
							<img alt=""
							class="${spodnie ? 'photolist2' : 'photolist'}  photolist"
							src="photoclothes.html?idKod=<s:property value="idKod"/>">
					</a><p> <s:property value="idKod" /></p>
					</span>
				</s:iterator>
			</div>
		</c:if>
	</div>

	<hr style="opacity: 0.5 ;margin: 40px;">
	<div style="padding-bottom: 20px; text-align: center;">
		<p style="font-size: 32px; padding-bottom: 10px;">
			<a style="color: black;" href="<s:url action="news/news.html"></s:url>"><s:text name="actual.comment"/></a>
		</p>
		<p class="qsdTitle"><s:property value="lastTytulAktual"/></p>
		<p style="font-size: 13px;padding-top: 10px;"><s:property value="lastAktualText" escape="false" /></p>
		<p style="font-size: 26px; font: italic; padding-top: 15px;padding-bottom: 15px;">Serdecznie Zapraszamy.</p>
		<p><img alt="" width="250px" height="390px" src="showPhotoAktual.html?lastAktualId=<s:property value="lastAktualId"/>"></p>
		<p style="padding-top: 10px;"><s:property value="lastCzasAktual"/> </p>
		</div>
	
</div>
<script>
	
</script>

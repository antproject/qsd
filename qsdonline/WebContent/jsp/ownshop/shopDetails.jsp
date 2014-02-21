<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>

<style type="text/css">
/* <![CDATA[ */
.styleShopDetails {
	width: 260px;
	float: left;
	padding-bottom: 40px;
}
span{
	cursor: pointer;
}
span:hover{
	color: red;
}

/* ]]> */
</style>

<p style="padding-bottom: 30px;">
	<a style="color: red;" href="<s:url action="../shop/ownshop"/>"><s:text
			name="powrot.mapa" /></a>
</p>

<c:if test="${emptyList}">
	Przepraszamy, ale nie posiadamy jeszcze sklepów w wojewódzkie ...
</c:if>
<c:if test="${!emptyList}">
<div style="margin-left: 350px; font-size: 14px;">
	<c:set var="tmpm" value="empty" />
	<s:iterator value="listD" var="list">
	<c:if test="${tmpm != kodPocztowy}">
		<span id="${kodPocztowy}" style="line-height: 22px;"><s:property value="miasto" /></span><br/>
		<c:set var="tmpm" value="${kodPocztowy}" />
	</c:if>
	</s:iterator>
</div>
	<!-- grafiki -->
	<div style="float: right;position: absolute;right: 30%; top: 30%; text-align: center; line-height: 25px;">
		<s:iterator value="listD" var="list">
			<div class="${kodPocztowy} details">
				<p><s:property value="rodzaj" /></p>
					<p><s:property value="ulica" /></p>
					<p><s:property value="kodPocztowy" />&nbsp;<s:property value="miasto" /></p>
					<c:if test="${!empty dodInf}">
						<p><s:property value="dodInf" escape="false"/></p>
					</c:if>
					<p style="padding-bottom: 20px;"><s:property value="godzOtw" escape="false"/></p>
					
			</div>
		</s:iterator>
	</div>
</c:if>
<script type="text/javascript">
	$(window).load(function() {
		$(".details").hide();
	});
	$("span").click(function(e){
		$("span").css("color","white");
		$(".details").hide();
		var currentId = "."+$(this).attr('id');
		$(currentId).show();
		$(this).css("color","red");		
	});
	
</script>
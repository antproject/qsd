<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>

<div>
<div id="map-poland">
	<ul class="poland">
		<li class="pl1"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">D</s:param></s:url>"><s:text name="shop.map.dolno"/></a></li>
		<li class="pl2"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">C</s:param></s:url>"><s:text name="shop.map.kuj-pom"/></a></li>
		<li class="pl3"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">L</s:param></s:url>"><s:text name="shop.map.lubel"/></a></li>
		<li class="pl4"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">F</s:param></s:url>"><s:text name="shop.map.lubus"/></a></li>
		<li class="pl5"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">E</s:param></s:url>"><s:text name="shop.map.lodz"/></a></li>
		<li class="pl6"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">K</s:param></s:url>"><s:text name="shop.map.malop"/></a></li>
		<li class="pl7"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">W</s:param></s:url>"><s:text name="shop.map.mazowi"/></a></li>
		<li class="pl8"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">O</s:param></s:url>"><s:text name="shop.map.opol"/></a></li>
		<li class="pl9"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">R</s:param></s:url>"><s:text name="shop.map.podkar"/></a></li>
		<li class="pl10"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">B</s:param></s:url>"><s:text name="shop.map.podla"/></a></li>
		<li class="pl11"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">G</s:param></s:url>"><s:text name="shop.map.pomors"/></a></li>
		<li class="pl12"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">S</s:param></s:url>"><s:text name="shop.map.slaskie"/></a></li>
		<li class="pl13"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">T</s:param></s:url>"><s:text name="shop.map.swietok"/></a></li>
		<li class="pl14"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">N</s:param></s:url>"><s:text name="shop.map.war-maz"/></a></li>
		<li class="pl15"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">P</s:param></s:url>"><s:text name="shop.map.wielkopo"/></a></li>
		<li class="pl16"><a href="<s:url action="../shop/shopDetails"><s:param name="woj">Z</s:param></s:url>"><s:text name="shop.map.zacho-pom"/></a></li>
	</ul>
</div>
</div>
<script type="text/javascript">
	$(function($) {
		$('#map-poland').cssMap({
			'size' : 660
		});
	});
</script>
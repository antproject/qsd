<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>

<div style="text-align: center;">
<table>
	<tr>
		<td style="padding-top: 40px;">
			<a href="<s:url action="../collect/collectlist"><s:param name="kod">spd</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside100.jpg" width="250px" height="370px"/><br/>
				<s:text name="collectwomenlist.jeans"/>
			</a>
		</td>
	</tr>
</table>
</div>
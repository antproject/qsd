<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>

<span class="collectMenStyle"> <s:text name="collectmen.on"></s:text></span>
<div style="text-align: center;color: black">
<table style="margin-left: auto; margin-right: auto;color:black !important; ">
	<tr>
		<td><a href="<s:url action="../collect/collectlist"><s:param name="kod">kum</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside53.jpg" class="photoWidthHeigth"/><br/>
				<s:text name="collectmenlist.kurtka"/>
			</a>
		</td>
		<td class="paddingLeft40">
		<a href="<s:url action="../collect/collectlist"><s:param name="kod">plm</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside72.jpg" class="photoWidthHeigth"/><br/>
				<s:text name="collectmenlist.plaszcze"/>
			</a>
		</td>
		<td class="paddingLeft40">
		<a href="<s:url action="../collect/collectlist"><s:param name="kod">blm</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside20.jpg" class="photoWidthHeigth"/><br/>
				<s:text name="collectmenlist.bluzy"/>
			</a>
		</td>
	</tr>
	<tr>
		<td style="padding-top: 40px;">
			<a href="<s:url action="../collect/collectlist"><s:param name="kod">prm</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside77.jpg" class="photoWidthHeigth"/><br/>
				<s:text name="collectmenlist.polary"/>
			</a>
		</td>
		<td class="paddingLeft40">
		<a href="<s:url action="../collect/collectlist"><s:param name="kod">swm</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside48.jpg" class="photoWidthHeigth"/><br/>
				<s:text name="collectmenlist.swetry"/>
			</a>
		</td>
		<td class="paddingLeft40">
			<a href="<s:url action="../collect/collectlist"><s:param name="kod">ksm</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside09.jpg" class="photoWidthHeigth"/><br/>
				<s:text name="collectmenlist.koszule"/>
			</a>
		</td>
	</tr>
	<tr>
		<td style="padding-top: 40px;">
			<a href="<s:url action="../collect/collectlist"><s:param name="kod">spm</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside100.jpg" width="250px" height="370px"/><br/>
				<s:text name="collectmenlist.jeans"/>
			</a>
		</td>
		<td class="paddingLeft40">
			<a href="<s:url action="../collect/collectlist"><s:param name="kod">spn</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside113.jpg" width="250px" height="370px"/><br/>
				<s:text name="collectmenlist.spodnie"/>
			</a>
		</td>
		<td class="paddingLeft40">
			<a href="<s:url action="../collect/collectlist"><s:param name="kod">dod</s:param></s:url>" class="collectMenTypeStyle">
				<img alt="" src="../img/listcollectmen/quickside113.jpg" width="250px" height="370px"/><br/>
				<s:text name="collectmenlist.dodatki"/>
			</a>
		</td>
	</tr>
</table>
</div>

<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>
<style type="text/css">
/* <![CDATA[ */
ol{
	font-size: 11px;
	text-align: left !important;
}
.paddingLeft50{
	padding-left: 50px;
	text-align: left;
}
.paddingTop10{
	padding-top: 20px;
}
li{
	line-height: 19px;
}
/* ]]> */
</style>
<div style="text-align: center; margin: 0 auto;">
<table style="white-space: nowrap;text-align: center; margin: 0 auto;">
	<tr>
		<td>
			<span><s:text name="footer.informacje"></s:text> </span>
			<ol class="paddingTop10">
				<li><a href="<s:url action='aboutus/aboutus.html'/>"><s:text name="footer.onas"/></a></li>
				<li><a href="<s:url action='aboutus/kariera.html'/>"><s:text name="footer.wspolpraca"/></a></li>
				<li><a href="<s:url action='aboutus/filozofia.html'/>"><s:text name="footer.filozofia"/></a></li>
			</ol>
		</td>
		<td class="paddingLeft50">
			<s:text name="footer.kolekcja"/>
			<ol class="paddingTop10">
				<li><a href="<s:url action='collect/collectmen.html'/>"><s:text name="footer.meska"/></a></li>
				<li><a href="<s:url action='collect/collectwomen.html'/>"><s:text name="footer.damska"/></a></li>
			</ol>
		</td>
		<td class="paddingLeft50">
			<span><s:text name="footer.dlaklienta"/></span>
			<ol class="paddingTop10"> 
				<li><a href="<s:url action='clients/clientstable.html'/>"><s:text name="footer.kartapodarunkowa"/></a></li>
				<li><a href="<s:url action='clients/clientgift.html'/>"><s:text name="footer.kartapodarunkowa"/></a></li>
				<li><a href="<s:url action='clients/clientbon.html'/>"><s:text name="footer.bony"/></a></li>
			</ol>
		</td>
		<td class="paddingLeft50">
			<span><s:text name="footer.followus"/></span>
			<ol class="paddingTop10">
				<li><a href="<s:url action='#'/>"><s:text name="footer.online"/></a></li>
				<li><a href="<s:url action='#'/>"><s:text name="footer.facebook"/></a></li>
				<li><a href="<s:url action='#'/>"><s:text name="footer.youtube"/></a></li>
			</ol>
		</td>
		<td class="paddingLeft50">
			<span><s:text name="footer.news"/></span>
			<ol class="paddingTop10">
				<li><a href="<s:url action='news/news.html'/>"><s:text name="footer.aktualnosci"/></a></li>
			</ol>
		</td>
		<td class="paddingLeft50">
			<span><s:text name="footer.kontakt"/></span>
			<ol class="paddingTop10">
				<li><a href="<s:url action='contact/contact.html'/>"><s:text name="footer.kontakt2"/></a></li>
				<li><a href="<s:url action='#'/>"><s:text name="footer.formularz"/></a></li>
				<li><a href="<s:url action='shop/ownshop.html'/>"><s:text name="footer.naszesklepy"/></a></li>
			</ol>
		</td> 
	</tr>
</table>
</div>
<div style="text-align: center; padding-top: 50px; padding-bottom: 50px;font-size: 12px;">
<span style="color: grey;">All rights reserved Quickside &copy; Copyright 2014</span>
</div>
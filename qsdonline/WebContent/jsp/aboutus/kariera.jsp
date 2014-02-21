<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>
<div style="text-align: center">

	<div id="projekt" style="width: 100%">PROJEKTANT ODZIE¯Y(TKANINA JEANS, DZIANINA I TKANINA LEKKA)</div>
		<span id="tekstprojekt">
		<p>Miejsce Pracy: Brzesko</p>
		<p>Do podstawowych zadañ zatrudnionej osoby bêdzie nale¿a³o:</p>
		<p>
			<ul>
				<li>sdfsdf</li>
			</ul>
		</p>
		<p>Oczekiwania</p>
		<p>
			<ul>
				<li>sdfsdf</li>
			</ul>
		</p>
		<p>pitu pitu</p>
		
		<p><s:text name="tekst.kariera.podsumowanie"></s:text> </p>
		
		</span>
	<div id="konstruktor" style="width: 100%">KONSTRUKTOR ODZIE¯Y</div>
		<span id="tekstkonstruktor">
				<p>Miejsce Pracy: Brzesko</p>
		<p>Do podstawowych zadañ zatrudnionej osoby bêdzie nale¿a³o:</p>
		<p>
			<ul>
				<li>sdfsdf</li>
			</ul>
		</p>
		<p>Oczekiwania</p>
		<p>
			<ul>
				<li>sdfsdf</li>
			</ul>
		</p>
		<p>pitu pitu</p>
		
		<p><s:text name="tekst.kariera.podsumowanie"></s:text> </p>
		</span>
	<div id="sprzedawca" style="width: 100%">SPRZEDAWCA</div>
		<span id="tekstsprzedawca">
				<p>Miejsce Pracy: Brzesko</p>
		<p>Do podstawowych zadañ zatrudnionej osoby bêdzie nale¿a³o:</p>
		<p>
			<ul>
				<li>sdfsdf</li>
			</ul>
		</p>
		<p>Oczekiwania</p>
		<p>
			<ul>
				<li>sdfsdf</li>
			</ul>
		</p>
		<p>pitu pitu</p>
		<p><s:text name="tekst.kariera.podsumowanie"></s:text> </p>
		</span>
</div>
<script type="text/javascript">
$(document).ready(function(){
	var showprojekt = 'N';
	var showkonstruktor = 'N';
	var showsprzedawca = 'N';
	$("#tekstsprzedawca,#tekstkonstruktor,#tekstprojekt").hide();
	
	$("#projekt").click(function(){
		if(showprojekt == 'N'){
			$("#tekstprojekt").show("slow");
			$("#tekstsprzedawca,#tekstkonstruktor").hide();
			showprojekt = 'T';
		}else{
			$("#tekstprojekt").hide("slow");
			$("#tekstsprzedawca,#tekstkonstruktor").hide();
			showprojekt = 'N';
		}
		
	});
	$("#konstruktor").click(function(){
		if(showkonstruktor == 'N'){
			$("#tekstkonstruktor").show("slow");
			$("#tekstprojekt,#tekstsprzedawca").hide();
			showkonstruktor = 'T';
		}else{
			$("#tekstkonstruktor").hide("slow");
			$("#tekstprojekt,#tekstsprzedawca").hide();
			showkonstruktor = 'N';
		}
		
	});
	$("#sprzedawca").click(function(){
		if(showsprzedawca == 'N'){
			$("#tekstsprzedawca").show("slow");
			$("#tekstkonstruktor,#tekstprojekt").hide();
			showsprzedawca = 'T';
		}else{
			$("#tekstsprzedawca").hide("slow");
			$("#tekstkonstruktor,#tekstprojekt").hide();
			showkonstruktor = 'N';
		}
		
	});
});	
</script>
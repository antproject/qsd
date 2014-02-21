<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>
<link rel="Stylesheet" type="text/css" href="../css/reset.css" />
<link rel="Stylesheet" type="text/css" href="../css/screen.css" />

<link rel="stylesheet" type="text/css" media="screen,projection" href="../css/cssmap-poland.css" />
<link rel="stylesheet" href="../css/stylesheet.css" type="text/css" charset="utf-8" />
<link rel="stylesheet" href="../css/qtip.css" type="text/css" charset="utf-8" />
<link href="../css/jquery.fancybox.css" rel="stylesheet" type="text/css" />  
	<script src='../js/jquery_min.js'></script>
	<script src='../js/jquery.elevateZoom-2.5.3.min.js'></script>
	<script src='../js/jquery.fancybox.pack.js'></script>
	<script src='../js/qtip.js'></script>
<script type="text/javascript" src="http://cssmapsplugin.com/4/jquery.cssmap.js"></script> 
<link href='http://fonts.googleapis.com/css?family=Abril+Fatface&subset=latin,latin-ext' rel='stylesheet' type='text/css'>


</head>
<body>
		<div id="ALLPAGES">
	
		<div id="" style="z-index: 20;">
			
			<div id="MENU">
				<tiles:insertAttribute name="menu" />
			</div>
			<div style="position: relative;">
				<div style="text-align: center; margin: 0 auto;">
 			<div style="height: 8px;background: white;"></div>
 			<div style="color: white; text-align: center; margin: 0 auto; background: red; height: 40px;">
			
			<img alt="" class="proba" src="../img/qsd1.png"/>
			<img alt="" class="proba" src="../img/qsd2.png"/>
			<img alt="" class="proba" src="../img/qsd3.png"/>
			<img alt="" class="proba" src="../img/qsd4.png"/>
			<img alt="" class="proba" src="../img/qsd5.png"/>
			</div>
			</div>
				<div id="BODY" style="top: 17px !important">
					<div style="padding: 20px;">
						<tiles:insertAttribute name="body" />
					</div>
				</div>
				<div id="LOGOTYPE"  style="top:17px;margin: 0 auto; position: relative;text-align: center;">
					<img alt="" width="100%" height="50px" style="opacity: 0.2" src="../img/Quickside-lyout-wer-03-kolejna-1_12.jpg"/>
				</div>
				
				<div id="FOOTER" style="top: -14px !important; padding-top: 20px;">
					<tiles:insertAttribute name="footer" />
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
		

		<!-- <div id="right-links">
			<a href="#"><img class="wielkoscfoto" alt="Facebook" src="../img/Facebook.png"/></a>
			<a href="#"><img class="wielkoscfoto" alt="Sklep online" src="../img/onlineshop.png"/></a>
			<a href="#"><img class="wielkoscfoto" alt="Newsletter" src="../img/newsletter.png"/></a>
		</div> -->
	</div>
	


</body>
</html>
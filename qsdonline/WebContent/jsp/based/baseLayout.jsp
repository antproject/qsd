<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>
<link rel="Stylesheet" type="text/css" href="css/reset.css" />
<link rel="Stylesheet" type="text/css" href="css/screen.css" />
<link rel="Stylesheet" type="text/css" href="css/nivo-slider.css" />
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"
	charset="utf-8" />
<script type="text/javascript" src="js/jquery_min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>

</head>
<body>
	<div id="ALLPAGES">
		<div id="MENU">
			<tiles:insertAttribute name="menu" />
		</div>
		<div id="SLIDER">
			<a href=""><img src="img/Quickside-lyout-wer-03-kolejna-1_05.jpg"
				alt="Sklep online" /></a> <a href=""><img
				src="img/Quickside-lyout-wer-03-kolejna-1_05.jpg" alt="Sklep online" /></a>
		</div>
		<div style="text-align: center; margin: 0 auto;">
			<div style="height: 8px; background: #272626;"></div>
			<div
				style="color: white; text-align: center; margin: 0 auto; position: relative; overflow: hidden; display: block; background: #3b3b3b; height: 40px;">

				<img alt="" class="proba" src="img/qsd1.png" /> <img alt=""
					class="proba" src="img/qsd2.png" /> <img alt="" class="proba"
					src="img/qsd3.png" /> <img alt="" class="proba" src="img/qsd4.png" />
				<img alt="" class="proba" src="img/qsd5.png" />
			</div>
		</div>
		<div>
			<div id="BODY" style="text-align: left:">
				<tiles:insertAttribute name="body" />
			</div>
			<div style="text-align: center; margin: 0 auto;">
				<div
					style="text-align: center; margin: 0 auto; position: relative; overflow: hidden; display: block; background: #3b3b3b; height: 40px;">
					<img alt="" class="proba" src="img/qsd1.png" /> <img alt=""
						class="proba" src="img/qsd2.png" /> <img alt="" class="proba"
						src="img/qsd3.png" /> <img alt="" class="proba" src="img/qsd4.png" />
					<img alt="" class="proba" src="img/qsd5.png" />
				</div>
				<div style="height: 8px; background: #272626;"></div>
			</div>

			<div id="FOOTER" style="top: -5px; padding-top: 10px">
				<tiles:insertAttribute name="footer" />
			</div>
		</div>

		<div id="right-links">
			<a href="#"><img class="wielkoscfoto" alt="Facebook" src="img/Facebook.png"/></a>
			<a href="#"><img class="wielkoscfoto" alt="Sklep online" src="img/onlineshop.png"/></a>
			<a href="#"><img class="wielkoscfoto" alt="Newsletter" src="img/newsletter.png"/></a>
		</div>
	</div>

	<script type="text/javascript">
		$(window).load(function() {

			$('#SLIDER').nivoSlider({
				effect : 'random', //styl animacji
				slices : 15, //ile kawa³ków przypada na animacjê
				animSpeed : 500, //szybko¶æ animacji
				pauseTime : 3000, //szybko¶æ zatrzymania na slajdzie
				startSlide : 0, //zaczynamy od slajda
				directionNav : false, //czy pokazaæ strza³ki next - prev
				directionNavHide : false, //poka¿ strza³ki tylko po najechaniu
				controlNav : false, //poka¿ klikalne 1,2,3...
				controlNavThumbs : false, //u¿yj miniaturek dla powy¿szych
				controlNavThumbsFromRel : false, //u¿yj relatywnych ¶cie¿ek z miniaturek
				controlNavThumbsSearch : '.jpg', //Replace this with...
				controlNavThumbsReplace : '_thumb.jpg', //nazwa miniaturki
				keyboardNav : false, //u¿yj klawiatury (lewo / prawo)
				pauseOnHover : true, //zatrzymaj po najechaniu myszk±
				manualAdvance : false, //w³asne przej¶cie
				captionOpacity : 0.8, //przezroczysto¶æ opisów
				beforeChange : function() {
				}, //zdarzenie wywo³ywane tu¿ przed animacj±
				afterChange : function() {
				}, //zdarzenie wywo³ywane tu¿ po animacji
				slideshowEnd : function() {
				}, //wywo³ywane po animacji wszystkich slajdów
				lastSlide : function() {
				}, //po pokazaniu ostatniego slajdu
				afterLoad : function() {
				} //wywo³ane po za³adowaniu slajdów (grafik)
			});
		});
	</script>


</body>
</html>

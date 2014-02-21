<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/form" prefix="form"%>

<style type="text/css">
/* <![CDATA[ */
#LEFTCOLLECT {
	float: left;
	width: 450px;
}

#RIGHTCOLLECT {
	float: left;
	width: 460px;
	height: 520px;
}

#div_dod,#div_spr,#div_tab,#div_prd {
	background: grey;
}

.paddingLeft50 {
	padding-left: 50px;
}
/*set a border on the images to prevent shifting*/
#img_01 img {
	border: 2px solid white;
}

/*Change the colour*/
.active img {
	border: 2px solid #333 !important;
}

.minPhoto {
	width: 68px;
	height: 80px;
}

.colorSilver {
	background: grey;
}

.smallPhoto {
	width: 400px;
	height: 450px;
	border: 2px solid white;
}

.smallPhoto2 {
	width: 350px;
	height: 470px;
}

.StyleOpis {
	font-family: sans-serif;
	font-size: 0.9em;
	font-weight: 700;
	text-transform: uppercase;
}

.size li {
	background: linear-gradient(to bottom, #F7F6F6 0%, #EFEEEE 100%) repeat
		scroll 0 0 rgba(0, 0, 0, 0);
	box-shadow: 0.5px 0.866px 1px 0 #B4B4B4;
	color: #898989;
	display: inline-block;
	font-family: "Roboto Condensed", sans-serif !important;
	font-size: 0.875em !important;
	font-weight: 700;
	height: 1.8125em;
	line-height: 1.78571em;
	list-style: none outside none;
	margin: 0 3px 0 auto;
	text-align: center;
	text-transform: uppercase;
	width: 2.8125em;
}

/* ]]> */
</style>


<c:if test="${emptyDetails}">
	Przepraszamy, wyst±pi³ b³±d. Proszê spróbowaæ pó¼niej oraz poinformowaæ administratorów strony.
</c:if>

<div style="overflow: hidden">
	<div id="LEFTCOLLECT">

		<c:if test="${!emptyList}">
			<s:iterator value="listClothes" var="list">
				<img id="img_01"
					class="${spodnie ? 'smallPhoto2' : 'smallPhoto' }"
					data-zoom-image="photoclothes.html?idKod=<s:property value="idKod"/>"
					src="photoclothes.html?idKod=<s:property value="idKod"/>">

			</s:iterator>
		</c:if>

	</div>
	<div id="RIGHTCOLLECT" style="background: grey !important;">
		<div class="paddingLeft50">
			<div class="alignCenter">
				<p style="font-size: 26px;">
					<s:property value="tytul" />
				</p>
				<span style="color: #C0C0C0; opacity: 0.8;">(<s:property
						value="idKod" />)
				</span>

			</div>

			<div style="padding: 30px;">
				<s:property value="opis" escape="false"/>
			</div>

			<div style="padding-bottom: 30px;">
				<span class="StyleOpis">rozmiary</span>
				<ul class="size" style="padding-top: 10px;">
					<s:property value="rozmiar" escape="false" />
				</ul>
			</div>

			<div style="padding-bottom: 30px;">
				<span class="StyleOpis">kolor</span>
				<p style="padding-top: 10px;">
					<s:property value="kolor" />
				</p>
			</div>
			<div>
				<span class="StyleOpis">Miniaturki</span>
			</div>
			<div id="gallery_01">
				<a href=""
					data-image="photoclothes.html?idKod=<s:property value="idKod"/>"
					data-zoom-image="photoclothes.html?idKod=<s:property value="idKod"/>">
					<img id="img_01" class="minPhoto" title="adf"
					src="photoclothes.html?idKod=<s:property value="idKod"/>" />
				</a>
				<!-- tutaj trzeba dodac kolejn± tabele, która bêdzie zawieraæ dodatkowe fotosy w 3 rodzajach
				select typu leftjoin albo zagnie. select albo flaga czy s± dodatkowe foto i odpytaæ po kodzie
				raczej flaga
				 -->
				<c:if test="${!emptyPhoto}">
					<a href=""
						data-image="photominclothes.html?idKod=<s:property value="idKod"/>"
						data-zoom-image="photominclothes.html?idKod=<s:property value="idKod"/>">
						<img id="img_01" class="minPhoto" title="ert"
						src="photominclothes.html?idKod=<s:property value="idKod"/>" />
					</a>
				</c:if>

			</div>
		</div>
	</div>
	<div style="float: left; margin: 0 auto">
		<div style="display: table;">
			<ul style="text-align: center; cursor: pointer;">
				<li id="li_dod"
					style="padding: 10px 0 15px 0; border-top: 3px solid; border-bottom: 2px solid; border-left: 1px solid; border-right: 1px solid; float: left; width: 300px">
					<p>Dodatkowe informacje</p>
				</li>
				<li id="li_spr"
					style="padding: 10px 0 15px 0; border-top: 3px solid; border-bottom: 2px solid; border-right: 1px solid; float: left; width: 300px">
					<p>Warunki sprzeda¿y</p>
				</li>
				<li id="li_tab"
					style="padding: 10px 0 15px 0; border-top: 3px solid; border-bottom: 2px solid; border-right: 1px solid; float: left; width: 300px">
					<p>Tabela rozmiarów</p>
				</li>
				<c:if test="${prdTyg}">
					<li id="li_prd"
						style="padding: 10px 0 15px 0; border-top: 3px solid; border-bottom: 2px solid; border-right: 1px solid; float: left; width: 300px">
						<p>Produkt Tygodnia</p>
					</li>
				</c:if>
			</ul>
		</div>
		<div id="div_dod" class="${prdTyg ? 'width805' : 'width604' }">
			<span class="StyleOpis">Sk³ad ubrania</span><br />
			<p>
				<s:property value="sklad" escape="false" />
			</p>
			<br /> <span class="StyleOpis">Dodatkowy opis</span><br />
			<s:property value="dodOpis" escape="false" />

		</div>
		<div id="div_spr" class="${prdTyg ? 'width805' : 'width604' }">
			warunki sprzeda¿y
			<s:property value="warSprz" escape="false" />
		</div>
		<div id="div_tab" class="${prdTyg ? 'width805' : 'width604' }">
			Tabela rozmiarów</div>
		<c:if test="${prdTyg}">
			<div id="div_prd" class="${prdTyg ? 'width805' : 'width604' }">
				Produkt tygodnia</div>
		</c:if>

	</div>
</div>
<script type="text/javascript">
	$('#poliester').qtip({ // Grab some elements to apply the tooltip to
		content : {
			text : ' <s:text name="help.poliester"/>'
		},
		style : {
			tip : {
				corner : 'left top'
			}
		}
	});
	$('#bawelna').qtip({ // Grab some elements to apply the tooltip to
		content : {
			text : ' <s:text name="help.bawelna"/>'
		},
		style : {
			tip : {
				corner : 'left top'
			}
		}
	});
	$('#polyamid').qtip({ // Grab some elements to apply the tooltip to
		content : {
			text : '<s:text name="help.polyamid"/>'
		},
		style : {
			tip : {
				corner : 'left top'
			}
		}
	});
	
	$('#elastan').qtip({ // Grab some elements to apply the tooltip to
		content : {
			text : '<s:text name="help.elastan"/>'
		},
		style : {
			tip : {
				corner : 'left top'
			}
		}
	});
	$('#welna').qtip({ // Grab some elements to apply the tooltip to
		content : {
			text : '<s:text name="help.welna"/>'
		},
		style : {
			tip : {
				corner : 'left top'
			}
		}
	});
	$('#wiskoza').qtip({ // Grab some elements to apply the tooltip to
		content : {
			text : '<s:text name="help.wiskoza"/>'
		},
		style : {
			tip : {
				corner : 'left top'
			}
		}
	});

	$(document).ready(function() {
		$("#div_spr, #div_tab, #div_prd").hide();
		$("#li_dod").addClass("colorSilver");
	});

	$("#li_dod").click(function() {
		$("#div_dod").show();
		$("#div_spr, #div_tab, #div_prd").hide();
		$("#li_dod").addClass("colorSilver");
		$("#li_spr, #li_tab, #li_prd").removeClass("colorSilver");
	});
	$("#li_spr").click(function() {
		$("#div_spr").show();
		$("#div_dod, #div_tab, #div_prd").hide();
		$("#li_spr").addClass("colorSilver");
		$("#li_dod,#li_tab, #li_prd").removeClass("colorSilver");
	});
	$("#li_tab").click(function() {
		$("#div_tab").show();
		$("#div_dod, #div_spr, #div_prd").hide();
		$("#li_tab").addClass("colorSilver");
		$("#li_dod, #li_spr, #li_prd").removeClass("colorSilver");
	});
	$("#li_prd").click(function() {
		$("#div_prd").show();
		$("#div_dod, #div_spr, #div_tab").hide();
		$("#li_prd").addClass("colorSilver");
		$("#li_dod, #li_spr, #li_tab").removeClass("colorSilver");
	});

	//initiate the plugin and pass the id of the div containing gallery images
	$("#img_01").elevateZoom({
		gallery : 'gallery_01',
		cursor : 'pointer',
		galleryActiveClass : 'active'
	});

	//pass the images to Fancybox
	
	/* $(document).ready(function(){
		
		$("#img_01").bind("click", function(e) {
			var ez = $('#img_01').data('elevateZoom');
			$.fancybox(ez.getGalleryList());
			return false;
		});
	}); */
	
</script>







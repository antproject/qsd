<%@ page contentType="text/html; charset=ISO-8859-2"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
<div><a href="<s:url action="../index"/>"><img alt="" src="../img/Quickside-lyout-wer-03-kolejna-1_02.jpg"/></a></div>

<ul id="mainmenu">
	<li><a href="<s:url action="../index.html"/>">HOME</a></li>
	<li><a href="<s:url action="../collect/collection"/>"><s:text name="menu.kolekcja"/> </a>
		<ul>
			<li style="margin-top: 32px;"><a href="<s:url action="../collect/collectmen"/>"><s:text name="menu.on"/> <i class="arrow"></i></a>
				<ul>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">kum</s:param></s:url>"><s:text name="collectmenlist.kurtka"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">plm</s:param></s:url>"><s:text name="collectmenlist.plaszcze"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">blm</s:param></s:url>"><s:text name="collectmenlist.bluzy"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">prm</s:param></s:url>"><s:text name="collectmenlist.polary"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">swm</s:param></s:url>"><s:text name="collectmenlist.swetry"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">ksm</s:param></s:url>"><s:text name="collectmenlist.koszule"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">spm</s:param></s:url>"><s:text name="collectmenlist.jeans"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">spn</s:param></s:url>"><s:text name="collectmenlist.spodnie"/></a></li>
					<li><a href="<s:url action="../collect/collectlist"><s:param name="kod">dod</s:param></s:url>"><s:text name="collectmenlist.dodatki"/></a></li>				</ul>
			</li>
			<li><a href="<s:url action="../collect/collectwomen"/>"><s:text name="menu.ona"/><i class="arrow"></i></a>
				<ul>
					<li><a href="#">SPODNIE</a></li>
				</ul>
			</li>
		</ul>
	</li>
	<li><a href="<s:url action="../shop/ownshop"/>"><s:text name="menu.naszesklepy"/></a>
		<ul>
			<li style="margin-top: 32px;"><a href="<s:url action="../shop/ownshop"/>">Polska</a>
			</li>
			<li><a href="#">Czechy</a>
			</li>
			<li><a href="#">S³owacja</a>
			</li>
		</ul>
	</li>
	<li><a href="#">GALERIA</a></li>
	<li><a href="#"><s:text name="menu.onas"/></a>
		<ul>
			<li style="margin-top: 32px;"><a href="<s:url action="../aboutus/aboutus"/>">O nas </a>
			</li>
			<li><a href="<s:url action="../aboutus/filozofia"/>">Filozofia marki</a>
			</li>
			<li><a href="<s:url action="../aboutus/franczyza"/>">Franczyza</a>
			</li>
			<li><a href="<s:url action="../aboutus/kariera"/>">Kariera</a>
			</li>
		</ul>
	</li>
	
	<li><a href="<s:url action="../news/news"/>"><s:text name="menu.news"/></a></li>
</ul>

</div>

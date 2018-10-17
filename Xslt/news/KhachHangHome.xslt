<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-home-4" bg-img="/Data/Sites/1/media/home_bg_2.png">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<h2 class="h2 mb-5">
							<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
			</div>
			<article class="news-list">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="owl-carousel">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<a class="item" href="#">
			<xsl:attribute name="href">
				<xsl:value-of select="/NewsList/CustomerLink" />
			</xsl:attribute>
			<div class="row no-gutters">
				<div class="col-12 col-lg-6 col-xl-5 box-img">
					<xsl:attribute name="bg-img-responsive">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="bg-img-responsive-lg">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="col-12 col-lg-6 col-xl-7 box-content">
					<p class="full-content">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p class="name">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</a>
	</xsl:template>

</xsl:stylesheet>
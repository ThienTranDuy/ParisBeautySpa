<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-breadcrumb-index-1">
			<article class="owl-carousel owl-theme list-items">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="item" bg-pos-lg="center -200px" bg-pos-sm="center center">
			<xsl:attribute name="bg-img-responsive-xs">
				<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="bg-img-responsive">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
		</div>
	</xsl:template>
</xsl:stylesheet>

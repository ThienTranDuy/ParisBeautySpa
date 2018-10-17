<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--data-comment-->

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-promotion" bg-img="/Data/Sites/1/media/background_footer.png">
			<div class="container">
				<h1>
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h1>
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="block">
			<a href="javascript:void(0)" title="title">
				<img>
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
			</a>
		</div>
	</xsl:template>

</xsl:stylesheet>
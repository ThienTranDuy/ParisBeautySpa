<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin Zone-->
	<xsl:template match="/">
		<section class="canhcam-home-3">
			<div class="container">
				<div class="row">
					<div class="col-md-8 title">
						<h2>
							<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="col-sm-6 col-lg-4">
			<a class="item" href="javascript:void(0)">
				<figure>
					<div class="box">
						<div class="img">
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
						</div>
						<figcaption class="match">
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</figcaption>
					</div>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
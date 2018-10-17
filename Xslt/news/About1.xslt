<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-intro" bg-img="/Data/Sites/1/media/intro_1.png">
					<div class="container">
						<article class="intro">
							<h1>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<div class="row no-gutters">
								<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
							</div>
						</article>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<article class="analysis" bg-img="/Data/Sites/1/media/intro_2.png">
					<div class="container">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row no-gutters">
							<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
						</div>
					</div>
				</article>
			</xsl:when>
			<xsl:when test="position()=3">
				<article class="video">
					<div class="container">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row" id="products">
							<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
						</div>
					</div>
				</article>
			</xsl:when>
			<xsl:when test="position()=4">
				<section class="canhcam-intro-slider-5" id="canhcam-intro-slider-5" bg-img="/Data/Sites/1/media/intro_3.png">
					<div class="container">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="list-thumb">
							<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>

		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-lg-8 order-lg-2 item right">
			<figure>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<div class="boxzoom">
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
			</figure>
		</div>
		<div class="col-lg-4 item left">
			<figure>
				<figcaption>
					<p class="lead">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-lg-7 box-1">
			<div class="canhcam-slider-1">
				<div class="owl-carousel owl-theme list-items">
					<xsl:apply-templates select="NewsImages" mode="First"></xsl:apply-templates>
				</div>
			</div>
		</div>
		<div class="col-lg-5">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="col-sm-6 col-lg-4">
			<a class="item" data-fancybox="">
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="block-img">
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
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
		<div class="item">
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
			<div class="title">
				<p class="quote">“</p>
				<p class="content">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
				<p class="lead">
					<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages" mode="First">
		<div class="item">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
		</div>
	</xsl:template>
</xsl:stylesheet>
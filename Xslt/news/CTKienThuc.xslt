<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="canhcam-beautify-serivce-detail-boxes-15">
			<div class="container">
				<h1>
					<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
				</h1>
				<div class="intro">
					<p>
						<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
						<!-- <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of> -->
					</p>
				</div>
				<div class="row">
					<ul class="timeline">
						<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
					</ul>
				</div>
				<div class="social-networks nav">
					<div class="nav-item mr-2">
						<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
							 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a>
						</div>
					</div>
					<div class="nav-item mr-2">
						<a class="twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text"
						 data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a>
					</div>
					<div class="nav-item">
						<div class="g-plusone" data-size="tall"></div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<li class="timeline-item">
			<div class="timeline-info">
				<span>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</span>
			</div>
			<div class="timeline-marker"></div>
			<div class="timeline-content">
				<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>
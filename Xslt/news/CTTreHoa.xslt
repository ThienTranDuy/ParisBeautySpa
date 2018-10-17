<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="canhcam-hightech-rejuvenation-detail-news-details-1">
			<article class="news-details">
				<div class="container">
					<div class="row">
						<div class="col-lg-8">
							<div class="news-read">

								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								</h1>
								<time>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
								<!-- <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of> -->
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
								<div class="social-networks nav">
									<div class="nav-item mr-2">
										<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
											 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
									</div>
									<div class="nav-item mr-2"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
										 data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a></div>
									<div class="nav-item">
										<div class="g-plusone" data-size="tall"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="othernews" data-fix="10" data-fix-type="initial" data-fix-change="sticky">
								<div class="h2-text">
									<h2>
										<xsl:value-of select="/NewsDetail/ServiceOther" />
									</h2>
								</div>
								<div class="lists">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>

				</div>
			</article>
		</section>

	</xsl:template>

	<xsl:template match="NewsOther">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<!-- <time>
						<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
					</time> -->
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<!-- <p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p> -->
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>
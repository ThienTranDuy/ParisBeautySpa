<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--data-comment-->

	<!--Begin News-->
	<xsl:template match="/">
		<div class="row no-gutters">
			<div class="col">
				<div class="owl-carousel owl-theme list-items">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<a class="item d-flex justify-content-center align-items-end align-items-md-center" href="http://preview2028.canhcam.com.vn/uu-dai">
			<!-- <xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute> -->
			<img class="w-100">
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
			<!-- <div class="row justify-content-md-end">
				<div class="col-md-6">
					<div class="box-content text-center">
						<h3 class="h3 mb-3">
							<p class="top">Đảo ngược thời gian</p>
							<p class="bottom">10 năm tuổi</p><span>trong 1 lần trị liệu</span>
						</h3>
						<p class="full-content d-none d-md-block">Sử dụng các sản phẩm cao cấp từ Tây Ban Nha giúp nuôi dưỡng làn da
							trăng tự nhiên, tăng độ săn chắc và độ ẩm cho da</p>
						<p><a class="btn btn-outline-primary btn-more" href="#">Xem chi tiết</a></p>
					</div>
				</div>
			</div> -->
		</a>

	</xsl:template>

</xsl:stylesheet>
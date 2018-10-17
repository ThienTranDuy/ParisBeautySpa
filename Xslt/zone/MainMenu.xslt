<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin Zone-->
	<xsl:template match="/">
		<!-- Call Menu Items -->
		<ul class="nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<!--item-->
		<li class="nav-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>

			<xsl:if test="count(Zone) > 0">
				<xsl:attribute name="class">
					<xsl:text>nav-item dropdown</xsl:text>
				</xsl:attribute>
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-item dropdown active</xsl:text>
					</xsl:attribute>
				</xsl:if>
			</xsl:if>
			<xsl:if test="position() = 1 ">
				<a class="nav-link">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<i class="d-none d-lg-block fas fa-home">
					</i>
					<p class="d-lg-none">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</a>
			</xsl:if>
			<xsl:if test="position() > 1 ">
				<a class="nav-link">
					<!-- Active -->
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-link active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<!-- <xsl:if test="position() = 1 ">

					</xsl:if> -->
					<!-- Dropdown -->
					<xsl:if test="count(Zone) > 0">
						<!-- Nếu trang được chọn mở với thuộc tính target thì sẽ bật menu khi hover -->
						<xsl:attribute name="data-toggle">
							<xsl:text>dropdown</xsl:text>
						</xsl:attribute>
						<xsl:if test="Url != '#'">
							<xsl:attribute name="dropdown-type">
								<xsl:text>hover</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="class">
							<xsl:text>nav-link</xsl:text>
						</xsl:attribute>
						<!-- Active -->
						<xsl:if test="IsActive='true'">
							<xsl:attribute name="class">
								<xsl:text>nav-link active</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="id">
							<xsl:text>itemMenuDropdown-</xsl:text>
							<xsl:value-of select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="role">
							<xsl:text>button</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="aria-haspopup">
							<xsl:text>true</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="aria-expanded">
							<xsl:text>false</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<!-- URL -->
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</xsl:if>
			<!--Call Sub Menu-->
			<xsl:if test="count(Zone) > 0">
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</div>
			</xsl:if>
		</li>
	</xsl:template>

	<!-- Child -->
	<xsl:template match="Zone" mode="Child">
		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 0 and position() &lt; 5">
			<div class="col-lg-3 mb-3">
				<a class="h2" href="#">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>h2 active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<ul>
					<xsl:apply-templates select="Zone" mode="Child1"></xsl:apply-templates>
				</ul>
			</div>
		</xsl:if>
		<xsl:if test="position() = 5 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="dropdown-divider mb-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 4 and position() &lt; 9">
			<div class="col-lg-3 mb-3">
				<a class="h2" href="#">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>h2 active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<ul>
					<xsl:apply-templates select="Zone" mode="Child2"></xsl:apply-templates>
				</ul>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Child1">
		<li>
			<a class="dropdown-item" href="#">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>dropdown-item active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Child2">
		<li>
			<a class="dropdown-item" href="#">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>dropdown-item active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<!--
  jQuery-menu-aim template for DDRMenu
  Alberto Velo, 19/07/2013
  Ref: https://github.com/kamens/jQuery-menu-aim
  DDRMenu:  http://www.dnnsoftware.com/wiki/Page/DDRMenu-XSLT-templates
    -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="no" />
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
    <ul class="nav" role="navigation">
            <xsl:apply-templates select="node" />
        </ul>
	</xsl:template>
	<xsl:template match="node">
		<li>
      <xsl:if test="@depth &gt; 0">
      <xsl:attribute name="data-submenu-id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
      </xsl:if>
			<xsl:attribute name="class">
        <xsl:choose>
        <xsl:when test="@selected = 1">active<xsl:if test="count(./node) &gt; 0">&#32;dropdown</xsl:if></xsl:when>
        <xsl:otherwise><xsl:if test="count(./node) &gt; 0">dropdown</xsl:if></xsl:otherwise>
        </xsl:choose>
			</xsl:attribute>
     <xsl:choose>
				<xsl:when test="@enabled = 1">
					<a role="button" id="drop{@id}" href="{@url}" data-target="{@url}">
            <xsl:if test="count(./node) &gt; 0 and @depth=0">
            <xsl:attribute name="class">dropdown-toggle</xsl:attribute>
            <xsl:attribute name="data-toggle">dropdown</xsl:attribute>
            <xsl:attribute name="role">button</xsl:attribute>
            </xsl:if>
						<xsl:value-of select="@text" />
          <xsl:if test="count(./node) &gt; 0 and @depth=0">&#32;<b class="caret"></b></xsl:if>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<a role="button" id="drop{@id}" href="#">
            <xsl:if test="count(./node) &gt; 0 and @depth=0">
            <xsl:attribute name="class">dropdown-toggle</xsl:attribute>
            <xsl:attribute name="data-toggle">dropdown</xsl:attribute>
            </xsl:if>
						<xsl:value-of select="@text" />
          <xsl:if test="count(./node) &gt; 0 and @depth=0">&#32;<b class="caret"></b></xsl:if>
					</a>
				</xsl:otherwise>
			</xsl:choose>
      <!-- popover -->
       <xsl:if test="@depth &gt; 0">
        <div class="popover hidden-phone hidden-tablet"><xsl:attribute name="id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
          <a href="{@url}" data-target="{@url}">
            <h3 class="popover-title">
              <xsl:value-of select="@text"/>
            </h3>
            <div class="popover-content">
              <xsl:value-of select="description" disable-output-escaping="yes"/>
            </div>
          </a>
       </div>
        </xsl:if>
        <!-- /popover -->
      <xsl:if test="node and @depth=0">
        <ul class="dropdown-menu" role="menu" aria-labelledby="drop{@id}">
					<xsl:apply-templates select="node" />
				</ul>
			</xsl:if>
      <xsl:if test="node and @depth &gt; 0">
					<xsl:apply-templates select="node" />
			</xsl:if>
		</li>
	</xsl:template>
</xsl:stylesheet>

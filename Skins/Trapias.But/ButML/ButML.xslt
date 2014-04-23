<?xml version="1.0" encoding="UTF-8"?>
<!--
  DNN BUT multi-level dropdown menu
  Alberto Velo, 31/07/2013
  http://albe.ihnet.it/but
    -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="no" />
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
    <ul class="nav but-nav" role="navigation">
        <xsl:apply-templates select="node" />
    </ul>
	</xsl:template>
	<xsl:template match="node">
    <xsl:variable name="titolo">
    <xsl:choose>
    <xsl:when test="not(@title)">
      <xsl:value-of select="@text"/>
    </xsl:when>
    <xsl:otherwise><xsl:value-of select="@title"/></xsl:otherwise>
    </xsl:choose>
    </xsl:variable>
  <li>
      <xsl:if test="@depth &gt; 0">
      <xsl:attribute name="data-submenu-id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
      </xsl:if>
			<xsl:attribute name="class">
        <xsl:choose>
        <xsl:when test="@selected = 1">active<xsl:if test="count(./node) &gt; 0">&#32;dropdown</xsl:if></xsl:when>
        <xsl:otherwise><xsl:if test="count(./node) &gt; 0"> dropdown</xsl:if></xsl:otherwise>
        </xsl:choose>
      <xsl:if test="count(./node) &gt; 0 and @depth=0"> dropdown-split-left</xsl:if>
			</xsl:attribute>
    <xsl:if test="count(./node) &gt; 0 and @depth &gt; 0">
      <xsl:attribute name="class">dropdown-submenu</xsl:attribute>
      </xsl:if>
     <xsl:choose>
				<xsl:when test="@enabled = 1">
					<a role="button" href="{@url}" data-target="{@url}">
            <xsl:if test="count(./node) &gt; 0 and @depth=0">
            <xsl:attribute name="role">button</xsl:attribute>
            </xsl:if>
						<xsl:value-of select="$titolo" />
					</a>
          <xsl:if test="count(./node) &gt; 0 and @depth &gt; 0">
            <ul class="dropdown-menu">
              <xsl:apply-templates select="node" />
            </ul>
          </xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<a role="button" href="#">
            <xsl:if test="count(./node) &gt; 0 and @depth=0">
            </xsl:if>
						<xsl:value-of select="$titolo" />
					</a>
          <xsl:if test="count(./node) &gt; 0 and @depth &gt; 0">
            <ul class="dropdown-menu">
              <xsl:apply-templates select="node" />
            </ul>
          </xsl:if>
				</xsl:otherwise>
			</xsl:choose>
      	</li>
      <xsl:if test="node and @depth=0">
         <li>
           <xsl:attribute name="class">
           <xsl:if test="count(./node) &gt; 0">dropdown dropdown-split-right</xsl:if><xsl:if test="@selected = 1"> active</xsl:if>
			  </xsl:attribute>
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <b class="caret"></b>
      </a>
           <!-- submenu -->
        <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="drop{@id}">
          <li>
            <!-- intestazione submenu -->
          <xsl:attribute name="data-submenu-id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
            <xsl:choose>
              <xsl:when test="@enabled = 1">
                <a role="button" id="drop{@id}" href="{@url}" data-target="{@url}">
                  <xsl:value-of select="$titolo"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <a role="button" href="#">
                  <xsl:value-of select="$titolo"/>
                </a>
              </xsl:otherwise>
            </xsl:choose>
          </li>
          <li class="divider"></li>
          <!-- children -->
          <xsl:apply-templates select="node" />
        </ul>
        </li>
      </xsl:if>
	</xsl:template>
</xsl:stylesheet>

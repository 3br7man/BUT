<?xml version="1.0" encoding="UTF-8"?>
<!--
  jQuery-menu-aim template for DDRMenu
  Alberto Velo, 29/07/2013
  Ref: https://github.com/kamens/jQuery-menu-aim
  DDRMenu:  http://www.dnnsoftware.com/wiki/Page/DDRMenu-XSLT-templates
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
  <li>
      <xsl:if test="@depth &gt; 0">
      <xsl:attribute name="data-submenu-id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
      </xsl:if>
			<xsl:attribute name="class">
        <xsl:choose>
        <xsl:when test="@selected = 1">active<xsl:if test="count(./node) &gt; 0">&#32;dropdown</xsl:if></xsl:when>
        <xsl:otherwise><xsl:if test="count(./node) &gt; 0"> dropdown</xsl:if></xsl:otherwise>
        </xsl:choose>
      <xsl:if test="count(./node) &gt; 0"> dropdown-split-left</xsl:if>
			</xsl:attribute>
     <xsl:choose>
				<xsl:when test="@enabled = 1">
					<a id="drop{@id}" role="button" href="{@url}" data-target="{@url}">
            <xsl:if test="count(./node) &gt; 0 and @depth=0">
            <xsl:attribute name="role">button</xsl:attribute>
            </xsl:if>
						<xsl:value-of select="@text" />
					</a>
				</xsl:when>
				<xsl:otherwise>
					<a id="drop{@id}" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">
            <xsl:if test="count(./node) &gt; 0 and @depth=0">
            </xsl:if>
						<xsl:value-of select="@text" />
					</a>
				</xsl:otherwise>
			</xsl:choose>
      <!-- popover -->
       <xsl:if test="@depth &gt; 0 and string-length(description) &gt; 0">
        <div class="popover hidden-phone hidden-tablet"><xsl:attribute name="id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
          <a href="{@url}" data-target="{@url}">
           <h3 class="popover-title">
             <i class="icon-file"/><xsl:text>&#160;</xsl:text><xsl:value-of select="@text"/>
          </h3>
             </a>
          <div class="popover-content">
            <xsl:value-of select="description" disable-output-escaping="yes"/>
          </div>
       </div>
        </xsl:if>
        <!-- /popover -->
    		</li>
      <xsl:if test="node and @depth=0">
         <li>
           <xsl:attribute name="class">
           <xsl:if test="count(./node) &gt; 0">dropdown dropdown-split-right</xsl:if><xsl:if test="@selected = 1"> active</xsl:if>
			  </xsl:attribute>
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <b class="caret"></b>
      </a>
        <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="drop{@id}">
          <li>
          <xsl:attribute name="data-submenu-id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
            <xsl:choose>
              <xsl:when test="@enabled = 1">
                <a role="button" id="drop{@id}" href="{@url}" data-target="{@url}">
                  <xsl:value-of select="@text"/>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <a id="drop{@id}" role="button" href="#">
                  <xsl:value-of select="@text"/>
                </a>
              </xsl:otherwise>
            </xsl:choose>
            <!-- popover -->
            <xsl:if test="string-length(description) &gt; 0">
            <div class="popover hidden-phone hidden-tablet"><xsl:attribute name="id">submenu-<xsl:value-of select="@id"/></xsl:attribute>
              <a href="{@url}" data-target="{@url}">
               <h3 class="popover-title">
                 <i class="icon-file"/><xsl:text>&#160;</xsl:text><xsl:value-of select="@text"/>
              </h3>
                 </a>
              <div class="popover-content">
                <xsl:value-of select="description" disable-output-escaping="yes"/>
              </div>
            </div>
            </xsl:if>
          <!-- /popover -->
          </li>
          <li class="divider"></li>
          <xsl:apply-templates select="node" />
        </ul>
        </li>
      </xsl:if>
      <xsl:if test="node and @depth &gt; 0">
        <xsl:apply-templates select="node" />
      </xsl:if>
	</xsl:template>
</xsl:stylesheet>

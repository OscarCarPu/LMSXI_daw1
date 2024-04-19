<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates select="root"/>
  </xsl:template>

  <xsl:template match="root">
    <xsl:text>id: </xsl:text>
    <xsl:value-of select="id"/>

    <xsl:text>&#xa;title; </xsl:text>
    <xsl:value-of select="title"/>

    <xsl:text>&#xa;fecha: </xsl:text>
    <xsl:value-of select="fecha"/>
  </xsl:template>
  

</xsl:stylesheet>
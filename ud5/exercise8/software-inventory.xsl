<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
  
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="/">
    <ul>
      <xsl:apply-templates select="inventory/product"/>
    </ul>
  </xsl:template>
  
  <xsl:template match="product">
    <li>
      <xsl:value-of select="name"/>
      <ul>
        <li><xsl:value-of select="name"/></li>
        <li><xsl:value-of select="weight"/> <xsl:value-of select="weight/@unit"/></li>
      </ul>
    </li>
  </xsl:template>
  
  
</xsl:stylesheet>
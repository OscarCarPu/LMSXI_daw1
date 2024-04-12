<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  
  <xsl:output method="text" indent="yes"/>
  
  <xsl:template match="/">
    Hello XSLT
    <xsl:value-of select="inventory/product[1]/name/text()"/>
  </xsl:template>
  
  
  
</xsl:stylesheet>
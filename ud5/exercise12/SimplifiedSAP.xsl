<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <h1>There are <xsl:value-of select="count(//record[date/year=1790 and city='Glasgow'])"/> number of records </h1>
    <xsl:apply-templates select="//record[date/year=1790 and city='Glasgow']"/>
  </xsl:template>
  <xsl:template match="record">
    <p style="color:red;">[<xsl:value-of select="id"/>]</p>
    <p><xsl:value-of select="city"/></p>
    <p><xsl:value-of select="text/p[1]"/></p>
    <hr/>
  </xsl:template>
  

</xsl:stylesheet>
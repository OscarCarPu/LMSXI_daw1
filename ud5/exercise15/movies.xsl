<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <heading>
        <title>Movies</title>
      </heading>
      <body>
        <h1>There are <xsl:value-of select="count(//Movie)"/> movies</h1>
        <ul>
          <xsl:apply-templates select="//Movie">
            <xsl:sort select="Year" order="ascending"/>
          </xsl:apply-templates>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Movie">
    <li><xsl:value-of select="Title"/> - <xsl:value-of select="Year"/></li>
  </xsl:template>
  

</xsl:stylesheet>
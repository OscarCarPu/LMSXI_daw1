<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/" >
    <html>
      <head>
        <title>Transformation</title>
      </head>
      <body>
        <p>My first html <xsl:value-of select="inventory/product[3]/name/text()"/></p>
      </body>
    </html>
  </xsl:template>
  

</xsl:stylesheet>
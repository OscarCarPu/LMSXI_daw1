<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
  
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <style>
          tr:nth-child(odd) {
          background:#90ff1e;
          }
          tr:nth-child(even) {
          background:#ff1e90;
          }
          .table-header{
          background:dodgerblue;
          color:white;
          }
        </style>
      </head>
      <body>
        <table border="2">
          <tr class="table-header">
            <th>Title</th>
            <th>Drector</th>
            <th>Year</th>
          </tr>
          <xsl:apply-templates select="//Movie[Year > 1999]">
            <xsl:sort select="Title" order="descending"/>              
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="//Movie">
    <tr>
      <td><xsl:value-of select="Title"/></td>
      <td><xsl:value-of select="Director/Name/First"/>&#160;<xsl:value-of select="Director/Name/Last"/></td>
      <td><xsl:value-of select="Year"/></td>
    </tr>
  </xsl:template>
  
  
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/" >
    <html>
      <head>
        <link href="style.css" rel="stylesheet"/>
      </head>
      <body>
        <header class="center"><h1>2024 Galician Events</h1></header>
        <div class="center">
        <table class="n-events">
          <tr>
            <th>Events in A Coruña</th>
            <th>Events in Lugo</th>
            <th>Events in Ourense</th>
            <th>Events in Pontevedra</th>
            <th>Total Events</th>
          </tr>

          <tr>
            <td class="coruna"><xsl:value-of select="count(//ine_code[starts-with(.,'15')])"/></td>
            <td class="lugo"><xsl:value-of select="count(//ine_code[starts-with(.,'27')])"/></td>
            <td class="ourense"><xsl:value-of select="count(//ine_code[starts-with(.,'32')])"/></td>
            <td class="pontevedra"><xsl:value-of select="count(//ine_code[starts-with(.,'36')])"/></td>
            <td><xsl:value-of select="count(//item)"/></td>
          </tr>
        </table>
        </div>
        <div class="flex">
          <xsl:apply-templates select="//item">
          <xsl:sort select="celebration_place/town/ine_code"/>
          </xsl:apply-templates>
        </div>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="//item">
    <div class="card">
      <div class="top">
        <h3><a><xsl:attribute name="href" select="url"/><xsl:value-of select="title"/></a></h3>
        <img >
          <xsl:attribute name="src" select="image/path"/>
        </img>
      </div>
        <div>
        <xsl:choose>
          <xsl:when test="celebration_place/town/ine_code[starts-with(.,'15')]">
            <xsl:attribute name="class" select="'coruna bottom'"/>
          </xsl:when>
          <xsl:when test="celebration_place/town/ine_code[starts-with(.,'27')]">
            <xsl:attribute name="class" select="'lugo bottom'"/>
          </xsl:when>
          <xsl:when test="celebration_place/town/ine_code[starts-with(.,'32')]">
            <xsl:attribute name="class" select="'ourense bottom'"/>
          </xsl:when>
          <xsl:when test="celebration_place/town/ine_code[starts-with(.,'36')]">
            <xsl:attribute name="class" select="'pontevedra bottom'"/>
          </xsl:when>
        </xsl:choose>
        <div><img class="icon" src="img/calendar.png"/> <xsl:value-of select="substring(date/start_date,0,10)"/></div>
        <div><img class="icon" src="img/clock.png"/> <xsl:value-of select="substring(date/start_date,12,8)"/></div>
        <div><img class="icon" src="img/location.png"/> <xsl:value-of select="celebration_place/name"/></div>
        <div><img class="icon" src="img/city.png"/> <xsl:value-of select="celebration_place/town/name"/></div>

      </div>
    </div>
  </xsl:template>
  
  
</xsl:stylesheet>
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:swc="http://www.neuroinformatics.nl" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html><head>
  <style>table {border-collapse:collapse} th,td {border:1px solid #888;padding:0.2ex 0.5ex}</style>
  </head>
  <body>
  <table><tr bgcolor="#dddddd">
    <th colspan="11" style="text-align: left">Version <xsl:value-of select="swc:ExtendedTypes/@version"/></th>
  </tr><tr bgcolor="#9acd32">
    <th>ID</th>
    <th>Geometry</th>
    <th>Name</th>
    <th>Key</th>
    <th>Parent</th>
    <th>Color</th>
    <th>Fill</th>
    <th>Comment</th>
    <th>Closed</th>
    <th>Symbol</th>
    <th>Src</th>
  </tr>
  <xsl:for-each select="swc:ExtendedTypes/swc:*">
  <tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="local-name()"/></td>        
    <td><xsl:value-of select="@name"/></td>
    <td><xsl:value-of select="@key"/></td>        
    <td><xsl:value-of select="@parent"/></td>        
    <td><xsl:value-of select="@color"/></td>
    <td><xsl:value-of select="@fill"/></td>
    <td><xsl:value-of select="text()"/></td>
    <td><xsl:value-of select="@closed"/></td>
    <td><xsl:value-of select="@symbol"/></td>
    <td><xsl:value-of select="@src"/></td>
  </tr>
  </xsl:for-each></table>
  </body></html>
</xsl:template>
</xsl:stylesheet>
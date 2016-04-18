<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:iana="http://www.iana.org/assignments" >
<xsl:template match="/">
  <html>
  <body>
  <h2 style="color: red; background-color: yellow; text-align:center">My PORT NUMBERS</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Number_of_port</th>
      <th>Name_of_service</th>
	  <th>Description</th>
    </tr>
    <xsl:for-each select="registry/record">
	<tr>
      <td><xsl:value-of select="number"/></td>
	  <td><xsl:value-of select="protocol"/></td>
	  <td style="text-align:center"><xsl:value-of select="description"/></td>
    </tr>
	</xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
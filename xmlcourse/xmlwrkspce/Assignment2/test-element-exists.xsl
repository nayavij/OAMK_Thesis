<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:iana="http://www.iana.org/assignments" >
<xsl:template match="/">
  <html>
  <body>
  <h2 style="color: red; font-size:35; background-color:#E6E6FA; text-align:center"> <xsl:value-of select="iana:registry/iana:title"/></h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="font-size: 20">Number_of_port</th>
      <th style="font-size: 20">Name_of_service</th>
	  <th style="font-size: 20">Description</th>
    </tr>
    <xsl:for-each select="iana:registry/iana:record">
	<tr>
		<!-- Test if Protocol number exists , If exists fetch the value otherwise Just write "NOT AVAILABLE"-->
		<xsl:choose>
			<xsl:when test="iana:number">
				<td style="text-align:center"><xsl:value-of select="iana:number"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td style="text-align:center; color: red"> NOT AVAILABLE</td>
			</xsl:otherwise>
		</xsl:choose>
		<!-- Test if Protocol Name exists , If exists fetch the value otherwise Just write "NA" -->
		<xsl:choose>
			<xsl:when test="iana:protocol">
				<td style="text-align:center"><xsl:value-of select="iana:protocol"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td style="text-align:center; color: red"> NA</td>
			</xsl:otherwise>
		</xsl:choose>
		<!-- Test if Description exists , If exists fetch the value otherwise Just write "DESCPTION NOT AVAILABLE"-->
        <xsl:choose>
			<xsl:when test="iana:description">
				<td style="text-align:center"><xsl:value-of select="iana:description"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td style="text-align:center; color: red"> DESCPTION NOT AVAILABLE</td>
			</xsl:otherwise>
		</xsl:choose>
	</tr>
	</xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
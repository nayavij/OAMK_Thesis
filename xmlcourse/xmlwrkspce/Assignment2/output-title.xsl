<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:iana="http://www.iana.org/assignments" >

<!-- Mostly use default templates -->

<!-- Output the title -->
<xsl:template match="/iana:registry/iana:title">
  <xsl:value-of select="."/>
</xsl:template>

<!-- Do nothing for the text nodes -->
<xsl:template match="text()"/>

</xsl:stylesheet>
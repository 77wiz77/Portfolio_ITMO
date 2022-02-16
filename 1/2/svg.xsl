<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/2000/svg">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:strip-space elements="*"/>

<xsl:template match="/">
  <svg version="1.0"> 
    <g transform="translate(0 500) scale(1 -1)">
      <xsl:apply-templates select="courses/course/section"/>
    </g>
  </svg>
</xsl:template>

<xsl:template match="section">
  <rect x="{40 * position()}" width="30" height="{enrollment}"/>
</xsl:template>

</xsl:stylesheet>
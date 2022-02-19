<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns="http://www.w3.org/2000/svg"
		>
  <xsl:output
      method="xml"
      indent="yes"
      standalone="no"
      doctype-public="-//W3C//DTD SVG 1.1//EN"
      doctype-system="http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"
      media-type="image/svg" />
  
  <xsl:template match="root">
    <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="1000" >
      <ellipse id="gr_1" fill="rgba(255,0,0,0.5)" stroke="white" stroke-width="5" cx="206" cy="139" rx="100" ry="100"/>
      <ellipse id="gr_2" fill="rgba(0,0,255,0.5)" stroke="white" stroke-width="5" cx="108" cy="111" rx="100" ry="100"/>
      <ellipse id="gr_3" fill="rgba(0,255,0,0.5)" stroke="white" stroke-width="5" cx="134" cy="215" rx="100" ry="100"/>
    </svg>
  </xsl:template>

</xsl:stylesheet> 

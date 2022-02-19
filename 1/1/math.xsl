<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>        
        <math xmlns="http://www.w3.org/2000/Math/MathML" version="1.0" display='block'>
          <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
          </xsl:copy>
        </math>
        <!-- Так как в хроме и мазиле MathML не поддерживается, нужен полифил -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.0/MathJax.js?config=MML_HTMLorMML"></script>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="строка">          
    <mrow><xsl:apply-templates select="@*|node()" /></mrow>
  </xsl:template>
  <xsl:template match="оператор">          
    <mo><xsl:apply-templates select="@*|node()" /></mo>
  </xsl:template>
  <xsl:template match="число">          
    <mn><xsl:apply-templates select="@*|node()" /></mn>
  </xsl:template>
  <xsl:template match="операнд">          
    <mi><xsl:apply-templates select="@*|node()" /></mi>
  </xsl:template>
  <xsl:template match="дробь">          
    <mfrac><xsl:apply-templates select="@*|node()" /></mfrac>
  </xsl:template>
  <xsl:template match="низ">          
    <msub><xsl:apply-templates select="@*|node()" /></msub>
  </xsl:template>
  <xsl:template match="низверх">          
    <msubsup><xsl:apply-templates select="@*|node()" /></msubsup>
  </xsl:template>
  <xsl:template match="верх">          
    <msup><xsl:apply-templates select="@*|node()" /></msup>
  </xsl:template>
  <xsl:template match="корень">          
    <msqrt><xsl:apply-templates select="@*|node()" /></msqrt>
  </xsl:template>

</xsl:stylesheet>

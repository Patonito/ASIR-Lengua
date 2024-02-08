<!--Obtener el titulo de los 2 discos con FOR-EACH-->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method='html' encoding="UTF-8">   
    <xsl:template match="/">
        <xsl:for-each select="catalog/cd">
            Titulo:<xsl:value-of select="title"/>            
        </xsl:for-each>
    </xsl:template> 
</xsl:stylesheet>






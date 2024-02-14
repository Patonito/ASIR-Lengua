<!--obtenemos el titulo y el artista desde plantillas externas a la principal-->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <xsl:for-each select="catalog/cd">
    Título: <xsl:value-of select="title"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>



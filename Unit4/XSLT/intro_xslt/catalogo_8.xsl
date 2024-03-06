<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8"/>
    <xsl:template match="/">
        <catalog>
            <xsl:apply-templates/>
        </catalog>
    </xsl:template>

    <xsl:template match="cd">
        <cd>
            <xsl:attribute name="price">
                <xsl:value-of select="price"/>
            </xsl:attribute>
            <title>
                <xsl:value-of select="title"/>
            </title>
            <artist>
                <xsl:value-of select="artist"/>
            </artist>
            <country>
                <xsl:value-of select="artist/@country"/>
            </country>
            <company>
                <xsl:value-of select="company"/>
            </company>
            <year>
                <xsl:value-of select="year"/>
            </year>
        </cd>
    </xsl:template>
</xsl:stylesheet>
<!-- Obtenemos un XML en el que el pais (country) sea también un elemento y no un atributo-->
<!-- y el precio sea un atributo de CD -->

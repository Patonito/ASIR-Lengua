<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <body>
                <h1>Informacion</h1>
                <p>Title: <span><xsl:value-of select="catalogo/cd/title"/></span></p>
                <p>Artist: <span><xsl:value-of select="catalogo/cd/artist"/></span></p>
                <p>Country: <span><xsl:value-of select="catalogo/cd/country"/></span></p>
                <p>Company: <span><xsl:value-of select="catalogo/cd/company"/></span></p>
                <p>Price: <span><xsl:value-of select="catalogo/cd/price"/></span></p>
                <p>Year:<span><xsl:value-of select="catalogo/cd/year"/></span></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
    
    
<!-- ?????????????????????????????????????????????????????????

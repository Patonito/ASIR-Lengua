<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method='html'/>
    <xsl:template match="/">
    <html lang="en">

        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Catalog 0</title>
        </head>

        <body>
            <h1>INFORMACIÓN</h1>
            <p>Título: <span><xsl:value-of select="catalog/cd/title"/></span>
            </p>
            <p>Artista: <span><xsl:value-of select="catalog/cd/artist"/></span> (<span><xsl:value-of select="catalog/cd/country"/></span>)
            </p>
            <p>Año: <span><xsl:value-of select="catalog/cd/year"/></span>
            </p>
            <p>Compañía: <span><xsl:value-of select="catalog/cd/company"/></span>
            </p>
        </body>

    </html>
    </xsl:template>
</xsl:stylesheet>

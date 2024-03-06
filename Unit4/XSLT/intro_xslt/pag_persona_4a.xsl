<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method='html' encoding="UTF-8"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Muestra básica de datos</title>
                <style type="text/css">
                h1 {
                    text-decoration: underline;
                }
                </style>
            </head>
            <body>
                <h1>
                    <xsl:apply-templates select="pag/titulo"/>
                </h1>

                <ol>
                    <xsl:apply-templates select="pag/persona"/>
                </ol>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pag/titulo">
        <xsl:value-of select="." />
    </xsl:template>
    <xsl:template match="pag/persona">
        <li>
            <xsl:value-of select="nombre" />
            <xsl:text></xsl:text>
            <xsl:value-of select="apellido" />
        </li>
    </xsl:template>
</xsl:stylesheet>

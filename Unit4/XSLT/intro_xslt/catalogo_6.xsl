<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                th {
                    background-color: lightgreen;
                    text-align: center;
                }
                </style>
            </head>
            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Country</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <xsl:if test="country='USA'">
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="artist"/></td>
                                <td><xsl:value-of select="country"/></td>
                                <td><xsl:value-of select="year"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<!-- Obtenemos una tabla con los datos titulo, artista, pais y año-->
<!--Vamos a filtrar los discos que sean de origen USA con la estructura xsl:if-->

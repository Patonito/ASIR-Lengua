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
                table, th, td {
                    border: 2px solid black;
                    border-collapse: collapse;
                }
                th {
                    color: white;
                    background-color: black;
                }
                td {
                    background-color: antiquewhite;
                }
                .rojo {
                    color: red;
                }
                .azul {
                    color: blue;
                }
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="pag/titulo"/>
                </h1>

                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <xsl:for-each select="pag/persona">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellido"/></td>
                        </tr>
                        <xsl:choose>
                            <xsl:when test="CONDICION">
                                <tr>
                                    <td class="rojo"><xsl:value-of select="nombre"/></td>
                                    <td class="rojo"><xsl:value-of select="apellido"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td class="azul"><xsl:value-of select="nombre"/></td>
                                    <td class="azul"><xsl:value-of select="apellido"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

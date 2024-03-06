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
                </style>
            </head>
            <body>
                <h1>
                    <xsl:apply-templates select="pag/titulo"/>
                </h1>

                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <xsl:apply-templates select="pag/persona"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pag/titulo">
        <xsl:value-of select="." />
    </xsl:template>
    <xsl:template match="pag/persona">
        <tr>
            <td><xsl:value-of select="nombre" /></td>
            <td><xsl:value-of select="apellido"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>

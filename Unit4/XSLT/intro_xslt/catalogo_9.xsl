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
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="artist"/></td>
                            <td><xsl:value-of select="artist/@country"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="year &gt;'1959' and year &lt;'1970'">
                                        60's
                                    </xsl:when>
                                    <xsl:when test="year &gt;'1969' and year &lt;'1980'">
                                        70's
                                    </xsl:when>
                                       <xsl:when test="year &gt;'1979' and year &lt;'1990'">
                                        80's
                                    </xsl:when>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
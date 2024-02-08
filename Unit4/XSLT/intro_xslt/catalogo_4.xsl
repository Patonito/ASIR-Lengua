<!--obtenemos el titulo y el artista desde plantillas externas a la principal-->
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:outout method='html' encoding="UTF-8">   
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

     <xsl:template match="cd">
        Titulo:<xsl:value-of select="title"/>   
    </xsl:template>

    <xsl:template match="cd/artist">  <!--!!!!!!!!!!!!-->
       Artista:<xsl:value-of select="nombre"/>
    </xsl:template> 
</xsl:stylesheet>

<!-- no se puede xq busca en la misma estructura/rama y se machaca xeso -->
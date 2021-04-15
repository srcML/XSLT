<!--
    replaceName.xsl

    Replace previous name with new name

    Requires input in srcML format: srcml.org
-->

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:src="http://www.srcML.org/srcML/src"
    xmlns:cpp="http://www.srcML.org/srcML/cpp"
    version="1.0">

<xsl:param name="prevname"/>
<xsl:param name="newname"/>

<!-- Replace any $prevname with $newname -->
<xsl:template match="src:name/text()">

    <xsl:choose>
        <xsl:when test=".=$prevname"><xsl:value-of select="$newname"/></xsl:when>
        <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
    </xsl:choose>
        
</xsl:template>

<!-- Identity copy -->
<xsl:template match="@*|node()"><xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy></xsl:template>

</xsl:stylesheet>

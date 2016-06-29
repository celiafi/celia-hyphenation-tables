<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:pef="http://www.daisy.org/ns/2008/pef"
                xmlns="http://www.daisy.org/ns/2008/pef"
                xpath-default-namespace="http://www.daisy.org/ns/2008/pef"
                exclude-result-prefixes="#all"
                version="2.0">

        <xsl:output indent="yes"/>

        <xsl:param name="duplex" select="'true'"/>

        <!-- Generic copy-all template -->
        <xsl:template match="@*|node()">
                <xsl:copy>
                        <xsl:apply-templates select="@*|node()"/>
                </xsl:copy>
        </xsl:template>

        <!-- First insert explicit empty pages at the end of sections for simpler counting -->
        <xsl:template match="volume/section/page[last()]">
          <xsl:copy-of select="."/>
            <xsl:if test="$duplex = 'true'">
              <xsl:if test="(count(../page) mod 2) = 1">
                <page/>
              </xsl:if>
            </xsl:if>
        </xsl:template>

</xsl:stylesheet>

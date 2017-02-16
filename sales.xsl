<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/sales">
        <html>
            <body>
                <xsl:for-each select="summary">
                        <h1><xsl:value-of select="heading" /></h1>
                        <h2><xsl:value-of select="subhead" /></h2>
                        <h3><xsl:value-of select="description" /></h3>
                </xsl:for-each>
                <table border = "1">
                    <xsl:for-each select="/data/region">
                        <tr>
                            <th>Region/Quarter</th>
                            <xsl:for-each select="quarter">
                                <th>Q<xsl:value-of select="@number"/></th>
                            </xsl:for-each>
                        </tr>
                        <tr>
                            <th style="text-align:left"><xsl:value-of select="name"/></th>
                            <xsl:for-each select="quarter">
                                <td align="right">
                                    <xsl:value-of select="@books_sold"/>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
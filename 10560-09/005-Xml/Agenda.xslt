<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:template match="/">

        <h2 style="text-align:center">:: AGENDA ::</h2>
        <table border="1" align="center">
            <tr bgcolor="#9acd32">
                <th>Nome</th>
                <th>E-mail</th>
            </tr>
            <xsl:for-each select="agenda/pessoa">
                <tr>
                    <td>
                        <xsl:value-of select="nome"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

</xsl:stylesheet>

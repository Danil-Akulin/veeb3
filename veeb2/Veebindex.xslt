<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="@* | node()">
					<strong>1.</strong>
		<ul>
			<xsl.for-each select="//inimene">
				<xsl.sort select="@synd"/>
				<li>
					<xsl.value-of select="concat(nimi, @synd)"></xsl.value-of>
				</li>

			</xsl.for-each>
		</ul>


		<strong>2.</strong>
		<xsl.for-each select="//inimene[lapsed]">
			<li>
				<xsl.if test="count(lapsed/inimene)Agt;=2">
					<xsl.value-of select="concat(nimi, @synd)"></xsl.value-of>
				</xsl.if>
			</li>
		</xsl.for-each>
		
		
		<strong>3.</strong>

		<table>
			<tr>
				<th>Nimi</th>
				<th>Vanem</th>
				<th>Synniaasta</th>
			</tr>
			<xsl.for-each select ="//inimene">
				<tr>
					<td>
						<xsl.value-of select="nimi"/>
					</td>
					<td>
						<xsl.value-of select="../../nimi"/>
					</td>
					<td>
						<xsl.value-of select="@synd"/>
					</td>
				</tr>
			</xsl.for-each>
		</table>
		

	</xsl:template>
</xsl:stylesheet>

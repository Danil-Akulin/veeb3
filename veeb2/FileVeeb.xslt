<?xml version="1.0"?>
<xsl:stylesheet version="1.0"></xsl:stylesheet>
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<html>
		<body>
	<strong>Elizabeth lapsed</strong>

<ul>
	<set.for-each select="//inimene">
		<ssl.sort select="@synd"/>
		<li>
			<ssl.value-of select=""></ssl.value-of>
		</li>

	</set.for-each>
</ul>
		</body>
	</html>
<?xml version="1.0" encoding="UTF-8"?>

<!--
	Greg Seda
	CIS444 Homework 7
	carsEx5.xsl
	URL: http://cis444.cs.csusm.edu/seda004/hw7/carsEx5.xsl
-->
<xsl:stylesheet version= "1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns ="http://www.w3.org/1999/xhtml">
				
	<xsl:template match="/">
		<html><head><title> Exercise 5 Style Sheet </title> </head>
			<body style="text-align:center">
				<h2 style="text-align:center; font-size: 24pt; font-style:bold">
					Car Catalog
				</h2>
				
				<table border="2" align="center" text-align="center">
					<tr>
						<th style="text-align:center"> Make </th>
						<th style="text-align:center"> Model </th>
						<th style="text-align:center"> Year </th>
						<th style="text-align:center"> Color </th>
						<th style="text-align:center"> Engine </th>
						<th style="text-align:center"> Doors </th>
						<th style="text-align:center"> Transmission </th>
						<th style="text-align:center"> Accessories </th>
					</tr>
				<xsl:for-each select="catalog/car">
					<tr>
						<td>
							<xsl:value-of select="make"/>
						</td>
						<td>
							<xsl:value-of select="model"/>
						</td>
						<td>
							<xsl:value-of select="year"/>
						</td>
						<td>
							<xsl:value-of select="color"/>
						</td>
						<td>
							<xsl:value-of select="engine"/>
						</td>
						<td>
							<xsl:value-of select="number_of_doors"/>
						</td>
						<td>
							<xsl:value-of select="transmission_type"/>
						</td>
						<td>
							<xsl:value-of select="accessories"/>
						</td>
					</tr>
				</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
	
</xsl:stylesheet>
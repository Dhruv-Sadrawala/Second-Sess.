<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="client_de">
		<html>
			<body>
				<h1>Table 1 with all details and 3 CSS effects.</h1>
				<table border="2" style="background-color:blue;color:yellow;text-decoration:underline">
					<tr>
						<th>Client. Id</th>
						<th>Client Name</th>
						<th>Emp. ID</th>
						<th>Emp. Name</th>
						<th>Designation</th>
						<th>Ratings</th>
						<th>Salary</th>
					</tr>
					<xsl:for-each select="client">
						<tr>
							<td><xsl:value-of select="c_id"></xsl:value-of></td>
							<td><xsl:value-of select="c_name"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/emp_id"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/name"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/desig"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/ratings"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/salary"></xsl:value-of></td>
						</tr>
					</xsl:for-each>
				</table>
				
				<h1>Table 2 With all conditions and remarks column.</h1>
				<table border="2">
					<tr>
						<th>Client. Id</th>
						<th>Client Name</th>
						<th>Emp. ID</th>
						<th>Emp. Name</th>
						<th>Designation</th>
						<th>Ratings</th>
						<th>Salary</th>
						<th>Remarks</th>
					</tr>
					<xsl:for-each select="client">
						<tr>
							<td><xsl:value-of select="c_id"></xsl:value-of></td>
							<td><xsl:value-of select="c_name"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/emp_id"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/name"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/desig"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/ratings"></xsl:value-of></td>
							<td><xsl:value-of select="emp_details/salary"></xsl:value-of></td>
							<td><xsl:choose>
								<xsl:when test="emp_details/desig='Project Head' and emp_details/ratings='5'">Excellent</xsl:when>
								<xsl:when test="emp_details/desig='Manager' and emp_details/ratings='4'">Good</xsl:when>
								<xsl:when test="emp_details/desig='HR' and emp_details/ratings='3'">Better</xsl:when>
							</xsl:choose></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
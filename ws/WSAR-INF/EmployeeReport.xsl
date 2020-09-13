<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:wd="urn:com.workday.report/WICT_Active_Employee_Details">
    
    <xsl:output method="xml"/>

    
    <xsl:template match="/">
    <Summary>
	   <xsl:for-each select="/wd:Report_Data/wd:Report_Entry">
        <Worker>
            <EMPLID><xsl:value-of select="wd:Employee_ID"/></EMPLID>
            <HIREDT><xsl:value-of select="wd:Hire_Date"/></HIREDT>
            <!-- substring the SSN -->
            <SSN><xsl:value-of select="substring(wd:Social_Security_Number,6,4)"/></SSN>
            <LAST><xsl:value-of select="wd:Last_Name"/></LAST>
            <FIRST><xsl:value-of select="wd:First_Name"/></FIRST>
            <POSITION><xsl:value-of select="wd:Position/@wd:Descriptor"/></POSITION>
            <SUPERVISORYORG><xsl:value-of select="wd:Supervisory_Organization/@wd:Descriptor"/></SUPERVISORYORG>
        </Worker>
       </xsl:for-each>
     </Summary>  
    </xsl:template>
    
</xsl:stylesheet>
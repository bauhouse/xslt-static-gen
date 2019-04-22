<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/" mode="head">
  <head>
    <meta name="description" content="{$website-name}" />
    <meta name="author" content="{$website-name}" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <xsl:apply-templates mode="page-title" />
    <xsl:apply-templates mode="css" />
  </head>
</xsl:template>

<xsl:template match="data" mode="page-title">
  <title>
    <xsl:value-of select="$page-title" />
    <xsl:text> | </xsl:text>
    <xsl:value-of select="$website-name"/>
  </title>
</xsl:template>

<xsl:template match="data" mode="css">
	<link rel="stylesheet" href="{$css}style.css" />
	<link rel="stylesheet" href="{$css}media.css" />
	<link rel="stylesheet" href="{$css}forms.css" />
</xsl:template>

</xsl:stylesheet>

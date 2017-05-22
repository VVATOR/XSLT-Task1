<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:wkdoc="http://www.wkpublisher.com/xml-namespaces/document">
    <xsl:template match="/event">
        <html lang="en">
        <head>
            <meta charset="UTF-8" />
            <title>
                <xsl:value-of select="concat('Event ', string(@id))" />
            </title>
            <link rel="stylesheet" href="style.css" />
        </head>
        <body>
            <xsl:apply-templates/>
            <xsl:call-template name="title-footer" />
        </body>
        </html>
    </xsl:template>

    <xsl:template match="heading">
        <xsl:choose>
            <xsl:when test="@type='title-footer'">
            </xsl:when>
            <xsl:otherwise>
                <h1>
                    <xsl:apply-templates/>
                </h1>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="title-footer">
        <h1>
            <xsl:value-of select="heading[contains(@type,'title-footer')]" />
        </h1>
    </xsl:template>

    <xsl:template match="para">
        <xsl:choose>
            <xsl:when test="contains(@type,'unordered-list')">
                <ul>
                    <xsl:apply-templates/>
                </ul>
            </xsl:when>
            <xsl:when test="contains(@type,'ordered-list')">
                <ol>
                    <xsl:apply-templates/>
                </ol>
            </xsl:when>

            <xsl:otherwise>
                <p class="{string(@type)}">
                    <xsl:apply-templates />
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="//list-item">
        <li>
            <xsl:apply-templates />
        </li>
    </xsl:template>

    <xsl:template match="//image">
        <div class="image">
            <img src="{string(@source)}" alt="{string(@description)}" />
            <p class="img-description center">
                <xsl:value-of select="@description" />
            </p>
        </div>
    </xsl:template>

    <xsl:template match="//table">
        <table>
            <tbody>
                <xsl:apply-templates />
            </tbody>
        </table>
    </xsl:template>

    <xsl:template match="table-heading">
        <tr>
            <th colspan="2">
                <xsl:value-of select="." />
            </th>
        </tr>
    </xsl:template>

    <xsl:template match="//table-row">
        <tr>
            <xsl:apply-templates />
        </tr>
    </xsl:template>

    <xsl:template match="//table-cell">
        <td class="{string(@style)}">
            <xsl:apply-templates />
        </td>
    </xsl:template>

    <xsl:template match="//external-link">
        <a href="{string(@source)}">
            <xsl:value-of select="@source" />
        </a>
    </xsl:template>

    <xsl:template match="//date">
        <label> 
            <xsl:value-of select="string('Date ')" />                 
        </label>
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="//qa-block">
        <div class="qa-block">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="//question">
        <div class="question">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="//answer">
        <div class="answer">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="//doc-level">
        <div class="doc-level {string(@position)} {string(@type)}">
            <xsl:choose>
                <xsl:when test=".[h1 and h2 and subheading]">
                    <h1 class="inline">
                        <xsl:value-of select="h1" />
                    </h1>
                    <p class="inline subheading">
                        <xsl:value-of select="subheading" />
                    </p>
                    <br/>
                    <h2>
                        <xsl:value-of select="h2" />
                    </h2>
                </xsl:when>
                <xsl:when test=".[para[@type='num'][num] and h1]">
                    <h1 class="inline">
                        <xsl:value-of select="h1" />
                        <xsl:value-of select="para" />
                    </h1>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates/>
                </xsl:otherwise>
            </xsl:choose>
        </div>
    </xsl:template>
</xsl:stylesheet>
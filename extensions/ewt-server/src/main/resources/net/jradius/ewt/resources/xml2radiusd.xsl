<?xml version="1.0" encoding="UTF-8"?>
<!--"	* JRadius.EWT Embedded Web Toolkit for JRadius/FreeRADIUS
		* Copyright (C) 2008 David Bird <david@coova.com>
		* 
		* This program is free software; you can redistribute it and/or modify it
		* under the terms of the GNU General Public License as published by the
		* Free Software Foundation; either version 2 of the License, or (at your
		* option) any later version.
		*
		* This program is distributed in the hope that it will be useful, but
		* WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
		* or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License 
		* for more details.
		* 
		* You should have received a copy of the GNU General Public License along
		* with this program; if not, write to the Free Software Foundation, Inc.,
		* 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA 
" -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:strip-space elements="*"/>
<xsl:output method="text" encoding="UTF-8"/>

<xsl:template name="option">
  <xsl:param name="name"></xsl:param>
  <xsl:param name="value"></xsl:param>
  <xsl:if test="$value!=''">
    <xsl:value-of select="$name"/>
    <xsl:text> = "</xsl:text>
    <xsl:value-of select="$value"/>
    <xsl:text>"</xsl:text>
<xsl:text>
</xsl:text>
  </xsl:if>
</xsl:template>

<xsl:template name="optbool">
  <xsl:param name="name"></xsl:param>
  <xsl:param name="value"></xsl:param>
  <xsl:if test="$value!=''">
    <xsl:value-of select="$name"/>
    <xsl:text> = </xsl:text>
    <xsl:value-of select="$value"/>
    <xsl:text></xsl:text>
<xsl:text>
</xsl:text>
  </xsl:if>
</xsl:template>

<xsl:template name="optint">
  <xsl:param name="name"></xsl:param>
  <xsl:param name="value"></xsl:param>
  <xsl:if test="$value!=''">
    <xsl:value-of select="$name"/>
    <xsl:text> = </xsl:text>
    <xsl:value-of select="$value"/>
    <xsl:text></xsl:text>
<xsl:text>
</xsl:text>
  </xsl:if>
</xsl:template>

<xsl:template match="sysconfig">
<xsl:text># This file is automatically generated from XML
</xsl:text>
<xsl:apply-templates/>
</xsl:template>

<xsl:template match="radiusd">

<xsl:call-template name="option">
  <xsl:with-param name="name">prefix</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@prefix"/></xsl:with-param>
</xsl:call-template>

<xsl:text>exec_prefix = ${prefix}
sysconfdir = ${prefix}/etc
sbindir = ${exec_prefix}/sbin
raddbdir = ${sysconfdir}/raddb
db_dir = $(raddbdir)
confdir = ${raddbdir}
run_dir = ${localstatedir}/run/radiusd
</xsl:text>

<xsl:call-template name="option">
  <xsl:with-param name="name">localstatedir</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@localstatedir"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">logdir</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@logdir"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">libdir</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@libdir"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">radacctdir</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@radacctdir"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optint">
  <xsl:with-param name="name">max_request_time</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@max_request_time"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optint">
  <xsl:with-param name="name">cleanup_delay</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@cleanup_delay"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optint">
  <xsl:with-param name="name">max_requests</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@max_requests"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">delete_blocked_requests</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@delete_blocked_requests"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">user</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@user"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">group</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@group"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">checkrad</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@checkrad"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optint">
  <xsl:with-param name="name">debug_level</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@debug_level"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="option">
  <xsl:with-param name="name">pidfile</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@pidfile"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optbool">
  <xsl:with-param name="name">proxy_requests</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@proxy_requests"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optbool">
  <xsl:with-param name="name">hostname_lookups</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@hostname_lookups"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optbool">
  <xsl:with-param name="name">allow_core_dumps</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/@allow_core_dumps"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optint">
  <xsl:with-param name="name">max_attributes</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/security/@max_attributes"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optint">
  <xsl:with-param name="name">reject_delay</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/security/@reject_delay"/></xsl:with-param>
</xsl:call-template>

<xsl:call-template name="optbool">
  <xsl:with-param name="name">status_server</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="server/security/@status_server"/></xsl:with-param>
</xsl:call-template>

<xsl:apply-templates/>

</xsl:template>


<xsl:template match="security">
<xsl:text>security {
</xsl:text>

<xsl:call-template name="optint">
  <xsl:with-param name="name">max_attributes</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@max_attributes"/></xsl:with-param>
</xsl:call-template>
<xsl:call-template name="optint">
  <xsl:with-param name="name">reject_delay</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@reject_delay"/></xsl:with-param>
</xsl:call-template>
<xsl:call-template name="optbool">
  <xsl:with-param name="name">status_server</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@status_server"/></xsl:with-param>
</xsl:call-template>

<xsl:text>}
</xsl:text>
</xsl:template>

<xsl:template match="listen">
<xsl:text>listen {
</xsl:text>

<xsl:call-template name="option">
  <xsl:with-param name="name">ip</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@ip"/></xsl:with-param>
</xsl:call-template>

<xsl:text>}
</xsl:text>
</xsl:template>

<xsl:template match="thread">
<xsl:text>thread pool {
</xsl:text>

<xsl:call-template name="optint">
  <xsl:with-param name="name">start_servers</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@start_servers"/></xsl:with-param>
</xsl:call-template>
<xsl:call-template name="optint">
  <xsl:with-param name="name">max_servers</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@max_servers"/></xsl:with-param>
</xsl:call-template>
<xsl:call-template name="optint">
  <xsl:with-param name="name">min_spare_servers</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@min_spare_servers"/></xsl:with-param>
</xsl:call-template>
<xsl:call-template name="optint">
  <xsl:with-param name="name">max_spare_servers</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@max_spare_servers"/></xsl:with-param>
</xsl:call-template>
<xsl:call-template name="optint">
  <xsl:with-param name="name">max_requests_per_server</xsl:with-param>
  <xsl:with-param name="value"><xsl:value-of select="@max_requests_per_server"/></xsl:with-param>
</xsl:call-template>

<xsl:text>}
</xsl:text>
</xsl:template>

</xsl:stylesheet>
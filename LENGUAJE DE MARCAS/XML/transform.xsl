<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Reporte OlimPoh</title>
    <link rel="stylesheet" type="text/css" href="../css/estilo.css"/>
</head>

<body>

<h1>Centro de Alto Rendimiento OlimPoh</h1>
<h2>Reporte de Reservas</h2>

<p>Fecha de generación: <xsl:value-of select="reservas/@fecha"/></p>

<!-- Navegación -->
<nav>
    <a href="#clientes">Clientes</a> |
    <a href="#clases">Clases</a> |
    <a href="#reservas">Reservas</a>
</nav>

<hr/>

<!-- CLIENTES -->
<h2 id="clientes">Clientes</h2>
<table border="1">
<tr>
    <th>ID</th>
    <th>Nombre</th>
    <th>Email</th>
</tr>

<xsl:for-each select="reservas/clientes/cliente">
<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="nombre"/></td>
    <td><xsl:value-of select="email"/></td>
</tr>
</xsl:for-each>

</table>

<!-- CLASES -->
<h2 id="clases">Clases</h2>
<table border="1">
<tr>
    <th>ID</th>
    <th>Nombre</th>
    <th>Horario</th>
</tr>

<xsl:for-each select="reservas/clases/clase">
<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="nombre"/></td>
    <td><xsl:value-of select="horario"/></td>
</tr>
</xsl:for-each>

</table>

<!-- RESERVAS ACTIVAS -->
<h2 id="reservas">Reservas Activas</h2>
<table border="1">
<tr>
    <th>ID</th>
    <th>Cliente</th>
    <th>Clase</th>
    <th>Estado</th>
</tr>

<xsl:for-each select="reservas/reservas_lista/reserva[@estado='activa']">
<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="@cliente"/></td>
    <td><xsl:value-of select="@clase"/></td>
    <td><xsl:value-of select="@estado"/></td>
</tr>
</xsl:for-each>

</table>

<!-- RESERVAS CANCELADAS -->
<h2>Reservas Canceladas</h2>
<table border="1">
<tr>
    <th>ID</th>
    <th>Cliente</th>
    <th>Clase</th>
    <th>Estado</th>
</tr>

<xsl:for-each select="reservas/reservas_lista/reserva[@estado='cancelada']">
<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="@cliente"/></td>
    <td><xsl:value-of select="@clase"/></td>
    <td><xsl:value-of select="@estado"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Information</title>

        <style>
          body {
            background-image: url('bg.jpg');
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
          }
          h2 {
            color: #fff; 
            background-color: purple; 
            padding: 20px;
            text-align: center;
          }
          table {
            background-color: #fff
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 20px rgba(0, 0, 0, 1); 
          }
          th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
          }
          th {
            background-color: orange; 
            color: #fff;
          }
        </style>

      </head>
      <body>
        <h2>Employee Information</h2>
        <table style = "background-color: white;">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Position</th>
            <th>Department</th>
            <th>Salary</th>
          </tr>
          <xsl:for-each select="employees/employee">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="position"/></td>
              <td><xsl:value-of select="department"/></td>
              <td><xsl:value-of select="salary"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

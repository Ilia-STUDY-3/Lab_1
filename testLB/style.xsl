<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Список товаров</title>
                <style>
                    body { font-family: Arial, sans-serif; background: #f4f4f4; }
                    h2 { color: #333; text-align: center; }
                    table { width: 50%; margin: auto; border-collapse: collapse; background: white; }
                    th, td { border: 1px solid #ddd; padding: 10px; text-align: center; }
                    th { background: #555; color: white; }
                </style>
            </head>
            <body>
                <h2>Список товаров</h2>
                <table>
                    <tr>
                        <th>Название</th>
                        <th>Цена</th>
                    </tr>
                    <xsl:for-each select="items/item">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/> ₽</td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

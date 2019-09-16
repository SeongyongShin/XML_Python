<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                    .print_area {
                    text-align:center;
                    width:750px;
                    position:relative;
                    height:;
                    padding:0 0 5px 0;
                    }
                    p.top_margin_tmp {padding:10px 0px 0px 0px;}
                    table.pop_type_scr {width:750px; height:; }
                    table.pop_type_scr td.box_border {border:solid 3px #000000; }
                    table.pop_type_scr td.bg_color1 {text-align:center;padding:9px 0 9px 0; }
                    table.table_input {}
                    table.table_input td {border-color:#000000;}
                    table.table_input td {height:30px; padding:6px 0 5px 0;}
                    table.table_input td.sub {color:#000000;  background:#f4f4f4; }
                    table.table_input td.data {color:#000000; padding:6px 2px 5px 5px;}
                </style>
                <title>OmniDoc PreView</title>
            </head>
            <body>
                <div class="print_area">
                    <p class="top_margin_tmp" />
                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table cellpadding="0" cellspacing="0" width="100%" border="0" style="margin:6px 0;">
                                    <tr>
                                        <td align="center">
                                            BIDV
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="10">
                                        <td />
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="20%"/>
                                    <col width="40%"/>
                                    <col width="20%"/>
                                    <col width="20%"/>
                                    <tr>
                                        <td class="sub">이름</td>
                                        <td class="data"><xsl:value-of select="root/user/name"/></td>
                                        <td class="sub">ID</td>
                                        <td class="data"><xsl:value-of select="root/user/id"/></td>
                                    </tr>

                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="10">
                                        <td />
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="20%"/>
                                    <col width="40%"/>
                                    <col width="20%"/>
                                    <col width="20%"/>
                                    <tr>
                                        <td class="sub">accno</td>
                                        <td class="data"><xsl:value-of select="root/acc/accno"/></td>
                                        <td class="sub">balance</td>
                                        <td class="data"><xsl:value-of select="root/acc/balance"/></td>
                                    </tr>

                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="10">
                                        <td />
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="25%" />
                                    <col width="15%" />
                                    <col width="15%" />
                                    <col width="15%" />
                                    <col width="30%" />
                                    <tr>
                                        <td class="sub">time</td>
                                        <td class="sub">balance</td>
                                        <td class="sub">debit</td>
                                        <td class="sub">credit</td>
                                        <td class="sub">remark</td>
                                    </tr>

                                    <xsl:for-each select="root/acc/list/item">
                                        <tr>
                                            <td class="data"><xsl:value-of select="time"/></td>
                                            <td class="data"><xsl:value-of select="balance"/></td>
                                            <td class="data"><xsl:value-of select="debit"/></td>
                                            <td class="data"><xsl:value-of select="credit"/></td>
                                            <td class="data"><xsl:value-of select="remark"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>

                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
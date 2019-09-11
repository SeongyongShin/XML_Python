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

                    <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                        <tr>
                            <td style="padding-bottom:6px;" valign="bottom">
                                <xsl:text>문서확인번호 : </xsl:text>
                                <xsl:value-of select="Certificate/SerialNo"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="Certificate/DateofIssue"/>
                            </td>
                        </tr>
                    </table>

                    <tr>
                        <td style="border:solid 0px;">
                            <table width="100%">
                                <tr height="20">
                                    <td />
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table cellpadding="0" cellspacing="0" width="100%" border="0" style="margin:5px 0;">
                                    <tr>
                                        <td align="center">
                                            외국인국내거소사실증명
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
                                    <col width="10%" align="center" />
                                    <col width="22%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="22%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="26%" align="center" />

                                    <tr>
                                        <td class="sub">ReportNo</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/ReportNo"/>
                                        </td>
                                        <td class="sub">DateofReport</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/DateofReport"/>
                                        </td>
                                        <td class="sub">성명</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/EngName"/>
                                            <br></br>
                                            <xsl:value-of select="Certificate/KorName"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">성별</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/Sex"/>
                                        </td>
                                        <td class="sub">DateofBirth</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/DateofBirth"/>
                                        </td>
                                        <td class="sub">Nationality</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/Nationality"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">PeriodofSojourn</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/PeriodofSojourn"/>
                                        </td>
                                        <td class="sub">ExpiredRRN</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/ExpiredRRN"/>
                                        </td>
                                        <td class="sub">ExpiredARN</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/ExpiredARN/ARN"/>
                                            <br></br>
                                            <xsl:value-of select="Certificate/ExpiredARN/Number"/>
                                            <br></br>
                                            <xsl:value-of select="Certificate/ExpiredARN/Date"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">AlterationofResidence</td>
                                        <td class="data"></td>
                                        <td class="sub">Date</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/AlterationofResidence/Date"/>
                                        </td>
                                        <td class="sub">Address</td>
                                        <td class="data">
                                            <xsl:value-of select="Certificate/AlterationofResidence/Address"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                    </table>

                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

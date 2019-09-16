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
                    <p class="top_margin_tmp"/>
                    <tr>
                        <td style="border:solid 0px;">
                            <table width="100%">
                                <tr height="20">
                                    <td />
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                        <tr>
                            <td style="padding-bottom:6px;" valign="bottom">
                                문서 발급 번호 : <xsl:value-of select="docuInfo/issNum"/>
                            </td>
                        </tr>
                    </table>
                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table cellpadding="0" cellspacing="0" width="100%" border="0" style="margin:6px 0;">
                                    <tr>
                                        <td align="center">
                                            혼인증명서
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
                                    <col width="80%"/>

                                    <tr>
                                        <td class="sub">등록기준지</td>
                                        <td class="data"><xsl:value-of select="docuInfo/target/cntr"/></td>
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

                                    <col width="10%" />
                                    <col width="20%" />
                                    <col width="25%" />
                                    <col width="25%" />
                                    <col width="10%" />
                                    <col width="10%" />

                                    <tr>
                                        <td class="sub">구분</td>
                                        <td class="sub">성명</td>
                                        <td class="sub">출생연월일</td>
                                        <td class="sub">주민등록번호</td>
                                        <td class="sub">성별</td>
                                        <td class="sub">본</td>
                                    </tr>

                                    <tr>
                                        <td class="data">본인</td>
                                        <td class="data"><xsl:value-of select="docuInfo/target/name"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/target/birth"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/target/rrn"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/target/gen"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/target/bon"/></td>
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
                            <td>
                                혼인사항
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">

                                    <col width="10%" />
                                    <col width="20%" />
                                    <col width="25%" />
                                    <col width="25%" />
                                    <col width="10%" />
                                    <col width="10%" />

                                    <tr>
                                        <td class="sub">구분</td>
                                        <td class="sub">성명</td>
                                        <td class="sub">출생연월일</td>
                                        <td class="sub">주민등록번호</td>
                                        <td class="sub">성별</td>
                                        <td class="sub">본</td>
                                    </tr>

                                    <tr>
                                        <td class="data"><xsl:value-of select="docuInfo/marriage/*/*/rel"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/marriage/*/*/name"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/marriage/*/*/born_date"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/marriage/*/*/rrn"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/marriage/*/*/gen"/></td>
                                        <td class="data"><xsl:value-of select="docuInfo/marriage/*/*/bon"/></td>
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
                                    <col width="20%" />
                                    <col width="80%" />
                                    <tr>
                                        <td class="sub" align="center">구분</td>
                                        <td class="sub" align="center">상세내역</td>
                                    </tr>
                                    <xsl:for-each select="docuInfo/marriage/b002">
                                        <tr>
                                            <td class="sub" align="center"><xsl:value-of select="gubun"/></td>
                                            <td class="data"><b><xsl:text>[</xsl:text><xsl:value-of select="*/title"/><xsl:text>] </xsl:text></b><xsl:value-of select="*/content"/></td>
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
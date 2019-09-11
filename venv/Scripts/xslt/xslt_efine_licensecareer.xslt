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

                    <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                        <tr>
                            <td style="padding-bottom:6px;" valign="bottom">
                                발급번호 : <xsl:value-of select="careerRoot/basicInfo/docuNo"/>
                            </td>
                        </tr>
                    </table>

                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table cellpadding="0" cellspacing="0" width="100%" border="0" style="margin:6px 0;">
                                    <tr>
                                        <td align="center">
                                            운전경력증명서
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
                                    <col width="13%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="27%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="21%" align="center" />

                                    <tr>
                                        <td class="sub">이름</td>
                                        <td class="data"><xsl:value-of select="careerRoot/basicInfo/name"/></td>
                                        <td class="sub">주소</td>
                                        <td class="data"><xsl:value-of select="careerRoot/basicInfo/addr"/></td>
                                        <td class="sub">면허번호</td>
                                        <td class="data"><xsl:value-of select="careerRoot/basicInfo/licenseNo"/></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="10">
                                        <td>면허 정보</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="40%" align="center" />
                                    <col width="30%" align="center" />
                                    <col width="30%" align="center" />
                                    <tr>
                                        <td class="sub">종류</td>
                                        <td class="sub">발급상태</td>
                                        <td class="sub">일자</td>
                                    </tr>
                                    <xsl:for-each select="careerRoot/licenseInfo/item">
                                        <tr>
                                            <td class="data"><xsl:value-of select="type"/></td>
                                            <td class="data"><xsl:value-of select="event"/></td>
                                            <td class="data"><xsl:value-of select="date"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="10">
                                        <td>교통 사고</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="20%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="10%" align="center" />
                                    <tr>
                                        <td class="sub">일자</td>
                                        <td class="sub">관할경찰서</td>
                                        <td class="sub">종류</td>
                                        <td class="sub">사망</td>
                                        <td class="sub">중상</td>
                                        <td class="sub">경상</td>
                                        <td class="sub">부상</td>
                                    </tr>
                                    <xsl:for-each select="careerRoot/accidentInfo/item">
                                        <tr>
                                            <td class="data"><xsl:value-of select="date"/></td>
                                            <td class="data"><xsl:value-of select="office"/></td>
                                            <td class="data"><xsl:value-of select="type"/></td>
                                            <td class="data"><xsl:value-of select="death"/></td>
                                            <td class="data"><xsl:value-of select="severe"/></td>
                                            <td class="data"><xsl:value-of select="slight"/></td>
                                            <td class="data"><xsl:value-of select="damage"/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="10">
                                        <td>법규 위반</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="15%" align="center" />
                                    <col width="15%" align="center" />
                                    <col width="14%" align="center" />
                                    <col width="28%" align="center" />
                                    <col width="28%" align="center" />
                                    <tr>
                                        <td class="sub">일자</td>
                                        <td class="sub">관할경찰서</td>
                                        <td class="sub">벌점</td>
                                        <td class="sub">설명</td>
                                        <td class="sub">위반내용(법조항)</td>
                                    </tr>
                                    <xsl:for-each select="careerRoot/violationInfo/item">
                                        <tr>
                                            <td class="data"><xsl:value-of select="date"/></td>
                                            <td class="data"><xsl:value-of select="office"/></td>
                                            <td class="data"><xsl:value-of select="penaltyPoint"/></td>
                                            <td class="data"><xsl:value-of select="desc"/></td>
                                            <td class="data"><xsl:value-of select="law"/></td>
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
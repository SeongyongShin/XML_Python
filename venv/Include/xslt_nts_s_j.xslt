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
                                발급번호 : <xsl:value-of select="root/cerpBscInfrDVO/cerCvaIsnNo"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                rcatNo : <xsl:value-of select="root/cerpBscInfrDVO/rcatNo"/>
                                <br />
                                cvaId : <xsl:value-of select="root/cerpBscInfrDVO/cvaId"/>
                            </td>
                        </tr>
                    </table>
                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table cellpadding="0" cellspacing="0" width="100%" border="0" style="margin:5px 0;">
                                    <tr>
                                        <td align="center">
                                            <xsl:value-of select="root/cerpBscInfrDVO/cvaKndNm"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 0px;">
                                <table width="100%">
                                    <tr height="20">
                                        <td />
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                                    <col width="13%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="21%" align="center" />

                                    <tr>
                                        <td class="sub">이름</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/aplcFnm"/></td>
                                        <td class="sub">주민등록번호</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarResno"/></td>
                                        <td class="sub">용도</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvaDcumUseUsgNm"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">관계</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarCvaAgnRltNm"/></td>
                                        <td class="sub">주소</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarLdAdr"/></td>
                                        <td class="sub"></td>
                                        <td class="data"></td>
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
                                    <col width="30%" align="center" />
                                    <col width="30%" align="center" />
                                    <col width="30%" align="center" />

                                    <tr>
                                        <td class="sub">귀속 연도</td>
                                        <td class="sub">법인명(상호)</td>
                                        <td class="sub">총 결정세액</td>
                                        <td class="sub">정산소득금액</td>
                                        <td class="sub">소득금액</td>
                                    </tr>
                                    <xsl:for-each select="root/incAmtCerDVOList/rows">
                                        <tr>
                                            <td class="data"><xsl:value-of select="attrYr"/></td>
                                            <td class="data"><xsl:value-of select="lvyRperTnmNm"/></td>
                                            <td class="data"><xsl:value-of select="inctxDcsTxamt"/></td>
                                            <td class="data"><xsl:value-of select="txtnTrgtIncAmt"/></td>
                                            <td class="data"><xsl:value-of select="txtnTrgtSnwAmt"/></td>
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
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
                                <xsl:text>문서접수번호 : </xsl:text>
                                <xsl:value-of select="root/cerpBscInfrDVO/rcatNo"/>
                                <br></br>
                                <xsl:text>발급번호 : </xsl:text>
                                <xsl:value-of select="root/cerpBscInfrDVO/cerCvaIsnNo"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="root/cerpBscInfrDVO/cvaChrgDprtNm"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="root/cerpBscInfrDVO/cvaChrgOgzNm"/>
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
                                            <xsl:value-of select="root/cerpBscInfrDVO/cvaKndNm"/>
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
                                    <col width="20%" align="center" />
                                    <col width="30%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="30%" align="center" />
                                    <tr>
                                        <td class="sub">소득자성명</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/cvarFnm"/>
                                        </td>
                                        <td class="sub">소득자주민번호</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/aplcResno"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">발급일자</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/cvarLdAdr"/>
                                        </td>
                                        <td class="sub">주소</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/txnrmStrtYm"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">시작년도</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/txnrmStrtYm"/>
                                        </td>
                                        <td class="sub">확인기간</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/txnrmEndYm"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">담당자</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/cvaChrgFnm"/>
                                        </td>
                                        <td class="sub">용도</td>
                                        <td class="data">
                                            <xsl:value-of select="root/cerpBscInfrDVO/cvaDcumUseUsgNm"/>
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
                                    <col width="25%" align="center" />
                                    <col width="25%" align="center" />
                                    <col width="25%" align="center" />
                                    <col width="25%" align="center" />

                                    <tr>
                                        <td class="sub">과세년도</td>
                                        <td class="sub">공적연금</td>
                                        <td class="sub">연금계좌</td>
                                        <td class="sub">소상공인</td>
                                    </tr>
                                    <xsl:for-each select="root/pnsnInfeeTxamtDdcDVOList/rows">
                                        <tr>
                                            <td class="data"><xsl:value-of select="attrYr"/></td>
                                            <td class="data"><xsl:value-of select="pblcPnsnIncDdcAmt"/></td>
                                            <td class="data"><xsl:value-of select="pnsnAccIncTxamtDdcAmt"/></td>
                                            <td class="data"><xsl:value-of select="sbizIncDdcAmt"/></td>
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
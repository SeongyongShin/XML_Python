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
                                <xsl:text>cerCvaIsnNo : </xsl:text>
                                <xsl:value-of select="root/cerpBscInfrDVO/cerCvaIsnNo"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="root/cerpBscInfrDVO/cvaId"/>
                                <br></br>
                                <xsl:value-of select="root/cerpBscInfrDVO/cvaChrgDprtEnglNm"/>
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
                                    <col width="10%" align="center" />
                                    <col width="22%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="22%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="26%" align="center" />

                                    <tr>
                                        <td class="sub">주민등록번호</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarRprsResno"/></td>
                                        <td class="sub">cvaDcumGranMthdNm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvaDcumGranMthdNm"/></td>
                                        <td class="sub">cvarFnm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarFnm"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">aplcCvaAgnRltNm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/aplcCvaAgnRltNm"/></td>
                                        <td class="sub">cvarRprsRoadNmAdr</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarRprsRoadNmAdr"/></td>
                                        <td class="sub">cvarTnm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvarTnm"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">cvaChrgOgzFrmyNm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvaChrgOgzFrmyNm"/></td>
                                        <td class="sub">cvaTxprDscmDt</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvaTxprDscmDt"/></td>
                                        <td class="sub">cvaDcumUseUsgNm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvaDcumUseUsgNm"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">cvaDcumSbmsOrgnClNm</td>
                                        <td class="data"><xsl:value-of select="root/cerpBscInfrDVO/cvaDcumSbmsOrgnClNm"/></td>
                                        <td class="sub"></td>
                                        <td class="data"></td>
                                        <td class="sub"></td>
                                        <td class="data"></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">rprsTxprDclsNm</td>
                                        <td class="data"><xsl:value-of select="root/bmanBscInfrInqrDVO/rprsTxprDclsNm"/></td>
                                        <td class="sub">txprDclsNm</td>
                                        <td class="data"><xsl:value-of select="root/bmanBscInfrInqrDVO/txprDclsNm"/></td>
                                        <td class="sub">bmanClNm</td>
                                        <td class="data"><xsl:value-of select="root/bmanBscInfrInqrDVO/bmanClNm"/></td>
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
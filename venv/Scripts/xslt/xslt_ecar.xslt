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
                                            자동차등록원부
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
                                        <td class="sub">차명</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/CNM"/></td>
                                        <td class="sub">차종</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/VHCTY_ASORT_NM"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">최종소유</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/MBER_NM"/></td>
                                        <td class="sub">주민(법인)등록번호</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/MBER_SE_NO"/></td>
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
                                    <col width="30%"/>
                                    <col width="70%"/>
                                    <tr>
                                        <td class="sub">사용본거지<br/>(차고지)</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/ADRES"/></td>
                                    </tr>
                                    <tr>
                                        <td class="sub">검사 유효기간</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/INSPT_VALID_PD_DATE"/></td>
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

                                    <col width="17%" />
                                    <col width="17%" />
                                    <col width="17%" />
                                    <col width="17%" />
                                    <col width="16%" />
                                    <col width="16%" />

                                    <tr>
                                        <td class="sub">자동차등록번호</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/VHRNO"/></td>
                                        <td class="sub">제원관리번호</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/SPMNNO"/></td>
                                        <td class="sub">번호판</td>
                                        <td class="dtat"><xsl:value-of select="database/basic_info/datatable/rexrow/NMPL_STNDRD_NM"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">차대번호</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/VHMNO"/></td>
                                        <td class="sub">원동기형식</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/MTRS_FOM_NM"/></td>
                                        <td class="sub">용도</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/PRPOS_SE_NM"/></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">연식</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/PRYE"/></td>
                                        <td class="sub">출처구분</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/REGIST_REQST_SE_NM"/></td>
                                        <td class="sub"></td>
                                        <td class="data"></td>
                                    </tr>

                                    <tr>
                                        <td class="sub">최초등록일</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/FRST_REGIST_DE"/></td>
                                        <td class="sub">제작년월일</td>
                                        <td class="data"><xsl:value-of select="database/basic_info/datatable/rexrow/YBL_MD"/></td>
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
                                    <col width="7%" />
                                    <col width="7%" />
                                    <col width="44%" />
                                    <col width="18%" />
                                    <col width="14%" />
                                    <col width="10%" />

                                    <tr>
                                        <td class="sub">주등록</td>
                                        <td class="sub">부기등록</td>
                                        <td class="sub">사항란</td>
                                        <td class="sub">주민(법인)등록번호</td>
                                        <td class="sub">등록일</td>
                                        <td class="sub">접수번호</td>
                                    </tr>

                                    <xsl:for-each select="database/detail_info/datatable/rexrow">
                                        <tr>
                                            <td class="data"><xsl:value-of select="MAINNO"/></td>
                                            <td class="data"><xsl:value-of select="SUBNO"/></td>
                                            <td class="data"><b><xsl:value-of select="GUBUN_NM"/></b><br/>
                                                <xsl:value-of select="DTLS"/></td>
                                            <td class="data"><xsl:value-of select="HSHLDR_MBER_NUM"/></td>
                                            <td class="data"><xsl:value-of select="CHANGE_DE"/></td>
                                            <td class="data"><xsl:value-of select="RQRCNO"/></td>
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
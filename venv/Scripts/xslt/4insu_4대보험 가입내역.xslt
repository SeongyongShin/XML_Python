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
                                            4대보험 가입내역
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
                                    <col width="20%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="13%" align="center" />
                                    <col width="21%" align="center" />

                                    <tr>
                                        <td class="sub">이슈번호</td>
                                        <td class="data"><xsl:value-of select="list/CdocAppl/issuNo"/></td>
                                        <td class="sub">이름</td>
                                        <td class="data"><xsl:value-of select="list/CdocAppl/name"/></td>
                                        <td class="sub">주민등록번호</td>
                                        <td class="data"><xsl:value-of select="list/CdocAppl/joinRrno"/></td>
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
                                    <col width="20%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="20%" align="center" />

                                    <tr>
                                        <td class="sub">bslcName</td>
                                        <td class="sub">workBslcMgmtNo</td>
                                        <td class="sub">procOrgCd</td>
                                        <td class="sub">joinKind</td>
                                        <td class="sub">crtfObtnDt</td>
                                    </tr>

                                    <xsl:for-each select="list/CdocAppl">
                                        <tr>
                                            <td class="data"><xsl:value-of select="bslcName"/></td>
                                            <td class="data"><xsl:value-of select="workBslcMgmtNo"/></td>
                                            <td class="data"><xsl:value-of select="procOrgCd"/></td>
                                            <td class="data"><xsl:value-of select="joinKind"/></td>
                                            <td class="data"><xsl:value-of select="crtfObtnDt"/></td>
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
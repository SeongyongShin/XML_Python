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
                    <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                        <tr>
                            <td style="padding-bottom:6px;" valign="bottom">
                                <xsl:value-of select="주민등록초본/COMMON-INFO/DOCUMENT-INFO/DOCUMENT-NUMBER"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="주민등록초본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/YEAR"/>
                                <xsl:value-of select="주민등록초본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/MONTH"/>
                                <xsl:value-of select="주민등록초본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/DAY"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="주민등록초본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/TIME"/>
                                <br></br>
                                <b>
                                    <xsl:value-of select="주민등록초본/COMMON-INFO/TRANSMISSION-RECEPTION/ISSUE-ORG/OFFICE"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="주민등록초본/COMMON-INFO/TRANSMISSION-RECEPTION/ISSUE-ORG/DEPARTMENT"/>
                                </b>
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
                                            <xsl:value-of select="주민등록초본/COMMON-INFO/DOCUMENT-INFO/DOCUMENT-NAME"/>
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
                                        <td class="sub">성명</td>
                                        <td class="data"><xsl:value-of select="주민등록초본/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/NAME"/></td>
                                        <td class="sub">생년월일</td>
                                        <td class="data"><xsl:value-of select="주민등록초본/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/IDENTITY-NUMBER/FIRST"/></td>
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
                                    <col width="60%" align="center" />
                                    <col width="30%" align="center" />
                                    <tr>
                                        <td class="sub">번호</td>
                                        <td class="sub">주소</td>
                                        <td class="sub">세대주및관계<br></br>등록상태</td>
                                    </tr>
                                    <xsl:for-each select="주민등록초본/OUT-주민등록초본/주소이력">
                                        <tr>
                                            <td class="sub">
                                                <xsl:value-of select="번호"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="일반주소"/><br></br><xsl:value-of select="특수주소"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="세대주성명"/><br></br><xsl:value-of select="세대주와의관계"/>
                                            </td>
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

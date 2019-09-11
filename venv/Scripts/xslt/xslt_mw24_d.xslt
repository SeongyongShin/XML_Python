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
                                <xsl:text>문서확인번호 : </xsl:text>
                                <xsl:value-of select="주민등록등본/COMMON-INFO/DOCUMENT-INFO/DOCUMENT-NUMBER"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="주민등록등본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/YEAR"/>
                                <xsl:value-of select="주민등록등본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/MONTH"/>
                                <xsl:value-of select="주민등록등본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/DAY"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="주민등록등본/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/TIME"/>
                                <br>
                                </br>
                                <b>
                                    <xsl:value-of select="주민등록등본/COMMON-INFO/TRANSMISSION-RECEPTION/ISSUE-ORG/OFFICE"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="주민등록등본/COMMON-INFO/TRANSMISSION-RECEPTION/ISSUE-ORG/DEPARTMENT"/>
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
                                            <xsl:value-of select="주민등록등본/COMMON-INFO/DOCUMENT-INFO/DOCUMENT-NAME"/>
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
                                        <td class="sub">세대주성명</td>
                                        <td class="data">
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/대상세대자료/세대주성명"/>
                                        </td>
                                        <td class="sub">세대구성 사유 및 일자</td>
                                        <td class="data">
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/대상세대자료/세대구성사유"/>
                                            <br></br>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/대상세대자료/세대구성일자/년"/>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/대상세대자료/세대구성일자/월"/>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/대상세대자료/세대구성일자/일"/>
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
                                    <col width="55%" align="center" />
                                    <col width="35%" align="center" />
                                    <tr>
                                        <td class="sub">번호</td>
                                        <td class="sub">주소</td>
                                        <td class="sub">전입일/변동일<br></br>변동사유</td>
                                    </tr>
                                    <tr>
                                        <td class="sub">현주소:</td>
                                        <td class="data">
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/일반주소"/>
                                            <br></br>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/특수주소"/>
                                        </td>
                                        <td class="data">
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/전입일/년"/>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/전입일/월"/>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/전입일/일"/>
                                            <xsl:text>/</xsl:text>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/변동일/년"/>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/변동일/월"/>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/변동일/일"/>
                                            <br></br>
                                            <xsl:value-of select="주민등록등본/OUT-주민등록등본/주소이력약식/변동사유"/>
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
                                    <col width="17%" align="center" />
                                    <col width="38%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="15%" align="center" />
                                    <tr>
                                        <td class="sub">번호</td>
                                        <td class="sub">세대주와의 관계</td>
                                        <td class="sub">성명(한자)<br></br>주민등록번호</td>
                                        <td class="sub">전입일/변동일<br></br>등록상태</td>
                                        <td class="sub">변동사유</td>
                                    </tr>

                                    <xsl:for-each select="주민등록등본/OUT-주민등록등본/세대원">
                                        <tr>
                                            <td class="sub"><xsl:value-of select="번호"/></td>
                                            <td class="data"><xsl:value-of select="세대주와의관계"/></td>
                                            <td class="data">
                                                <xsl:value-of select="성명"/>
                                                <br></br>
                                                <xsl:value-of select="주민등록번호/앞번호"/>
                                                <xsl:text>-</xsl:text>
                                                <xsl:value-of select="주민등록번호/뒷번호"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="전입일/년"/>
                                                <xsl:value-of select="전입일/월"/>
                                                <xsl:value-of select="전입일/일"/>
                                                <xsl:text> / </xsl:text>
                                                <xsl:value-of select="변동일/년"/>
                                                <xsl:value-of select="변동일/월"/>
                                                <xsl:value-of select="변동일/일"/>
                                                <br></br>
                                                <xsl:value-of select="등록상태"/>
                                            </td>
                                            <td class="data"><xsl:value-of select="변동사유"/></td>
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
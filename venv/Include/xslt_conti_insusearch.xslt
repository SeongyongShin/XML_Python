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
                                <xsl:value-of select="root/rceptNo"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="root/rceptDt"/>
                            </td>
                        </tr>
                    </table>

                    <table cellpadding="0" cellspacing="0" width="100%" border="0">
                        <tr>
                            <td style="border:solid 2px #000000;">
                                <table cellpadding="0" cellspacing="0" width="100%" border="0" style="margin:5px 0;">
                                    <tr>
                                        <td align="center">
                                            손해보험협회 - 내보험찾아줌
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
                                        <td class="data"><xsl:value-of select="root/applcnt/name"/></td>
                                        <td class="sub">주민등록번호</td>
                                        <td class="data"><xsl:value-of select="root/applcnt/rrn"/></td>
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
                                    <col width="15%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="15%" align="center" />
                                    <tr>
                                        <td class="sub">보험회사</td>
                                        <td class="sub">구분</td>
                                        <td class="sub">상품명 / type</td>
                                        <td class="sub">보험계약상태</td>
                                        <td class="sub">보험계약관계</td>
                                        <td class="sub">보험기간 시작 / 보험기간 종</td>
                                        <td class="sub">담당점포 / 전화번</td>
                                    </tr>
                                    <xsl:for-each select="root/insuTotal/list/insuInfo">
                                        <tr>
                                            <td class="data">
                                                <xsl:value-of select="coCdNm"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="gubun"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="goodsNm"/> / <xsl:value-of select="type"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="contState"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="contRelation"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="cvrSdt"/> / <xsl:value-of select="cvrEdt"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="coBranch"/> / <xsl:value-of select="coNumber"/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
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
                                    <col width="15%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="15%" align="center" />
                                    <tr>
                                        <td class="sub">보험회사</td>
                                        <td class="sub">증권(계좌)번</td>
                                        <td class="sub">상품명 / 보험금유형</td>
                                        <td class="sub">계약체결일</td>
                                        <td class="sub">보험계약관계</td>
                                        <td class="sub">금액 / 금액기준일</td>
                                        <td class="sub">가산이자 / 이자기준</td>
                                    </tr>
                                    <xsl:for-each select="root/unreqInsu/list/unreqInsu">
                                        <tr>
                                            <td class="data">
                                                <xsl:value-of select="coCdNm"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="polNo"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="goodsNm"/> / <xsl:value-of select="moneyType"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="contDate"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="contRelation"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="amount"/> / <xsl:value-of select="refDt"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="addedInt"/> / <xsl:value-of select="intRefDt"/>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
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
                                    <col width="15%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="10%" align="center" />
                                    <col width="20%" align="center" />
                                    <col width="15%" align="center" />
                                    <tr>
                                        <td class="sub">보험회사</td>
                                        <td class="sub">구분</td>
                                        <td class="sub">증권(계좌)번호</td>
                                        <td class="sub">통화구분</td>
                                        <td class="sub">금액</td>
                                        <td class="sub">문의처</td>
                                        <td class="sub">비고(진흥원 출연일자)</td>
                                    </tr>
                                    <xsl:for-each select="root/dorClaim/list/unreqInsu">
                                        <tr>
                                            <td class="data">
                                                <xsl:value-of select="coCdNm"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="gubun"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="polNo"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="curType"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="amount"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="ref"/>
                                            </td>
                                            <td class="data">
                                                <xsl:value-of select="note"/>
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
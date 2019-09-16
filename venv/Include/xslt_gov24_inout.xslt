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
                                <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/DOCUMENT-INFO/DOCUMENT-NUMBER"/>
                            </td>
                            <td style="padding-bottom:6px;" align="right">
                                <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/YEAR"/>
                                <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/MONTH"/>
                                <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/DAY"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/DOCUMENT-INFO/RECEIPT-INFO/RECEIPT-DATE/TIME"/>
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
                                            <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/DOCUMENT-INFO/DOCUMENT-NAME"/>
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
                                        <td class="sub">성명</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/NAME"/>
                                        </td>
                                        <td class="sub">주민등록번호</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/IDENTITY-NUMBER/FIRST"/>
                                            <xsl:text>-</xsl:text>
                                            <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/IDENTITY-NUMBER/SECOND"/>
                                        </td>
                                        <td class="sub">주소</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/CONTACK-INFO/APPLYADDR/ADDRESS-INFO/AREA-INFO/AREA-NAME"/>
                                            <br></br>
                                            <xsl:value-of select="출입국에관한사실증명/COMMON-INFO/TRANSMISSION-RECEPTION/APPLICATION/INDIVIDUAL/CONTACK-INFO/APPLYADDR/ADDRESS-INFO/ZIPCODE/FIRST"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">성별</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/성별"/>
                                        </td>
                                        <td class="sub">국적</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/국적"/>
                                            <br></br>
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/영문국적"/>
                                        </td>
                                        <td class="sub">여권번호</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/여권번호"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">발급일</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/발급일"/>
                                        </td>
                                        <td class="sub">기관장</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/기관장"/>
                                        </td>
                                        <td class="sub">기관장영문명</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/기관장영문명"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="sub">기록대조 시작일</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/기록대조/시작일"/>
                                        </td>
                                        <td class="sub">기록대조 마지막일</td>
                                        <td class="data">
                                            <xsl:value-of select="출입국에관한사실증명/IN-출입국에관한사실증명/기록대조/마지막일"/>
                                        </td>
                                        <td class="sub"></td>
                                        <td class="data">
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
                                    <col width="50%" align="center" />
                                    <col width="50%" align="center" />
                                    <tr>
                                        <td class="sub">출국</td>
                                        <td class="sub">입국</td>
                                    </tr>

                                    <xsl:for-each select="출입국에관한사실증명/IN-출입국에관한사실증명/출입국일자">
                                        <tr>
                                            <td class="data"><xsl:value-of select="출국"/></td>
                                            <td class="data"><xsl:value-of select="입국"/></td>
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

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
                </div>

                <xsl:value-of select="docuInfo/notice"/>

                <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                    <tr>
                        <td style="padding-bottom:6px;" valign="bottom">
                            <xsl:text>발급번호 : </xsl:text>
                            <xsl:value-of select="docuInfo/issInfo/issNum"/>
                            <br></br>
                            <xsl:text>발급일자 : </xsl:text>
                            <xsl:value-of select="docuInfo/issInfo/issTime"/>
                        </td>
                        <td style="padding-bottom:6px;" align="right">
                            <xsl:text>신청인 : </xsl:text>
                            <xsl:value-of select="docuInfo/issInfo/user"/>
                            <br></br>
                            <xsl:text>주민번호 : </xsl:text>
                            <xsl:value-of select="docuInfo/issInfo/rrn1"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="docuInfo/issInfo/rrn2"/>
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

                <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                    <tr>
                        <td style="padding-bottom:6px;" valign="bottom">
                            <xsl:text>발급대상 : </xsl:text>
                            <xsl:value-of select="docuInfo/target/hojukInfo/name"/>
                            <br></br>
                            <xsl:text>주소 : </xsl:text>
                            <xsl:value-of select="docuInfo/target/hojukInfo/cntr"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="docuInfo/target/hojukInfo/bunji"/>
                        </td>
                        <td style="padding-bottom:6px;" align="right">
                            <xsl:text>sendDate : </xsl:text>
                            <xsl:value-of select="docuInfo/target/hojukInfo/sendDate"/>
                            <br></br>
                            <xsl:text>주민번호 : </xsl:text>
                            <xsl:value-of select="docuInfo/target/hojukInfo/rrn12"/>
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

                <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                    <tr>
                        <td style="padding-bottom:6px;" valign="bottom">
                            <xsl:text>TARGET</xsl:text>
                        </td>
                    </tr>
                </table>

                <tr>
                    <td style="border:solid 2px #000000;">
                        <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                            <col width="30%" />
                            <col width="70%" />
                            <tr>
                                <td class="sub" align="center">구분</td>
                                <td class="sub" align="center">내용</td>
                            </tr>

                            <xsl:for-each select="docuInfo/target/*">
                                <xsl:if test="gubun">
                                    <tr>
                                        <td class="sub" align="center"><xsl:value-of select="gubun"/></td>
                                        <td class="data">
                                            <xsl:for-each select="*">
                                                <xsl:if test="title">
                                                    <b><xsl:value-of select="title"/></b><xsl:text>:</xsl:text><xsl:value-of select="content"/><br></br>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>

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

                <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                    <tr>
                        <td style="padding-bottom:6px;" valign="bottom">
                            <xsl:text>FAMILY</xsl:text>
                        </td>
                    </tr>
                </table>

                <tr>
                    <td style="border:solid 2px #000000;">
                        <table frame="void" border="1" class="table_input" width="100%" cellspacing="0" cellpadding="0">
                            <col width="5%" />
                            <col width="5%" />
                            <col width="5%" />
                            <col width="8%" />
                            <col width="13%" />
                            <col width="8%" />
                            <col width="8%" />
                            <col width="5%" />
                            <col width="43%" />
                            <tr>
                                <td class="sub" align="center">번호</td>
                                <td class="sub" align="center">관계</td>
                                <td class="sub" align="center">성별</td>
                                <td class="sub" align="center">이름</td>
                                <td class="sub" align="center">주민번호</td>
                                <td class="sub" align="center">부</td>
                                <td class="sub" align="center">모</td>
                                <td class="sub" align="center">본적</td>
                                <td class="sub" align="center">내용</td>
                            </tr>

                            <xsl:for-each select="docuInfo/family/*">
                                <xsl:if test="name">
                                    <tr>
                                        <td class="data" align="center"><xsl:value-of select="index"/></td>
                                        <td class="data" align="center"><xsl:value-of select="pos"/></td>
                                        <td class="data" align="center"><xsl:value-of select="gender"/></td>
                                        <td class="data" align="center"><xsl:value-of select="name"/></td>
                                        <td class="data" align="center"><xsl:value-of select="rrn12"/></td>
                                        <td class="data" align="center"><xsl:value-of select="father"/></td>
                                        <td class="data" align="center"><xsl:value-of select="mother"/></td>
                                        <td class="data" align="center"><xsl:value-of select="bon"/></td>
                                        <td class="data">
                                            <xsl:for-each select="*">
                                                <xsl:if test="gubun">
                                                    <b><xsl:value-of select="gubun"/></b><br></br>

                                                    <xsl:for-each select="*">
                                                        <xsl:if test="title">
                                                            <b><xsl:value-of select="title"/></b><xsl:text>:</xsl:text><xsl:value-of select="content"/><br></br>
                                                        </xsl:if>
                                                    </xsl:for-each>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:for-each>

                        </table>
                    </td>
                </tr>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
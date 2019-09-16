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
                                            건강/장기요양보험 - 납부확인서
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

                        <xsl:for-each select="root/dataset">
                            <xsl:for-each select="record">
                                <table cellpadding="0" cellspacing="0" class="pop_type_scr" border="0">
                                    <tr>
                                        <td style="padding-bottom:6px;" valign="bottom">
                                            문서 발급 번호 : <xsl:value-of select="ISRC18_PBLTN_NO"/><xsl:value-of select="ISRA01_PBLTN_NO"/>
                                        </td>
                                        <td style="padding-bottom:6px;" align="right">
                                            납부자 번호 : <xsl:value-of select="ISRC18_JUNG_NO"/><xsl:value-of select="BHDB04_JUNG_NO"/>
                                        </td>
                                    </tr>
                                </table>

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
                                                <td class="data"><xsl:value-of select="ISRC18_GAIBJA_NM"/><xsl:value-of select="BHDB04_DAESANGJA_NM"/></td>
                                                <td class="sub">주민등록번호</td>
                                                <td class="data">
                                                    <xsl:choose>
                                                        <xsl:when test="ISRC18_JUMIN_NO">
                                                            <xsl:value-of select="ISRC18_JUMIN_NO"/>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:value-of select="STR99"/>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td class="sub">회사명</td>
                                                <td class="data"><xsl:value-of select="JGDB10_FIRM_NM"/><xsl:value-of select="BHDB04_APLY_PRSN_NM"/></td>
                                            </tr>

                                            <tr>
                                                <td class="sub">납부자번호</td>
                                                <td class="data"><xsl:value-of select="ISRC18_JUNG_NO"/><xsl:value-of select="BHDB04_JUNG_NO"/></td>
                                                <td class="sub">시작일</td>
                                                <td class="data"><xsl:value-of select="ISRC18_PBLTN_STND_FR_YYYYMM"/><xsl:value-of select="YEAR_COL_FROM_YYYY"/></td>
                                                <td class="sub">종료일</td>
                                                <td class="data"><xsl:value-of select="ISRC18_PBLTN_STD_TO_YYYYMM"/><xsl:value-of select="YEAR_COL_TO_YYYY"/></td>
                                            </tr>

                                            <tr>
                                                <td class="sub">신청인</td>
                                                <td class="data"><xsl:value-of select="ISRC18_APLY_PRSN_NM"/></td>
                                                <td class="sub">기업식별번호</td>
                                                <td class="data"><xsl:value-of select="JGBA12_FIRM_SYM"/></td>
                                                <td class="sub">사업자등록번호</td>
                                                <td class="data"><xsl:value-of select="JGDB10_REG_NO"/></td>
                                            </tr>

                                            <tr>
                                                <td class="sub">발급일</td>
                                                <td class="data"><xsl:value-of select="ISRC18_APLY_DT"/></td>
                                                <td class="sub">취득일</td>
                                                <td class="data"><xsl:value-of select="JGBA20_FST_CHWIDUK_DT"/></td>
                                                <td class="sub">상실일</td>
                                                <td class="data"><xsl:value-of select="JGBA12_JUNG_SANGSIL_DT"/></td>
                                            </tr>

                                            <tr>
                                                <td class="sub">핸드폰번호</td>
                                                <td class="data"><xsl:value-of select="STR74"/><xsl:value-of select="STR75"/><xsl:value-of select="STR76"/></td>
                                                <td class="sub">소속지사명</td>
                                                <td class="data"><xsl:value-of select="branch_nm"/></td>
                                                <td class="sub">사업장관리번호</td>
                                                <td class="data"><xsl:value-of select="firm_sym"/></td>
                                            </tr>

                                            <tr>
                                                <td class="sub">가입자구분</td>
                                                <td class="data"><xsl:value-of select="gaibja_type"/></td>
                                                <td class="sub">가입자구분</td>
                                                <td class="data"><xsl:if test="gaibja_type = '1'" >지역세대주</xsl:if><xsl:if test="gaibja_type = '2'" >지역세대원</xsl:if><xsl:if test="gaibja_type = '5'" >직장가입자</xsl:if></td>
                                                <td class="sub">NabbuSeq</td>
                                                <td class="data"><xsl:value-of select="nabbuSeq"/></td>
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
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />
                                            <col width="8.33%" />

                                            <tr>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR31">
                                                        <xsl:value-of select="STR31"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR31)">
                                                        1
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR32">
                                                        <xsl:value-of select="STR32"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR32)">
                                                        2
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR33">
                                                        <xsl:value-of select="STR33"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR33)">
                                                        3
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR34">
                                                        <xsl:value-of select="STR34"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR34)">
                                                        4
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR35">
                                                        <xsl:value-of select="STR35"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR35)">
                                                        5
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR36">
                                                        <xsl:value-of select="STR36"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR36)">
                                                        6
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR37">
                                                        <xsl:value-of select="STR37"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR37)">
                                                        7
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR38">
                                                        <xsl:value-of select="STR38"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR38)">
                                                        8
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR39">
                                                        <xsl:value-of select="STR39"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR39)">
                                                        9
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR40">
                                                        <xsl:value-of select="STR40"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR40)">
                                                        10
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR41">
                                                        <xsl:value-of select="STR41"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR41)">
                                                        11
                                                    </xsl:if>
                                                </td>
                                                <td class="sub" align="center">
                                                    <xsl:if test="STR42">
                                                        <xsl:value-of select="STR42"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(STR42)">
                                                        12
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB61">
                                                        <xsl:value-of select="DOUB61"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB61)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB62">
                                                        <xsl:value-of select="DOUB62"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB62)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB63">
                                                        <xsl:value-of select="DOUB63"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB63)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB64">
                                                        <xsl:value-of select="DOUB64"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB64)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB65">
                                                        <xsl:value-of select="DOUB65"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB65)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB66">
                                                        <xsl:value-of select="DOUB66"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB66)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB67">
                                                        <xsl:value-of select="DOUB67"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB67)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB68">
                                                        <xsl:value-of select="DOUB68"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB68)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB69">
                                                        <xsl:value-of select="DOUB69"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB69)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB70">
                                                        <xsl:value-of select="DOUB70"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB70)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB71">
                                                        <xsl:value-of select="DOUB71"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB71)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB72">
                                                        <xsl:value-of select="DOUB72"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB72)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB161">
                                                        <xsl:value-of select="DOUB161"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB161)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB162">
                                                        <xsl:value-of select="DOUB162"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB162)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB163">
                                                        <xsl:value-of select="DOUB163"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB163)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB164">
                                                        <xsl:value-of select="DOUB164"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB164)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB165">
                                                        <xsl:value-of select="DOUB165"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB165)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB166">
                                                        <xsl:value-of select="DOUB166"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB166)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB167">
                                                        <xsl:value-of select="DOUB167"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB167)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB168">
                                                        <xsl:value-of select="DOUB168"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB168)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB169">
                                                        <xsl:value-of select="DOUB169"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB169)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB170">
                                                        <xsl:value-of select="DOUB170"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB170)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB171">
                                                        <xsl:value-of select="DOUB171"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB171)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB172">
                                                        <xsl:value-of select="DOUB172"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB172)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB31">
                                                        <xsl:value-of select="DOUB31"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB31)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB32">
                                                        <xsl:value-of select="DOUB32"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB32)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB33">
                                                        <xsl:value-of select="DOUB33"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB33)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB34">
                                                        <xsl:value-of select="DOUB34"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB34)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB35">
                                                        <xsl:value-of select="DOUB35"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB35)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB36">
                                                        <xsl:value-of select="DOUB36"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB36)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB37">
                                                        <xsl:value-of select="DOUB37"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB37)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB38">
                                                        <xsl:value-of select="DOUB38"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB38)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB39">
                                                        <xsl:value-of select="DOUB39"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB39)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB40">
                                                        <xsl:value-of select="DOUB40"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB40)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB41">
                                                        <xsl:value-of select="DOUB41"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB41)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB42">
                                                        <xsl:value-of select="DOUB42"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB42)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB131">
                                                        <xsl:value-of select="DOUB131"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB131)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB132">
                                                        <xsl:value-of select="DOUB132"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB132)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB133">
                                                        <xsl:value-of select="DOUB133"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB133)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB134">
                                                        <xsl:value-of select="DOUB134"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB134)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB135">
                                                        <xsl:value-of select="DOUB135"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB135)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB136">
                                                        <xsl:value-of select="DOUB136"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB136)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB137">
                                                        <xsl:value-of select="DOUB137"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB137)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB138">
                                                        <xsl:value-of select="DOUB138"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB138)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB139">
                                                        <xsl:value-of select="DOUB139"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB139)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB140">
                                                        <xsl:value-of select="DOUB140"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB140)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB141">
                                                        <xsl:value-of select="DOUB141"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB141)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB142">
                                                        <xsl:value-of select="DOUB142"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB142)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB01">
                                                        <xsl:value-of select="DOUB01"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB01)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB02">
                                                        <xsl:value-of select="DOUB02"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB02)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB03">
                                                        <xsl:value-of select="DOUB03"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB03)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB04">
                                                        <xsl:value-of select="DOUB04"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB04)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB05">
                                                        <xsl:value-of select="DOUB05"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB05)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB06">
                                                        <xsl:value-of select="DOUB06"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB06)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB07">
                                                        <xsl:value-of select="DOUB07"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB07)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB08">
                                                        <xsl:value-of select="DOUB08"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB08)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB09">
                                                        <xsl:value-of select="DOUB09"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB09)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB10">
                                                        <xsl:value-of select="DOUB10"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB10)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB11">
                                                        <xsl:value-of select="DOUB11"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB11)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB12">
                                                        <xsl:value-of select="DOUB12"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB12)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB101">
                                                        <xsl:value-of select="DOUB101"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB101)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB102">
                                                        <xsl:value-of select="DOUB102"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB102)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB103">
                                                        <xsl:value-of select="DOUB103"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB103)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB104">
                                                        <xsl:value-of select="DOUB104"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB104)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB105">
                                                        <xsl:value-of select="DOUB105"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB105)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB106">
                                                        <xsl:value-of select="DOUB106"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB106)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB107">
                                                        <xsl:value-of select="DOUB107"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB107)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB108">
                                                        <xsl:value-of select="DOUB108"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB108)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB109">
                                                        <xsl:value-of select="DOUB109"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB109)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB110">
                                                        <xsl:value-of select="DOUB110"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB110)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB111">
                                                        <xsl:value-of select="DOUB111"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB111)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB112">
                                                        <xsl:value-of select="DOUB112"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB112)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB13">
                                                        <xsl:value-of select="DOUB13"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB13)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB14">
                                                        <xsl:value-of select="DOUB14"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB14)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB15">
                                                        <xsl:value-of select="DOUB15"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB15)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB16">
                                                        <xsl:value-of select="DOUB16"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB16)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB17">
                                                        <xsl:value-of select="DOUB17"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB17)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB18">
                                                        <xsl:value-of select="DOUB18"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB18)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB19">
                                                        <xsl:value-of select="DOUB19"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB19)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB20">
                                                        <xsl:value-of select="DOUB20"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB20)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB21">
                                                        <xsl:value-of select="DOUB21"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB21)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB22">
                                                        <xsl:value-of select="DOUB22"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB22)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB23">
                                                        <xsl:value-of select="DOUB23"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB23)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB24">
                                                        <xsl:value-of select="DOUB24"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB24)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="data">
                                                    <xsl:if test="DOUB113">
                                                        <xsl:value-of select="DOUB113"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB113)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB114">
                                                        <xsl:value-of select="DOUB114"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB114)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB115">
                                                        <xsl:value-of select="DOUB115"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB115)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB116">
                                                        <xsl:value-of select="DOUB116"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB116)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB117">
                                                        <xsl:value-of select="DOUB117"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB117)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB118">
                                                        <xsl:value-of select="DOUB118"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB118)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB119">
                                                        <xsl:value-of select="DOUB119"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB119)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB120">
                                                        <xsl:value-of select="DOUB120"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB120)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB121">
                                                        <xsl:value-of select="DOUB121"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB121)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB122">
                                                        <xsl:value-of select="DOUB122"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB122)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB123">
                                                        <xsl:value-of select="DOUB123"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB123)">
                                                        0
                                                    </xsl:if>
                                                </td>
                                                <td class="data">
                                                    <xsl:if test="DOUB124">
                                                        <xsl:value-of select="DOUB124"/>
                                                    </xsl:if>
                                                    <xsl:if test="not(DOUB124)">
                                                        0
                                                    </xsl:if>
                                                </td>

                                            </tr>
                                        </table>
                                    </td>
                                    <tr>
                                        <td style="border:solid 0px;">
                                            <table width="100%">
                                                <tr height="10">
                                                    <td />
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
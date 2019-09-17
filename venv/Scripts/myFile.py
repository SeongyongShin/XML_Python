def findXslt( str ):

    if(str =="[건보]자격득실확인서"):
        return "xslt_nhis_ja"
    elif (str == "[건보]납부확인서"):
        return "xslt_nhis_nabbu"
    elif (str == "[건보]완납확인서"):
        return "xslt_nhis_wannab"
    # elif (str == "[건보]건강검진이력"):
    #     return "xslt_nhis_ja"
    # elif (str == "[건보]진료이력"):
    #     return ""
    # elif (str == "[건보]자격확인서"):
    #     return ""
    elif(str =="[민원]주민등록초본"):
        return "xslt_mw24_c"
    elif (str == "[민원]주민등록등본"):
        return "xslt_mw24_d"
    # elif (str == "[민원]지방세납세증명"):
    #     return ""
    elif (str == "[정부]주민등록초본"):
        return "xslt_mw24_d"
    elif (str == "[정부]주민등록등본"):
        return "xslt_mw24_d"
    # elif (str == "[정부]출입국사실증명"):
    #     return ""
    # elif (str == "[정부]외국인등록 사실증명"):
    #     return ""
    # elif (str == "[정부]외국인국내거소 사실증명"):
    #     return ""
    # elif (str == "[정부]지방세납세증명"):
    #     return ""
    elif (str == "[국세청]소득금액증명(봉급생활자)"):
        return "xslt_nts_s_J"
    # elif (str == "[국세청]소득금액증명(사업자)"):
    #     return ""
    elif (str == "[국세청]소득금액증명(종합소득)"):
        return "xslt_nts_s_b"
    elif (str == "[국세청]사업자등록증명원"):
        return "xslt_nts_saupja"
    # elif (str == "[국세청]부가가치세 과세표준증명"):
    #     return ""
    # elif (str == "[국세청]부가가치세 면세사업자 수입금액증명"):
    #     return ""
    # elif (str == "[국세청]납세증명서"):
    #     return ""
    # elif (str == "[국세청]연말정산 원천징수영수증"):
    #     return ""
    elif (str == "[국세청]소득세액공제"):
         return "xslt_nts_gongje"
    elif (str == "[국세청]폐업사실증명"):
         return "xslt_nts_pieup"
    elif (str == "[국세청]사업장리스트"):
         return "xslt_nts_saupjanglist"
    # elif (str == "[국세청]소득확인증명서"):
    #     return ""
    # elif (str == "[국세청]납세내역증명서"):
    #     return ""
    elif (str == "테스트"):
         return "xslt_nts_s_J"
    return  ""
def itemList():
    return ['테스트','[건보]자격득실확인서','[건보]납부확인서','[건보]완납확인서','![건보]건강검진이력','![건보]진료이력','![건보]자격확인서'
            ,'[민원]주민등록초본','[민원]주민등록등본','![민원]지방세납세증명'
            ,'[정부]주민등록초본', '[정부]주민등록등본', '![정부]출입국사실증명', '![정부]외국인등록 사실증명', '![정부]외국인국내거소 사실증명', '![정부]지방세납세증명'
            ,'[국세청]소득금액증명(봉급생활자)','![국세청]소득금액증명(사업자)','[국세청]소득금액증명(종합소득)','[국세청]사업자등록증명원'
            ,'![국세청]부가가치세 과세표준증명','![국세청]부가가치세 면세사업자 수입금액증명','![국세청]납세증명서','![국세청]연말정산 원천징수영수증'
            ,'[국세청]소득세액공제','[국세청]폐업사실증명','[국세청]사업장리스트','![국세청]소득확인증명서','![국세청]납세내역증명서'




            ];
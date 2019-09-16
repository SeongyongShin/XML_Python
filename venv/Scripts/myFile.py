def findXslt( str ):

    if(str =="[건보]자격득실확인서"):
        return "xslt_nhis_ja"
    if (str == "[건보]납부확인서"):
        return "xslt_nhis_nabbu"
    if (str == "[건보]완납확인서"):
        return "xslt_nhis_wannab"
    # if (str == "[건보]건강검진이력"):
    #     return "xslt_nhis_ja"
    # if (str == "[건보]진료이력"):
    #     return ""
    # if (str == "[건보]자격확인서"):
    #     return ""
    return  ""
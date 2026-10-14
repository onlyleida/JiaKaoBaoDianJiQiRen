package com.google.zxing.client.result;

import com.google.common.base.Ascii;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.tencent.connect.common.Constants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (findAIvalue(i2, strSubstring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:13:0x0052  */
    @Override // com.google.zxing.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        ExpandedProductParsedResult expandedProductParsedResult = null;
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String massagedText = ResultParser.getMassagedText(result);
        HashMap map = new HashMap();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String strSubstring = null;
        String str10 = null;
        String strSubstring2 = null;
        String strSubstring3 = null;
        int i = 0;
        while (i < massagedText.length()) {
            String strFindAIvalue = findAIvalue(i, massagedText);
            if (strFindAIvalue == null) {
                return expandedProductParsedResult;
            }
            byte b = 2;
            int length = i + strFindAIvalue.length() + 2;
            String strFindValue = findValue(length, massagedText);
            int length2 = length + strFindValue.length();
            strFindAIvalue.hashCode();
            i = length2;
            switch (strFindAIvalue.hashCode()) {
                case 1536:
                    if (!strFindAIvalue.equals("00")) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 1537:
                    if (!strFindAIvalue.equals("01")) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 1567:
                    if (!strFindAIvalue.equals(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ)) {
                        b = -1;
                    }
                    break;
                case 1568:
                    if (!strFindAIvalue.equals(Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 1570:
                    if (!strFindAIvalue.equals(Constants.VIA_REPORT_TYPE_JOININ_GROUP)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 1572:
                    if (!strFindAIvalue.equals(Constants.VIA_REPORT_TYPE_WPA_STATE)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 1574:
                    if (!strFindAIvalue.equals(Constants.VIA_REPORT_TYPE_START_GROUP)) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case 1567966:
                    if (!strFindAIvalue.equals("3100")) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case 1567967:
                    if (!strFindAIvalue.equals("3101")) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case 1567968:
                    if (!strFindAIvalue.equals("3102")) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case 1567969:
                    if (!strFindAIvalue.equals("3103")) {
                        b = -1;
                    } else {
                        b = 10;
                    }
                    break;
                case 1567970:
                    if (!strFindAIvalue.equals("3104")) {
                        b = -1;
                    } else {
                        b = Ascii.VT;
                    }
                    break;
                case 1567971:
                    if (!strFindAIvalue.equals("3105")) {
                        b = -1;
                    } else {
                        b = Ascii.FF;
                    }
                    break;
                case 1567972:
                    if (!strFindAIvalue.equals("3106")) {
                        b = -1;
                    } else {
                        b = Ascii.CR;
                    }
                    break;
                case 1567973:
                    if (!strFindAIvalue.equals("3107")) {
                        b = -1;
                    } else {
                        b = Ascii.SO;
                    }
                    break;
                case 1567974:
                    if (!strFindAIvalue.equals("3108")) {
                        b = -1;
                    } else {
                        b = Ascii.SI;
                    }
                    break;
                case 1567975:
                    if (!strFindAIvalue.equals("3109")) {
                        b = -1;
                    } else {
                        b = Ascii.DLE;
                    }
                    break;
                case 1568927:
                    if (!strFindAIvalue.equals("3200")) {
                        b = -1;
                    } else {
                        b = 17;
                    }
                    break;
                case 1568928:
                    if (!strFindAIvalue.equals("3201")) {
                        b = -1;
                    } else {
                        b = Ascii.DC2;
                    }
                    break;
                case 1568929:
                    if (!strFindAIvalue.equals("3202")) {
                        b = -1;
                    } else {
                        b = 19;
                    }
                    break;
                case 1568930:
                    if (!strFindAIvalue.equals("3203")) {
                        b = -1;
                    } else {
                        b = Ascii.DC4;
                    }
                    break;
                case 1568931:
                    if (!strFindAIvalue.equals("3204")) {
                        b = -1;
                    } else {
                        b = Ascii.NAK;
                    }
                    break;
                case 1568932:
                    if (!strFindAIvalue.equals("3205")) {
                        b = -1;
                    } else {
                        b = Ascii.SYN;
                    }
                    break;
                case 1568933:
                    if (!strFindAIvalue.equals("3206")) {
                        b = -1;
                    } else {
                        b = Ascii.ETB;
                    }
                    break;
                case 1568934:
                    if (!strFindAIvalue.equals("3207")) {
                        b = -1;
                    } else {
                        b = Ascii.CAN;
                    }
                    break;
                case 1568935:
                    if (!strFindAIvalue.equals("3208")) {
                        b = -1;
                    } else {
                        b = Ascii.EM;
                    }
                    break;
                case 1568936:
                    if (!strFindAIvalue.equals("3209")) {
                        b = -1;
                    } else {
                        b = Ascii.SUB;
                    }
                    break;
                case 1575716:
                    if (!strFindAIvalue.equals("3920")) {
                        b = -1;
                    } else {
                        b = Ascii.ESC;
                    }
                    break;
                case 1575717:
                    if (!strFindAIvalue.equals("3921")) {
                        b = -1;
                    } else {
                        b = Ascii.FS;
                    }
                    break;
                case 1575718:
                    if (!strFindAIvalue.equals("3922")) {
                        b = -1;
                    } else {
                        b = Ascii.GS;
                    }
                    break;
                case 1575719:
                    if (!strFindAIvalue.equals("3923")) {
                        b = -1;
                    } else {
                        b = Ascii.RS;
                    }
                    break;
                case 1575747:
                    if (!strFindAIvalue.equals("3930")) {
                        b = -1;
                    } else {
                        b = Ascii.US;
                    }
                    break;
                case 1575748:
                    if (!strFindAIvalue.equals("3931")) {
                        b = -1;
                    } else {
                        b = 32;
                    }
                    break;
                case 1575749:
                    if (!strFindAIvalue.equals("3932")) {
                        b = -1;
                    } else {
                        b = 33;
                    }
                    break;
                case 1575750:
                    if (!strFindAIvalue.equals("3933")) {
                        b = -1;
                    } else {
                        b = 34;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    str2 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 1:
                    str = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 2:
                    str3 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 3:
                    str4 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 4:
                    str5 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 5:
                    str6 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 6:
                    str7 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    strSubstring = strFindAIvalue.substring(3);
                    str9 = ExpandedProductParsedResult.KILOGRAM;
                    str8 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    strSubstring = strFindAIvalue.substring(3);
                    str9 = ExpandedProductParsedResult.POUND;
                    str8 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 27:
                case 28:
                case 29:
                case 30:
                    strSubstring2 = strFindAIvalue.substring(3);
                    str10 = strFindValue;
                    expandedProductParsedResult = null;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    if (strFindValue.length() < 4) {
                        return null;
                    }
                    String strSubstring4 = strFindValue.substring(3);
                    strSubstring3 = strFindValue.substring(0, 3);
                    str10 = strSubstring4;
                    expandedProductParsedResult = null;
                    strSubstring2 = strFindAIvalue.substring(3);
                    break;
                default:
                    map.put(strFindAIvalue, strFindValue);
                    expandedProductParsedResult = null;
                    break;
            }
        }
        return new ExpandedProductParsedResult(massagedText, str, str2, str3, str4, str5, str6, str7, str8, str9, strSubstring, str10, strSubstring2, strSubstring3, map);
    }
}

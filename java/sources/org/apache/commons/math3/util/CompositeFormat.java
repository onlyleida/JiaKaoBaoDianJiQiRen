package org.apache.commons.math3.util;

import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class CompositeFormat {
    private CompositeFormat() {
    }

    public static StringBuffer formatDouble(double d2, NumberFormat numberFormat, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            stringBuffer.append('(');
            stringBuffer.append(d2);
            stringBuffer.append(')');
        } else {
            numberFormat.format(d2, stringBuffer, fieldPosition);
        }
        return stringBuffer;
    }

    public static NumberFormat getDefaultNumberFormat() {
        return getDefaultNumberFormat(Locale.getDefault());
    }

    public static void parseAndIgnoreWhitespace(String str, ParsePosition parsePosition) {
        parseNextCharacter(str, parsePosition);
        parsePosition.setIndex(parsePosition.getIndex() - 1);
    }

    public static boolean parseFixedstring(String str, String str2, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        int length = str2.length() + index;
        if (index < str.length() && length <= str.length() && str.substring(index, length).compareTo(str2) == 0) {
            parsePosition.setIndex(length);
            return true;
        }
        parsePosition.setIndex(index);
        parsePosition.setErrorIndex(index);
        return false;
    }

    public static char parseNextCharacter(String str, ParsePosition parsePosition) {
        int i;
        char cCharAt;
        int index = parsePosition.getIndex();
        int length = str.length();
        if (index < length) {
            while (true) {
                i = index + 1;
                cCharAt = str.charAt(index);
                if (!Character.isWhitespace(cCharAt) || i >= length) {
                    break;
                }
                index = i;
            }
            parsePosition.setIndex(i);
            if (i < length) {
                return cCharAt;
            }
        }
        return (char) 0;
    }

    private static Number parseNumber(String str, double d2, ParsePosition parsePosition) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(d2);
        sb.append(')');
        int length = sb.length();
        int index = parsePosition.getIndex();
        int i = length + index;
        if (i >= str.length() || str.substring(index, i).compareTo(sb.toString()) != 0) {
            return null;
        }
        Double dValueOf = Double.valueOf(d2);
        parsePosition.setIndex(i);
        return dValueOf;
    }

    public static NumberFormat getDefaultNumberFormat(Locale locale) {
        NumberFormat numberFormat = NumberFormat.getInstance(locale);
        numberFormat.setMaximumFractionDigits(10);
        return numberFormat;
    }

    public static Number parseNumber(String str, NumberFormat numberFormat, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        Number number = numberFormat.parse(str, parsePosition);
        if (index == parsePosition.getIndex()) {
            double[] dArr = {Double.NaN, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY};
            for (int i = 0; i < 3; i++) {
                number = parseNumber(str, dArr[i], parsePosition);
                if (number != null) {
                    break;
                }
            }
        }
        return number;
    }
}

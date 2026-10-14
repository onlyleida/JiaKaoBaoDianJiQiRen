package com.amap.api.mapcore.util;

import java.util.Locale;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class j3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10936a = "0123456789";

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10937a;
        private int b = 1103515245;
        private int c = 12345;

        public a(String str, int i) {
            this.f10937a = e(str, i, str.length());
        }

        public char a(int i, boolean z) {
            int length = this.f10937a.length();
            if (z) {
                i = length - i;
            }
            return this.f10937a.charAt(i);
        }

        public int b(char c, boolean z) {
            int length = this.f10937a.length();
            int iIndexOf = this.f10937a.indexOf(c);
            return z ? length - iIndexOf : iIndexOf;
        }

        public int c(int i) {
            return (int) (((((long) i) * ((long) this.b)) + ((long) this.c)) & 2147483647L);
        }

        public String d(int i, String str) {
            return f(false, i, str);
        }

        public String e(String str, int i, int i2) {
            StringBuffer stringBuffer = new StringBuffer(str);
            int length = str.length();
            for (int i3 = 0; i3 < i2; i3++) {
                int iC = c(i);
                int i4 = iC % length;
                i = c(iC);
                int i5 = i % length;
                char cCharAt = stringBuffer.charAt(i4);
                stringBuffer.setCharAt(i4, stringBuffer.charAt(i5));
                stringBuffer.setCharAt(i5, cCharAt);
            }
            return stringBuffer.toString();
        }

        public String f(boolean z, int i, String str) {
            StringBuilder sb = new StringBuilder();
            int length = this.f10937a.length();
            int length2 = str.length();
            for (int i2 = 0; i2 < length2; i2++) {
                int iB = b(str.charAt(i2), z);
                if (iB < 0) {
                    break;
                }
                sb.append(a(((iB + i) + i2) % length, z));
            }
            if (sb.length() == length2) {
                return sb.toString();
            }
            return null;
        }
    }

    public static String a() {
        Random random = new Random();
        int iNextInt = random.nextInt(10);
        Locale locale = Locale.US;
        String str = String.format(locale, "%05d", Integer.valueOf(iNextInt));
        int iNextInt2 = random.nextInt(10);
        int iNextInt3 = random.nextInt(100);
        return new a(f10936a, iNextInt3).d(iNextInt2, str) + String.format(locale, "%01d", Integer.valueOf(iNextInt2)) + String.format(locale, "%02d", Integer.valueOf(iNextInt3));
    }
}

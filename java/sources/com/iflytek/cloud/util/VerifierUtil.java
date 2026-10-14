package com.iflytek.cloud.util;

import android.graphics.Bitmap;
import com.iflytek.msc.MSC;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes4.dex */
public class VerifierUtil {
    public static Bitmap ARGB2Gray(Bitmap bitmap) {
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ALPHA_8);
        if (a(bitmap, bitmapCreateBitmap)) {
            return bitmapCreateBitmap;
        }
        return null;
    }

    private static boolean a(Bitmap bitmap, Bitmap bitmap2) {
        return MSC.doARGB2Gray(bitmap, bitmap2);
    }

    public static String generateNumberPassword(int i) {
        Boolean bool = Boolean.FALSE;
        StringBuffer stringBuffer = new StringBuffer();
        SecureRandom secureRandom = new SecureRandom();
        String str = "023456789".charAt(secureRandom.nextInt(9)) + "";
        stringBuffer.append(str);
        for (int i2 = 0; i2 < i - 1; i2++) {
            while (true) {
                Boolean bool2 = bool;
                while (true) {
                    if (!bool2.booleanValue()) {
                        str = "023456789".charAt(secureRandom.nextInt(9)) + "";
                        if (stringBuffer.indexOf(str) < 0) {
                            if (Integer.parseInt(stringBuffer.charAt(stringBuffer.length() - 1) + "") * Integer.parseInt(str) != 10) {
                                bool2 = Boolean.TRUE;
                            }
                        }
                    }
                }
            }
            stringBuffer.append(str);
        }
        return stringBuffer.toString();
    }

    public static int getBitmapsize(Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }
}

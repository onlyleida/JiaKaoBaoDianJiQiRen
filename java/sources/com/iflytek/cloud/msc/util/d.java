package com.iflytek.cloud.msc.util;

import android.text.TextUtils;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    public static String a(long j) {
        return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss SSS").format(Long.valueOf(j));
    }

    public static byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 3];
        bArr2[0] = -17;
        bArr2[1] = -69;
        bArr2[2] = -65;
        System.arraycopy(bArr, 0, bArr2, 3, bArr.length);
        return bArr2;
    }

    public static boolean a(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            return jSONObject2.getLong(str) >= jSONObject.getLong(str);
        } catch (JSONException unused) {
            DebugLog.LogE("invalid jsonobject,compare " + str + " error");
            return false;
        }
    }

    public static byte[] a(String str, String str2) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        if (str.length() <= 0) {
            return new byte[]{0};
        }
        byte[] bytes = str.getBytes(str2);
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bytes.length] = 0;
        return bArr;
    }

    public static byte[] b(String str) {
        byte[] bArr = null;
        try {
            byte[] bytes = str.getBytes("utf-8");
            int length = bytes.length + 3;
            bArr = new byte[length];
            bArr[0] = -17;
            bArr[1] = -69;
            bArr[2] = -65;
            for (int i = 3; i < length; i++) {
                bArr[i] = bytes[i - 3];
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        return bArr;
    }

    public static byte[] a(String str) throws UnsupportedEncodingException {
        return a(str, "gb2312");
    }

    public static String a(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        int i = 0;
        while (i < bArr.length && bArr[i] != 0) {
            i++;
        }
        return new String(bArr, 0, Math.min(i, bArr.length), Charset.forName(str));
    }

    public static boolean b(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            String string = jSONObject.getString(str);
            String string2 = jSONObject2.getString(str);
            return (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || !string.equalsIgnoreCase(string2)) ? false : true;
        } catch (JSONException unused) {
            DebugLog.LogE("invalid jsonobject,compare " + str + " error");
            return false;
        }
    }

    public static String a(byte[] bArr) {
        return a(bArr, "gb2312");
    }
}

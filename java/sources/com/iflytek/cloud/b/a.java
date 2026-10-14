package com.iflytek.cloud.b;

import android.text.TextUtils;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.tencent.bugly.Bugly;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HashMap<String, String> f12288a = new HashMap<>();

    public a() {
    }

    public static String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.replaceAll("[,\n ]", "|");
    }

    public void a() {
        this.f12288a.clear();
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a clone() {
        a aVar = new a();
        aVar.f12288a = (HashMap) this.f12288a.clone();
        return aVar;
    }

    public void c(String str) {
        this.f12288a.clear();
        d(str);
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : str.split(",")) {
            int iIndexOf = str2.indexOf("=");
            if (iIndexOf > 0 && iIndexOf < str2.length()) {
                this.f12288a.put(str2.substring(0, iIndexOf), str2.substring(iIndexOf + 1));
            }
        }
    }

    public String e(String str) {
        return this.f12288a.remove(str);
    }

    public Boolean f(String str) {
        return Boolean.valueOf(this.f12288a.remove(str) != null);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : this.f12288a.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append("=");
            stringBuffer.append(entry.getValue());
            stringBuffer.append(",");
        }
        if (stringBuffer.length() > 0) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        String string = stringBuffer.toString();
        DebugLog.LogS(string);
        return string;
    }

    public void a(a aVar, String str) {
        if (aVar == null) {
            return;
        }
        b(str, aVar.a(str));
    }

    public a(String str, String[][] strArr) {
        c(str);
        a(strArr);
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f12288a.putAll(aVar.c());
        }
    }

    public void b(String str, String str2) {
        a(str, str2, true);
    }

    public HashMap<String, String> c() {
        return this.f12288a;
    }

    public void a(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (z || !this.f12288a.containsKey(str)) {
            this.f12288a.put(str, str2);
        }
    }

    public boolean b(String str) {
        return this.f12288a.containsKey(str);
    }

    public static boolean b(String str, boolean z) {
        if (str == null) {
            return z;
        }
        if (str.equals("true") || str.equals("1")) {
            return true;
        }
        if (str.equals(Bugly.SDK_IS_DEV) || str.equals("0")) {
            return false;
        }
        return z;
    }

    public static int b(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i;
        }
    }

    public String a(String str) {
        return this.f12288a.get(str);
    }

    public static long b(String str, long j) {
        if (str == null) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return j;
        }
    }

    public String a(String str, String str2) {
        String str3 = this.f12288a.get(str);
        return str3 == null ? str2 : str3;
    }

    public int a(String str, int i) {
        return b(this.f12288a.get(str), i);
    }

    public void d() {
        for (Map.Entry<String, String> entry : this.f12288a.entrySet()) {
            entry.setValue(g(entry.getValue()));
        }
    }

    public long a(String str, long j) {
        return b(this.f12288a.get(str), j);
    }

    public boolean a(String str, boolean z) {
        return b(this.f12288a.get(str), z);
    }

    public void a(String[][] strArr) {
        if (strArr == null) {
            return;
        }
        for (String[] strArr2 : strArr) {
            if (this.f12288a.containsKey(strArr2[0])) {
                String str = this.f12288a.get(strArr2[0]);
                this.f12288a.remove(strArr2[0]);
                for (int i = 1; i < strArr2.length; i++) {
                    this.f12288a.put(strArr2[i], str);
                }
            }
        }
    }
}

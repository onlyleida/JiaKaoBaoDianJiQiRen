package com.tencent.open.a;

import android.os.SystemClock;
import com.tencent.connect.common.Constants;
import com.tencent.open.utils.l;

/* JADX INFO: loaded from: classes6.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static d f14078a;

    protected d() {
    }

    public static synchronized d a() {
        if (f14078a == null) {
            f14078a = new d();
        }
        return f14078a;
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6) {
        g.a().a(l.a(str, str3, str4, str5, str2, str6), str2, true);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        g.a().a(l.a(str, str4, str5, str3, str2, str6, "", str7, str8, "", "", ""), str2, false);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        g.a().a(l.a(str, str4, str5, str3, str2, str6, str7, "", "", str8, str9, str10), str2, false);
    }

    public void a(int i, String str, String str2, String str3, String str4, Long l, int i2, int i3, String str5) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - l.longValue();
        if (l.longValue() == 0 || jElapsedRealtime < 0) {
            jElapsedRealtime = 0;
        }
        StringBuffer stringBuffer = new StringBuffer("https://huatuocode.huatuo.qq.com");
        stringBuffer.append("?domain=mobile.opensdk.com&cgi=opensdk&type=");
        stringBuffer.append(i);
        stringBuffer.append("&code=");
        stringBuffer.append(i2);
        stringBuffer.append("&time=");
        stringBuffer.append(jElapsedRealtime);
        stringBuffer.append("&rate=");
        stringBuffer.append(i3);
        stringBuffer.append("&uin=");
        stringBuffer.append(str2);
        stringBuffer.append("&data=");
        g.a().a(stringBuffer.toString(), Constants.HTTP_GET, l.a(String.valueOf(i), String.valueOf(i2), String.valueOf(jElapsedRealtime), String.valueOf(i3), str, str2, str3, str4, str5), true);
    }
}

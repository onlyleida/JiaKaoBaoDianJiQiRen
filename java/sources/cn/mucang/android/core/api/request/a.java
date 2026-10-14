package cn.mucang.android.core.api.request;

import cn.mucang.android.core.config.MucangConfig;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f2398a;
    private final Map<String, String> b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2400e;

    public a(String str, String str2, String str3, Map<String, String> map, Map<String, String> map2) {
        this.f2400e = str;
        this.f2399d = str2;
        this.c = str3;
        this.f2398a = map;
        this.b = map2;
    }

    @Override // cn.mucang.android.core.api.request.c.a
    public String a() {
        String strA = cn.mucang.android.core.api.url.c.a(this.f2399d, this.f2398a, this.b);
        String strSubstring = this.f2400e;
        if (strSubstring != null && strSubstring.endsWith("/")) {
            if (MucangConfig.v()) {
                throw new RuntimeException("host can't ends with '/' :" + strSubstring);
            }
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        return cn.mucang.android.core.api.request.f.a.g(strSubstring + strA, this.c);
    }
}

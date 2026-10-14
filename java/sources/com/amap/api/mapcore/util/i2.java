package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.common.net.HttpHeaders;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class i2 extends u4<String, a> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f10896h;
    private boolean i;
    private String j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f10897a;
    }

    public i2(Context context, String str) {
        super(context, str);
        this.i = false;
        this.j = null;
        this.f11236g = "/map/styles";
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getIPV6URL() {
        return r3.B(getURL());
    }

    @Override // com.amap.api.mapcore.util.r2, com.amap.api.mapcore.util.k7
    public Map<String, String> getParams() {
        Hashtable hashtable = new Hashtable(16);
        hashtable.put("key", c5.j(this.f11235f));
        if (this.i) {
            hashtable.put("sdkType", this.j);
        } else {
            hashtable.put("output", "bin");
        }
        hashtable.put("styleid", this.f10896h);
        String strA = f5.a();
        String strD = f5.d(this.f11235f, strA, n5.u(hashtable));
        hashtable.put("ts", strA);
        hashtable.put("scode", strD);
        return hashtable;
    }

    @Override // com.amap.api.mapcore.util.u4, com.amap.api.mapcore.util.k7
    public Map<String, String> getRequestHead() {
        m5 m5VarU0 = r3.u0();
        String strE = m5VarU0 != null ? m5VarU0.e() : null;
        Hashtable hashtable = new Hashtable(16);
        hashtable.put(HttpHeaders.USER_AGENT, x9.c);
        hashtable.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
        hashtable.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", strE, "3dmap"));
        hashtable.put("x-INFO", f5.b(this.f11235f));
        hashtable.put("key", c5.j(this.f11235f));
        hashtable.put("logversion", "2.1");
        return hashtable;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        return "http://restapi.amap.com/v4" + this.f11236g;
    }

    @Override // com.amap.api.mapcore.util.k7
    public boolean isSupportIPV6() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.u4
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public a h(byte[] bArr) throws ft {
        a aVar = new a();
        aVar.f10897a = bArr;
        if (this.i && bArr != null) {
            if (bArr.length == 0) {
                aVar.f10897a = null;
            } else if (bArr.length <= 1024) {
                try {
                    if (new String(bArr, "utf-8").contains("errcode")) {
                        aVar.f10897a = null;
                    }
                } catch (Exception e2) {
                    e6.r(e2, "CustomStyleRequest", "loadData");
                }
            }
        }
        return aVar;
    }

    public void m(String str) {
        this.j = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.u4
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public a g(String str) throws ft {
        return null;
    }

    public void o(String str) {
        this.f10896h = str;
    }

    public i2(Context context, String str, boolean z) {
        super(context, str);
        this.i = false;
        this.j = null;
        this.i = z;
        if (z) {
            this.f11236g = "/sdk/map/styles";
            this.isPostFlag = false;
        } else {
            this.f11236g = "/map/styles";
        }
    }
}

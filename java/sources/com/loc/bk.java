package com.loc;

import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import java.net.Proxy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class bk {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    bf.a f12604g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f12605h;
    private boolean i;
    private boolean j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f12601d = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f12602e = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Proxy f12603f = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f12600a = false;
    private int b = Constant.DEFAULT_SECURITY_VERIFY_TIMEOUT;
    private boolean c = true;
    private a k = a.NORMAL;
    private b l = b.FIRST_NONDEGRADE;

    public enum a {
        NORMAL(0),
        INTERRUPT_IO(1),
        NEVER(2),
        FIX(3),
        SINGLE(4);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f12610f;

        a(int i) {
            this.f12610f = i;
        }
    }

    public enum b {
        FIRST_NONDEGRADE(0),
        NEVER_GRADE(1),
        DEGRADE_BYERROR(2),
        DEGRADE_ONLY(3),
        FIX_NONDEGRADE(4),
        FIX_DEGRADE_BYERROR(5),
        FIX_DEGRADE_ONLY(6);


        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f12616h;

        b(int i2) {
            this.f12616h = i2;
        }

        public final int a() {
            return this.f12616h;
        }

        public final boolean b() {
            int i2 = this.f12616h;
            return i2 == FIRST_NONDEGRADE.f12616h || i2 == NEVER_GRADE.f12616h || i2 == FIX_NONDEGRADE.f12616h;
        }

        public final boolean c() {
            int i2 = this.f12616h;
            return i2 == DEGRADE_BYERROR.f12616h || i2 == DEGRADE_ONLY.f12616h || i2 == FIX_DEGRADE_BYERROR.f12616h || i2 == FIX_DEGRADE_ONLY.f12616h;
        }

        public final boolean d() {
            int i2 = this.f12616h;
            return i2 == DEGRADE_BYERROR.f12616h || i2 == FIX_DEGRADE_BYERROR.f12616h;
        }

        public final boolean e() {
            return this.f12616h == NEVER_GRADE.f12616h;
        }
    }

    public enum c {
        HTTP(0),
        HTTPS(1);

        private int c;

        c(int i) {
            this.c = i;
        }
    }

    private static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        try {
            if (map.containsKey("platinfo")) {
                return c(map.get("platinfo"));
            }
            return null;
        } catch (Throwable th) {
            aj.a(th, "ht", "pnfh");
            return null;
        }
    }

    private String b(String str) {
        byte[] bArrE = e();
        if (bArrE == null || bArrE.length == 0) {
            return str;
        }
        Map<String, String> mapD = d();
        HashMap<String, String> map = bf.f12562e;
        if (map != null) {
            if (mapD != null) {
                mapD.putAll(map);
            } else {
                mapD = map;
            }
        }
        if (mapD == null) {
            return str;
        }
        String strA = bi.a(mapD);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("?");
        stringBuffer.append(strA);
        return stringBuffer.toString();
    }

    private static String c(String str) {
        String str2;
        String strTrim = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split("&");
                if (strArrSplit.length > 1) {
                    int length = strArrSplit.length;
                    int i = 0;
                    String str3 = "";
                    while (true) {
                        if (i >= length) {
                            str2 = "";
                            break;
                        }
                        str2 = strArrSplit[i];
                        if (str2.contains("sdkversion")) {
                            str3 = str2;
                        }
                        if (str2.contains("product")) {
                            break;
                        }
                        i++;
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        String[] strArrSplit2 = str2.split("=");
                        if (strArrSplit2.length > 1) {
                            strTrim = strArrSplit2[1].trim();
                            if (!TextUtils.isEmpty(str3) && TextUtils.isEmpty(af.a(strTrim))) {
                                String[] strArrSplit3 = str3.split("=");
                                if (strArrSplit3.length > 1) {
                                    af.a(strTrim, strArrSplit3[1].trim());
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            aj.a(th, "ht", "pnfp");
        }
        return strTrim;
    }

    public abstract Map<String, String> a();

    public final void a(int i) {
        this.f12601d = i;
    }

    public final void a(a aVar) {
        this.k = aVar;
    }

    public final void a(b bVar) {
        this.l = bVar;
    }

    public final void a(c cVar) {
        this.j = cVar == c.HTTPS;
    }

    public final void a(String str) {
        this.f12605h = str;
    }

    public final void a(Proxy proxy) {
        this.f12603f = proxy;
    }

    public final void a(boolean z) {
        this.i = z;
    }

    public abstract String b();

    public final void b(int i) {
        this.f12602e = i;
    }

    public String c() {
        return b();
    }

    public final void c(int i) {
        this.b = i;
    }

    protected boolean c_() {
        return this.c;
    }

    public abstract Map<String, String> d();

    public byte[] e() {
        return null;
    }

    protected String g() {
        return "";
    }

    public String h() {
        return "";
    }

    final String l() {
        return b(b());
    }

    final String m() {
        return b(c());
    }

    public final int n() {
        return this.f12601d;
    }

    public final Proxy o() {
        return this.f12603f;
    }

    protected final a p() {
        return this.k;
    }

    protected final boolean q() {
        return this.f12600a;
    }

    public final void r() {
        this.f12600a = true;
    }

    protected final boolean s() {
        return this.j;
    }

    public final bf.a t() {
        return this.f12604g;
    }

    protected final b u() {
        return this.l;
    }

    protected final int v() {
        return this.b;
    }

    public final void w() {
        this.c = false;
    }

    protected final String x() {
        return this.f12605h;
    }

    protected final boolean y() {
        return this.i;
    }

    protected final String z() {
        String strH;
        try {
            strH = h();
            try {
                if (TextUtils.isEmpty(strH)) {
                    strH = this.f12600a ? c(((bg) this).j()) : a(a());
                }
            } catch (Throwable th) {
                th = th;
                aj.a(th, "ht", "pnfr");
            }
        } catch (Throwable th2) {
            th = th2;
            strH = "";
        }
        return strH;
    }
}

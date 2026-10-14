package com.mobile.auth.c;

import android.os.Build;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tencent.open.SocialConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f13103d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f13106g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f13107h;
    private String i;
    private String j;
    private String k;
    private String l;
    private int o;
    private long q;
    private long r;
    private String s;
    private long u;
    private long v;
    private StringBuffer t = new StringBuffer();
    private String c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f13104e = "";
    private String n = "";
    private String m = "";
    private String p = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f13102a = "1.1";

    public b(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.u = jCurrentTimeMillis;
        this.b = a(jCurrentTimeMillis);
        this.f13103d = "";
        this.f13105f = "";
        this.f13106g = Build.BRAND;
        this.f13107h = Build.MODEL;
        this.i = "Android";
        this.j = Build.VERSION.RELEASE;
        this.k = "SDK-JJ-v3.6.7";
        this.l = str;
        this.s = "0";
    }

    public static String a(long j) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA).format(new Date(j));
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return "";
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
    }

    public b a(int i) {
        try {
            this.o = i;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b a(String str) {
        try {
            this.f13103d = str;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b b(long j) {
        try {
            this.q = j;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b b(String str) {
        try {
            this.f13104e = str;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b c(String str) {
        try {
            this.f13105f = str;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b d(String str) {
        try {
            this.m = str;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b e(String str) {
        try {
            this.n = str;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b f(String str) {
        try {
            this.p = str;
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b g(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.s = str;
            }
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public b h(String str) {
        try {
            StringBuffer stringBuffer = this.t;
            stringBuffer.append(str);
            stringBuffer.append("\n");
            return this;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public String toString() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.v = jCurrentTimeMillis;
            this.r = jCurrentTimeMillis - this.u;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("v", this.f13102a);
            jSONObject.put("t", this.b);
            jSONObject.put("tag", this.c);
            jSONObject.put("ai", this.f13103d);
            jSONObject.put("di", this.f13104e);
            jSONObject.put("ns", this.f13105f);
            jSONObject.put(TtmlNode.TAG_BR, this.f13106g);
            jSONObject.put("ml", this.f13107h);
            jSONObject.put("os", this.i);
            jSONObject.put("ov", this.j);
            jSONObject.put("sv", this.k);
            jSONObject.put("ri", this.l);
            jSONObject.put("api", this.m);
            jSONObject.put(TtmlNode.TAG_P, this.n);
            jSONObject.put("rt", this.o);
            jSONObject.put(SocialConstants.PARAM_SEND_MSG, this.p);
            jSONObject.put("st", this.q);
            jSONObject.put(TtmlNode.TAG_TT, this.r);
            jSONObject.put("ot", this.s);
            jSONObject.put("ep", this.t.toString());
            return jSONObject.toString();
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return "";
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
    }
}

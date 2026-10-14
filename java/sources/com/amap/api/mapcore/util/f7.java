package com.amap.api.mapcore.util;

import com.amap.api.maps.AMapException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class f7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f10802a = 0;
    public static String b = "";
    private static f7 c;

    public interface a {
        URLConnection a(Proxy proxy, URL url);
    }

    public static f7 a() {
        if (c == null) {
            c = new f7();
        }
        return c;
    }

    public m7 b(k7 k7Var, boolean z) throws gb {
        m7 m7VarC;
        byte[] bArr;
        int iA = i7.a(2, k7Var);
        try {
            m7VarC = c(k7Var, z, iA);
        } catch (gb e2) {
            if (!i7.q(iA)) {
                throw e2;
            }
            m7VarC = null;
        }
        if ((m7VarC != null && (bArr = m7VarC.f11008a) != null && bArr.length > 0) || !i7.q(iA)) {
            return m7VarC;
        }
        try {
            return c(k7Var, z, 3);
        } catch (gb e3) {
            throw e3;
        }
    }

    public m7 c(k7 k7Var, boolean z, int i) throws gb {
        try {
            f(k7Var);
            Proxy proxy = k7Var.c;
            if (proxy == null) {
                proxy = null;
            }
            return new i7(k7Var.f10964a, k7Var.b, proxy, z).d(k7Var.b(), k7Var.c(), k7Var.isIPRequest(), k7Var.getIPDNSName(), k7Var.getRequestHead(), k7Var.d(), k7Var.isIgnoreGZip(), i);
        } catch (gb e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] d(k7 k7Var) throws gb {
        try {
            m7 m7VarB = b(k7Var, true);
            if (m7VarB != null) {
                return m7VarB.f11008a;
            }
            return null;
        } catch (gb e2) {
            throw e2;
        } catch (Throwable unused) {
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] e(k7 k7Var) throws gb {
        try {
            m7 m7VarB = b(k7Var, false);
            if (m7VarB != null) {
                return m7VarB.f11008a;
            }
            return null;
        } catch (gb e2) {
            throw e2;
        } catch (Throwable th) {
            b6.e(th, "bm", "msp");
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    protected void f(k7 k7Var) throws gb {
        if (k7Var == null) {
            throw new gb("requeust is null");
        }
        if (k7Var.getURL() == null || "".equals(k7Var.getURL())) {
            throw new gb("request url is empty");
        }
    }
}

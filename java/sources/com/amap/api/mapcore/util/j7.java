package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.AMapException;
import java.net.Proxy;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class j7 extends f7 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static j7 f10941e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private m8 f10942d;

    class a extends n8 {
    }

    static class b extends Handler {
        /* synthetic */ b(Looper looper, a aVar) {
            this(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                int i = message.what;
                if (i == 0) {
                    ((o7) message.obj).b.a();
                } else {
                    if (i != 1) {
                        return;
                    }
                    o7 o7Var = (o7) message.obj;
                    o7Var.b.a(o7Var.f11048a);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        private b(Looper looper) {
            super(looper);
        }

        public b() {
        }
    }

    private j7(boolean z, int i) {
        if (z) {
            try {
                this.f10942d = m8.g(i);
            } catch (Throwable th) {
                e6.r(th, "NetManger", "NetManger1");
                th.printStackTrace();
                return;
            }
        }
        if (Looper.myLooper() == null) {
            new b(Looper.getMainLooper(), null);
        } else {
            new b();
        }
    }

    public static j7 g(boolean z) {
        return h(z, 5);
    }

    private static synchronized j7 h(boolean z, int i) {
        try {
            j7 j7Var = f10941e;
            if (j7Var == null) {
                f10941e = new j7(z, i);
            } else if (z && j7Var.f10942d == null) {
                j7Var.f10942d = m8.g(i);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (g5.A() == null) {
                g5.w(t5.a());
            }
        } catch (Throwable unused) {
        }
        return f10941e;
    }

    public static j7 i() {
        return h(true, 5);
    }

    @Override // com.amap.api.mapcore.util.f7
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
            th.printStackTrace();
            e6.t().p(th, "NetManager", "makeSyncPostRequest");
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    public Map<String, String> j(k7 k7Var, boolean z) throws gb {
        Map<String, String> mapK;
        int iA = i7.a(2, k7Var);
        try {
            mapK = k(k7Var, z, iA);
        } catch (gb e2) {
            if (!i7.q(iA)) {
                throw e2;
            }
            mapK = null;
        }
        if (mapK != null || !i7.q(iA)) {
            return mapK;
        }
        try {
            return k(k7Var, z, 3);
        } catch (gb e3) {
            throw e3;
        }
    }

    public Map<String, String> k(k7 k7Var, boolean z, int i) throws gb {
        try {
            f(k7Var);
            Proxy proxy = k7Var.c;
            if (proxy == null) {
                proxy = null;
            }
            return new i7(k7Var.f10964a, k7Var.b, proxy, z).j(k7Var.getURL(), k7Var.c(), k7Var.isIPRequest(), k7Var.getIPDNSName(), k7Var.getRequestHead(), k7Var.getParams(), k7Var.isIgnoreGZip(), i);
        } catch (gb e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    public m7 l(k7 k7Var, boolean z) throws gb {
        m7 m7VarM;
        byte[] bArr;
        int iA = i7.a(2, k7Var);
        try {
            m7VarM = m(k7Var, z, iA);
        } catch (gb e2) {
            if (!i7.q(iA)) {
                throw e2;
            }
            m7VarM = null;
        }
        if ((m7VarM != null && (bArr = m7VarM.f11008a) != null && bArr.length > 0) || !i7.q(iA)) {
            return m7VarM;
        }
        try {
            return m(k7Var, z, 3);
        } catch (gb e3) {
            throw e3;
        }
    }

    public m7 m(k7 k7Var, boolean z, int i) throws gb {
        try {
            f(k7Var);
            Proxy proxy = k7Var.c;
            if (proxy == null) {
                proxy = null;
            }
            return new i7(k7Var.f10964a, k7Var.b, proxy, z).s(k7Var.getURL(), k7Var.c(), k7Var.isIPRequest(), k7Var.getIPDNSName(), k7Var.getRequestHead(), k7Var.getParams(), k7Var.isIgnoreGZip(), i);
        } catch (gb e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] n(k7 k7Var) throws gb {
        try {
            m7 m7VarL = l(k7Var, false);
            if (m7VarL != null) {
                return m7VarL.f11008a;
            }
            return null;
        } catch (gb e2) {
            throw e2;
        } catch (Throwable unused) {
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] o(k7 k7Var) throws gb {
        try {
            m7 m7VarL = l(k7Var, true);
            if (m7VarL != null) {
                return m7VarL.f11008a;
            }
            return null;
        } catch (gb e2) {
            throw e2;
        } catch (Throwable unused) {
            throw new gb(AMapException.ERROR_UNKNOWN);
        }
    }
}

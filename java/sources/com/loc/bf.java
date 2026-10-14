package com.loc;

import android.os.SystemClock;
import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12560a = 0;
    public static String b = "";
    public static HashMap<String, String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static HashMap<String, String> f12561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static HashMap<String, String> f12562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static bf f12563f;

    public interface a {
        URLConnection a();
    }

    public bf() {
        l.e();
    }

    private static int a(bk bkVar, long j) {
        try {
            d(bkVar);
            long jElapsedRealtime = 0;
            if (j != 0) {
                jElapsedRealtime = SystemClock.elapsedRealtime() - j;
            }
            int iN = bkVar.n();
            if (bkVar.p() != bk.a.FIX && bkVar.p() != bk.a.SINGLE) {
                long j2 = iN;
                if (jElapsedRealtime < j2) {
                    long j3 = j2 - jElapsedRealtime;
                    if (j3 >= 1000) {
                        return (int) j3;
                    }
                }
                return Math.min(1000, bkVar.n());
            }
            return iN;
        } catch (Throwable unused) {
            return 5000;
        }
    }

    public static bf a() {
        if (f12563f == null) {
            f12563f = new bf();
        }
        return f12563f;
    }

    public static bl a(bk bkVar) throws j {
        return a(bkVar, bkVar.s());
    }

    private static bl a(bk bkVar, bk.b bVar, int i) throws j {
        try {
            d(bkVar);
            bkVar.a(bVar);
            bkVar.c(i);
            return new bi().a(bkVar);
        } catch (j e2) {
            throw e2;
        } catch (Throwable th) {
            th.printStackTrace();
            throw new j(AMapException.ERROR_UNKNOWN);
        }
    }

    @Deprecated
    private static bl a(bk bkVar, boolean z) throws j {
        byte[] bArr;
        d(bkVar);
        bkVar.a(z ? bk.c.HTTPS : bk.c.HTTP);
        bl blVarA = null;
        long jElapsedRealtime = 0;
        boolean z2 = false;
        if (b(bkVar)) {
            boolean zC = c(bkVar);
            try {
                jElapsedRealtime = SystemClock.elapsedRealtime();
                blVarA = a(bkVar, b(bkVar, zC), d(bkVar, zC));
            } catch (j e2) {
                if ((e2.f() == 21 && bkVar.p() == bk.a.INTERRUPT_IO) || !zC) {
                    throw e2;
                }
                z2 = true;
            }
        }
        if (blVarA != null && (bArr = blVarA.f12619a) != null && bArr.length > 0) {
            return blVarA;
        }
        try {
            return a(bkVar, c(bkVar, z2), a(bkVar, jElapsedRealtime));
        } catch (j e3) {
            throw e3;
        }
    }

    private static bk.b b(bk bkVar, boolean z) {
        if (bkVar.p() == bk.a.FIX) {
            return bk.b.FIX_NONDEGRADE;
        }
        if (bkVar.p() != bk.a.SINGLE && z) {
            return bk.b.FIRST_NONDEGRADE;
        }
        return bk.b.NEVER_GRADE;
    }

    private static boolean b(bk bkVar) throws j {
        d(bkVar);
        try {
            String strC = bkVar.c();
            if (TextUtils.isEmpty(strC)) {
                return false;
            }
            String host = new URL(strC).getHost();
            if (!TextUtils.isEmpty(bkVar.g())) {
                host = bkVar.g();
            }
            return l.d(host);
        } catch (Throwable unused) {
            return true;
        }
    }

    private static bk.b c(bk bkVar, boolean z) {
        if (bkVar.p() == bk.a.FIX) {
            return z ? bk.b.FIX_DEGRADE_BYERROR : bk.b.FIX_DEGRADE_ONLY;
        }
        return z ? bk.b.DEGRADE_BYERROR : bk.b.DEGRADE_ONLY;
    }

    private static boolean c(bk bkVar) throws j {
        d(bkVar);
        try {
            if (!b(bkVar)) {
                return true;
            }
            if (bkVar.b().equals(bkVar.c()) || bkVar.p() == bk.a.SINGLE || !l.f12974h) {
                return false;
            }
        } catch (Throwable unused) {
        }
        return true;
    }

    private static int d(bk bkVar, boolean z) {
        try {
            d(bkVar);
            int iN = bkVar.n();
            int i = l.f12971e;
            return (bkVar.p() == bk.a.FIX || bkVar.p() == bk.a.SINGLE || iN < i || !z) ? iN : i;
        } catch (Throwable unused) {
            return 5000;
        }
    }

    private static void d(bk bkVar) throws j {
        if (bkVar == null) {
            throw new j("requeust is null");
        }
        if (bkVar.b() == null || "".equals(bkVar.b())) {
            throw new j("request url is empty");
        }
    }
}

package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class i {
    static ez b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static aq f12952e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static long f12953g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f12954a = null;
    ez c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ez f12955d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f12956f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f12957h = false;
    private Context i;

    public i(Context context) {
        this.i = context.getApplicationContext();
    }

    private void e() {
        if (b == null || fp.b() - f12953g > 180000) {
            ez ezVarF = f();
            f12953g = fp.b();
            if (ezVarF == null || !fp.a(ezVarF.a())) {
                return;
            }
            b = ezVarF;
        }
    }

    private ez f() {
        Throwable th;
        ez ezVar;
        byte[] bArrB;
        byte[] bArrB2;
        String str = null;
        if (this.i == null) {
            return null;
        }
        a();
        try {
            aq aqVar = f12952e;
            if (aqVar == null) {
                return null;
            }
            List listA = aqVar.a("_id=1", ez.class);
            if (listA == null || listA.size() <= 0) {
                ezVar = null;
            } else {
                ezVar = (ez) listA.get(0);
                try {
                    byte[] bArrB3 = o.b(ezVar.c());
                    String str2 = (bArrB3 == null || bArrB3.length <= 0 || (bArrB2 = ex.b(bArrB3, this.f12954a)) == null || bArrB2.length <= 0) ? null : new String(bArrB2, "UTF-8");
                    byte[] bArrB4 = o.b(ezVar.b());
                    if (bArrB4 != null && bArrB4.length > 0 && (bArrB = ex.b(bArrB4, this.f12954a)) != null && bArrB.length > 0) {
                        str = new String(bArrB, "UTF-8");
                    }
                    ezVar.a(str);
                    str = str2;
                } catch (Throwable th2) {
                    th = th2;
                    fi.a(th, "LastLocationManager", "readLastFix");
                }
            }
            if (!TextUtils.isEmpty(str)) {
                AMapLocation aMapLocation = new AMapLocation("");
                fi.a(aMapLocation, new JSONObject(str));
                if (fp.b(aMapLocation)) {
                    ezVar.a(aMapLocation);
                }
            }
            return ezVar;
        } catch (Throwable th3) {
            th = th3;
            ezVar = null;
        }
        fi.a(th, "LastLocationManager", "readLastFix");
        return ezVar;
    }

    public final AMapLocation a(AMapLocation aMapLocation, String str, long j) {
        if (aMapLocation == null || aMapLocation.getErrorCode() == 0 || aMapLocation.getLocationType() == 1 || aMapLocation.getErrorCode() == 7) {
            return aMapLocation;
        }
        try {
            e();
            ez ezVar = b;
            if (ezVar != null && ezVar.a() != null) {
                boolean zA = false;
                if (TextUtils.isEmpty(str)) {
                    long jB = fp.b() - b.d();
                    if (jB >= 0 && jB <= j) {
                        zA = true;
                    }
                    aMapLocation.setTrustedLevel(3);
                } else {
                    zA = fp.a(b.b(), str);
                    aMapLocation.setTrustedLevel(2);
                }
                if (!zA) {
                    return aMapLocation;
                }
                AMapLocation aMapLocationA = b.a();
                try {
                    aMapLocationA.setLocationType(9);
                    aMapLocationA.setFixLastLocation(true);
                    aMapLocationA.setLocationDetail(aMapLocation.getLocationDetail());
                    return aMapLocationA;
                } catch (Throwable th) {
                    th = th;
                    aMapLocation = aMapLocationA;
                }
                fi.a(th, "LastLocationManager", "fixLastLocation");
                return aMapLocation;
            }
            return aMapLocation;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a() {
        if (this.f12957h) {
            return;
        }
        try {
            if (this.f12954a == null) {
                this.f12954a = ex.a("MD5", n.v(this.i));
            }
            if (f12952e == null) {
                f12952e = new aq(this.i, aq.a((Class<? extends ap>) fa.class));
            }
        } catch (Throwable th) {
            fi.a(th, "LastLocationManager", "<init>:DBOperation");
        }
        this.f12957h = true;
    }

    public final boolean a(AMapLocation aMapLocation, String str) {
        if (this.i != null && aMapLocation != null && fp.a(aMapLocation) && aMapLocation.getLocationType() != 2 && !aMapLocation.isMock() && !aMapLocation.isFixLastLocation()) {
            ez ezVar = new ez();
            ezVar.a(aMapLocation);
            if (aMapLocation.getLocationType() == 1) {
                ezVar.a((String) null);
            } else {
                ezVar.a(str);
            }
            try {
                b = ezVar;
                f12953g = fp.b();
                this.c = ezVar;
                ez ezVar2 = this.f12955d;
                if ((ezVar2 == null || fp.a(ezVar2.a(), ezVar.a()) > 500.0f) && fp.b() - this.f12956f > 30000) {
                    return true;
                }
            } catch (Throwable th) {
                fi.a(th, "LastLocationManager", "setLastFix");
            }
        }
        return false;
    }

    public final AMapLocation b() {
        e();
        ez ezVar = b;
        if (ezVar != null && fp.a(ezVar.a())) {
            return b.a();
        }
        return null;
    }

    public final void c() {
        try {
            d();
            this.f12956f = 0L;
            this.f12957h = false;
            this.c = null;
            this.f12955d = null;
        } catch (Throwable th) {
            fi.a(th, "LastLocationManager", "destroy");
        }
    }

    public final void d() {
        ez ezVar;
        String strB;
        try {
            a();
            ez ezVar2 = this.c;
            if (ezVar2 != null && fp.a(ezVar2.a()) && f12952e != null && (ezVar = this.c) != this.f12955d && ezVar.d() == 0) {
                String str = this.c.a().toStr();
                String strB2 = this.c.b();
                this.f12955d = this.c;
                String str2 = null;
                if (TextUtils.isEmpty(str)) {
                    strB = null;
                } else {
                    String strB3 = o.b(ex.a(str.getBytes("UTF-8"), this.f12954a));
                    strB = TextUtils.isEmpty(strB2) ? null : o.b(ex.a(strB2.getBytes("UTF-8"), this.f12954a));
                    str2 = strB3;
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                ez ezVar3 = new ez();
                ezVar3.b(str2);
                ezVar3.a(fp.b());
                ezVar3.a(strB);
                f12952e.a(ezVar3, "_id=1");
                this.f12956f = fp.b();
                ez ezVar4 = b;
                if (ezVar4 != null) {
                    ezVar4.a(fp.b());
                }
            }
        } catch (Throwable th) {
            fi.a(th, "LastLocationManager", "saveLastFix");
        }
    }
}

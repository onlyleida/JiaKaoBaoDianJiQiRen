package com.amap.api.fence;

import android.app.PendingIntent;
import android.content.Context;
import com.amap.api.location.DPoint;
import com.loc.a;
import com.loc.fi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GeoFenceClient {
    public static final int GEOFENCE_IN = 1;
    public static final int GEOFENCE_OUT = 2;
    public static final int GEOFENCE_STAYED = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f10383a;
    a b;

    public GeoFenceClient(Context context) {
        this.f10383a = null;
        this.b = null;
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            Context applicationContext = context.getApplicationContext();
            this.f10383a = applicationContext;
            this.b = a(applicationContext);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "<init>");
        }
    }

    private static a a(Context context) {
        return new a(context);
    }

    public void addGeoFence(DPoint dPoint, float f2, String str) {
        try {
            this.b.a(dPoint, f2, str);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "addGeoFence round");
        }
    }

    public void addGeoFence(String str, String str2) {
        try {
            this.b.a(str, str2);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "addGeoFence district");
        }
    }

    public void addGeoFence(String str, String str2, DPoint dPoint, float f2, int i, String str3) {
        try {
            this.b.a(str, str2, dPoint, f2, i, str3);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "addGeoFence searche");
        }
    }

    public void addGeoFence(String str, String str2, String str3, int i, String str4) {
        try {
            this.b.a(str, str2, str3, i, str4);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "addGeoFence searche");
        }
    }

    public void addGeoFence(List<DPoint> list, String str) {
        try {
            this.b.a(list, str);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "addGeoFence polygon");
        }
    }

    public PendingIntent createPendingIntent(String str) {
        try {
            return this.b.a(str);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "creatPendingIntent");
            return null;
        }
    }

    public List<GeoFence> getAllGeoFence() {
        ArrayList arrayList = new ArrayList();
        try {
            return this.b.b();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "getGeoFenceList");
            return arrayList;
        }
    }

    public boolean isPause() {
        try {
            return this.b.i();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "isPause");
            return true;
        }
    }

    public void pauseGeoFence() {
        try {
            this.b.f();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "pauseGeoFence");
        }
    }

    public void removeGeoFence() {
        try {
            this.b.a();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "removeGeoFence");
        }
    }

    public boolean removeGeoFence(GeoFence geoFence) {
        try {
            return this.b.a(geoFence);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "removeGeoFence1");
            return false;
        }
    }

    public void resumeGeoFence() {
        try {
            this.b.h();
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "resumeGeoFence");
        }
    }

    public void setActivateAction(int i) {
        try {
            this.b.a(i);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "setActivatesAction");
        }
    }

    public void setGeoFenceAble(String str, boolean z) {
        try {
            this.b.a(str, z);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "setGeoFenceAble");
        }
    }

    public void setGeoFenceListener(GeoFenceListener geoFenceListener) {
        try {
            this.b.a(geoFenceListener);
        } catch (Throwable th) {
            fi.a(th, "GeoFenceClient", "setGeoFenceListener");
        }
    }
}

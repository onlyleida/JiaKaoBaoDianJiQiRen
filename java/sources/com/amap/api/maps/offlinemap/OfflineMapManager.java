package com.amap.api.maps.offlinemap;

import android.content.Context;
import android.os.Handler;
import com.amap.api.mapcore.util.az;
import com.amap.api.mapcore.util.c0;
import com.amap.api.mapcore.util.e6;
import com.amap.api.mapcore.util.g0;
import com.amap.api.mapcore.util.i5;
import com.amap.api.mapcore.util.p3;
import com.amap.api.mapcore.util.r3;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMapException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class OfflineMapManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    g0 f11554a;
    c0 b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OfflineMapDownloadListener f11555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OfflineLoadedListener f11556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f11557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f11558g;

    public interface OfflineLoadedListener {
        void onVerifyComplete();
    }

    public interface OfflineMapDownloadListener {
        void onCheckUpdate(boolean z, String str);

        void onDownload(int i, int i2, String str);

        void onRemove(boolean z, String str, String str2);
    }

    public OfflineMapManager(Context context, OfflineMapDownloadListener offlineMapDownloadListener) {
        this.f11555d = offlineMapDownloadListener;
        this.c = context.getApplicationContext();
        this.f11557f = new Handler(this.c.getMainLooper());
        this.f11558g = new Handler(this.c.getMainLooper());
        a(context);
        i5.a().c(this.c);
    }

    public void destroy() {
        try {
            c0 c0Var = this.b;
            if (c0Var != null) {
                c0Var.y();
            }
            b();
            Handler handler = this.f11557f;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f11557f = null;
            Handler handler2 = this.f11558g;
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
            }
            this.f11558g = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void downloadByCityCode(String str) throws AMapException {
        try {
            this.b.A(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void downloadByCityName(String str) throws AMapException {
        try {
            this.b.x(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void downloadByProvinceName(String str) throws AMapException {
        try {
            a();
            OfflineMapProvince itemByProvinceName = getItemByProvinceName(str);
            if (itemByProvinceName == null) {
                throw new AMapException(AMapException.ERROR_INVALID_PARAMETER);
            }
            Iterator<OfflineMapCity> it = itemByProvinceName.getCityList().iterator();
            while (it.hasNext()) {
                final String city = it.next().getCity();
                this.f11558g.post(new Runnable() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            OfflineMapManager.this.b.x(city);
                        } catch (AMapException e2) {
                            e6.r(e2, "OfflineMapManager", "downloadByProvinceName");
                        }
                    }
                });
            }
        } catch (Throwable th) {
            if (th instanceof AMapException) {
                throw th;
            }
            e6.r(th, "OfflineMapManager", "downloadByProvinceName");
        }
    }

    public ArrayList<OfflineMapCity> getDownloadOfflineMapCityList() {
        return this.f11554a.s();
    }

    public ArrayList<OfflineMapProvince> getDownloadOfflineMapProvinceList() {
        return this.f11554a.t();
    }

    public ArrayList<OfflineMapCity> getDownloadingCityList() {
        return this.f11554a.u();
    }

    public ArrayList<OfflineMapProvince> getDownloadingProvinceList() {
        return this.f11554a.v();
    }

    public OfflineMapCity getItemByCityCode(String str) {
        return this.f11554a.a(str);
    }

    public OfflineMapCity getItemByCityName(String str) {
        return this.f11554a.m(str);
    }

    public OfflineMapProvince getItemByProvinceName(String str) {
        return this.f11554a.r(str);
    }

    public ArrayList<OfflineMapCity> getOfflineMapCityList() {
        return this.f11554a.n();
    }

    public ArrayList<OfflineMapProvince> getOfflineMapProvinceList() {
        return this.f11554a.b();
    }

    public void pause() {
        this.b.v();
    }

    public void remove(String str) {
        try {
            if (this.b.p(str)) {
                this.b.t(str);
                return;
            }
            OfflineMapProvince offlineMapProvinceR = this.f11554a.r(str);
            if (offlineMapProvinceR != null && offlineMapProvinceR.getCityList() != null) {
                Iterator<OfflineMapCity> it = offlineMapProvinceR.getCityList().iterator();
                while (it.hasNext()) {
                    final String city = it.next().getCity();
                    this.f11558g.post(new Runnable() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.3
                        @Override // java.lang.Runnable
                        public void run() {
                            OfflineMapManager.this.b.t(city);
                        }
                    });
                }
                return;
            }
            OfflineMapDownloadListener offlineMapDownloadListener = this.f11555d;
            if (offlineMapDownloadListener != null) {
                offlineMapDownloadListener.onRemove(false, str, "没有该城市");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void restart() {
    }

    public void setOnOfflineLoadedListener(OfflineLoadedListener offlineLoadedListener) {
        this.f11556e = offlineLoadedListener;
    }

    public void stop() {
        this.b.r();
    }

    public void updateOfflineCityByCode(String str) throws AMapException {
        OfflineMapCity itemByCityCode = getItemByCityCode(str);
        if (itemByCityCode == null || itemByCityCode.getCity() == null) {
            throw new AMapException(AMapException.ERROR_INVALID_PARAMETER);
        }
        a(itemByCityCode.getCity(), "cityname");
    }

    public void updateOfflineCityByName(String str) throws AMapException {
        a(str, "cityname");
    }

    public void updateOfflineMapProvinceByName(String str) throws AMapException {
        a(str, "cityname");
    }

    private void a(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.c = applicationContext;
        c0.o = false;
        c0 c0VarB = c0.b(applicationContext);
        this.b = c0VarB;
        c0VarB.g(new c0.d() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.1
            @Override // com.amap.api.mapcore.util.c0.d
            public void a(final az azVar) {
                if (OfflineMapManager.this.f11555d == null || azVar == null) {
                    return;
                }
                OfflineMapManager.this.f11557f.post(new Runnable() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            OfflineMapManager.this.f11555d.onDownload(azVar.v().e(), azVar.getcompleteCode(), azVar.getCity());
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }

            @Override // com.amap.api.mapcore.util.c0.d
            public void b(final az azVar) {
                if (OfflineMapManager.this.f11555d == null || azVar == null) {
                    return;
                }
                OfflineMapManager.this.f11557f.post(new Runnable() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (azVar.v().equals(azVar.l) || azVar.v().equals(azVar.f10470f)) {
                                OfflineMapManager.this.f11555d.onCheckUpdate(true, azVar.getCity());
                            } else {
                                OfflineMapManager.this.f11555d.onCheckUpdate(false, azVar.getCity());
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }

            @Override // com.amap.api.mapcore.util.c0.d
            public void c(final az azVar) {
                if (OfflineMapManager.this.f11555d == null || azVar == null) {
                    return;
                }
                OfflineMapManager.this.f11557f.post(new Runnable() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (azVar.v().equals(azVar.f10470f)) {
                                OfflineMapManager.this.f11555d.onRemove(true, azVar.getCity(), "");
                            } else {
                                OfflineMapManager.this.f11555d.onRemove(false, azVar.getCity(), "");
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }

            @Override // com.amap.api.mapcore.util.c0.d
            public void a() {
                if (OfflineMapManager.this.f11556e != null) {
                    OfflineMapManager.this.f11557f.post(new Runnable() { // from class: com.amap.api.maps.offlinemap.OfflineMapManager.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                OfflineMapManager.this.f11556e.onVerifyComplete();
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                    });
                }
            }
        });
        try {
            this.b.d();
            this.f11554a = this.b.k;
            p3.h(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b() {
        this.f11555d = null;
    }

    public OfflineMapManager(Context context, OfflineMapDownloadListener offlineMapDownloadListener, AMap aMap) {
        this.f11555d = offlineMapDownloadListener;
        this.c = context.getApplicationContext();
        this.f11557f = new Handler(this.c.getMainLooper());
        this.f11558g = new Handler(this.c.getMainLooper());
        try {
            a(context);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(String str, String str2) throws AMapException {
        this.b.h(str);
    }

    private void a() throws AMapException {
        if (!r3.t0(this.c)) {
            throw new AMapException(AMapException.ERROR_CONNECTION);
        }
    }
}

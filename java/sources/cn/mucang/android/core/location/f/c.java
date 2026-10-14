package cn.mucang.android.core.location.f;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.location.MucangLocateOption;
import cn.mucang.android.core.location.e;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.selectcity.CityNameCodeMapping;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import java.util.Date;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c extends e {
    private long b;

    class a implements AMapLocationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2591a = 0;
        final /* synthetic */ AMapLocationClient[] b;
        final /* synthetic */ CountDownLatch c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.core.location.c[] f2592d;

        a(AMapLocationClient[] aMapLocationClientArr, CountDownLatch countDownLatch, cn.mucang.android.core.location.c[] cVarArr) {
            this.b = aMapLocationClientArr;
            this.c = countDownLatch;
            this.f2592d = cVarArr;
        }

        private void a() {
            AMapLocationClient[] aMapLocationClientArr = this.b;
            if (aMapLocationClientArr[0] != null) {
                aMapLocationClientArr[0].stopLocation();
            }
            this.b[0] = null;
            this.c.countDown();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void c(AMapLocationClient[] aMapLocationClientArr) {
            c.this.l(aMapLocationClientArr[0]);
        }

        public void d() {
            this.f2591a++;
            long jCurrentTimeMillis = 1100 - (System.currentTimeMillis() - c.this.b);
            if (jCurrentTimeMillis <= 0) {
                c.this.l(this.b[0]);
            } else {
                final AMapLocationClient[] aMapLocationClientArr = this.b;
                u.d(new Runnable() { // from class: cn.mucang.android.core.location.f.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2588a.c(aMapLocationClientArr);
                    }
                }, jCurrentTimeMillis);
            }
        }

        @Override // com.amap.api.location.AMapLocationListener
        public void onLocationChanged(AMapLocation aMapLocation) {
            cn.mucang.android.core.location.c cVarH = c.this.h(aMapLocation);
            if (cVarH != null) {
                this.f2592d[0] = cVarH;
                a();
                return;
            }
            if (aMapLocation.getErrorCode() == 12) {
                f.a.a.a.c.l(c.this.a() + "-用户禁止");
                a();
                return;
            }
            t.h("AmapLocateClientImpl", c.this.a() + "retry............" + this.f2591a);
            if (this.f2591a < ((e) c.this).f2587a.e()) {
                d();
            } else {
                a();
            }
        }
    }

    public c(MucangLocateOption mucangLocateOption) {
        super(mucangLocateOption);
        this.b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public cn.mucang.android.core.location.c h(AMapLocation aMapLocation) {
        if (!i(aMapLocation)) {
            return null;
        }
        cn.mucang.android.core.location.c cVar = new cn.mucang.android.core.location.c();
        cVar.k(aMapLocation.getAddress());
        String city = aMapLocation.getCity();
        if (n0.e(aMapLocation.getCity()) && n0.g(aMapLocation.getDistrict())) {
            city = aMapLocation.getDistrict();
        }
        cVar.m(city);
        cVar.l(CityNameCodeMapping.b(city));
        if (n0.g(aMapLocation.getDistrict())) {
            cVar.n(aMapLocation.getDistrict());
        } else {
            cVar.n("");
        }
        cVar.o(aMapLocation.getLatitude());
        cVar.p(aMapLocation.getLongitude());
        cVar.q(aMapLocation.getProvince());
        cVar.r(aMapLocation.getAccuracy());
        cVar.s(p0.a(new Date(aMapLocation.getTime()), "yyyy-MM-dd HH:mm:ss"));
        cVar.t(aMapLocation.getTime());
        d(cVar);
        if (n0.e(cVar.b())) {
            return null;
        }
        return cVar;
    }

    private boolean i(AMapLocation aMapLocation) {
        return aMapLocation != null && aMapLocation.getErrorCode() == 0 && aMapLocation.getLongitude() > 1.0d && aMapLocation.getLatitude() > 1.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(AMapLocationClient[] aMapLocationClientArr, CountDownLatch countDownLatch, cn.mucang.android.core.location.c[] cVarArr) {
        if (aMapLocationClientArr[0] == null) {
            return;
        }
        aMapLocationClientArr[0].setLocationListener(new a(aMapLocationClientArr, countDownLatch, cVarArr));
        AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
        if (this.f2587a.b() == MucangLocateOption.LocateMode.FINE_LOCATION_ONLY) {
            aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Hight_Accuracy);
        } else {
            aMapLocationClientOption.setLocationMode(AMapLocationClientOption.AMapLocationMode.Battery_Saving);
        }
        aMapLocationClientOption.setGpsFirst(false);
        aMapLocationClientOption.setOnceLocation(true);
        aMapLocationClientOption.setLocationPurpose(AMapLocationClientOption.AMapLocationPurpose.SignIn);
        aMapLocationClientOption.setNeedAddress(true);
        aMapLocationClientOption.setGeoLanguage(AMapLocationClientOption.GeoLanguage.ZH);
        aMapLocationClientArr[0].setLocationOption(aMapLocationClientOption);
        l(aMapLocationClientArr[0]);
    }

    @Override // cn.mucang.android.core.location.e
    public String a() {
        return "高德地图";
    }

    @Override // cn.mucang.android.core.location.e
    protected cn.mucang.android.core.location.c b(long j) {
        AMapLocationClient aMapLocationClient;
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AMapLocationClient[] aMapLocationClientArr = new AMapLocationClient[1];
        final cn.mucang.android.core.location.c[] cVarArr = new cn.mucang.android.core.location.c[1];
        try {
            aMapLocationClientArr[0] = new AMapLocationClient(MucangConfig.getContext());
        } catch (Exception e2) {
            t.c("Exception", e2);
        }
        if (aMapLocationClientArr[0] == null) {
            return null;
        }
        u.c(new Runnable() { // from class: cn.mucang.android.core.location.f.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f2589a.k(aMapLocationClientArr, countDownLatch, cVarArr);
            }
        });
        try {
            try {
                countDownLatch.await(j, TimeUnit.MILLISECONDS);
                if (aMapLocationClientArr[0] != null) {
                    aMapLocationClient = aMapLocationClientArr[0];
                    aMapLocationClient.stopLocation();
                }
            } catch (InterruptedException e3) {
                t.a("AmapLocateClientImpl", a() + " error:" + e3);
                if (aMapLocationClientArr[0] != null) {
                    aMapLocationClient = aMapLocationClientArr[0];
                }
            }
            return cVarArr[0];
        } catch (Throwable th) {
            if (aMapLocationClientArr[0] != null) {
                aMapLocationClientArr[0].stopLocation();
            }
            throw th;
        }
    }

    public void l(AMapLocationClient aMapLocationClient) {
        if (aMapLocationClient == null) {
            return;
        }
        this.b = System.currentTimeMillis();
        aMapLocationClient.startLocation();
    }
}

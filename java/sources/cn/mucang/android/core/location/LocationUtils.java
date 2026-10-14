package cn.mucang.android.core.location;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.m;
import cn.mucang.android.core.identity.PrivacyDataManager;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.core.utils.z;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.mobile.auth.BuildConfig;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class LocationUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile d f2570a = null;
    public static final String b = "LocationUtils";
    private static volatile cn.mucang.android.core.location.c c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile cn.mucang.android.core.location.c f2572e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile boolean f2573f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile String f2574g;
    private static boolean j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ReentrantLock f2571d = new ReentrantLock();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ReentrantLock f2575h = new ReentrantLock();
    private static final BroadcastReceiver i = new a();
    private static final ReentrantLock k = new ReentrantLock();

    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            LocationUtils.u();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PrivacyDataManager.b("_try_locate_")) {
                PrivacyDataManager.q("_try_locate_");
                long jCurrentTimeMillis = System.currentTimeMillis();
                cn.mucang.android.core.location.c cVarK = LocationUtils.k(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                t.h(LocationUtils.b, "定位耗时:" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms,结果：" + cVarK);
                if (cVarK == null || !BuildConfig.COMMON_MODULE_COMMIT_ID.equalsIgnoreCase(cVarK.b())) {
                    return;
                }
                f.a.a.a.c.l("定位转CityCode为'null'");
            }
        }
    }

    class c implements Callable<Boolean> {
        c() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Future futureA = MucangConfig.A(new m());
            String str = futureA != null ? (String) futureA.get() : null;
            LocationUtils.s("IP定位", jCurrentTimeMillis);
            t.a("hadeslee", "IP定位耗时:" + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms,结果：" + str);
            if (!n0.g(str)) {
                f.a.a.a.c.l("获取IP转CityCode为空");
                return Boolean.FALSE;
            }
            LocationUtils.p(str, true);
            if (BuildConfig.COMMON_MODULE_COMMIT_ID.equalsIgnoreCase(str)) {
                f.a.a.a.c.l("获取IP转CityCode为'null'");
            }
            f.a.a.a.c.l("获取IP转CityCode成功");
            return Boolean.TRUE;
        }
    }

    interface d {
        e a(MucangLocateOption mucangLocateOption);
    }

    static {
        new HashMap<Integer, String>() { // from class: cn.mucang.android.core.location.LocationUtils.4
            {
                put(3, "gps,network");
                put(1, "gps");
                put(2, "network");
                put(0, "");
            }
        };
    }

    public static void c(Application application, d dVar) {
        ReentrantLock reentrantLock = k;
        if (reentrantLock.tryLock()) {
            try {
                if (j) {
                    t.a(b, "already initialized");
                    reentrantLock.unlock();
                    return;
                }
                j = true;
                reentrantLock.unlock();
                f2570a = dVar;
                MucangConfig.q().c(i, new IntentFilter("cn.mucang.android.core.location.ACTION_TRY_TO_LOCATE"));
                q(j(), false);
                p(i(), false);
                u();
            } catch (Throwable th) {
                k.unlock();
                throw th;
            }
        }
    }

    public static cn.mucang.android.core.location.c d() {
        return e(true);
    }

    public static cn.mucang.android.core.location.c e(boolean z) {
        if (!z || z.a("android.permission.ACCESS_FINE_LOCATION")) {
            return (!MucangConfig.v() || f2572e == null) ? c : f2572e;
        }
        return null;
    }

    public static String f() {
        return f2574g;
    }

    public static boolean g() {
        return f2573f;
    }

    private static String i() {
        String string = MucangConfig.getContext().getSharedPreferences("_location_prefs", 0).getString("ipCityCode", "");
        if (!n0.g(string)) {
            return null;
        }
        t.h("hadeslee", "有缓存的ipCityCode");
        return string;
    }

    private static cn.mucang.android.core.location.c j() {
        if (!f2571d.tryLock()) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = MucangConfig.getContext().getSharedPreferences("_location_prefs", 0);
            if (!sharedPreferences.getBoolean("hasBaiduLocation", false)) {
                t.h(b, "没有缓存位置");
                return null;
            }
            t.h(b, "有缓存的百度位置");
            cn.mucang.android.core.location.c cVar = new cn.mucang.android.core.location.c();
            cVar.s(sharedPreferences.getString("resultTime", ""));
            cVar.t(sharedPreferences.getLong("resultTimeStamp", 0L));
            cVar.p(y.d(sharedPreferences.getString("longitude", "0"), 0.0d));
            cVar.o(y.d(sharedPreferences.getString("latitude", "0"), 0.0d));
            cVar.r(y.d(sharedPreferences.getString("radius", "0"), 0.0d));
            cVar.k(sharedPreferences.getString("address", ""));
            cVar.q(sharedPreferences.getString("province", ""));
            cVar.m(sharedPreferences.getString("cityName", ""));
            cVar.l(sharedPreferences.getString("cityCode", ""));
            cVar.n(sharedPreferences.getString("district", ""));
            return cVar;
        } finally {
            f2571d.unlock();
        }
    }

    public static cn.mucang.android.core.location.c k(long j2) {
        return l(j2, true);
    }

    public static cn.mucang.android.core.location.c l(long j2, boolean z) {
        MucangLocateOption mucangLocateOption = new MucangLocateOption();
        mucangLocateOption.g(j2);
        mucangLocateOption.h(z);
        mucangLocateOption.a(MucangLocateOption.LocateMode.FINE_LOCATION_ONLY);
        return m(mucangLocateOption);
    }

    public static cn.mucang.android.core.location.c m(MucangLocateOption mucangLocateOption) {
        if (mucangLocateOption.f()) {
            if (mucangLocateOption.b() == MucangLocateOption.LocateMode.FINE_LOCATION_ONLY && !z.a("android.permission.ACCESS_FINE_LOCATION")) {
                t.a(b, "使用精确定位，没给精确定位权限直接返回");
                return null;
            }
            if (mucangLocateOption.b() == MucangLocateOption.LocateMode.COARSE_LOCATION_ONLY && !z.a("android.permission.ACCESS_COARSE_LOCATION")) {
                t.a(b, "使用粗略定位，没给粗略定位权限直接返回");
                return null;
            }
        }
        if (c != null && System.currentTimeMillis() - c.j() < mucangLocateOption.d()) {
            t.a(b, "定位时间间隔小于" + mucangLocateOption.d() + "ms直接返回缓存");
            return c;
        }
        if (f2570a == null) {
            if (MucangConfig.v()) {
                u.h("请引入定位服务模块");
            }
            t.d(b, "请引入定位服务模块");
            return null;
        }
        e eVarA = f2570a.a(mucangLocateOption);
        long jCurrentTimeMillis = System.currentTimeMillis();
        cn.mucang.android.core.location.c cVarC = eVarA.c();
        if (cVarC != null) {
            f2573f = false;
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.location.a
                @Override // java.lang.Runnable
                public final void run() {
                    LocationUtils.t();
                }
            });
            q(cVarC, true);
        } else {
            f2573f = true;
        }
        s(eVarA.a(), jCurrentTimeMillis);
        return cVarC;
    }

    private static void n(String str) {
        if (n0.g(str)) {
            SharedPreferences.Editor editorEdit = MucangConfig.getContext().getSharedPreferences("_location_prefs", 0).edit();
            editorEdit.putString("ipCityCode", str);
            editorEdit.apply();
        }
    }

    private static void o(cn.mucang.android.core.location.c cVar) {
        if (cVar != null) {
            SharedPreferences.Editor editorEdit = MucangConfig.getContext().getSharedPreferences("_location_prefs", 0).edit();
            editorEdit.putBoolean("hasBaiduLocation", true);
            editorEdit.putString("address", cVar.a());
            editorEdit.putString("cityCode", cVar.b());
            editorEdit.putString("cityName", cVar.c());
            editorEdit.putString("resultTime", cVar.i());
            editorEdit.putLong("resultTimeStamp", cVar.j());
            editorEdit.putString("longitude", String.valueOf(cVar.f()));
            editorEdit.putString("latitude", String.valueOf(cVar.e()));
            editorEdit.putString("radius", String.valueOf(cVar.h()));
            editorEdit.putString("province", cVar.g());
            editorEdit.putString("district", cVar.d());
            editorEdit.apply();
        }
    }

    public static void p(String str, boolean z) {
        if (f2575h.tryLock()) {
            try {
                f2574g = str;
                if (z) {
                    n(str);
                }
            } finally {
                f2575h.unlock();
            }
        }
    }

    private static void q(cn.mucang.android.core.location.c cVar, boolean z) {
        if (f2571d.tryLock()) {
            try {
                c = cVar;
                if (z) {
                    o(cVar);
                }
            } finally {
                f2571d.unlock();
            }
        }
    }

    public static void r(cn.mucang.android.core.location.c cVar) {
        f2572e = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s(String str, long j2) {
        String str2;
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        if (jCurrentTimeMillis < 500) {
            str2 = "获取" + str + "定位小于0.5秒";
        } else if (jCurrentTimeMillis < 1000) {
            str2 = "获取" + str + "定位小于1秒";
        } else if (jCurrentTimeMillis < SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            str2 = "获取" + str + "定位小于2秒";
        } else if (jCurrentTimeMillis < 3000) {
            str2 = "获取" + str + "定位小于3秒";
        } else if (jCurrentTimeMillis < 4000) {
            str2 = "获取" + str + "定位小于4秒";
        } else if (jCurrentTimeMillis < DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            str2 = "获取" + str + "定位小于5秒";
        } else if (jCurrentTimeMillis < 10000) {
            str2 = "获取" + str + "定位小于10秒";
        } else {
            str2 = "获取" + str + "定位大于10秒";
        }
        f.a.a.a.c.k(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t() {
        if (a0.e()) {
            try {
                cn.mucang.android.core.misc.c.e(MucangConfig.getContext(), "ip-locate1").c(new c());
            } catch (Exception e2) {
                f.a.a.a.c.l("获取IP转CityCode失败");
                t.c("默认替换", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("tryLocate");
        } else {
            t.a("core", "start locate");
            MucangConfig.f(new b());
        }
    }
}

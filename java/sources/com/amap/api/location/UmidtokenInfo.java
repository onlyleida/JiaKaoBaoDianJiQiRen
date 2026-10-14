package com.amap.api.location;

import android.content.Context;
import android.os.Handler;
import com.loc.fi;
import com.loc.n;

/* JADX INFO: loaded from: classes5.dex */
public class UmidtokenInfo {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AMapLocationClient f10425d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Handler f10424a = new Handler();
    static String b = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f10426e = 30000;
    static boolean c = true;

    static class a implements AMapLocationListener {
        a() {
        }

        @Override // com.amap.api.location.AMapLocationListener
        public final void onLocationChanged(AMapLocation aMapLocation) {
            try {
                if (UmidtokenInfo.f10425d != null) {
                    UmidtokenInfo.f10424a.removeCallbacksAndMessages(null);
                    UmidtokenInfo.f10425d.onDestroy();
                }
            } catch (Throwable th) {
                fi.a(th, "UmidListener", "onLocationChanged");
            }
        }
    }

    public static String getUmidtoken() {
        return b;
    }

    public static void setLocAble(boolean z) {
        c = z;
    }

    public static synchronized void setUmidtoken(Context context, String str) {
        try {
            b = str;
            n.a(str);
            if (f10425d == null && c) {
                a aVar = new a();
                f10425d = new AMapLocationClient(context);
                AMapLocationClientOption aMapLocationClientOption = new AMapLocationClientOption();
                aMapLocationClientOption.setOnceLocation(true);
                aMapLocationClientOption.setNeedAddress(false);
                f10425d.setLocationOption(aMapLocationClientOption);
                f10425d.setLocationListener(aVar);
                f10425d.startLocation();
                f10424a.postDelayed(new Runnable() { // from class: com.amap.api.location.UmidtokenInfo.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            if (UmidtokenInfo.f10425d != null) {
                                UmidtokenInfo.f10425d.onDestroy();
                            }
                        } catch (Throwable th) {
                            fi.a(th, "UmidListener", "postDelayed");
                        }
                    }
                }, 30000L);
            }
        } catch (Throwable th) {
            fi.a(th, "UmidListener", "setUmidtoken");
        }
    }
}

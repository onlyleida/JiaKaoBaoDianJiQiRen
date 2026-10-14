package com.unity3d.splash.services;

import android.app.Activity;
import android.os.Build;
import com.unity3d.splash.services.c.b.b;
import com.unity3d.splash.services.core.configuration.d;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.util.Date;

/* JADX INFO: loaded from: classes6.dex */
public class UnityServices {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f14365a = false;

    public enum UnityServicesError {
        INVALID_ARGUMENT,
        INIT_SANITY_CHECK_FAIL
    }

    public static void a(Activity activity, String str, a aVar, boolean z, boolean z2) {
        StringBuilder sb;
        String str2;
        DeviceLog.d();
        if (f14365a) {
            if (com.unity3d.splash.services.c.b.a.c() == null || com.unity3d.splash.services.c.b.a.c().equals(str)) {
                return;
            }
            DeviceLog.j("You are trying to re-initialize with a different gameId");
            return;
        }
        f14365a = true;
        if (!b()) {
            DeviceLog.e("Error while initializing Unity Services: device is not supported");
            return;
        }
        DeviceLog.h("Application start initializing at " + new Date().getTime());
        b.l(System.currentTimeMillis());
        if (str == null || str.length() == 0) {
            DeviceLog.e("Error while initializing Unity Services: empty game ID, halting Unity Ads init");
            if (aVar != null) {
                aVar.a(UnityServicesError.INVALID_ARGUMENT, "Empty game ID");
                return;
            }
            return;
        }
        if (activity == null) {
            DeviceLog.e("Error while initializing Unity Services: null activity, halting Unity Ads init");
            if (aVar != null) {
                aVar.a(UnityServicesError.INVALID_ARGUMENT, "Null activity");
                return;
            }
            return;
        }
        if (z) {
            sb = new StringBuilder("Initializing Unity Services ");
            sb.append(b.i());
            sb.append(" (");
            sb.append(b.h());
            sb.append(") with game id ");
            sb.append(str);
            str2 = " in test mode";
        } else {
            sb = new StringBuilder("Initializing Unity Services ");
            sb.append(b.i());
            sb.append(" (");
            sb.append(b.h());
            sb.append(") with game id ");
            sb.append(str);
            str2 = " in production mode";
        }
        sb.append(str2);
        DeviceLog.h(sb.toString());
        b.k(b.d());
        b.n(aVar);
        com.unity3d.splash.services.c.b.a.f(str);
        com.unity3d.splash.services.c.b.a.e(activity.getApplicationContext());
        com.unity3d.splash.services.c.b.a.d(activity.getApplication());
        b.o(z2);
        b.p(z);
        if (com.unity3d.splash.services.core.configuration.b.b()) {
            DeviceLog.h("Unity Services environment check OK");
            d.a(new com.unity3d.splash.services.core.configuration.a());
        } else {
            DeviceLog.e("Error during Unity Services environment check, halting Unity Services init");
            if (aVar != null) {
                aVar.a(UnityServicesError.INIT_SANITY_CHECK_FAIL, "Unity Services init environment check failed");
            }
        }
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 16;
    }
}

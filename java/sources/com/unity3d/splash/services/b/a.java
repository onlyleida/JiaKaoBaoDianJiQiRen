package com.unity3d.splash.services.b;

import android.app.Activity;
import com.unity3d.splash.UnityAds;
import com.unity3d.splash.services.UnityServices;
import com.unity3d.splash.services.core.log.DeviceLog;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: com.unity3d.splash.services.b.a$a, reason: collision with other inner class name */
    static class C0286a implements com.unity3d.splash.services.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.unity3d.splash.a f14366a;

        C0286a(com.unity3d.splash.a aVar) {
            this.f14366a = aVar;
        }

        @Override // com.unity3d.splash.services.a
        public final void a(UnityServices.UnityServicesError unityServicesError, String str) {
            if (unityServicesError == UnityServices.UnityServicesError.INIT_SANITY_CHECK_FAIL) {
                this.f14366a.a(UnityAds.UnityAdsError.INIT_SANITY_CHECK_FAIL, str);
            } else if (unityServicesError == UnityServices.UnityServicesError.INVALID_ARGUMENT) {
                this.f14366a.a(UnityAds.UnityAdsError.INVALID_ARGUMENT, str);
            }
        }
    }

    public static void a(com.unity3d.splash.a aVar) {
        com.unity3d.splash.services.b.b.a.a(aVar);
    }

    public static void b(Activity activity, String str, com.unity3d.splash.a aVar, boolean z, boolean z2) {
        DeviceLog.d();
        a(aVar);
        UnityServices.a(activity, str, new C0286a(aVar), z, z2);
    }
}

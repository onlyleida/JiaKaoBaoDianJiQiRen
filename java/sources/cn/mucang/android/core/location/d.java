package cn.mucang.android.core.location;

import android.app.Application;
import com.amap.api.location.AMapLocationClient;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static void a(Application application) {
        AMapLocationClient.updatePrivacyShow(application, true, true);
        AMapLocationClient.updatePrivacyAgree(application, true);
        LocationUtils.c(application, new LocationUtils.d() { // from class: cn.mucang.android.core.location.b
            @Override // cn.mucang.android.core.location.LocationUtils.d
            public final e a(MucangLocateOption mucangLocateOption) {
                return d.b(mucangLocateOption);
            }
        });
    }

    static /* synthetic */ e b(MucangLocateOption mucangLocateOption) {
        return new cn.mucang.android.core.location.f.c(mucangLocateOption);
    }
}

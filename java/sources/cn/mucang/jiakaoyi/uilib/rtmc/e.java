package cn.mucang.jiakaoyi.uilib.rtmc;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import cn.mucang.android.jiakaoyi.signal.gps.GpsAnalysis;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationInfoModel;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r0<GpsStationInfoModel> f9485a;
    public static String b;

    static {
        r0<GpsStationInfoModel> r0VarH = r0.h("gps__station__info", null, GpsStationInfoModel.class);
        f9485a = r0VarH;
        b = "";
        final GpsStationInfoModel gpsStationInfoModelB = r0VarH.b();
        if (gpsStationInfoModelB == null || !n0.e(b)) {
            return;
        }
        b = gpsStationInfoModelB.name;
        u.d(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.rtmc.a
            @Override // java.lang.Runnable
            public final void run() {
                e.a(gpsStationInfoModelB);
            }
        }, 3000L);
    }

    static /* synthetic */ void a(GpsStationInfoModel gpsStationInfoModel) {
        GpsAnalysis.f().r(new Gps(gpsStationInfoModel.lat, gpsStationInfoModel.lon));
        GpsAnalysis.f().s(gpsStationInfoModel.name);
    }

    public static void b(GpsStationInfoModel gpsStationInfoModel) {
        if (gpsStationInfoModel != null) {
            r0<GpsStationInfoModel> r0Var = f9485a;
            if (!gpsStationInfoModel.equals(r0Var.b())) {
                r0Var.j(gpsStationInfoModel);
            }
            b = gpsStationInfoModel.name;
            GpsAnalysis.f().r(new Gps(gpsStationInfoModel.lat, gpsStationInfoModel.lon));
            GpsAnalysis.f().s(gpsStationInfoModel.name);
        }
    }
}

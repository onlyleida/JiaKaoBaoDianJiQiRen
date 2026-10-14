package cn.mucang.android.jiakaoyi.framework.p002e;

import android.location.Location;
import android.os.Build;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.framework.consts.BoxVersion;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AbsApiLangDataProvider;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f3437a = Build.SERIAL;
    private static final Map<String, String> b = new ConcurrentHashMap();

    public static void a(String str, String str2) {
        if (n0.g(str) && n0.g(str2)) {
            b.put(str, str2);
        }
    }

    public static Map<String, String> b() {
        String authToken;
        HashMap map = new HashMap();
        if (AccountManager.h().l() && (authToken = AccountManager.h().g().getAuthToken()) != null) {
            map.put("authToken", authToken);
        }
        String strC = DeviceUtils.c();
        if (n0.g(strC)) {
            map.put("deviceNum", strC);
        }
        String strJ = DeviceUtils.j();
        if (n0.g(strJ)) {
            map.put("serialNumber", strJ);
        }
        String strE = DeviceUtils.e();
        if (n0.g(strE)) {
            map.put("hardwareId", strE);
        }
        Location location = o.f3441a;
        if (c(location.getLongitude(), location.getLatitude())) {
            map.put("latitude", location.getLatitude() + "");
            map.put("longitude", location.getLongitude() + "");
        }
        map.put("areaCode", CityCodeManager.d());
        map.put("isHighPrecision", String.valueOf(b0.a().b()));
        if (SchoolDeviceUtil.f3622a.a()) {
            map.put("_loginMode", "STUDENT");
        } else {
            map.put("_loginMode", "COACH");
        }
        String str = f3437a;
        if (str == null) {
            str = "UNKNOWN";
        }
        if (n0.g(str)) {
            map.put("deviceSn", str);
        }
        map.put("kemu", String.valueOf(AppUtils.a()));
        map.put("xyVersion", String.valueOf(2));
        map.put("xyOtaVersion", String.valueOf(DeviceUtils.i()));
        map.put("xyBoxVersion", String.valueOf(DeviceUtils.b()));
        map.put("xyHardwareVersion", String.valueOf(DeviceUtils.f()));
        BoxVersion boxVersion = BoxVersion.parse(DeviceUtils.b());
        if (boxVersion != null && boxVersion.hasOBD()) {
            map.put("xyObdVersion", String.valueOf(DeviceUtils.h()));
        }
        if (XyToken.c().e() != null) {
            map.put("xyToken", XyToken.c().e());
        }
        AbsApiLangDataProvider absApiLangDataProvider = (AbsApiLangDataProvider) DataProviderRegister.f3433a.a(AbsApiLangDataProvider.class, null);
        if (absApiLangDataProvider != null) {
            map.put("_lang", absApiLangDataProvider.getApiLang().serverCode);
        }
        Map<String, String> map2 = b;
        if (map2.size() > 0) {
            map.putAll(map2);
        }
        return map;
    }

    private static boolean c(double d2, double d3) {
        if (d2 < -180.0d || d2 > 180.0d || d3 < -90.0d || d3 > 90.0d) {
            return false;
        }
        return Math.abs(d2) >= 1.0E-10d || Math.abs(d3) >= 1.0E-10d;
    }
}

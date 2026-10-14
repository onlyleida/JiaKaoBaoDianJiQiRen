package cn.mucang.android.selectcity;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.ui.framework.mvp.BaseModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class CityNameCodeMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f8908a = "CityNameCodeMapping";
    private static final Map<String, String> b = new LinkedHashMap();
    private static final Map<String, String> c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<MucangPOI> f8909d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile boolean f8910e;

    public static class MucangPOI implements BaseModel {
        public String code;
        public String latitude;
        public String longitude;
        public String name;

        public MucangPOI() {
        }

        public String getCode() {
            return this.code;
        }

        public String getLatitude() {
            return this.latitude;
        }

        public String getLongitude() {
            return this.longitude;
        }

        public String getName() {
            return this.name;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public void setLatitude(String str) {
            this.latitude = str;
        }

        public void setLongitude(String str) {
            this.longitude = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public MucangPOI(String str, String str2, String str3, String str4) {
            this.name = str;
            this.code = str2;
            this.latitude = str3;
            this.longitude = str4;
        }
    }

    public static synchronized void a() {
        if (f8910e) {
            return;
        }
        if (cn.mucang.android.core.utils.u.b()) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.selectcity.a
                @Override // java.lang.Runnable
                public final void run() {
                    CityNameCodeMapping.d();
                }
            });
        } else {
            d();
        }
    }

    public static String b(String str) {
        Map<String, String> map;
        a();
        String str2 = "";
        if (n0.e(str)) {
            return "";
        }
        if (f8910e && (str2 = (map = c).get(str)) == null) {
            for (String str3 : map.keySet()) {
                if (str.startsWith(str3)) {
                    str2 = c.get(str3);
                    break;
                }
            }
        }
        return (n0.e(str2) && cn.mucang.android.core.utils.y.a(str)) ? str : str2;
    }

    public static List<MucangPOI> c() {
        return f8909d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void d() {
        try {
            w wVar = v.f8955a;
            if (wVar == null) {
                if (MucangConfig.v()) {
                    cn.mucang.android.core.utils.u.h("请引入选择城市模块");
                }
                cn.mucang.android.core.utils.t.d(f8908a, "请引入选择城市模块");
            } else {
                wVar.c(b, c);
                v.f8955a.b(f8909d);
                f8910e = true;
            }
        } catch (Exception unused) {
        }
    }
}

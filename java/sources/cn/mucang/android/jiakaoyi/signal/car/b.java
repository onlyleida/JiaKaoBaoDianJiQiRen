package cn.mucang.android.jiakaoyi.signal.car;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f5256a = -1;
    private static float b = -1.0f;
    private static float c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HashMap<String, Float> f5257d = new HashMap<>();

    public static int a() {
        LocalCarModel localCarModelB;
        if (f5256a == -1 && (localCarModelB = SelectCarManager.b()) != null && localCarModelB.getConfig() != null) {
            f5256a = localCarModelB.getConfig().getCode();
        }
        return f5256a;
    }

    public static float b() {
        if (n.a()) {
            return 1.0f;
        }
        if (!AppUtils.g() && !AppUtils.i()) {
            return 1.0f;
        }
        if (c <= BitmapDescriptorFactory.HUE_RED) {
            c = e(a());
        }
        return c;
    }

    public static float c() {
        if (n.a()) {
            return 1.0f;
        }
        if (!AppUtils.g() && !AppUtils.i()) {
            return 1.0f;
        }
        if (b <= BitmapDescriptorFactory.HUE_RED) {
            b = g(a());
        }
        return b;
    }

    private static String d(int i) {
        return "car" + i + "_rpm_scale";
    }

    public static float e(int i) {
        if (i < 0) {
            return 1.0f;
        }
        String strD = d(i);
        Float f2 = f5257d.get(strD);
        return (f2 == null || f2.floatValue() < BitmapDescriptorFactory.HUE_RED) ? i0.c(strD, 1.0f) : f2.floatValue();
    }

    private static String f(int i) {
        return "car" + i + "_speed_scale";
    }

    public static float g(int i) {
        if (i < 0) {
            return 1.0f;
        }
        String strF = f(i);
        Float f2 = f5257d.get(strF);
        return (f2 == null || f2.floatValue() < BitmapDescriptorFactory.HUE_RED) ? i0.c(strF, 1.0f) : f2.floatValue();
    }

    public static void h(CarItemModel carItemModel) {
        if (AppUtils.g() || AppUtils.i()) {
            int code = carItemModel.getCode();
            f5256a = code;
            if (code != 0) {
                String strF = f(carItemModel.getCode());
                String strD = d(carItemModel.getCode());
                f5257d.put(strF, Float.valueOf(carItemModel.getSpeedScale()));
                f5257d.put(strD, Float.valueOf(carItemModel.getRpmScale()));
                b = carItemModel.getSpeedScale();
                c = carItemModel.getRpmScale();
                i0.j(strF, carItemModel.getSpeedScale());
                i0.j(strD, carItemModel.getRpmScale());
            }
        }
    }
}

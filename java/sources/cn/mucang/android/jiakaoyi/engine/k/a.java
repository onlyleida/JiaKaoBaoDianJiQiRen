package cn.mucang.android.jiakaoyi.engine.k;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.p0;
import com.alibaba.fastjson.JSON;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<Integer, StepAlias> f3101a = new HashMap<>();
    private static String b = "";

    public static List<StepAlias> a() {
        String strG = i0.g("keyB2StepAlias", "");
        if (n0.e(strG)) {
            return null;
        }
        return JSON.parseArray(strG, StepAlias.class);
    }

    public static List<StepAlias> b() {
        String strG = i0.g("keyK2StepAlias", "");
        if (n0.e(strG)) {
            return null;
        }
        return JSON.parseArray(strG, StepAlias.class);
    }

    public static List<StepAlias> c() {
        String strG = i0.g("keyMotoStepAlias", "");
        if (n0.e(strG)) {
            return null;
        }
        return JSON.parseArray(strG, StepAlias.class);
    }

    public static List<StepAlias> d() {
        String strB = p0.b();
        String strG = i0.g("keyRobotStepAlias_" + strB, "");
        if (n0.e(strG)) {
            return null;
        }
        b = strB;
        return JSON.parseArray(strG, StepAlias.class);
    }

    public static String e(Step step) {
        StepAlias stepAlias;
        String str;
        String str2 = step.stepName;
        try {
            if (f3101a.isEmpty()) {
                List<StepAlias> listC = null;
                if (AppUtils.k()) {
                    listC = d();
                } else if (AppUtils.f()) {
                    listC = b();
                } else if (AppUtils.l()) {
                    listC = a();
                } else if (AppUtils.i()) {
                    listC = c();
                }
                if (listC != null) {
                    for (StepAlias stepAlias2 : listC) {
                        f3101a.put(Integer.valueOf(stepAlias2.type), stepAlias2);
                    }
                }
            }
            if (AppUtils.k() && !b.equals(p0.b())) {
                f3101a.clear();
                List<StepAlias> listD = d();
                if (listD != null) {
                    for (StepAlias stepAlias3 : listD) {
                        f3101a.put(Integer.valueOf(stepAlias3.type), stepAlias3);
                    }
                }
            }
            HashMap<Integer, StepAlias> map = f3101a;
            return (map.isEmpty() || (stepAlias = map.get(Integer.valueOf(step.type))) == null || (str = stepAlias.stepAliasName) == null) ? str2 : str;
        } catch (Exception e2) {
            e2.printStackTrace();
            t.d("StepAlias", e2.getMessage());
            return str2;
        }
    }

    public static void f(List<StepAlias> list) {
        if (AppUtils.k()) {
            i0.m("keyRobotStepAlias_" + p0.b(), JSON.toJSONString(list));
        } else if (AppUtils.f()) {
            i0.m("keyK2StepAlias", JSON.toJSONString(list));
        } else if (AppUtils.l()) {
            i0.m("keyB2StepAlias", JSON.toJSONString(list));
        } else if (AppUtils.i()) {
            i0.m("keyMotoStepAlias", JSON.toJSONString(list));
        }
        f3101a.clear();
        for (StepAlias stepAlias : list) {
            f3101a.put(Integer.valueOf(stepAlias.type), stepAlias);
        }
    }
}

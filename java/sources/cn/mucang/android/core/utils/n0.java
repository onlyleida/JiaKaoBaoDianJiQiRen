package cn.mucang.android.core.utils;

import cn.mucang.android.core.config.MucangConfig;
import com.mobile.auth.BuildConfig;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class n0 {
    public static String a(int i, double d2) {
        return String.format("%." + i + "f", Double.valueOf(new BigDecimal(d2).setScale(i, 4).doubleValue()));
    }

    public static String b(String str) {
        ArrayList<n.a> arrayListB = n.c().b(str);
        StringBuilder sb = new StringBuilder();
        if (arrayListB != null && arrayListB.size() > 0) {
            for (n.a aVar : arrayListB) {
                if (2 == aVar.f2661a) {
                    sb.append(aVar.c);
                } else {
                    sb.append(aVar.b);
                }
            }
        }
        return sb.toString().toLowerCase().replaceAll("[^a-z]+", "");
    }

    public static String c(int i) {
        return MucangConfig.getContext().getString(i);
    }

    public static Boolean d(String str) {
        Boolean bool = Boolean.TRUE;
        if (g(str)) {
            int i = 0;
            while (i < str.length()) {
                int i2 = i + 1;
                if (!str.substring(i, i2).matches("[Α-￥]")) {
                    bool = Boolean.FALSE;
                }
                i = i2;
            }
        }
        return bool;
    }

    public static boolean e(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean f(String str) {
        return e(str) || BuildConfig.COMMON_MODULE_COMMIT_ID.equals(str);
    }

    public static boolean g(String str) {
        return !e(str);
    }

    public static String h(List<String> list, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            String str2 = list.get(i);
            if (str2 != null) {
                sb.append(str2);
            }
            if (i < list.size() - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }
}

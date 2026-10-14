package cn.mucang.android.core.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.permission.setting.Default;
import cn.mucang.android.core.permission.setting.OPPO;
import cn.mucang.android.core.permission.setting.ViVo;
import f.a.a.a.p010s.PrivacyAgreementSetting;

/* JADX INFO: loaded from: classes.dex */
public class z {
    public static boolean a(String str) {
        try {
            if (!PrivacyAgreementSetting.d()) {
                PrivacyAgreementSetting.c("checkPermission");
                return false;
            }
            if (Build.VERSION.SDK_INT >= 23) {
                return androidx.core.a.a.a(MucangConfig.getContext(), str) == 0;
            }
            return androidx.core.a.d.c(MucangConfig.getContext(), str) == 0;
        } catch (RuntimeException e2) {
            t.d("PermissionUtils", e2.toString());
            return false;
        }
    }

    public static boolean b(String... strArr) {
        for (String str : strArr) {
            if (!a(str)) {
                return false;
            }
        }
        return true;
    }

    public static void c(Context context) {
        cn.mucang.android.core.permission.setting.k oppo;
        String str = Build.MANUFACTURER;
        str.hashCode();
        if (str.equals("OPPO")) {
            oppo = new OPPO(context);
        } else {
            oppo = !str.equals("vivo") ? new Default(context) : new ViVo(context);
        }
        if (oppo.a() == null) {
            return;
        }
        context.startActivity(oppo.a());
    }

    public static void d(Activity activity, f.a.a.a.p009n.c.a aVar, String... strArr) {
        if (activity == null) {
            return;
        }
        f.a.a.a.p009n.b.a(activity).b(aVar, strArr);
    }
}

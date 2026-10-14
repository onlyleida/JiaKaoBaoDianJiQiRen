package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.Activity;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes2.dex */
public class k0 {
    public static String a(int i) {
        try {
            if (i > 0) {
                Activity activityI = MucangConfig.i();
                if (activityI != null) {
                    return activityI.getResources().getString(i);
                }
                return MucangConfig.getContext().getResources().getString(i);
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("ResUtils: 无效的resId：" + i);
            return "";
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}

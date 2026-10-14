package cn.mucang.android.core.config.x;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class c extends d {
    c() {
    }

    private void c(boolean z, Activity activity) {
        Class<?> cls = activity.getWindow().getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Class<?> cls3 = Integer.TYPE;
            Method method = cls.getMethod("setExtraFlags", cls3, cls3);
            Window window = activity.getWindow();
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z ? i : 0);
            objArr[1] = Integer.valueOf(i);
            method.invoke(window, objArr);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }

    private boolean d(String str) {
        return "V6".equals(str) || "V7".equals(str) || "V8".equals(str) || ("V9".equals(str) && Build.VERSION.SDK_INT < 23);
    }

    @Override // cn.mucang.android.core.config.x.d
    public void b(boolean z, Activity activity) {
        if (d(o0.l())) {
            c(z, activity);
        } else {
            a(z, activity);
        }
    }
}

package cn.mucang.android.core.config.x;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import cn.mucang.android.core.utils.t;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class a extends d {
    a() {
    }

    private void c(boolean z, Activity activity, Method method) {
        try {
            method.setAccessible(true);
            method.invoke(activity, Boolean.valueOf(z));
        } catch (Exception e2) {
            d(z, activity.getWindow());
            t.c("Exception", e2);
        }
    }

    private void d(boolean z, Window window) {
        try {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i = declaredField.getInt(null);
            int i2 = declaredField2.getInt(attributes);
            declaredField2.setInt(attributes, z ? i2 | i : (~i) & i2);
            window.setAttributes(attributes);
        } catch (IllegalAccessException e2) {
            t.c("Exception", e2);
        } catch (NoSuchFieldException e3) {
            t.c("Exception", e3);
        }
    }

    @Override // cn.mucang.android.core.config.x.d
    public void b(boolean z, Activity activity) {
        if (Build.VERSION.SDK_INT >= 23) {
            a(z, activity);
            return;
        }
        Window window = activity.getWindow();
        if (window != null) {
            Method method = null;
            try {
                method = Activity.class.getMethod("setStatusBarDarkIcon", Boolean.TYPE);
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
            if (method != null) {
                c(z, activity, method);
            } else {
                d(z, window);
            }
        }
    }
}

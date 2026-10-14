package com.mobile.auth.gatewayauth.utils;

import android.app.Activity;
import android.app.Application;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class ReflectionUtils {
    private static volatile Application sApplication;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        sApplication = null;
    }

    public static native Activity getActivity();

    public static Application getApplication() {
        String strB;
        try {
            if (sApplication == null) {
                synchronized (ReflectionUtils.class) {
                    if (sApplication == null) {
                        try {
                            try {
                                Class<?> cls = Class.forName("android.app.ActivityThread");
                                Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
                                Method method = cls.getMethod("getApplication", new Class[0]);
                                method.setAccessible(true);
                                Object objInvoke2 = method.invoke(objInvoke, new Object[0]);
                                if (objInvoke2 instanceof Application) {
                                    sApplication = (Application) objInvoke2;
                                }
                            } catch (IllegalAccessException e2) {
                                strB = b.b(e2);
                                f.c(strB);
                            } catch (NoSuchMethodException e3) {
                                strB = b.b(e3);
                                f.c(strB);
                            }
                        } catch (ClassNotFoundException e4) {
                            strB = b.b(e4);
                            f.c(strB);
                        } catch (Exception e5) {
                            strB = b.b(e5);
                            f.c(strB);
                        }
                    }
                }
            }
            return sApplication;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}

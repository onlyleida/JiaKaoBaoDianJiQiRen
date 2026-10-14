package com.mobile.auth.gatewayauth;

import android.app.Application;
import android.util.Log;
import com.mobile.auth.gatewayauth.manager.CrashManager;
import com.mobile.auth.gatewayauth.utils.ReflectionUtils;
import com.mobile.auth.gatewayauth.utils.f;
import com.nirvana.tools.crash.CrashSdk;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a(Throwable th) {
        if (th == null || b(th)) {
            return;
        }
        Application application = ReflectionUtils.getApplication();
        if (application != null) {
            CrashManager crashManagerA = CrashManager.a(application);
            String string = UUID.randomUUID().toString();
            crashManagerA.a(Thread.currentThread().getName(), Log.getStackTraceString(th), string, true, CrashSdk.CRASH_TYPE_JAVA);
            crashManagerA.a(Thread.currentThread(), th, string);
        }
        f.c(Log.getStackTraceString(th));
    }

    private static final boolean b(Throwable th) {
        try {
            int i = 0;
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (stackTraceElement.getClassName().equals(a.class.getName()) && stackTraceElement.getMethodName().equals("processException")) {
                    i++;
                }
            }
            return i >= 4;
        } catch (Throwable th2) {
            try {
                a(th2);
                return false;
            } catch (Throwable th3) {
                a(th3);
                return false;
            }
        }
    }
}

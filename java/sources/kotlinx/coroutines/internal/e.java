package kotlinx.coroutines.internal;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Method f16012a;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable unused) {
            method = null;
        }
        f16012a = method;
    }

    public static final boolean a(Executor executor) {
        Method method;
        try {
            if (!(executor instanceof ScheduledThreadPoolExecutor)) {
                executor = null;
            }
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) executor;
            if (scheduledThreadPoolExecutor != null && (method = f16012a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}

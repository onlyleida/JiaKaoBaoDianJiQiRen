package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final Class<?> f970a;
    protected static final Field b;
    protected static final Field c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final Method f971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final Method f972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final Method f973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Handler f974g = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f975a;
        final /* synthetic */ Object b;

        a(d dVar, Object obj) {
            this.f975a = dVar;
            this.b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f975a.f978a = this.b;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Application f976a;
        final /* synthetic */ d b;

        b(Application application, d dVar) {
            this.f976a = application;
            this.b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f976a.unregisterActivityLifecycleCallbacks(this.b);
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.c$c, reason: collision with other inner class name */
    class RunnableC0025c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f977a;
        final /* synthetic */ Object b;

        RunnableC0025c(Object obj, Object obj2) {
            this.f977a = obj;
            this.b = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Boolean bool = Boolean.FALSE;
            try {
                Method method = c.f971d;
                if (method != null) {
                    method.invoke(this.f977a, this.b, bool, "AppCompat recreation");
                } else {
                    c.f972e.invoke(this.f977a, this.b, bool);
                }
            } catch (RuntimeException e2) {
                if (e2.getClass() == RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                    throw e2;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    private static final class d implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f978a;
        private Activity b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f979d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f980e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f981f = false;

        d(Activity activity) {
            this.b = activity;
            this.c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.b == activity) {
                this.b = null;
                this.f980e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f980e || this.f981f || this.f979d || !c.h(this.f978a, this.c, activity)) {
                return;
            }
            this.f981f = true;
            this.f978a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.b == activity) {
                this.f979d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> clsA = a();
        f970a = clsA;
        b = b();
        c = f();
        f971d = d(clsA);
        f972e = c(clsA);
        f973f = e(clsA);
    }

    private static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class<?> cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    protected static boolean h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f974g.postAtFrontOfQueue(new RunnableC0025c(b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (g() && f973f == null) {
            return false;
        }
        if (f972e == null && f971d == null) {
            return false;
        }
        try {
            Object obj2 = c.get(activity);
            if (obj2 == null || (obj = b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            d dVar = new d(activity);
            application.registerActivityLifecycleCallbacks(dVar);
            f974g.post(new a(dVar, obj2));
            try {
                if (g()) {
                    Method method = f973f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                f974g.post(new b(application, dVar));
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}

package com.blankj.utilcode.util;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public final class Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f11602a = new a();
    private static final ExecutorService b = Executors.newFixedThreadPool(3);
    private static final Handler c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static Application f11603d;

    public static final class FileProvider4UtilCode extends androidx.core.a.b {
        @Override // androidx.core.a.b, android.content.ContentProvider
        public boolean onCreate() {
            Utils.i(getContext());
            return true;
        }
    }

    static class a implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final LinkedList<Activity> f11604a = new LinkedList<>();
        final Map<Object, c> b = new HashMap();
        final Map<Activity, Set<b>> c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f11605d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f11606e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f11607f = false;

        /* JADX INFO: renamed from: com.blankj.utilcode.util.Utils$a$a, reason: collision with other inner class name */
        class RunnableC0190a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Activity f11608a;
            final /* synthetic */ Object b;

            RunnableC0190a(a aVar, Activity activity, Object obj) {
                this.f11608a = activity;
                this.b = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f11608a.getWindow().setSoftInputMode(((Integer) this.b).intValue());
            }
        }

        a() {
        }

        private void b(Activity activity) {
            Iterator<Map.Entry<Activity, Set<b>>> it = this.c.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Activity, Set<b>> next = it.next();
                if (next.getKey() == activity) {
                    Iterator<b> it2 = next.getValue().iterator();
                    while (it2.hasNext()) {
                        it2.next().onActivityDestroyed(activity);
                    }
                    it.remove();
                }
            }
        }

        private Activity d() {
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
                Field declaredField = cls.getDeclaredField("mActivityList");
                declaredField.setAccessible(true);
                Map map = (Map) declaredField.get(objInvoke);
                if (map == null) {
                    return null;
                }
                for (Object obj : map.values()) {
                    Class<?> cls2 = obj.getClass();
                    Field declaredField2 = cls2.getDeclaredField("paused");
                    declaredField2.setAccessible(true);
                    if (!declaredField2.getBoolean(obj)) {
                        Field declaredField3 = cls2.getDeclaredField("activity");
                        declaredField3.setAccessible(true);
                        return (Activity) declaredField3.get(obj);
                    }
                }
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (NoSuchFieldException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
            return null;
        }

        private void e(boolean z) {
            c next;
            if (this.b.isEmpty()) {
                return;
            }
            Iterator<c> it = this.b.values().iterator();
            while (it.hasNext() && (next = it.next()) != null) {
                if (z) {
                    next.a();
                } else {
                    next.b();
                }
            }
        }

        private void f(Activity activity, boolean z) {
            if (z) {
                activity.getWindow().getDecorView().setTag(-123, Integer.valueOf(activity.getWindow().getAttributes().softInputMode));
                activity.getWindow().setSoftInputMode(3);
            } else {
                Object tag = activity.getWindow().getDecorView().getTag(-123);
                if (tag instanceof Integer) {
                    Utils.l(new RunnableC0190a(this, activity, tag), 100L);
                }
            }
        }

        private void g(Activity activity) {
            if ("com.blankj.utilcode.util.PermissionUtils$PermissionActivity".equals(activity.getClass().getName())) {
                return;
            }
            if (!this.f11604a.contains(activity)) {
                this.f11604a.addLast(activity);
            } else {
                if (this.f11604a.getLast().equals(activity)) {
                    return;
                }
                this.f11604a.remove(activity);
                this.f11604a.addLast(activity);
            }
        }

        void a(Activity activity, b bVar) {
            Set<b> hashSet;
            if (activity == null || bVar == null) {
                return;
            }
            if (this.c.containsKey(activity)) {
                hashSet = this.c.get(activity);
                if (hashSet.contains(bVar)) {
                    return;
                }
            } else {
                hashSet = new HashSet<>();
                this.c.put(activity, hashSet);
            }
            hashSet.add(bVar);
        }

        Activity c() {
            if (!this.f11604a.isEmpty()) {
                for (int size = this.f11604a.size() - 1; size >= 0; size--) {
                    Activity activity = this.f11604a.get(size);
                    if (activity != null && !activity.isFinishing() && (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed())) {
                        return activity;
                    }
                }
            }
            Activity activityD = d();
            if (activityD != null) {
                g(activityD);
            }
            return activityD;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            e.a(activity);
            Utils.m();
            g(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            this.f11604a.remove(activity);
            b(activity);
            Utils.b(activity.getWindow());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            g(activity);
            if (this.f11607f) {
                this.f11607f = false;
                e(true);
            }
            f(activity, false);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (!this.f11607f) {
                g(activity);
            }
            int i = this.f11606e;
            if (i < 0) {
                this.f11606e = i + 1;
            } else {
                this.f11605d++;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity.isChangingConfigurations()) {
                this.f11606e--;
            } else {
                int i = this.f11605d - 1;
                this.f11605d = i;
                if (i <= 0) {
                    this.f11607f = true;
                    e(false);
                }
            }
            f(activity, true);
        }
    }

    public interface b {
        void onActivityDestroyed(Activity activity);
    }

    public interface c {
        void a();

        void b();
    }

    static void b(Window window) {
        InputMethodManager inputMethodManager = (InputMethodManager) d().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
        for (int i = 0; i < 4; i++) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                if (declaredField != null) {
                    if (!declaredField.isAccessible()) {
                        declaredField.setAccessible(true);
                    }
                    Object obj = declaredField.get(inputMethodManager);
                    if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                        declaredField.set(inputMethodManager, null);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    static a c() {
        return f11602a;
    }

    public static Application d() {
        Application application = f11603d;
        if (application != null) {
            return application;
        }
        Application applicationE = e();
        h(applicationE);
        return applicationE;
    }

    private static Application e() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("getApplication", new Class[0]).invoke(cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
            if (objInvoke != null) {
                return (Application) objInvoke;
            }
            throw new NullPointerException("u should init first");
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            throw new NullPointerException("u should init first");
        }
    }

    static f f() {
        return f.c("Utils");
    }

    static Context g() {
        if (!j()) {
            return d();
        }
        Activity activityC = f11602a.c();
        return activityC == null ? d() : activityC;
    }

    public static void h(Application application) {
        if (f11603d == null) {
            if (application == null) {
                f11603d = e();
            } else {
                f11603d = application;
            }
            f11603d.registerActivityLifecycleCallbacks(f11602a);
            return;
        }
        if (application == null || application.getClass() == f11603d.getClass()) {
            return;
        }
        Application application2 = f11603d;
        a aVar = f11602a;
        application2.unregisterActivityLifecycleCallbacks(aVar);
        aVar.f11604a.clear();
        f11603d = application;
        application.registerActivityLifecycleCallbacks(aVar);
    }

    public static void i(Context context) {
        if (context == null) {
            h(e());
        } else {
            h((Application) context.getApplicationContext());
        }
    }

    static boolean j() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) d().getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() != 0) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(d().getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void k(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            c.post(runnable);
        }
    }

    public static void l(Runnable runnable, long j) {
        c.postDelayed(runnable, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
        if (Build.VERSION.SDK_INT < 26 || !ValueAnimator.areAnimatorsEnabled()) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                if (((Float) declaredField.get(null)).floatValue() == BitmapDescriptorFactory.HUE_RED) {
                    declaredField.set(null, Float.valueOf(1.0f));
                    Log.i("Utils", "setAnimatorsEnabled: Animators are enabled now!");
                }
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (NoSuchFieldException e3) {
                e3.printStackTrace();
            }
        }
    }
}

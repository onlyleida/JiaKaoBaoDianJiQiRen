package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends m0.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Class<?>[] f1506f = {Application.class, f0.class};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Class<?>[] f1507g = {f0.class};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f1508a;
    private final m0.b b;
    private final Bundle c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lifecycle f1509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SavedStateRegistry f1510e;

    @SuppressLint({"LambdaLast"})
    public g0(Application application, androidx.savedstate.b bVar, Bundle bundle) {
        this.f1510e = bVar.getSavedStateRegistry();
        this.f1509d = bVar.getLifecycle();
        this.c = bundle;
        this.f1508a = application;
        this.b = application != null ? m0.a.getInstance(application) : m0.d.getInstance();
    }

    private static <T> Constructor<T> c(Class<T> cls, Class<?>[] clsArr) {
        for (Object obj : cls.getConstructors()) {
            Constructor<T> constructor = (Constructor<T>) obj;
            if (Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.m0.e
    void a(j0 j0Var) {
        SavedStateHandleController.f(j0Var, this.f1510e, this.f1509d);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0046 A[Catch: InvocationTargetException -> 0x005a, InstantiationException -> 0x0076, IllegalAccessException -> 0x0093, TryCatch #2 {IllegalAccessException -> 0x0093, InstantiationException -> 0x0076, InvocationTargetException -> 0x005a, blocks: (B:13:0x0030, B:15:0x0034, B:17:0x0054, B:16:0x0046), top: B:28:0x0030 }] */
    @Override // androidx.lifecycle.m0.c
    public <T extends j0> T b(String str, Class<T> cls) {
        T t;
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorC = (!zIsAssignableFrom || this.f1508a == null) ? c(cls, f1507g) : c(cls, f1506f);
        if (constructorC == null) {
            return (T) this.b.create(cls);
        }
        SavedStateHandleController savedStateHandleControllerJ = SavedStateHandleController.j(this.f1510e, this.f1509d, str, this.c);
        if (zIsAssignableFrom) {
            try {
                Application application = this.f1508a;
                if (application != null) {
                    t = (T) constructorC.newInstance(application, savedStateHandleControllerJ.k());
                } else {
                    t = (T) constructorC.newInstance(savedStateHandleControllerJ.k());
                }
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("Failed to access " + cls, e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e4.getCause());
            }
        } else {
            t = (T) constructorC.newInstance(savedStateHandleControllerJ.k());
        }
        t.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", savedStateHandleControllerJ);
        return t;
    }

    @Override // androidx.lifecycle.m0.c, androidx.lifecycle.m0.b
    public <T extends j0> T create(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) b(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}

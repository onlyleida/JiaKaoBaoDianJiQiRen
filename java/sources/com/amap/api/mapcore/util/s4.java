package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
public class s4 extends ContextThemeWrapper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f11167f = {"android.widget", "android.webkit", "android.app"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Resources f11168a;
    private LayoutInflater b;
    private ClassLoader c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f11169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LayoutInflater.Factory f11170e;

    class a implements LayoutInflater.Factory {
        a() {
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return s4.this.b(str, context, attributeSet);
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HashSet<String> f11172a = new HashSet<>();
        public HashMap<String, Constructor<?>> b = new HashMap<>();

        public b(s4 s4Var) {
        }
    }

    public s4(Context context, int i, ClassLoader classLoader) {
        super(context, i);
        this.f11169d = new b(this);
        this.f11170e = new a();
        this.f11168a = t4.b();
        this.c = classLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:27:0x0065 A[PHI: r5
      0x0065: PHI (r5v1 java.lang.Class<?>) = 
      (r5v0 java.lang.Class<?>)
      (r5v12 java.lang.Class<?>)
      (r5v12 java.lang.Class<?>)
      (r5v12 java.lang.Class<?>)
      (r5v12 java.lang.Class<?>)
     binds: [B:26:0x0064, B:17:0x0051, B:38:0x0065, B:23:0x005f, B:21:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    public final View b(String str, Context context, AttributeSet attributeSet) {
        Class<?> clsLoadClass;
        boolean z;
        if (this.f11169d.f11172a.contains(str)) {
            return null;
        }
        Constructor<?> constructor = this.f11169d.b.get(str);
        if (constructor == null) {
            try {
                if (!str.contains("api.navi")) {
                    String[] strArr = f11167f;
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            clsLoadClass = null;
                            break;
                        }
                        String str2 = strArr[i];
                        try {
                            clsLoadClass = this.c.loadClass(str2 + "." + str);
                            break;
                        } catch (Throwable unused) {
                            i++;
                        }
                    }
                } else {
                    clsLoadClass = this.c.loadClass(str);
                }
                if (clsLoadClass == null || clsLoadClass == ViewStub.class) {
                    z = false;
                } else {
                    try {
                        if (clsLoadClass.getClassLoader() != this.c) {
                            z = false;
                        } else {
                            z = true;
                        }
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable unused3) {
                clsLoadClass = null;
            }
            if (!z) {
                this.f11169d.f11172a.add(str);
                return null;
            }
            try {
                constructor = clsLoadClass.getConstructor(Context.class, AttributeSet.class);
                this.f11169d.b.put(str, constructor);
            } catch (Throwable unused4) {
            }
        }
        if (constructor == null) {
            return null;
        }
        try {
            return (View) constructor.newInstance(context, attributeSet);
        } catch (Throwable unused5) {
            return null;
        }
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.f11168a;
        return resources != null ? resources : super.getResources();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return super.getSystemService(str);
        }
        if (this.b == null) {
            LayoutInflater layoutInflater = (LayoutInflater) super.getSystemService(str);
            if (layoutInflater != null) {
                this.b = layoutInflater.cloneInContext(this);
            }
            this.b.setFactory(this.f11170e);
            this.b = this.b.cloneInContext(this);
        }
        return this.b;
    }
}

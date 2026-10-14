package com.amap.api.mapcore.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class f4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f10786a = false;
    ArrayList<a> b = new ArrayList<>();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f10787a;
        private Object b;
        private Class<?>[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Object[] f10788d;

        public a(Object obj, String str, Object... objArr) {
            this.b = obj;
            this.f10787a = str;
            if (objArr == null || objArr.length <= 0) {
                return;
            }
            this.c = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                this.c[i] = objArr[i].getClass();
            }
            this.f10788d = new Object[objArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                this.f10788d[i2] = objArr[i2];
            }
        }
    }

    public synchronized void a() {
        Class<?> cls;
        try {
            if (this.f10786a) {
                return;
            }
            this.f10786a = true;
            for (int i = 0; i < this.b.size(); i++) {
                a aVar = this.b.get(i);
                try {
                    try {
                        try {
                            if (aVar.b != null && (cls = aVar.b.getClass()) != null) {
                                Method declaredMethod = null;
                                try {
                                    declaredMethod = cls.getDeclaredMethod(aVar.f10787a, aVar.c);
                                } catch (NoSuchMethodException unused) {
                                    if (aVar.c.length > 0) {
                                        Class<?>[] clsArr = new Class[aVar.c.length];
                                        for (int i2 = 0; i2 < aVar.c.length; i2++) {
                                            if (aVar.c[i2].getInterfaces().length > 0) {
                                                clsArr[i2] = aVar.c[i2].getInterfaces()[0];
                                            }
                                        }
                                        declaredMethod = cls.getDeclaredMethod(aVar.f10787a, clsArr);
                                    }
                                }
                                if (declaredMethod != null) {
                                    declaredMethod.setAccessible(true);
                                    declaredMethod.invoke(aVar.b, aVar.f10788d);
                                }
                            }
                        } catch (NoSuchMethodException e2) {
                            e2.printStackTrace();
                        }
                    } catch (IllegalAccessException e3) {
                        e3.printStackTrace();
                    } catch (IllegalArgumentException e4) {
                        e4.printStackTrace();
                    }
                } catch (SecurityException e5) {
                    e5.printStackTrace();
                } catch (InvocationTargetException e6) {
                    e6.printStackTrace();
                }
            }
            this.b.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void b(Object obj, Object... objArr) {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null && stackTrace.length >= 3) {
                this.b.add(new a(obj, stackTrace[3].getMethodName(), objArr));
            }
        } catch (Throwable unused) {
        }
        this.f10786a = false;
    }
}

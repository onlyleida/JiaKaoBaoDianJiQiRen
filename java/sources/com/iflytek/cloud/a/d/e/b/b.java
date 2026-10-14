package com.iflytek.cloud.a.d.e.b;

import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?>[] f12231a = null;
    private static final Object[] b = null;
    private static final Object c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f12232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Class<?> f12233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Method f12234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Method f12235g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Method f12236h;
    private Method i;
    private Method j;
    private Method k;
    private Method l;
    private Method m;
    private Class<?> n;
    private Method o;
    private Class<?> p;
    private Method q;
    private Object r;
    private final C0231b s;
    private Object t;
    private c u;

    /* JADX INFO: renamed from: com.iflytek.cloud.a.d.e.b.b$b, reason: collision with other inner class name */
    private class C0231b implements InvocationHandler {
        private C0231b() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.equals(b.this.o) && b.this.u != null) {
                b.this.u.a((byte[]) objArr[0], ((Integer) objArr[1]).intValue());
            }
            return null;
        }
    }

    public interface c {
        void a(byte[] bArr, int i);
    }

    private b(int i, int i2, int i3) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, NullPointerException, InvocationTargetException {
        this.f12233e = null;
        this.f12234f = null;
        this.f12235g = null;
        this.f12236h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        C0231b c0231b = new C0231b();
        this.s = c0231b;
        this.t = null;
        this.u = null;
        Class<?> cls = Class.forName("com.iflytek.alsa.AlsaRecorder$PcmListener");
        this.n = cls;
        Class<?> cls2 = Integer.TYPE;
        this.o = cls.getMethod("onPcmData", byte[].class, cls2);
        this.t = Proxy.newProxyInstance(this.n.getClassLoader(), new Class[]{this.n}, c0231b);
        Class<?> cls3 = Class.forName("com.iflytek.alsa.AlsaRecorder");
        this.f12233e = cls3;
        Object objInvoke = cls3.getMethod("createInstance", cls2, cls2, cls2).invoke(null, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
        this.r = objInvoke;
        if (objInvoke == null) {
            DebugLog.LogE("Recorder create alsa failed!");
            throw new NullPointerException("Recorder create alsa failed!");
        }
        this.f12234f = this.f12233e.getMethod("startRecording", this.n);
        Class<?> cls4 = this.f12233e;
        Class<?>[] clsArr = f12231a;
        this.f12235g = cls4.getMethod("stopRecording", clsArr);
        this.m = this.f12233e.getMethod("destroy", clsArr);
        this.i = this.f12233e.getMethod("getCardDevId", clsArr);
        this.l = this.f12233e.getMethod("getListener", clsArr);
        this.k = this.f12233e.getMethod("getPeriodSize", clsArr);
        this.j = this.f12233e.getMethod("getSampleRate", clsArr);
        this.f12236h = this.f12233e.getMethod("isRecording", clsArr);
        Class<?> cls5 = Class.forName("com.iflytek.alsa.jni.AlsaJni");
        this.p = cls5;
        this.q = cls5.getMethod("showJniLog", Boolean.TYPE);
    }

    public static b c() {
        b bVar;
        synchronized (c) {
            bVar = f12232d;
        }
        return bVar;
    }

    public c d() {
        c cVar = this.u;
        try {
            Object objInvoke = this.l.invoke(this.r, b);
            if (this.t.equals(objInvoke)) {
                return cVar;
            }
            DebugLog.LogD("Recorder getListener alsa listener unequal to current object: " + objInvoke);
        } catch (Throwable th) {
            DebugLog.LogE(th);
        }
        return null;
    }

    public int e() {
        try {
            return ((Integer) this.k.invoke(this.r, b)).intValue();
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return -1;
        }
    }

    public int f() {
        try {
            return ((Integer) this.j.invoke(this.r, b)).intValue();
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return -1;
        }
    }

    public boolean g() {
        try {
            return ((Boolean) this.f12236h.invoke(this.r, b)).booleanValue();
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return false;
        }
    }

    public void h() {
        try {
            this.f12235g.invoke(this.r, b);
        } catch (Throwable th) {
            DebugLog.LogE(th);
        }
    }

    public static b a(int i, int i2, int i3) {
        b bVar;
        synchronized (c) {
            if (f12232d == null) {
                try {
                    f12232d = new b(i, i2, i3);
                } catch (Throwable th) {
                    DebugLog.LogE(th);
                }
                bVar = f12232d;
            } else {
                bVar = f12232d;
            }
            throw th;
        }
        return bVar;
    }

    public int b() {
        try {
            return ((Integer) this.i.invoke(this.r, b)).intValue();
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return -1;
        }
    }

    public int a(c cVar) {
        this.u = cVar;
        try {
            return ((Integer) this.f12234f.invoke(this.r, this.n.cast(this.t))).intValue();
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return ErrorCode.ERROR_UNKNOWN;
        }
    }

    public void a() {
        try {
            this.m.invoke(this.r, b);
        } catch (Throwable th) {
            DebugLog.LogE(th);
        }
        synchronized (c) {
            f12232d = null;
        }
    }

    public void a(boolean z) {
        try {
            this.q.invoke(null, Boolean.valueOf(z));
        } catch (Throwable th) {
            DebugLog.LogE(th);
        }
    }
}

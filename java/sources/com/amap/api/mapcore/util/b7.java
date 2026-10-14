package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.mapcore.MapConfig;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class b7 extends Thread {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f10504e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f10505f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f10506g = 30000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f10507h = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Context> f10508a;
    private IAMapDelegate b;
    private b c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f10509d = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (b7.f10507h) {
                return;
            }
            if (b7.this.c == null) {
                b7 b7Var = b7.this;
                b7Var.c = new b(b7Var.b, b7.this.f10508a == null ? null : (Context) b7.this.f10508a.get());
            }
            q3.a().b(b7.this.c);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<IAMapDelegate> f10511a;
        private WeakReference<Context> b;
        private c8 c;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ IAMapDelegate f10512a;

            a(IAMapDelegate iAMapDelegate) {
                this.f10512a = iAMapDelegate;
            }

            @Override // java.lang.Runnable
            public void run() {
                IAMapDelegate iAMapDelegate = this.f10512a;
                if (iAMapDelegate == null || iAMapDelegate.getMapConfig() == null) {
                    return;
                }
                MapConfig mapConfig = this.f10512a.getMapConfig();
                mapConfig.setProFunctionAuthEnable(false);
                if (mapConfig.isUseProFunction()) {
                    this.f10512a.setMapCustomEnable(mapConfig.isCustomStyleEnable(), true);
                    this.f10512a.reloadMapCustomStyle();
                    t2.b(b.this.b == null ? null : (Context) b.this.b.get(), "鉴权失败，当前key没有自定义纹理的使用权限，自定义纹理相关内容，将不会呈现！");
                }
            }
        }

        public b(IAMapDelegate iAMapDelegate, Context context) {
            this.f10511a = null;
            this.b = null;
            this.f10511a = new WeakReference<>(iAMapDelegate);
            if (context != null) {
                this.b = new WeakReference<>(context);
            }
        }

        private void b() {
            IAMapDelegate iAMapDelegate;
            WeakReference<IAMapDelegate> weakReference = this.f10511a;
            if (weakReference == null || weakReference.get() == null || (iAMapDelegate = this.f10511a.get()) == null || iAMapDelegate.getMapConfig() == null) {
                return;
            }
            iAMapDelegate.queueEvent(new a(iAMapDelegate));
        }

        @Override // java.lang.Runnable
        public void run() {
            c8.a aVarI;
            WeakReference<Context> weakReference;
            try {
                if (b7.f10507h) {
                    return;
                }
                if (this.c == null && (weakReference = this.b) != null && weakReference.get() != null) {
                    this.c = new c8(this.b.get(), "");
                }
                b7.g();
                if (b7.f10504e > b7.f10505f) {
                    boolean unused = b7.f10507h = true;
                    b();
                    return;
                }
                c8 c8Var = this.c;
                if (c8Var == null || (aVarI = c8Var.i()) == null) {
                    return;
                }
                if (!aVarI.f10624a) {
                    b();
                }
                boolean unused2 = b7.f10507h = true;
            } catch (Throwable th) {
                e6.r(th, "authForPro", "loadConfigData_uploadException");
            }
        }
    }

    public b7(Context context, IAMapDelegate iAMapDelegate) {
        this.f10508a = null;
        if (context != null) {
            this.f10508a = new WeakReference<>(context);
        }
        this.b = iAMapDelegate;
        c();
    }

    public static void c() {
        f10504e = 0;
        f10507h = false;
    }

    static /* synthetic */ int g() {
        int i = f10504e;
        f10504e = i + 1;
        return i;
    }

    private void k() {
        if (f10507h) {
            return;
        }
        int i = 0;
        while (i <= f10505f) {
            i++;
            this.f10509d.sendEmptyMessageDelayed(0, ((long) i) * f10506g);
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        this.b = null;
        this.f10508a = null;
        Handler handler = this.f10509d;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f10509d = null;
        this.c = null;
        c();
        super.interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            k();
        } catch (Throwable th) {
            e6.r(th, "AMapDelegateImpGLSurfaceView", "mVerfy");
            th.printStackTrace();
        }
    }
}

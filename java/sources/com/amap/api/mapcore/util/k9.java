package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class k9 implements Inner_3dMap_locationManagerBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f10966a;
    ArrayList<Inner_3dMap_locationListener> b = new ArrayList<>();
    Object c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Handler f10967d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f10968e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Handler f10969f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Inner_3dMap_locationOption f10970g = new Inner_3dMap_locationOption();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    n9 f10971h = null;
    Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode i = Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Hight_Accuracy;
    boolean j = false;

    static class a extends HandlerThread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        k9 f10972a;

        public a(String str, k9 k9Var) {
            super(str);
            this.f10972a = k9Var;
        }

        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            try {
                k9 k9Var = this.f10972a;
                k9 k9Var2 = this.f10972a;
                k9Var.f10971h = new n9(k9Var2.f10966a, k9Var2.f10967d);
                super.onLooperPrepared();
            } catch (Throwable unused) {
            }
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable unused) {
            }
        }
    }

    public k9(Context context) {
        this.f10966a = null;
        if (context == null) {
            throw new IllegalArgumentException("Context参数不能为null");
        }
        this.f10966a = context.getApplicationContext();
        l();
    }

    private Handler a(Looper looper) {
        l9 l9Var;
        synchronized (this.c) {
            l9Var = new l9(looper, this);
            this.f10969f = l9Var;
        }
        return l9Var;
    }

    private void c(int i) {
        synchronized (this.c) {
            Handler handler = this.f10969f;
            if (handler != null) {
                handler.removeMessages(i);
            }
        }
    }

    private void d(int i, Object obj, long j) {
        synchronized (this.c) {
            if (this.f10969f != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = i;
                messageObtain.obj = obj;
                this.f10969f.sendMessageDelayed(messageObtain, j);
            }
        }
    }

    private void l() {
        try {
            this.f10967d = Looper.myLooper() == null ? new m9(this.f10966a.getMainLooper(), this) : new m9(this);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "initResultHandler");
        }
        try {
            a aVar = new a("locaitonClientActionThread", this);
            this.f10968e = aVar;
            aVar.setPriority(5);
            this.f10968e.start();
            this.f10969f = a(this.f10968e.getLooper());
        } catch (Throwable th2) {
            b9.b(th2, "MapLocationManager", "initActionThreadAndActionHandler");
        }
    }

    private void m() {
        synchronized (this.c) {
            Handler handler = this.f10969f;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f10969f = null;
        }
    }

    final void b() {
        try {
            if (this.j) {
                return;
            }
            this.j = true;
            d(1005, null, 0L);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "doStartLocation");
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final void destroy() {
        try {
            d(1007, null, 0L);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "stopLocation");
        }
    }

    final void e(Inner_3dMap_location inner_3dMap_location) {
        if (inner_3dMap_location != null) {
            try {
                if (q9.c(inner_3dMap_location)) {
                    i9.b = inner_3dMap_location;
                }
            } catch (Throwable th) {
                b9.b(th, "MapLocationManager", "callBackLocation");
                return;
            }
        }
        if (this.j) {
            if (!"gps".equalsIgnoreCase(inner_3dMap_location.getProvider())) {
                inner_3dMap_location.setProvider("lbs");
            }
            inner_3dMap_location.setAltitude(g9.o(inner_3dMap_location.getAltitude()));
            inner_3dMap_location.setBearing(g9.b(inner_3dMap_location.getBearing()));
            inner_3dMap_location.setSpeed(g9.b(inner_3dMap_location.getSpeed()));
            Iterator<Inner_3dMap_locationListener> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().onLocationChanged(inner_3dMap_location);
            }
        }
        if (this.f10970g.isOnceLocation()) {
            j();
        }
    }

    final void f(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        try {
            if (inner_3dMap_locationListener == null) {
                throw new IllegalArgumentException("listener参数不能为null");
            }
            if (this.b == null) {
                this.b = new ArrayList<>();
            }
            if (this.b.contains(inner_3dMap_locationListener)) {
                return;
            }
            this.b.add(inner_3dMap_locationListener);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "doSetLocationListener");
        }
    }

    final void g(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        this.f10970g = inner_3dMap_locationOption;
        if (inner_3dMap_locationOption == null) {
            this.f10970g = new Inner_3dMap_locationOption();
        }
        n9 n9Var = this.f10971h;
        if (n9Var != null) {
            n9Var.c(this.f10970g);
        }
        if (this.j && !this.i.equals(inner_3dMap_locationOption.getLocationMode())) {
            j();
            b();
        }
        this.i = this.f10970g.getLocationMode();
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final Inner_3dMap_location getLastKnownLocation() {
        return i9.b;
    }

    final void h() {
        long interval = 1000;
        try {
            n9 n9Var = this.f10971h;
            if (n9Var != null) {
                n9Var.a();
            }
            if (this.f10970g.isOnceLocation()) {
                return;
            }
            d(1005, null, this.f10970g.getInterval() >= 1000 ? this.f10970g.getInterval() : 1000L);
        } catch (Throwable th) {
            try {
                b9.b(th, "MapLocationManager", "doGetLocation");
            } finally {
                if (!this.f10970g.isOnceLocation()) {
                    d(1005, null, this.f10970g.getInterval() >= 1000 ? this.f10970g.getInterval() : 1000L);
                }
            }
        }
    }

    final void i(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        if (inner_3dMap_locationListener != null) {
            try {
                if (!this.b.isEmpty() && this.b.contains(inner_3dMap_locationListener)) {
                    this.b.remove(inner_3dMap_locationListener);
                }
            } catch (Throwable th) {
                b9.b(th, "MapLocationManager", "doUnregisterListener");
                return;
            }
        }
        if (this.b.isEmpty()) {
            j();
        }
    }

    final void j() {
        try {
            this.j = false;
            c(1004);
            c(1005);
            n9 n9Var = this.f10971h;
            if (n9Var != null) {
                n9Var.e();
            }
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "doStopLocation");
        }
    }

    final void k() {
        j();
        n9 n9Var = this.f10971h;
        if (n9Var != null) {
            n9Var.f();
        }
        ArrayList<Inner_3dMap_locationListener> arrayList = this.b;
        if (arrayList != null) {
            arrayList.clear();
            this.b = null;
        }
        m();
        a aVar = this.f10968e;
        if (aVar != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                try {
                    e9.b(aVar, HandlerThread.class, "quitSafely", new Object[0]);
                } catch (Throwable unused) {
                    aVar = this.f10968e;
                    aVar.quit();
                }
            } else {
                aVar.quit();
            }
        }
        this.f10968e = null;
        Handler handler = this.f10967d;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f10967d = null;
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final void setLocationListener(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        try {
            d(1002, inner_3dMap_locationListener, 0L);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "setLocationListener");
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final void setLocationOption(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        try {
            d(1001, inner_3dMap_locationOption, 0L);
        } catch (Throwable th) {
            b9.b(th, "LocationClientManager", "setLocationOption");
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final void startLocation() {
        try {
            d(1004, null, 0L);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "startLocation");
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final void stopLocation() {
        try {
            d(1006, null, 0L);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "stopLocation");
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_locationManagerBase
    public final void unRegisterLocationListener(Inner_3dMap_locationListener inner_3dMap_locationListener) {
        try {
            d(1003, inner_3dMap_locationListener, 0L);
        } catch (Throwable th) {
            b9.b(th, "MapLocationManager", "stopLocation");
        }
    }
}

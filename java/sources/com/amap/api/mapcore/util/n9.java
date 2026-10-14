package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.autonavi.amap.mapcore.Inner_3dMap_locationOption;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class n9 {
    private static int l = 200;
    private static boolean m = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f11033a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Handler f11036f;
    Inner_3dMap_locationOption i;
    h9 b = null;
    o9 c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b f11034d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Handler f11035e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f11037g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f11038h = false;
    private JSONArray j = null;
    Object k = new Object();

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            n9.this.d();
        }
    }

    static class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            super.onLooperPrepared();
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable unused) {
            }
        }
    }

    public n9(Context context, Handler handler) {
        this.f11033a = null;
        this.f11036f = null;
        this.i = null;
        try {
            if (context == null) {
                throw new IllegalArgumentException("Context参数不能为null");
            }
            this.f11033a = context.getApplicationContext();
            this.f11036f = handler;
            this.i = new Inner_3dMap_locationOption();
            h();
            g();
        } catch (Throwable th) {
            b9.b(th, "LocationService", "<init>");
        }
    }

    private void b(Inner_3dMap_location inner_3dMap_location) {
        try {
            if (m && inner_3dMap_location != null && inner_3dMap_location.getErrorCode() == 0 && inner_3dMap_location.getLocationType() == 1) {
                if (this.j == null) {
                    this.j = new JSONArray();
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("lon", inner_3dMap_location.getLongitude());
                jSONObject.put("lat", inner_3dMap_location.getLatitude());
                jSONObject.put("type", 0);
                jSONObject.put(DBHelpTool.RecordEntry.COLUMN_NAME_TIMESTAMP, g9.f());
                JSONArray jSONArrayPut = this.j.put(jSONObject);
                this.j = jSONArrayPut;
                if (jSONArrayPut.length() >= l) {
                    j();
                }
            }
        } catch (Throwable th) {
            b9.b(th, "LocationService", "recordOfflineLocLog");
        }
    }

    private void g() {
        b bVar = new b("locServiceAction");
        this.f11034d = bVar;
        bVar.setPriority(5);
        this.f11034d.start();
        this.f11035e = new a(this.f11034d.getLooper());
    }

    private void h() {
        try {
            if (this.i == null) {
                this.i = new Inner_3dMap_locationOption();
            }
            if (this.f11038h) {
                return;
            }
            this.b = new h9(this.f11033a);
            o9 o9Var = new o9(this.f11033a);
            this.c = o9Var;
            o9Var.e(this.i);
            i();
            this.f11038h = true;
        } catch (Throwable th) {
            b9.b(th, "LocationService", "init");
        }
    }

    private void i() {
        try {
            m = f9.h(this.f11033a, "maploc", "ue");
            int iA = f9.a(this.f11033a, "maploc", "opn");
            l = iA;
            if (iA > 500) {
                l = 500;
            }
            if (l < 30) {
                l = 30;
            }
        } catch (Throwable th) {
            b9.b(th, "LocationService", "getSPConfig");
        }
    }

    private synchronized void j() {
        try {
            JSONArray jSONArray = this.j;
            if (jSONArray != null && jSONArray.length() > 0) {
                t7.d(new s7(this.f11033a, b9.e(), this.j.toString()), this.f11033a);
                this.j = null;
            }
        } catch (Throwable th) {
            b9.b(th, "LocationService", "writeOfflineLog");
        }
    }

    private void k() {
        synchronized (this.k) {
            Handler handler = this.f11035e;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f11035e = null;
        }
    }

    private void l() {
        synchronized (this.k) {
            Handler handler = this.f11035e;
            if (handler != null) {
                handler.removeMessages(1);
            }
        }
    }

    public final void a() {
        try {
            h();
            if (!this.i.getLocationMode().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Battery_Saving) && !this.f11037g) {
                this.f11037g = true;
                this.b.a();
            }
            Handler handler = this.f11035e;
            if (handler != null) {
                handler.sendEmptyMessage(1);
            }
        } catch (Throwable th) {
            b9.b(th, "LocationService", "getLocation");
        }
    }

    public final void c(Inner_3dMap_locationOption inner_3dMap_locationOption) {
        this.i = inner_3dMap_locationOption;
        if (inner_3dMap_locationOption == null) {
            this.i = new Inner_3dMap_locationOption();
        }
        o9 o9Var = this.c;
        if (o9Var != null) {
            o9Var.e(inner_3dMap_locationOption);
        }
    }

    final void d() {
        Inner_3dMap_location inner_3dMap_locationC = null;
        try {
            if (this.i.getLocationMode().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Battery_Saving) && this.f11037g) {
                this.b.b();
                this.f11037g = false;
            }
            if (this.b.c()) {
                inner_3dMap_locationC = this.b.d();
            } else if (!this.i.getLocationMode().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Device_Sensors)) {
                inner_3dMap_locationC = this.c.c();
            }
            if (this.f11036f != null && inner_3dMap_locationC != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = inner_3dMap_locationC;
                messageObtain.what = 1;
                this.f11036f.sendMessage(messageObtain);
            }
            b(inner_3dMap_locationC);
        } catch (Throwable th) {
            b9.b(th, "LocationService", "doGetLocation");
        }
    }

    public final void e() {
        this.f11037g = false;
        try {
            l();
            h9 h9Var = this.b;
            if (h9Var != null) {
                h9Var.b();
            }
        } catch (Throwable th) {
            b9.b(th, "LocationService", "stopLocation");
        }
    }

    public final void f() {
        try {
            e();
            k();
            b bVar = this.f11034d;
            if (bVar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    try {
                        e9.b(bVar, HandlerThread.class, "quitSafely", new Object[0]);
                    } catch (Throwable unused) {
                        bVar = this.f11034d;
                        bVar.quit();
                    }
                } else {
                    bVar.quit();
                }
            }
            this.f11034d = null;
            this.c.g();
            this.f11037g = false;
            this.f11038h = false;
            j();
        } catch (Throwable th) {
            b9.b(th, "LocationService", "destroy");
        }
    }
}

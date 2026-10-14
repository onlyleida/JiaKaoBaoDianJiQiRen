package com.loc;

import android.app.Application;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.location.AMapLocationQualityReport;
import com.amap.api.location.APSService;
import com.amap.api.location.UmidtokenInfo;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    private static boolean E = true;
    private static boolean G = false;
    private static AtomicBoolean H = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile boolean f12708g = false;
    private Context B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    en f12709a;
    public c c;
    i i;
    Intent l;
    AMapLocationClientOption b = new AMapLocationClientOption();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    g f12710d = null;
    private boolean C = false;
    private volatile boolean D = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<AMapLocationListener> f12711e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f12712f = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12713h = true;
    Messenger j = null;
    Messenger k = null;
    int m = 0;
    private boolean F = true;
    b n = null;
    boolean o = false;
    AMapLocationClientOption.AMapLocationMode p = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
    Object q = new Object();
    fn r = null;
    boolean s = false;
    e t = null;
    private AMapLocationClientOption I = new AMapLocationClientOption();
    private h J = null;
    String u = null;
    private ServiceConnection K = new ServiceConnection() { // from class: com.loc.d.2
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                d.this.j = new Messenger(iBinder);
                d.this.C = true;
                d.this.s = true;
            } catch (Throwable th) {
                fi.a(th, "ALManager", "onServiceConnected");
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            d dVar = d.this;
            dVar.j = null;
            dVar.C = false;
        }
    };
    AMapLocationQualityReport v = null;
    boolean w = false;
    boolean x = false;
    private volatile boolean L = false;
    a y = null;
    String z = null;
    boolean A = false;

    /* JADX INFO: renamed from: com.loc.d$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f12716a;

        static {
            int[] iArr = new int[AMapLocationClientOption.AMapLocationMode.values().length];
            f12716a = iArr;
            try {
                iArr[AMapLocationClientOption.AMapLocationMode.Battery_Saving.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12716a[AMapLocationClientOption.AMapLocationMode.Device_Sensors.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12716a[AMapLocationClientOption.AMapLocationMode.Hight_Accuracy.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0 */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v9 */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ?? r0 = 0;
            try {
                super.handleMessage(message);
                int i = message.what;
                if (i == 11) {
                    d.this.a(message.getData());
                    return;
                }
                if (i == 12) {
                    d.this.b(message);
                    return;
                }
                if (i == 1008) {
                    d.this.m();
                    return;
                }
                if (i == 1009) {
                    d.this.n();
                    return;
                }
                if (i == 1011) {
                    d.this.a(14, (Bundle) null);
                    d.this.h();
                }
                try {
                    switch (i) {
                        case 1002:
                            d.this.c((AMapLocationListener) message.obj);
                            break;
                        case 1003:
                            d.this.k();
                            d.this.a(13, (Bundle) null);
                            break;
                        case 1004:
                            d.this.l();
                            d.this.a(14, (Bundle) null);
                            break;
                        case 1005:
                            d.this.d((AMapLocationListener) message.obj);
                            break;
                        default:
                            switch (i) {
                                case 1014:
                                    d.this.a(message);
                                    break;
                                case 1015:
                                    d dVar = d.this;
                                    dVar.f12710d.a(dVar.b);
                                    d.this.a(1025, (Object) null, DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS);
                                    break;
                                case 1016:
                                    if (!d.this.f12710d.b()) {
                                        d.this.p();
                                    } else {
                                        d.this.a(1016, (Object) null, 1000L);
                                    }
                                    break;
                                case 1017:
                                    d.this.f12710d.a();
                                    d.this.a(1025);
                                    break;
                                case 1018:
                                    d dVar2 = d.this;
                                    AMapLocationClientOption aMapLocationClientOption = (AMapLocationClientOption) message.obj;
                                    dVar2.b = aMapLocationClientOption;
                                    if (aMapLocationClientOption != null) {
                                        dVar2.t();
                                    }
                                    break;
                                default:
                                    switch (i) {
                                        case 1023:
                                            d.this.c(message);
                                            break;
                                        case 1024:
                                            d.this.d(message);
                                            break;
                                        case 1025:
                                            if (d.this.f12710d.f()) {
                                                d.this.f12710d.a();
                                                d dVar3 = d.this;
                                                dVar3.f12710d.a(dVar3.b);
                                            }
                                            d.this.a(1025, (Object) null, DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS);
                                            break;
                                        default:
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } catch (Throwable th) {
                    r0 = message;
                    th = th;
                    if (r0 == 0) {
                        r0 = "handleMessage";
                    }
                    fi.a(th, "AMapLocationManage$MHandlerr", r0);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    static class b extends HandlerThread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d f12718a;

        public b(String str, d dVar) {
            super(str);
            this.f12718a = null;
            this.f12718a = dVar;
        }

        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            try {
                this.f12718a.i.a();
                fm.a(this.f12718a.B);
                this.f12718a.r();
                d dVar = this.f12718a;
                if (dVar != null && dVar.B != null) {
                    fh.b(this.f12718a.B);
                    fh.a(this.f12718a.B);
                }
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

    public class c extends Handler {
        public c() {
        }

        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                super.handleMessage(message);
                d dVar = d.this;
                if (dVar.o) {
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    Message messageObtainMessage = dVar.y.obtainMessage();
                    messageObtainMessage.what = 11;
                    messageObtainMessage.setData(message.getData());
                    d.this.y.sendMessage(messageObtainMessage);
                    return;
                }
                if (i != 2) {
                    if (i == 13) {
                        en enVar = dVar.f12709a;
                        if (enVar != null) {
                            dVar.a(enVar);
                            return;
                        }
                        AMapLocation aMapLocation = new AMapLocation("LBS");
                        aMapLocation.setErrorCode(33);
                        d.this.a(aMapLocation);
                        return;
                    }
                    switch (i) {
                        case 5:
                            Bundle data = message.getData();
                            data.putBundle("optBundle", fi.a(d.this.b));
                            d.this.a(10, data);
                            return;
                        case 6:
                            Bundle data2 = message.getData();
                            g gVar = d.this.f12710d;
                            if (gVar != null) {
                                gVar.a(data2);
                                return;
                            }
                            return;
                        case 7:
                            d.this.F = message.getData().getBoolean("ngpsAble");
                            return;
                        case 8:
                            fn.a((String) null, 2141);
                            break;
                        case 9:
                            boolean unused = d.G = message.getData().getBoolean("installMockApp");
                            return;
                        case 10:
                            dVar.a((AMapLocation) message.obj);
                            return;
                        default:
                            return;
                    }
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = 12;
                messageObtain.obj = message.obj;
                d.this.y.sendMessage(messageObtain);
            } catch (Throwable th) {
                fi.a(th, "AmapLocationManager$MainHandler", 0 == 0 ? "handleMessage" : null);
            }
        }
    }

    public d(Context context, Intent intent, Looper looper) {
        this.l = null;
        this.B = context;
        this.l = intent;
        b(looper);
    }

    private a a(Looper looper) {
        a aVar;
        synchronized (this.q) {
            aVar = new a(looper);
            this.y = aVar;
        }
        return aVar;
    }

    private en a(ei eiVar, boolean z) {
        if (!this.b.isLocationCacheEnable()) {
            return null;
        }
        try {
            return eiVar.a(z);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "doFirstCacheLoc");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        synchronized (this.q) {
            a aVar = this.y;
            if (aVar != null) {
                aVar.removeMessages(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Bundle bundle) {
        if (bundle == null) {
            try {
                bundle = new Bundle();
            } catch (Throwable th) {
                boolean z = (th instanceof IllegalStateException) && th.getMessage().contains("sending message to a Handler on a dead thread");
                if ((th instanceof RemoteException) || z) {
                    this.j = null;
                    this.C = false;
                }
                fi.a(th, "ALManager", "sendLocMessage");
                return;
            }
        }
        if (TextUtils.isEmpty(this.u)) {
            this.u = fi.b(this.B);
        }
        bundle.putString("c", this.u);
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        messageObtain.setData(bundle);
        messageObtain.replyTo = this.k;
        Messenger messenger = this.j;
        if (messenger != null) {
            messenger.send(messageObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object obj, long j) {
        synchronized (this.q) {
            if (this.y != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = i;
                if (obj instanceof Bundle) {
                    messageObtain.setData((Bundle) obj);
                } else {
                    messageObtain.obj = obj;
                }
                this.y.sendMessageDelayed(messageObtain, j);
            }
        }
    }

    private static void a(final Context context) {
        if (H.compareAndSet(false, true)) {
            ci.a().b(new cj() { // from class: com.loc.d.1
                @Override // com.loc.cj
                public final void a() {
                    n.e();
                    n.a(context);
                    n.h(context);
                }
            });
        }
    }

    private void a(Intent intent) {
        try {
            this.B.bindService(intent, this.K, 1);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "startServiceImpl");
        }
    }

    private void a(Intent intent, boolean z) {
        Context context = this.B;
        if (context != null) {
            if (Build.VERSION.SDK_INT < 26 || !z) {
                context.startService(intent);
            } else if (!u()) {
                Log.e("amapapi", "-------------调用后台定位服务，缺少权限：android.permission.FOREGROUND_SERVICE--------------");
                return;
            } else {
                try {
                    this.B.getClass().getMethod("startForegroundService", Intent.class).invoke(this.B, intent);
                } catch (Throwable unused) {
                    this.B.startService(intent);
                }
            }
            this.A = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle) {
        eh ehVar;
        AMapLocation aMapLocation;
        g gVar;
        AMapLocation aMapLocationA = null;
        if (bundle != null) {
            try {
                bundle.setClassLoader(AMapLocation.class.getClassLoader());
                aMapLocation = (AMapLocation) bundle.getParcelable("loc");
                this.z = bundle.getString("nb");
                ehVar = (eh) bundle.getParcelable("statics");
                if (aMapLocation != null) {
                    try {
                        if (aMapLocation.getErrorCode() == 0 && (gVar = this.f12710d) != null) {
                            gVar.c();
                            if (!TextUtils.isEmpty(aMapLocation.getAdCode())) {
                                g.y = aMapLocation;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fi.a(th, "AmapLocationManager", "resultLbsLocationSuccess");
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                ehVar = null;
                fi.a(th, "AmapLocationManager", "resultLbsLocationSuccess");
            }
            a(aMapLocationA, ehVar);
        }
        ehVar = null;
        aMapLocation = null;
        g gVar2 = this.f12710d;
        aMapLocationA = gVar2 != null ? gVar2.a(aMapLocation, this.z) : aMapLocation;
        a(aMapLocationA, ehVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        try {
            Bundle data = message.getData();
            AMapLocation aMapLocation = (AMapLocation) data.getParcelable("loc");
            String string = data.getString("lastLocNb");
            c(aMapLocation);
            if (this.i.a(aMapLocation, string)) {
                this.i.d();
            }
        } catch (Throwable th) {
            fi.a(th, "ALManager", "doSaveLastLocation");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AMapLocation aMapLocation) {
        try {
            if (aMapLocation.getErrorCode() != 0) {
                aMapLocation.setLocationType(0);
            }
            if (aMapLocation.getErrorCode() == 0) {
                double latitude = aMapLocation.getLatitude();
                double longitude = aMapLocation.getLongitude();
                if ((latitude == 0.0d && longitude == 0.0d) || latitude < -90.0d || latitude > 90.0d || longitude < -180.0d || longitude > 180.0d) {
                    fn.a("errorLatLng", aMapLocation.toStr());
                    aMapLocation.setLocationType(0);
                    aMapLocation.setErrorCode(8);
                    aMapLocation.setLocationDetail("LatLng is error#0802");
                }
            }
            if ("gps".equalsIgnoreCase(aMapLocation.getProvider()) || !this.f12710d.b()) {
                aMapLocation.setAltitude(fp.c(aMapLocation.getAltitude()));
                aMapLocation.setBearing(fp.a(aMapLocation.getBearing()));
                aMapLocation.setSpeed(fp.a(aMapLocation.getSpeed()));
                Iterator<AMapLocationListener> it = this.f12711e.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().onLocationChanged(aMapLocation);
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private synchronized void a(AMapLocation aMapLocation, eh ehVar) {
        if (aMapLocation == null) {
            try {
                aMapLocation = new AMapLocation("");
                aMapLocation.setErrorCode(8);
                aMapLocation.setLocationDetail("amapLocation is null#0801");
            } catch (Throwable th) {
                fi.a(th, "ALManager", "handlerLocation part3");
                return;
            }
        }
        if (!"gps".equalsIgnoreCase(aMapLocation.getProvider())) {
            aMapLocation.setProvider("lbs");
        }
        if (this.v == null) {
            this.v = new AMapLocationQualityReport();
        }
        this.v.setLocationMode(this.b.getLocationMode());
        g gVar = this.f12710d;
        if (gVar != null) {
            this.v.setGPSSatellites(gVar.e());
            this.v.setGpsStatus(this.f12710d.d());
        }
        this.v.setWifiAble(fp.h(this.B));
        this.v.setNetworkType(fp.i(this.B));
        if (aMapLocation.getLocationType() == 1 || "gps".equalsIgnoreCase(aMapLocation.getProvider())) {
            this.v.setNetUseTime(0L);
        }
        if (ehVar != null) {
            this.v.setNetUseTime(ehVar.a());
        }
        this.v.setInstallHighDangerMockApp(G);
        aMapLocation.setLocationQualityReport(this.v);
        try {
            if (this.D) {
                a(aMapLocation, this.z);
                if (ehVar != null) {
                    ehVar.d(fp.b());
                }
                fn.a(this.B, aMapLocation, ehVar);
                fn.a(this.B, aMapLocation);
                b(aMapLocation.m123clone());
                fm.a(this.B).a(aMapLocation);
                fm.a(this.B).b();
            }
        } catch (Throwable th2) {
            fi.a(th2, "ALManager", "handlerLocation part2");
        }
        if (this.o) {
            return;
        }
        if (this.b.isOnceLocation()) {
            l();
            a(14, (Bundle) null);
        }
    }

    private void a(AMapLocation aMapLocation, String str) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("loc", aMapLocation);
        bundle.putString("lastLocNb", str);
        a(1014, bundle, 0L);
    }

    private static void a(ei eiVar) {
        try {
            eiVar.c();
            eiVar.a(new AMapLocationClientOption().setNeedAddress(false));
            eiVar.a(true, new eh());
        } catch (Throwable th) {
            fi.a(th, "ALManager", "apsLocation:doFirstNetLocate 2");
        }
    }

    private void a(ei eiVar, eh ehVar) {
        try {
            eiVar.a(this.B);
            eiVar.a(this.b);
            eiVar.b(ehVar);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "initApsBase");
        }
    }

    private static void a(ei eiVar, en enVar) {
        if (enVar != null) {
            try {
                if (enVar.getErrorCode() == 0) {
                    eiVar.b(enVar);
                }
            } catch (Throwable th) {
                fi.a(th, "ALManager", "apsLocation:doFirstAddCache");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00ef A[EXC_TOP_SPLITTER, PHI: r1
      0x00ef: PHI (r1v8 com.amap.api.location.AMapLocation) = 
      (r1v6 com.amap.api.location.AMapLocation)
      (r1v6 com.amap.api.location.AMapLocation)
      (r1v6 com.amap.api.location.AMapLocation)
      (r1v13 com.amap.api.location.AMapLocation)
     binds: [B:68:0x00ea, B:62:0x00d8, B:64:0x00dc, B:65:0x00de] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:12:0x0031 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #10 {all -> 0x0035, blocks: (B:10:0x0027, B:12:0x0031), top: B:120:0x0027, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x003b A[Catch: all -> 0x013a, TRY_LEAVE, TryCatch #12 {all -> 0x013a, blocks: (B:3:0x000a, B:16:0x003b, B:35:0x0092, B:15:0x0036, B:9:0x0022, B:4:0x0011, B:6:0x001b, B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c, B:10:0x0027, B:12:0x0031), top: B:124:0x000a, inners: #1, #9, #10 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x004b A[Catch: all -> 0x0091, TryCatch #9 {all -> 0x0091, blocks: (B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c), top: B:119:0x0043, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x0057 A[Catch: all -> 0x0091, TryCatch #9 {all -> 0x0091, blocks: (B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c), top: B:119:0x0043, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0061  */
    /* JADX WARN: Code duplicated, block: B:25:0x0062 A[Catch: all -> 0x0091, TryCatch #9 {all -> 0x0091, blocks: (B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c), top: B:119:0x0043, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x006a A[Catch: all -> 0x0091, TryCatch #9 {all -> 0x0091, blocks: (B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c), top: B:119:0x0043, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x007f A[Catch: all -> 0x0091, TryCatch #9 {all -> 0x0091, blocks: (B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c), top: B:119:0x0043, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x008c A[Catch: all -> 0x0091, TRY_LEAVE, TryCatch #9 {all -> 0x0091, blocks: (B:18:0x0043, B:20:0x004b, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:29:0x007f, B:31:0x0084, B:32:0x008c), top: B:119:0x0043, outer: #12 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    /* JADX WARN: Code duplicated, block: B:39:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x009d  */
    /* JADX WARN: Code duplicated, block: B:41:0x009f  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a6 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #8 {all -> 0x00b1, blocks: (B:42:0x00a0, B:44:0x00a6), top: B:117:0x00a0 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00be  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00da A[Catch: all -> 0x00e9, TryCatch #6 {all -> 0x00e9, blocks: (B:61:0x00d2, B:63:0x00da, B:65:0x00de), top: B:113:0x00d2, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00f7 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:69:0x00ef, B:71:0x00f7, B:73:0x00fb), top: B:101:0x00ef }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0107 A[Catch: all -> 0x0123, TryCatch #3 {all -> 0x0123, blocks: (B:74:0x0100, B:76:0x0107, B:77:0x011a, B:79:0x011f), top: B:107:0x0100, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x011f A[Catch: all -> 0x0123, TRY_LEAVE, TryCatch #3 {all -> 0x0123, blocks: (B:74:0x0100, B:76:0x0107, B:77:0x011a, B:79:0x011f), top: B:107:0x0100, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0129 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x012b A[ADDED_TO_REGION] */
    private en b(ei eiVar) {
        en enVar;
        Throwable th;
        boolean zL;
        boolean z;
        en enVarA;
        boolean z2;
        String strK;
        Bundle bundle;
        c cVar;
        i iVar;
        boolean z3;
        long jA;
        String umidtoken;
        AMapLocation aMapLocationM123clone = null;
        this.f12709a = null;
        eh ehVar = new eh();
        try {
            try {
                ehVar.c(fp.b());
                try {
                    String apikey = AMapLocationClientOption.getAPIKEY();
                    if (TextUtils.isEmpty(apikey)) {
                        umidtoken = UmidtokenInfo.getUmidtoken();
                        if (TextUtils.isEmpty(umidtoken)) {
                            a(eiVar, ehVar);
                            zL = fh.l();
                            z = false;
                            if (this.I.getCacheCallBack()) {
                                enVarA = a(eiVar, this.I.getCacheCallBack());
                                if (enVarA == null) {
                                    enVarA = null;
                                } else if (!fh.a(enVarA.getTime())) {
                                    if (this.I.getCacheCallBack()) {
                                        int cacheTimeOut = this.I.getCacheTimeOut();
                                        jA = fp.a() - enVarA.getTime();
                                        if (jA > 0) {
                                            this.f12709a = enVarA;
                                            enVarA.setLocationType(10);
                                        }
                                    }
                                    enVarA = null;
                                }
                            } else {
                                enVarA = a(eiVar, false);
                            }
                            if (enVarA == null) {
                                if (zL) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                enVarA = eiVar.a(z3, ehVar);
                                if (enVarA != null) {
                                    z = true;
                                }
                                enVar = enVarA;
                                z2 = z;
                                z = true;
                                if (enVar != null) {
                                    strK = enVar.k();
                                    aMapLocationM123clone = enVar.m123clone();
                                } else {
                                    strK = null;
                                }
                                if (this.b.isLocationCacheEnable()) {
                                    if (this.I.getCacheCallBack()) {
                                        cVar.removeMessages(13);
                                    }
                                    bundle = new Bundle();
                                    if (aMapLocationM123clone != null) {
                                        bundle.putParcelable("loc", aMapLocationM123clone);
                                        bundle.putString("nb", enVar.k());
                                        bundle.putParcelable("statics", ehVar);
                                    }
                                    a(bundle);
                                    if (z2) {
                                        a(eiVar, enVar);
                                        if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else {
                                    if (this.I.getCacheCallBack()) {
                                        cVar.removeMessages(13);
                                    }
                                    bundle = new Bundle();
                                    if (aMapLocationM123clone != null) {
                                        bundle.putParcelable("loc", aMapLocationM123clone);
                                        bundle.putString("nb", enVar.k());
                                        bundle.putParcelable("statics", ehVar);
                                    }
                                    a(bundle);
                                    if (z2) {
                                        a(eiVar, enVar);
                                        if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                }
                            } else {
                                enVar = enVarA;
                            }
                            z2 = false;
                            if (enVar != null) {
                                strK = enVar.k();
                                aMapLocationM123clone = enVar.m123clone();
                            } else {
                                strK = null;
                            }
                            if (this.b.isLocationCacheEnable()) {
                                if (this.I.getCacheCallBack()) {
                                    cVar.removeMessages(13);
                                }
                                bundle = new Bundle();
                                if (aMapLocationM123clone != null) {
                                    bundle.putParcelable("loc", aMapLocationM123clone);
                                    bundle.putString("nb", enVar.k());
                                    bundle.putParcelable("statics", ehVar);
                                }
                                a(bundle);
                                if (z2) {
                                    a(eiVar, enVar);
                                    if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else if (z) {
                                    f12708g = true;
                                    a(eiVar);
                                }
                            } else {
                                if (this.I.getCacheCallBack()) {
                                    cVar.removeMessages(13);
                                }
                                bundle = new Bundle();
                                if (aMapLocationM123clone != null) {
                                    bundle.putParcelable("loc", aMapLocationM123clone);
                                    bundle.putString("nb", enVar.k());
                                    bundle.putParcelable("statics", ehVar);
                                }
                                a(bundle);
                                if (z2) {
                                    a(eiVar, enVar);
                                    if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else if (z) {
                                    f12708g = true;
                                    a(eiVar);
                                }
                            }
                        } else {
                            n.a(umidtoken);
                            a(eiVar, ehVar);
                            zL = fh.l();
                            z = false;
                            if (this.I.getCacheCallBack()) {
                                enVarA = a(eiVar, this.I.getCacheCallBack());
                                if (enVarA == null) {
                                    enVarA = null;
                                } else if (!fh.a(enVarA.getTime())) {
                                    if (this.I.getCacheCallBack()) {
                                        int cacheTimeOut2 = this.I.getCacheTimeOut();
                                        jA = fp.a() - enVarA.getTime();
                                        if (jA > 0) {
                                            this.f12709a = enVarA;
                                            enVarA.setLocationType(10);
                                        }
                                    }
                                    enVarA = null;
                                }
                            } else {
                                enVarA = a(eiVar, false);
                            }
                            if (enVarA == null) {
                                if (zL) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                enVarA = eiVar.a(z3, ehVar);
                                if (enVarA != null) {
                                    z = true;
                                }
                                enVar = enVarA;
                                z2 = z;
                                z = true;
                                if (enVar != null) {
                                    strK = enVar.k();
                                    aMapLocationM123clone = enVar.m123clone();
                                } else {
                                    strK = null;
                                }
                                if (this.b.isLocationCacheEnable()) {
                                    if (this.I.getCacheCallBack()) {
                                        cVar.removeMessages(13);
                                    }
                                    bundle = new Bundle();
                                    if (aMapLocationM123clone != null) {
                                        bundle.putParcelable("loc", aMapLocationM123clone);
                                        bundle.putString("nb", enVar.k());
                                        bundle.putParcelable("statics", ehVar);
                                    }
                                    a(bundle);
                                    if (z2) {
                                        a(eiVar, enVar);
                                        if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else {
                                    if (this.I.getCacheCallBack()) {
                                        cVar.removeMessages(13);
                                    }
                                    bundle = new Bundle();
                                    if (aMapLocationM123clone != null) {
                                        bundle.putParcelable("loc", aMapLocationM123clone);
                                        bundle.putString("nb", enVar.k());
                                        bundle.putParcelable("statics", ehVar);
                                    }
                                    a(bundle);
                                    if (z2) {
                                        a(eiVar, enVar);
                                        if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                }
                            } else {
                                enVar = enVarA;
                            }
                            z2 = false;
                            if (enVar != null) {
                                strK = enVar.k();
                                aMapLocationM123clone = enVar.m123clone();
                            } else {
                                strK = null;
                            }
                            if (this.b.isLocationCacheEnable()) {
                                if (this.I.getCacheCallBack()) {
                                    cVar.removeMessages(13);
                                }
                                bundle = new Bundle();
                                if (aMapLocationM123clone != null) {
                                    bundle.putParcelable("loc", aMapLocationM123clone);
                                    bundle.putString("nb", enVar.k());
                                    bundle.putParcelable("statics", ehVar);
                                }
                                a(bundle);
                                if (z2) {
                                    a(eiVar, enVar);
                                    if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else if (z) {
                                    f12708g = true;
                                    a(eiVar);
                                }
                            } else {
                                if (this.I.getCacheCallBack()) {
                                    cVar.removeMessages(13);
                                }
                                bundle = new Bundle();
                                if (aMapLocationM123clone != null) {
                                    bundle.putParcelable("loc", aMapLocationM123clone);
                                    bundle.putString("nb", enVar.k());
                                    bundle.putParcelable("statics", ehVar);
                                }
                                a(bundle);
                                if (z2) {
                                    a(eiVar, enVar);
                                    if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else if (z) {
                                    f12708g = true;
                                    a(eiVar);
                                }
                            }
                        }
                    } else {
                        l.a(this.B, apikey);
                        try {
                            umidtoken = UmidtokenInfo.getUmidtoken();
                            if (TextUtils.isEmpty(umidtoken)) {
                                n.a(umidtoken);
                                a(eiVar, ehVar);
                                zL = fh.l();
                                z = false;
                                try {
                                    if (this.I.getCacheCallBack()) {
                                        enVarA = a(eiVar, this.I.getCacheCallBack());
                                        if (enVarA == null) {
                                            enVarA = null;
                                        } else if (!fh.a(enVarA.getTime())) {
                                            if (this.I.getCacheCallBack()) {
                                                int cacheTimeOut3 = this.I.getCacheTimeOut();
                                                jA = fp.a() - enVarA.getTime();
                                                if (jA > 0 && jA < cacheTimeOut3) {
                                                    this.f12709a = enVarA;
                                                    enVarA.setLocationType(10);
                                                }
                                            }
                                            enVarA = null;
                                        }
                                    } else {
                                        enVarA = a(eiVar, false);
                                    }
                                } catch (Throwable th2) {
                                    fi.a(th2, "ALManager", "apscach");
                                }
                                try {
                                    if (enVarA == null) {
                                        if (zL) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        try {
                                            enVarA = eiVar.a(z3, ehVar);
                                            if (enVarA != null && enVarA.getErrorCode() == 0) {
                                                z = true;
                                            }
                                            enVar = enVarA;
                                            z2 = z;
                                            z = true;
                                        } catch (Throwable th3) {
                                            try {
                                                fi.a(th3, "ALManager", "apsLocation:doFirstNetLocate");
                                                enVar = enVarA;
                                                z = true;
                                                z2 = false;
                                            } catch (Throwable th4) {
                                                th = th4;
                                                enVar = enVarA;
                                                try {
                                                    fi.a(th, "ALManager", "apsLocation");
                                                    return enVar;
                                                } finally {
                                                    try {
                                                        eiVar.d();
                                                    } catch (Throwable unused) {
                                                    }
                                                }
                                            }
                                        }
                                        if (enVar != null) {
                                            try {
                                                strK = enVar.k();
                                                aMapLocationM123clone = enVar.m123clone();
                                            } catch (Throwable th5) {
                                                th = th5;
                                                fi.a(th, "ALManager", "apsLocation");
                                            }
                                        } else {
                                            strK = null;
                                        }
                                        if (this.b.isLocationCacheEnable() || (iVar = this.i) == null) {
                                            try {
                                                if (this.I.getCacheCallBack() && (cVar = this.c) != null) {
                                                    cVar.removeMessages(13);
                                                }
                                            } catch (Throwable unused2) {
                                            }
                                            try {
                                                bundle = new Bundle();
                                                if (aMapLocationM123clone != null) {
                                                    bundle.putParcelable("loc", aMapLocationM123clone);
                                                    bundle.putString("nb", enVar.k());
                                                    bundle.putParcelable("statics", ehVar);
                                                }
                                                a(bundle);
                                                if (z2) {
                                                    a(eiVar, enVar);
                                                    if (z && zL && !f12708g) {
                                                        f12708g = true;
                                                        a(eiVar);
                                                    }
                                                } else if (z) {
                                                    f12708g = true;
                                                    a(eiVar);
                                                }
                                            } catch (Throwable th6) {
                                                fi.a(th6, "ALManager", "apsLocation:callback");
                                            }
                                        } else {
                                            aMapLocationM123clone = iVar.a(aMapLocationM123clone, strK, this.b.getLastLocationLifeCycle());
                                            if (this.I.getCacheCallBack()) {
                                                cVar.removeMessages(13);
                                            }
                                            bundle = new Bundle();
                                            if (aMapLocationM123clone != null) {
                                                bundle.putParcelable("loc", aMapLocationM123clone);
                                                bundle.putString("nb", enVar.k());
                                                bundle.putParcelable("statics", ehVar);
                                            }
                                            a(bundle);
                                            if (z2) {
                                                a(eiVar, enVar);
                                                if (z) {
                                                    f12708g = true;
                                                    a(eiVar);
                                                }
                                            } else if (z) {
                                                f12708g = true;
                                                a(eiVar);
                                            }
                                        }
                                    } else {
                                        enVar = enVarA;
                                    }
                                    if (this.b.isLocationCacheEnable()) {
                                        if (this.I.getCacheCallBack()) {
                                            cVar.removeMessages(13);
                                        }
                                        bundle = new Bundle();
                                        if (aMapLocationM123clone != null) {
                                            bundle.putParcelable("loc", aMapLocationM123clone);
                                            bundle.putString("nb", enVar.k());
                                            bundle.putParcelable("statics", ehVar);
                                        }
                                        a(bundle);
                                        if (z2) {
                                            a(eiVar, enVar);
                                            if (z) {
                                                f12708g = true;
                                                a(eiVar);
                                            }
                                        } else if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else {
                                        if (this.I.getCacheCallBack()) {
                                            cVar.removeMessages(13);
                                        }
                                        bundle = new Bundle();
                                        if (aMapLocationM123clone != null) {
                                            bundle.putParcelable("loc", aMapLocationM123clone);
                                            bundle.putString("nb", enVar.k());
                                            bundle.putParcelable("statics", ehVar);
                                        }
                                        a(bundle);
                                        if (z2) {
                                            a(eiVar, enVar);
                                            if (z) {
                                                f12708g = true;
                                                a(eiVar);
                                            }
                                        } else if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    }
                                } catch (Throwable th7) {
                                    fi.a(th7, "ALManager", "fixLastLocation");
                                }
                                z2 = false;
                                if (enVar != null) {
                                    strK = enVar.k();
                                    aMapLocationM123clone = enVar.m123clone();
                                } else {
                                    strK = null;
                                }
                            } else {
                                a(eiVar, ehVar);
                                zL = fh.l();
                                z = false;
                                if (this.I.getCacheCallBack()) {
                                    enVarA = a(eiVar, this.I.getCacheCallBack());
                                    if (enVarA == null) {
                                        enVarA = null;
                                    } else if (!fh.a(enVarA.getTime())) {
                                        if (this.I.getCacheCallBack()) {
                                            int cacheTimeOut4 = this.I.getCacheTimeOut();
                                            jA = fp.a() - enVarA.getTime();
                                            if (jA > 0) {
                                                this.f12709a = enVarA;
                                                enVarA.setLocationType(10);
                                            }
                                        }
                                        enVarA = null;
                                    }
                                } else {
                                    enVarA = a(eiVar, false);
                                }
                                if (enVarA == null) {
                                    if (zL) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    enVarA = eiVar.a(z3, ehVar);
                                    if (enVarA != null) {
                                        z = true;
                                    }
                                    enVar = enVarA;
                                    z2 = z;
                                    z = true;
                                    if (enVar != null) {
                                        strK = enVar.k();
                                        aMapLocationM123clone = enVar.m123clone();
                                    } else {
                                        strK = null;
                                    }
                                    if (this.b.isLocationCacheEnable()) {
                                        if (this.I.getCacheCallBack()) {
                                            cVar.removeMessages(13);
                                        }
                                        bundle = new Bundle();
                                        if (aMapLocationM123clone != null) {
                                            bundle.putParcelable("loc", aMapLocationM123clone);
                                            bundle.putString("nb", enVar.k());
                                            bundle.putParcelable("statics", ehVar);
                                        }
                                        a(bundle);
                                        if (z2) {
                                            a(eiVar, enVar);
                                            if (z) {
                                                f12708g = true;
                                                a(eiVar);
                                            }
                                        } else if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else {
                                        if (this.I.getCacheCallBack()) {
                                            cVar.removeMessages(13);
                                        }
                                        bundle = new Bundle();
                                        if (aMapLocationM123clone != null) {
                                            bundle.putParcelable("loc", aMapLocationM123clone);
                                            bundle.putString("nb", enVar.k());
                                            bundle.putParcelable("statics", ehVar);
                                        }
                                        a(bundle);
                                        if (z2) {
                                            a(eiVar, enVar);
                                            if (z) {
                                                f12708g = true;
                                                a(eiVar);
                                            }
                                        } else if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    }
                                } else {
                                    enVar = enVarA;
                                }
                                z2 = false;
                                if (enVar != null) {
                                    strK = enVar.k();
                                    aMapLocationM123clone = enVar.m123clone();
                                } else {
                                    strK = null;
                                }
                                if (this.b.isLocationCacheEnable()) {
                                    if (this.I.getCacheCallBack()) {
                                        cVar.removeMessages(13);
                                    }
                                    bundle = new Bundle();
                                    if (aMapLocationM123clone != null) {
                                        bundle.putParcelable("loc", aMapLocationM123clone);
                                        bundle.putString("nb", enVar.k());
                                        bundle.putParcelable("statics", ehVar);
                                    }
                                    a(bundle);
                                    if (z2) {
                                        a(eiVar, enVar);
                                        if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                } else {
                                    if (this.I.getCacheCallBack()) {
                                        cVar.removeMessages(13);
                                    }
                                    bundle = new Bundle();
                                    if (aMapLocationM123clone != null) {
                                        bundle.putParcelable("loc", aMapLocationM123clone);
                                        bundle.putString("nb", enVar.k());
                                        bundle.putParcelable("statics", ehVar);
                                    }
                                    a(bundle);
                                    if (z2) {
                                        a(eiVar, enVar);
                                        if (z) {
                                            f12708g = true;
                                            a(eiVar);
                                        }
                                    } else if (z) {
                                        f12708g = true;
                                        a(eiVar);
                                    }
                                }
                            }
                        } catch (Throwable th8) {
                            fi.a(th8, "ALManager", "apsLocation setUmidToken");
                        }
                    }
                } catch (Throwable th9) {
                    fi.a(th9, "ALManager", "apsLocation setAuthKey");
                }
            } catch (Throwable th10) {
                enVar = null;
                th = th10;
                fi.a(th, "ALManager", "apsLocation");
                return enVar;
            }
        } catch (Throwable unused3) {
        }
        return enVar;
    }

    private void b(Looper looper) {
        try {
            if (looper == null) {
                this.c = Looper.myLooper() == null ? new c(this.B.getMainLooper()) : new c();
            } else {
                this.c = new c(looper);
            }
        } catch (Throwable th) {
            fi.a(th, "ALManager", "init 1");
        }
        try {
            try {
                this.i = new i(this.B);
            } catch (Throwable th2) {
                fi.a(th2, "ALManager", "init 2");
            }
            b bVar = new b("amapLocManagerThread", this);
            this.n = bVar;
            bVar.setPriority(5);
            this.n.start();
            this.y = a(this.n.getLooper());
        } catch (Throwable th3) {
            fi.a(th3, "ALManager", "init 5");
        }
        try {
            this.f12710d = new g(this.B, this.c);
        } catch (Throwable th4) {
            fi.a(th4, "ALManager", "init 3");
        }
        if (this.r == null) {
            this.r = new fn();
        }
        a(this.B);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Message message) {
        try {
            AMapLocation aMapLocation = (AMapLocation) message.obj;
            if (this.f12713h && this.j != null) {
                Bundle bundle = new Bundle();
                bundle.putBundle("optBundle", fi.a(this.b));
                a(0, bundle);
                if (this.D) {
                    a(13, (Bundle) null);
                }
                this.f12713h = false;
            }
            a(aMapLocation, (eh) null);
            a(1025);
            a(1025, (Object) null, DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "resultGpsLocationSuccess");
        }
    }

    private void b(AMapLocation aMapLocation) {
        Message messageObtainMessage = this.c.obtainMessage();
        messageObtainMessage.what = 10;
        messageObtainMessage.obj = aMapLocation;
        this.c.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Message message) {
        if (message == null) {
            return;
        }
        try {
            Bundle data = message.getData();
            if (data == null) {
                return;
            }
            int i = data.getInt("i", 0);
            Notification notification = (Notification) data.getParcelable(ak.f12508g);
            Intent intentS = s();
            intentS.putExtra("i", i);
            intentS.putExtra(ak.f12508g, notification);
            intentS.putExtra(ak.f12507f, 1);
            a(intentS, true);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "doEnableBackgroundLocation");
        }
    }

    private void c(AMapLocation aMapLocation) {
        if (aMapLocation == null) {
            return;
        }
        AMapLocation aMapLocationA = null;
        try {
            ez ezVar = i.b;
            if (ezVar == null) {
                i iVar = this.i;
                if (iVar != null) {
                    aMapLocationA = iVar.b();
                }
            } else {
                aMapLocationA = ezVar.a();
            }
            fn.a(aMapLocationA, aMapLocation);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AMapLocationListener aMapLocationListener) {
        if (aMapLocationListener == null) {
            throw new IllegalArgumentException("listener参数不能为null");
        }
        if (this.f12711e == null) {
            this.f12711e = new ArrayList<>();
        }
        if (this.f12711e.contains(aMapLocationListener)) {
            return;
        }
        this.f12711e.add(aMapLocationListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Message message) {
        if (message == null) {
            return;
        }
        try {
            Bundle data = message.getData();
            if (data == null) {
                return;
            }
            boolean z = data.getBoolean(ak.j, true);
            Intent intentS = s();
            intentS.putExtra(ak.j, z);
            intentS.putExtra(ak.f12507f, 2);
            a(intentS, false);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "doDisableBackgroundLocation");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AMapLocationListener aMapLocationListener) {
        if (!this.f12711e.isEmpty() && this.f12711e.contains(aMapLocationListener)) {
            this.f12711e.remove(aMapLocationListener);
        }
        if (this.f12711e.isEmpty()) {
            l();
        }
    }

    private void i() {
        synchronized (this.q) {
            a aVar = this.y;
            if (aVar != null) {
                aVar.removeCallbacksAndMessages(null);
            }
            this.y = null;
        }
    }

    private boolean j() {
        boolean z = false;
        int i = 0;
        while (this.j == null) {
            try {
                Thread.sleep(100L);
                i++;
                if (i >= 50) {
                    break;
                }
            } catch (Throwable th) {
                fi.a(th, "ALManager", "checkAPSManager");
            }
        }
        if (this.j == null) {
            Message messageObtain = Message.obtain();
            Bundle bundle = new Bundle();
            AMapLocation aMapLocation = new AMapLocation("");
            aMapLocation.setErrorCode(10);
            aMapLocation.setLocationDetail(!fp.l(this.B.getApplicationContext()) ? "请检查配置文件是否配置服务，并且manifest中service标签是否配置在application标签内#1003" : "启动ApsServcie失败#1001");
            bundle.putParcelable("loc", aMapLocation);
            messageObtain.setData(bundle);
            messageObtain.what = 1;
            this.c.sendMessage(messageObtain);
        } else {
            z = true;
        }
        if (!z) {
            fn.a((String) null, !fp.l(this.B.getApplicationContext()) ? 2103 : 2101);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k() {
        if (this.b == null) {
            this.b = new AMapLocationClientOption();
        }
        if (this.D) {
            return;
        }
        this.D = true;
        int i = AnonymousClass3.f12716a[this.b.getLocationMode().ordinal()];
        long gpsFirstTimeout = 0;
        if (i == 1) {
            a(1017, (Object) null, 0L);
            a(1016, (Object) null, 0L);
        } else {
            if (i == 2) {
                a(1016);
                a(1015, (Object) null, 0L);
                return;
            }
            if (i == 3) {
                a(1015, (Object) null, 0L);
                if (this.b.isGpsFirst() && this.b.isOnceLocation()) {
                    gpsFirstTimeout = this.b.getGpsFirstTimeout();
                }
                a(1016, (Object) null, gpsFirstTimeout);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        try {
            a(1025);
            g gVar = this.f12710d;
            if (gVar != null) {
                gVar.a();
            }
            a(1016);
            this.D = false;
            this.m = 0;
        } catch (Throwable th) {
            fi.a(th, "ALManager", "stopLocation");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            if (this.j != null) {
                this.m = 0;
                Bundle bundle = new Bundle();
                bundle.putBundle("optBundle", fi.a(this.b));
                a(2, bundle);
                return;
            }
            int i = this.m + 1;
            this.m = i;
            if (i < 10) {
                a(1008, (Object) null, 50L);
            }
        } catch (Throwable th) {
            fi.a(th, "ALManager", "startAssistantLocationImpl");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            Bundle bundle = new Bundle();
            bundle.putBundle("optBundle", fi.a(this.b));
            a(3, bundle);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "stopAssistantLocationImpl");
        }
    }

    private void o() {
        en enVarB = b(new ei(true));
        if (j()) {
            Bundle bundle = new Bundle();
            String str = (enVarB == null || !(enVarB.getLocationType() == 2 || enVarB.getLocationType() == 4)) ? "0" : "1";
            bundle.putBundle("optBundle", fi.a(this.b));
            bundle.putString("isCacheLoc", str);
            a(0, bundle);
            if (this.D) {
                a(13, (Bundle) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        try {
            if (E || !(this.s || this.L)) {
                E = false;
                this.L = true;
                o();
            } else {
                try {
                    if (this.s && !a() && !this.x) {
                        this.x = true;
                        r();
                    }
                } catch (Throwable th) {
                    this.x = true;
                    fi.a(th, "ALManager", "doLBSLocation reStartService");
                }
                if (j()) {
                    this.x = false;
                    Bundle bundle = new Bundle();
                    bundle.putBundle("optBundle", fi.a(this.b));
                    bundle.putString("d", UmidtokenInfo.getUmidtoken());
                    if (!this.f12710d.b()) {
                        a(1, bundle);
                    }
                }
            }
            try {
                if (this.b.isOnceLocation()) {
                    return;
                }
                q();
            } catch (Throwable unused) {
            }
        } catch (Throwable th2) {
            try {
                fi.a(th2, "ALManager", "doLBSLocation");
                try {
                    if (this.b.isOnceLocation()) {
                    }
                } catch (Throwable unused2) {
                }
            } finally {
                try {
                    if (!this.b.isOnceLocation()) {
                        q();
                    }
                } catch (Throwable unused3) {
                }
            }
        }
    }

    private void q() {
        if (this.b.getLocationMode() != AMapLocationClientOption.AMapLocationMode.Device_Sensors) {
            a(1016, (Object) null, this.b.getInterval() >= 1000 ? this.b.getInterval() : 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        try {
            if (this.k == null) {
                this.k = new Messenger(this.c);
            }
            a(s());
        } catch (Throwable unused) {
        }
    }

    private Intent s() {
        String apikey;
        if (this.l == null) {
            this.l = new Intent(this.B, (Class<?>) APSService.class);
        }
        try {
            apikey = !TextUtils.isEmpty(AMapLocationClientOption.getAPIKEY()) ? AMapLocationClientOption.getAPIKEY() : k.f(this.B);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "startServiceImpl p2");
            apikey = "";
        }
        this.l.putExtra("a", apikey);
        this.l.putExtra("b", k.c(this.B));
        this.l.putExtra("d", UmidtokenInfo.getUmidtoken());
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        fn fnVar;
        Context context;
        int i;
        this.f12710d.b(this.b);
        if (this.D && !this.b.getLocationMode().equals(this.p)) {
            l();
            k();
        }
        this.p = this.b.getLocationMode();
        if (this.r != null) {
            if (this.b.isOnceLocation()) {
                fnVar = this.r;
                context = this.B;
                i = 0;
            } else {
                fnVar = this.r;
                context = this.B;
                i = 1;
            }
            fnVar.a(context, i);
            this.r.a(this.B, this.b);
        }
    }

    private boolean u() {
        if (fp.k(this.B)) {
            int iB = -1;
            try {
                iB = fl.b(((Application) this.B.getApplicationContext()).getBaseContext(), "checkSelfPermission", "android.permission.FOREGROUND_SERVICE");
            } catch (Throwable unused) {
            }
            if (iB != 0) {
                return false;
            }
        }
        return true;
    }

    public final void a(int i, Notification notification) {
        if (i == 0 || notification == null) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("i", i);
            bundle.putParcelable(ak.f12508g, notification);
            a(1023, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "disableBackgroundLocation");
        }
    }

    public final void a(WebView webView) {
        if (this.J == null) {
            this.J = new h(this.B, webView);
        }
        this.J.a();
    }

    public final void a(AMapLocationClientOption aMapLocationClientOption) {
        try {
            this.I = aMapLocationClientOption.m124clone();
            a(1018, aMapLocationClientOption.m124clone(), 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "setLocationOption");
        }
    }

    public final void a(AMapLocationListener aMapLocationListener) {
        try {
            a(1002, aMapLocationListener, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "setLocationListener");
        }
    }

    public final void a(boolean z) {
        try {
            Bundle bundle = new Bundle();
            bundle.putBoolean(ak.j, z);
            a(1024, bundle, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "disableBackgroundLocation");
        }
    }

    public final boolean a() {
        return this.C;
    }

    public final void b() {
        c cVar;
        try {
            if (this.I.getCacheCallBack() && (cVar = this.c) != null) {
                cVar.sendEmptyMessageDelayed(13, this.I.getCacheCallBackTime());
            }
        } catch (Throwable unused) {
        }
        try {
            a(1003, (Object) null, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "startLocation");
        }
    }

    public final void b(AMapLocationListener aMapLocationListener) {
        try {
            a(1005, aMapLocationListener, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "unRegisterLocationListener");
        }
    }

    public final void c() {
        try {
            a(1004, (Object) null, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "stopLocation");
        }
    }

    public final void d() {
        try {
            h hVar = this.J;
            if (hVar != null) {
                hVar.b();
                this.J = null;
            }
            a(1011, (Object) null, 0L);
            this.o = true;
        } catch (Throwable th) {
            fi.a(th, "ALManager", "onDestroy");
        }
    }

    public final AMapLocation e() {
        AMapLocation aMapLocationB = null;
        try {
            i iVar = this.i;
            if (iVar != null && (aMapLocationB = iVar.b()) != null) {
                aMapLocationB.setTrustedLevel(3);
            }
        } catch (Throwable th) {
            fi.a(th, "ALManager", "getLastKnownLocation");
        }
        return aMapLocationB;
    }

    public final void f() {
        try {
            a(1008, (Object) null, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "startAssistantLocation");
        }
    }

    public final void g() {
        try {
            h hVar = this.J;
            if (hVar != null) {
                hVar.b();
                this.J = null;
            }
            a(1009, (Object) null, 0L);
        } catch (Throwable th) {
            fi.a(th, "ALManager", "stopAssistantLocation");
        }
    }

    final void h() {
        a(12, (Bundle) null);
        this.f12713h = true;
        this.C = false;
        this.s = false;
        l();
        fn fnVar = this.r;
        if (fnVar != null) {
            fnVar.b(this.B);
        }
        fm.a(this.B).a();
        fn.a(this.B);
        e eVar = this.t;
        if (eVar != null) {
            eVar.b().sendEmptyMessage(11);
        } else {
            ServiceConnection serviceConnection = this.K;
            if (serviceConnection != null) {
                this.B.unbindService(serviceConnection);
            }
        }
        try {
            if (this.A) {
                this.B.stopService(s());
            }
        } catch (Throwable unused) {
        }
        this.A = false;
        ArrayList<AMapLocationListener> arrayList = this.f12711e;
        if (arrayList != null) {
            arrayList.clear();
            this.f12711e = null;
        }
        this.K = null;
        i();
        b bVar = this.n;
        if (bVar != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                try {
                    fl.a(bVar, (Class<?>) HandlerThread.class, "quitSafely", new Object[0]);
                } catch (Throwable unused2) {
                    this.n.quit();
                }
            } else {
                bVar.quit();
            }
        }
        this.n = null;
        c cVar = this.c;
        if (cVar != null) {
            cVar.removeCallbacksAndMessages(null);
        }
        i iVar = this.i;
        if (iVar != null) {
            iVar.c();
            this.i = null;
        }
    }
}

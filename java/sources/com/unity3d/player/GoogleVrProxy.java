package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.View;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
class GoogleVrProxy extends c implements GoogleVrVideo {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f14185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f14186g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f14187h;
    private Vector i;
    private SurfaceView j;
    private a k;
    private Thread l;
    private Handler m;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f14196a = false;
        public boolean b = false;
        public boolean c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f14197d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f14198e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f14199f = false;

        a() {
        }

        public final boolean a() {
            return this.f14196a && this.b;
        }

        public final void b() {
            this.f14196a = false;
            this.b = false;
            this.f14197d = false;
            this.f14198e = true;
            this.f14199f = false;
        }
    }

    public GoogleVrProxy(f fVar) {
        super("Google VR", fVar);
        this.f14185f = false;
        this.f14186g = false;
        this.f14187h = null;
        this.i = new Vector();
        this.j = null;
        this.k = new a();
        this.l = null;
        this.m = new Handler(Looper.getMainLooper()) { // from class: com.unity3d.player.GoogleVrProxy.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what != 135711) {
                    super.handleMessage(message);
                }
                switch (message.arg1) {
                    case 2147483645:
                        Iterator it = GoogleVrProxy.this.i.iterator();
                        while (it.hasNext()) {
                            ((GoogleVrVideo.GoogleVrVideoCallbacks) it.next()).onFrameAvailable();
                        }
                        break;
                    case 2147483646:
                        Surface surface = (Surface) message.obj;
                        Iterator it2 = GoogleVrProxy.this.i.iterator();
                        while (it2.hasNext()) {
                            ((GoogleVrVideo.GoogleVrVideoCallbacks) it2.next()).onSurfaceAvailable(surface);
                        }
                        break;
                    default:
                        super.handleMessage(message);
                        break;
                }
            }
        };
        initVrJni();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.k.f14197d = z;
    }

    private boolean a(ClassLoader classLoader) {
        try {
            Class<?> clsLoadClass = classLoader.loadClass("com.unity3d.unitygvr.GoogleVR");
            q qVar = new q(clsLoadClass, clsLoadClass.getConstructor(new Class[0]).newInstance(new Object[0]));
            Class cls = Boolean.TYPE;
            qVar.a("initialize", new Class[]{Activity.class, Context.class, SurfaceView.class, cls, Handler.class});
            qVar.a("deinitialize", new Class[0]);
            qVar.a("load", new Class[]{cls, cls, cls, cls, cls, Runnable.class});
            qVar.a("enable", new Class[]{cls});
            qVar.a("unload", new Class[0]);
            qVar.a("pause", new Class[0]);
            qVar.a("resume", new Class[0]);
            qVar.a("getGvrLayout", new Class[0]);
            qVar.a("getVideoSurfaceId", new Class[0]);
            qVar.a("getVideoSurface", new Class[0]);
            this.f14298a = qVar;
            return true;
        } catch (Exception e2) {
            reportError("Exception initializing GoogleVR from Unity library. " + e2.getLocalizedMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return this.k.f14197d;
    }

    private void e() {
        Activity activity = (Activity) this.c;
        if (this.f14186g) {
            a aVar = this.k;
            if (aVar.f14199f || activity == null) {
                return;
            }
            aVar.f14199f = true;
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.setFlags(268435456);
            activity.startActivity(intent);
        }
    }

    private static boolean f() {
        return Build.VERSION.SDK_INT >= 24;
    }

    private final native void initVrJni();

    private final native boolean isQuiting();

    private final native void setVrVideoTransform(float[][] fArr);

    public final void a(Intent intent) {
        if (intent == null || !intent.getBooleanExtra("android.intent.extra.VR_LAUNCH", false)) {
            return;
        }
        this.f14186g = true;
    }

    public final boolean a() {
        return this.k.f14196a;
    }

    public final boolean a(Activity activity, Context context, SurfaceView surfaceView, Runnable runnable) {
        String str;
        boolean zBooleanValue;
        if (activity == null || context == null || surfaceView == null || runnable == null) {
            str = "Invalid parameters passed to Google VR initialization.";
        } else {
            this.k.b();
            this.c = context;
            this.f14187h = runnable;
            if (this.f14186g && !f()) {
                str = "Daydream requires a device that supports an api version of 24 (Nougat) or better.";
            } else {
                if (!a(UnityPlayer.class.getClassLoader())) {
                    return false;
                }
                try {
                    zBooleanValue = ((Boolean) this.f14298a.a("initialize", activity, context, surfaceView, Boolean.valueOf(this.f14186g), this.m)).booleanValue();
                } catch (Exception e2) {
                    reportError("Exception while trying to initialize Unity Google VR Library. " + e2.getLocalizedMessage());
                    zBooleanValue = false;
                }
                if (zBooleanValue) {
                    this.j = surfaceView;
                    this.k.f14196a = true;
                    this.f14299d = "";
                    return true;
                }
                str = "Unable to initialize GoogleVR library.";
            }
        }
        reportError(str);
        return false;
    }

    public final void b() {
        resumeGvrLayout();
    }

    public final void c() {
        SurfaceView surfaceView = this.j;
        if (surfaceView != null) {
            surfaceView.getHolder().setSizeFromLayout();
        }
    }

    @Override // com.unity3d.player.GoogleVrVideo
    public void deregisterGoogleVrVideoListener(GoogleVrVideo.GoogleVrVideoCallbacks googleVrVideoCallbacks) {
        if (this.i.contains(googleVrVideoCallbacks)) {
            googleVrVideoCallbacks.onSurfaceUnavailable();
            this.i.remove(googleVrVideoCallbacks);
        }
    }

    protected Object getVideoSurface() {
        if (d() && !this.k.f14198e) {
            try {
                return this.f14298a.a("getVideoSurface", new Object[0]);
            } catch (Exception e2) {
                reportError("Exception caught while Getting GoogleVR Video Surface. " + e2.getLocalizedMessage());
            }
        }
        return null;
    }

    protected int getVideoSurfaceId() {
        if (d() && !this.k.f14198e) {
            try {
                return ((Integer) this.f14298a.a("getVideoSurfaceId", new Object[0])).intValue();
            } catch (Exception e2) {
                reportError("Exception caught while getting Video Surface ID from GoogleVR. " + e2.getLocalizedMessage());
            }
        }
        return -1;
    }

    protected long loadGoogleVr(final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5) {
        if (!this.k.f14196a) {
            return 0L;
        }
        final AtomicLong atomicLong = new AtomicLong(0L);
        this.f14299d = (z || z2) ? "Daydream" : "Cardboard";
        if (!runOnUiThreadWithSync(new Runnable() { // from class: com.unity3d.player.GoogleVrProxy.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    atomicLong.set(((Long) GoogleVrProxy.this.f14298a.a("load", Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(z3), Boolean.valueOf(z4), Boolean.valueOf(z5), GoogleVrProxy.this.f14187h)).longValue());
                    GoogleVrProxy.this.k.b = true;
                } catch (Exception e2) {
                    GoogleVrProxy.this.reportError("Exception caught while loading GoogleVR. " + e2.getLocalizedMessage());
                    atomicLong.set(0L);
                }
            }
        }) || atomicLong.longValue() == 0) {
            reportError("Google VR had a fatal issue while loading. VR will not be available.");
        }
        return atomicLong.longValue();
    }

    protected void pauseGvrLayout() {
        if (this.k.a() && !this.k.f14198e) {
            if (d()) {
                Iterator it = this.i.iterator();
                while (it.hasNext()) {
                    ((GoogleVrVideo.GoogleVrVideoCallbacks) it.next()).onSurfaceUnavailable();
                }
            }
            q qVar = this.f14298a;
            if (qVar != null) {
                qVar.a("pause", new Object[0]);
            }
            this.k.f14198e = true;
        }
    }

    @Override // com.unity3d.player.GoogleVrVideo
    public void registerGoogleVrVideoListener(GoogleVrVideo.GoogleVrVideoCallbacks googleVrVideoCallbacks) {
        if (this.i.contains(googleVrVideoCallbacks)) {
            return;
        }
        this.i.add(googleVrVideoCallbacks);
        Surface surface = (Surface) getVideoSurface();
        if (surface != null) {
            googleVrVideoCallbacks.onSurfaceAvailable(surface);
        }
    }

    protected void resumeGvrLayout() {
        if (this.k.a() && this.k.f14198e) {
            q qVar = this.f14298a;
            if (qVar != null) {
                qVar.a("resume", new Object[0]);
            }
            this.k.f14198e = false;
        }
    }

    protected void setGoogleVrModeEnabled(final boolean z) {
        if (!this.k.a() || this.b == null || this.c == null) {
            return;
        }
        if (!z && isQuiting()) {
            e();
        }
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.GoogleVrProxy.3
            @Override // java.lang.Runnable
            public final void run() {
                f fVar;
                f fVar2;
                if (z == GoogleVrProxy.this.d()) {
                    return;
                }
                try {
                    if (z && !GoogleVrProxy.this.d()) {
                        GoogleVrProxy googleVrProxy = GoogleVrProxy.this;
                        q qVar = googleVrProxy.f14298a;
                        if (qVar != null && (fVar2 = googleVrProxy.b) != null && !fVar2.addViewToPlayer((View) qVar.a("getGvrLayout", new Object[0]), true)) {
                            GoogleVrProxy.this.reportError("Unable to add Google VR to view hierarchy.");
                            return;
                        }
                        q qVar2 = GoogleVrProxy.this.f14298a;
                        if (qVar2 != null) {
                            qVar2.a("enable", Boolean.TRUE);
                        }
                        GoogleVrProxy.this.a(true);
                        return;
                    }
                    if (z || !GoogleVrProxy.this.d()) {
                        return;
                    }
                    GoogleVrProxy.this.a(false);
                    q qVar3 = GoogleVrProxy.this.f14298a;
                    if (qVar3 != null) {
                        qVar3.a("enable", Boolean.FALSE);
                    }
                    GoogleVrProxy googleVrProxy2 = GoogleVrProxy.this;
                    q qVar4 = googleVrProxy2.f14298a;
                    if (qVar4 == null || (fVar = googleVrProxy2.b) == null) {
                        return;
                    }
                    fVar.removeViewFromPlayer((View) qVar4.a("getGvrLayout", new Object[0]));
                } catch (Exception e2) {
                    GoogleVrProxy.this.reportError("Exception enabling Google VR on UI Thread. " + e2.getLocalizedMessage());
                }
            }
        });
    }

    @Override // com.unity3d.player.GoogleVrVideo
    public void setVideoLocationTransform(float[] fArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) float.class, 4, 4);
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                fArr2[i][i2] = fArr[(i * 4) + i2];
            }
        }
        setVrVideoTransform(fArr2);
    }

    protected void unloadGoogleVr() {
        if (this.k.f14197d) {
            setGoogleVrModeEnabled(false);
        }
        a aVar = this.k;
        if (aVar.c) {
            aVar.c = false;
        }
        this.j = null;
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.GoogleVrProxy.4
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    q qVar = GoogleVrProxy.this.f14298a;
                    if (qVar != null) {
                        qVar.a("unload", new Object[0]);
                        GoogleVrProxy.this.f14298a.a("deinitialize", new Object[0]);
                        GoogleVrProxy.this.f14298a = null;
                    }
                    GoogleVrProxy.this.k.b = false;
                } catch (Exception e2) {
                    GoogleVrProxy.this.reportError("Exception unloading Google VR on UI Thread. " + e2.getLocalizedMessage());
                }
            }
        });
    }
}

package com.huawei.multimedia.audiokit.interfaces;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    private static final Object b = new Object();
    private static final Object c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f12054d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f12055e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static b f12056f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f12057a = null;

    private b() {
    }

    protected static b d() {
        b bVar;
        synchronized (c) {
            if (f12056f == null) {
                f12056f = new b();
            }
            bVar = f12056f;
        }
        return bVar;
    }

    protected void a(Context context, ServiceConnection serviceConnection, String str) {
        synchronized (f12054d) {
            if (context == null) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.huawei.multimedia.audioengine", str);
            try {
                g.d.a.b.a.a.d("HwAudioKit.FeatureKitManager", "bindService");
                context.bindService(intent, serviceConnection, 1);
            } catch (SecurityException e2) {
                g.d.a.b.a.a.b("HwAudioKit.FeatureKitManager", "bindService, SecurityException, {}", e2.getMessage());
            }
        }
    }

    protected <T extends a> T b(int i, Context context) {
        g.d.a.b.a.a.e("HwAudioKit.FeatureKitManager", "createFeatureKit, type = {}", Integer.valueOf(i));
        if (context == null) {
            return null;
        }
        if (i != 1) {
            g.d.a.b.a.a.d("HwAudioKit.FeatureKitManager", "createFeatureKit, type error");
            return null;
        }
        HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = new HwAudioKaraokeFeatureKit(context);
        hwAudioKaraokeFeatureKit.o(context);
        return hwAudioKaraokeFeatureKit;
    }

    protected c c() {
        return this.f12057a;
    }

    protected boolean e(Context context) {
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return true;
        }
        try {
            if (packageManager.getPackageInfo("com.huawei.multimedia.audioengine", 0) != null) {
                return true;
            }
            g.d.a.b.a.a.d("HwAudioKit.FeatureKitManager", "packageInfo is null");
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            g.d.a.b.a.a.a("HwAudioKit.FeatureKitManager", "isMediaKitSupport ,NameNotFoundException");
            return false;
        }
    }

    protected void f(int i) {
        g.d.a.b.a.a.e("HwAudioKit.FeatureKitManager", "onCallBack, result = {}", Integer.valueOf(i));
        synchronized (b) {
            if (c() != null) {
                c().onResult(i);
            }
        }
    }

    protected void g(c cVar) {
        this.f12057a = cVar;
    }

    protected void h(Context context, ServiceConnection serviceConnection) {
        g.d.a.b.a.a.d("HwAudioKit.FeatureKitManager", "unbindService");
        synchronized (f12055e) {
            if (context != null) {
                context.unbindService(serviceConnection);
            }
        }
    }
}

package com.huawei.multimedia.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class HwAudioKit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12047a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.huawei.multimedia.audiokit.interfaces.b f12048d;
    private g.d.a.a.a b = null;
    private boolean c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private IBinder f12049e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ServiceConnection f12050f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private IBinder.DeathRecipient f12051g = new b();

    public enum FeatureType {
        HWAUDIO_FEATURE_KARAOKE(1);

        private int mFeatureType;

        FeatureType(int i) {
            this.mFeatureType = i;
        }

        public int getFeatureType() {
            return this.mFeatureType;
        }
    }

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            HwAudioKit.this.b = g.d.a.a.a.AbstractBinderC0309a.n(iBinder);
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "onServiceConnected");
            if (HwAudioKit.this.b != null) {
                HwAudioKit.this.c = true;
                g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "onServiceConnected, mIHwAudioEngine is not null");
                HwAudioKit.this.f12048d.f(0);
                HwAudioKit hwAudioKit = HwAudioKit.this;
                hwAudioKit.o(hwAudioKit.f12047a.getPackageName(), "1.0.1");
                HwAudioKit.this.p(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "onServiceDisconnected");
            HwAudioKit.this.b = null;
            HwAudioKit.this.c = false;
            HwAudioKit.this.f12048d.f(4);
        }
    }

    class b implements IBinder.DeathRecipient {
        b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            HwAudioKit.this.f12049e.unlinkToDeath(HwAudioKit.this.f12051g, 0);
            HwAudioKit.this.f12048d.f(6);
            g.d.a.b.a.a.a("HwAudioKit.HwAudioKit", "service binder died");
            HwAudioKit.this.f12049e = null;
        }
    }

    static {
        new ArrayList(0);
    }

    public HwAudioKit(Context context, c cVar) {
        this.f12047a = null;
        com.huawei.multimedia.audiokit.interfaces.b bVarD = com.huawei.multimedia.audiokit.interfaces.b.d();
        this.f12048d = bVarD;
        bVarD.g(cVar);
        this.f12047a = context;
    }

    private void k(Context context) {
        g.d.a.b.a.a.e("HwAudioKit.HwAudioKit", "bindService, mIsServiceConnected = {}", Boolean.valueOf(this.c));
        com.huawei.multimedia.audiokit.interfaces.b bVar = this.f12048d;
        if (bVar == null || this.c) {
            return;
        }
        bVar.a(context, this.f12050f, "com.huawei.multimedia.audioengine.HwAudioEngineService");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(String str, String str2) {
        g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "serviceInit");
        try {
            g.d.a.a.a aVar = this.b;
            if (aVar == null || !this.c) {
                return;
            }
            aVar.b(str, str2);
        } catch (RemoteException e2) {
            g.d.a.b.a.a.b("HwAudioKit.HwAudioKit", "isFeatureSupported,RemoteException ex : {}", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(IBinder iBinder) {
        this.f12049e = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(this.f12051g, 0);
            } catch (RemoteException unused) {
                this.f12048d.f(5);
                g.d.a.b.a.a.a("HwAudioKit.HwAudioKit", "serviceLinkToDeath, RemoteException");
            }
        }
    }

    public <T extends com.huawei.multimedia.audiokit.interfaces.a> T l(FeatureType featureType) {
        return (T) this.f12048d.b(featureType.getFeatureType(), this.f12047a);
    }

    public void m() {
        g.d.a.b.a.a.e("HwAudioKit.HwAudioKit", "destroy, mIsServiceConnected = {}", Boolean.valueOf(this.c));
        if (this.c) {
            this.c = false;
            this.f12048d.h(this.f12047a, this.f12050f);
        }
    }

    public void n() {
        g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "initialize");
        Context context = this.f12047a;
        if (context == null) {
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "mContext is null");
            this.f12048d.f(7);
        } else if (this.f12048d.e(context)) {
            k(this.f12047a);
        } else {
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKit", "not install AudioKitEngine");
            this.f12048d.f(2);
        }
    }
}

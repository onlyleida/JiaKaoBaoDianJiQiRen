package com.huawei.multimedia.audiokit.interfaces;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public class HwAudioKaraokeFeatureKit extends com.huawei.multimedia.audiokit.interfaces.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12040a;
    private com.huawei.multimedia.audiokit.interfaces.b b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g.d.a.a.b f12041d;
    private boolean c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private IBinder f12042e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ServiceConnection f12043f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private IBinder.DeathRecipient f12044g = new b();

    public enum ParameName {
        CMD_SET_AUDIO_EFFECT_MODE_BASE("Karaoke_reverb_mode="),
        CMD_SET_VOCAL_VOLUME_BASE("Karaoke_volume="),
        CMD_SET_VOCAL_EQUALIZER_MODE("Karaoke_eq_mode=");

        private String mParameName;

        ParameName(String str) {
            this.mParameName = str;
        }

        public String getParameName() {
            return this.mParameName;
        }
    }

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "onServiceConnected");
            HwAudioKaraokeFeatureKit.this.f12041d = g.d.a.a.b.a.n(iBinder);
            if (HwAudioKaraokeFeatureKit.this.f12041d != null) {
                HwAudioKaraokeFeatureKit.this.c = true;
                HwAudioKaraokeFeatureKit.this.b.f(1000);
                HwAudioKaraokeFeatureKit hwAudioKaraokeFeatureKit = HwAudioKaraokeFeatureKit.this;
                hwAudioKaraokeFeatureKit.q(hwAudioKaraokeFeatureKit.f12040a.getPackageName());
                HwAudioKaraokeFeatureKit.this.r(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "onServiceDisconnected");
            HwAudioKaraokeFeatureKit.this.c = false;
            if (HwAudioKaraokeFeatureKit.this.b != null) {
                HwAudioKaraokeFeatureKit.this.b.f(1001);
            }
        }
    }

    class b implements IBinder.DeathRecipient {
        b() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            g.d.a.b.a.a.a("HwAudioKit.HwAudioKaraokeFeatureKit", "binderDied");
            HwAudioKaraokeFeatureKit.this.f12042e.unlinkToDeath(HwAudioKaraokeFeatureKit.this.f12044g, 0);
            HwAudioKaraokeFeatureKit.this.b.f(1003);
            HwAudioKaraokeFeatureKit.this.f12042e = null;
        }
    }

    protected HwAudioKaraokeFeatureKit(Context context) {
        this.b = null;
        this.b = com.huawei.multimedia.audiokit.interfaces.b.d();
        this.f12040a = context;
    }

    private void k(Context context) {
        g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "bindService");
        com.huawei.multimedia.audiokit.interfaces.b bVar = this.b;
        if (bVar == null || this.c) {
            return;
        }
        bVar.a(context, this.f12043f, "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        try {
            g.d.a.a.b bVar = this.f12041d;
            if (bVar == null || !this.c) {
                return;
            }
            bVar.j(str);
        } catch (RemoteException e2) {
            g.d.a.b.a.a.b("HwAudioKit.HwAudioKaraokeFeatureKit", "isFeatureSupported,RemoteException ex : {}", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(IBinder iBinder) {
        this.f12042e = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(this.f12044g, 0);
            } catch (RemoteException unused) {
                this.b.f(1002);
                g.d.a.b.a.a.a("HwAudioKit.HwAudioKaraokeFeatureKit", "serviceLinkToDeath, RemoteException");
            }
        }
    }

    public void l() {
        g.d.a.b.a.a.e("HwAudioKit.HwAudioKaraokeFeatureKit", "destroy, mIsServiceConnected = {}", Boolean.valueOf(this.c));
        if (this.c) {
            this.c = false;
            this.b.h(this.f12040a, this.f12043f);
        }
    }

    public int m(boolean z) {
        g.d.a.b.a.a.e("HwAudioKit.HwAudioKaraokeFeatureKit", "enableKaraokeFeature, enable = {}", Boolean.valueOf(z));
        try {
            g.d.a.a.b bVar = this.f12041d;
            if (bVar == null || !this.c) {
                return -2;
            }
            return bVar.d(z);
        } catch (RemoteException e2) {
            g.d.a.b.a.a.b("HwAudioKit.HwAudioKaraokeFeatureKit", "enableKaraokeFeature,RemoteException ex : {}", e2.getMessage());
            return -2;
        }
    }

    public int n() {
        g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "getKaraokeLatency");
        try {
            g.d.a.a.b bVar = this.f12041d;
            if (bVar == null || !this.c) {
                return -1;
            }
            return bVar.k();
        } catch (RemoteException e2) {
            g.d.a.b.a.a.b("HwAudioKit.HwAudioKaraokeFeatureKit", "getKaraokeLatency,RemoteException ex : {}", e2.getMessage());
            return -1;
        }
    }

    protected void o(Context context) {
        g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "initialize");
        if (context == null) {
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "initialize, context is null");
        } else if (this.b.e(context)) {
            k(context);
        } else {
            this.b.f(2);
            g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "initialize, not install AudioEngine");
        }
    }

    public boolean p() {
        g.d.a.b.a.a.d("HwAudioKit.HwAudioKaraokeFeatureKit", "isKaraokeFeatureSupport");
        try {
            g.d.a.a.b bVar = this.f12041d;
            if (bVar != null && this.c) {
                return bVar.l();
            }
        } catch (RemoteException e2) {
            g.d.a.b.a.a.b("HwAudioKit.HwAudioKaraokeFeatureKit", "isFeatureSupported,RemoteException ex : {}", e2.getMessage());
        }
        return false;
    }

    public int s(ParameName parameName, int i) {
        try {
            g.d.a.b.a.a.e("HwAudioKit.HwAudioKaraokeFeatureKit", "parame.getParameName() = {}, parameValue = {}", parameName.getParameName(), Integer.valueOf(i));
            g.d.a.a.b bVar = this.f12041d;
            if (bVar == null || !this.c) {
                return -2;
            }
            return bVar.e(parameName.getParameName(), i);
        } catch (RemoteException e2) {
            g.d.a.b.a.a.b("HwAudioKit.HwAudioKaraokeFeatureKit", "setParameter,RemoteException ex : {}", e2.getMessage());
            return -2;
        }
    }
}

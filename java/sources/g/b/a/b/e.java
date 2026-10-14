package g.b.a.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.coloros.ocs.base.common.c.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends com.coloros.ocs.base.common.c.c<Object, e> {
    private static final com.coloros.ocs.base.common.c.a.f<g.b.a.b.b> j;
    private static final com.coloros.ocs.base.common.c.a.AbstractC0196a<g.b.a.b.b, Object> k;
    private static final com.coloros.ocs.base.common.c.a<Object> l;
    private static e m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g.b.a.b.a f14555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final IBinder f14556g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f14557h;
    private ServiceConnection i;

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e.this.f14555f = g.b.a.b.a.AbstractBinderC0306a.n(iBinder);
            try {
                e.this.f14555f.i(e.this.f14556g, e.this.f14557h.getPackageName());
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            e.this.f14555f = null;
        }
    }

    class b implements g.b<Void> {
        b() {
        }

        @Override // com.coloros.ocs.base.common.c.g.b
        public void a(g.b.a.a.e.b<Void> bVar) {
            if (e.this.f14555f == null) {
                e.this.l();
                return;
            }
            try {
                e.this.f14555f.i(e.this.f14556g, e.this.f14557h.getPackageName());
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    class c implements g.a<Void> {
        c(e eVar) {
        }

        @Override // com.coloros.ocs.base.common.c.g.a
        public void a(g.b.a.a.e.b<Void> bVar, int i, String str) {
            Log.e("MediaUnitClientImpl", "errorCode -- " + i);
        }
    }

    class d implements g.b<Void> {
        d() {
        }

        @Override // com.coloros.ocs.base.common.c.g.b
        public void a(g.b.a.a.e.b<Void> bVar) {
            if (e.this.f14555f != null) {
                try {
                    e.this.f14555f.c(e.this.f14557h.getPackageName());
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: renamed from: g.b.a.b.e$e, reason: collision with other inner class name */
    class C0308e implements g.a<Void> {
        C0308e(e eVar) {
        }

        @Override // com.coloros.ocs.base.common.c.g.a
        public void a(g.b.a.a.e.b<Void> bVar, int i, String str) {
            Log.e("MediaUnitClientImpl", "errorCode -- " + i);
        }
    }

    static {
        com.coloros.ocs.base.common.c.a.f<g.b.a.b.b> fVar = new com.coloros.ocs.base.common.c.a.f<>();
        j = fVar;
        g.b.a.b.c cVar = new g.b.a.b.c();
        k = cVar;
        l = new com.coloros.ocs.base.common.c.a<>("MediaClient.API", cVar, fVar);
    }

    private e(Context context) {
        super(context, l, null, new g.b.a.a.d.a(context.getPackageName(), 1, new ArrayList()));
        this.f14556g = new Binder();
        this.f14557h = context;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.i = new a();
        Intent intent = new Intent("com.coloros.opencapabilityservice");
        intent.setComponent(new ComponentName("com.coloros.ocs.opencapabilityservice", "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService"));
        this.f14557h.bindService(intent, this.i, 1);
    }

    private static void m(Context context) {
        m = new e(context);
    }

    private void n() {
        this.f14557h.unbindService(this.i);
    }

    protected static synchronized e p(Context context) {
        e eVar = m;
        if (eVar != null) {
            return eVar;
        }
        m(context);
        return m;
    }

    public static void q() {
        m.n();
    }

    public int f() {
        c(Looper.myLooper(), new d(), new C0308e(this));
        return 0;
    }

    protected void o() {
    }

    public int r() {
        Log.i("MediaUnitClientImpl", "requestAudioLoopback " + this.f14556g);
        c(Looper.myLooper(), new b(), new c(this));
        return 0;
    }
}

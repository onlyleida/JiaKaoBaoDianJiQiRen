package com.unity3d.player;

import android.app.Activity;
import android.content.Context;
import java.util.concurrent.Semaphore;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes6.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UnityPlayer f14347a;
    private a c;
    private Context b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Semaphore f14348d = new Semaphore(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lock f14349e = new ReentrantLock();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r f14350f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f14351g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f14352h = false;
    private boolean i = false;

    /* JADX INFO: renamed from: com.unity3d.player.s$1, reason: invalid class name */
    final class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14353a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f14354d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f14355e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ long f14356f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ long f14357g;

        AnonymousClass1(String str, int i, int i2, int i3, boolean z, long j, long j2) {
            this.f14353a = str;
            this.b = i;
            this.c = i2;
            this.f14354d = i3;
            this.f14355e = z;
            this.f14356f = j;
            this.f14357g = j2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (s.this.f14350f != null) {
                g.Log(5, "Video already playing");
                s.this.f14351g = 2;
                s.this.f14348d.release();
            } else {
                s.this.f14350f = new r(s.this.b, this.f14353a, this.b, this.c, this.f14354d, this.f14355e, this.f14356f, this.f14357g, new r.a() { // from class: com.unity3d.player.s.1.1
                    @Override // com.unity3d.player.r.a
                    public final void a(int i) {
                        s.this.f14349e.lock();
                        s.this.f14351g = i;
                        if (i == 3 && s.this.i) {
                            s.this.runOnUiThread(new Runnable() { // from class: com.unity3d.player.s.1.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    s.this.d();
                                    s.this.f14347a.resume();
                                }
                            });
                        }
                        if (i != 0) {
                            s.this.f14348d.release();
                        }
                        s.this.f14349e.unlock();
                    }
                });
                if (s.this.f14350f != null) {
                    s.this.f14347a.addView(s.this.f14350f);
                }
            }
        }
    }

    public interface a {
        void a();
    }

    s(UnityPlayer unityPlayer) {
        this.f14347a = null;
        this.f14347a = unityPlayer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        r rVar = this.f14350f;
        if (rVar != null) {
            this.f14347a.removeViewFromPlayer(rVar);
            this.i = false;
            this.f14350f.destroyPlayer();
            this.f14350f = null;
            a aVar = this.c;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    static /* synthetic */ boolean h(s sVar) {
        sVar.i = true;
        return true;
    }

    public final void a() {
        this.f14349e.lock();
        r rVar = this.f14350f;
        if (rVar != null) {
            if (this.f14351g == 0) {
                rVar.CancelOnPrepare();
            } else if (this.i) {
                boolean zA = rVar.a();
                this.f14352h = zA;
                if (!zA) {
                    this.f14350f.pause();
                }
            }
        }
        this.f14349e.unlock();
    }

    public final boolean a(Context context, String str, int i, int i2, int i3, boolean z, long j, long j2, a aVar) {
        this.f14349e.lock();
        this.c = aVar;
        this.b = context;
        this.f14348d.drainPermits();
        this.f14351g = 2;
        runOnUiThread(new AnonymousClass1(str, i, i2, i3, z, j, j2));
        boolean z2 = false;
        try {
            this.f14349e.unlock();
            this.f14348d.acquire();
            this.f14349e.lock();
            if (this.f14351g != 2) {
                z2 = true;
            }
        } catch (InterruptedException unused) {
        }
        runOnUiThread(new Runnable() { // from class: com.unity3d.player.s.2
            @Override // java.lang.Runnable
            public final void run() {
                s.this.f14347a.pause();
            }
        });
        runOnUiThread((!z2 || this.f14351g == 3) ? new Runnable() { // from class: com.unity3d.player.s.4
            @Override // java.lang.Runnable
            public final void run() {
                s.this.d();
                s.this.f14347a.resume();
            }
        } : new Runnable() { // from class: com.unity3d.player.s.3
            @Override // java.lang.Runnable
            public final void run() {
                if (s.this.f14350f != null) {
                    s.this.f14347a.addViewToPlayer(s.this.f14350f, true);
                    s.h(s.this);
                    s.this.f14350f.requestFocus();
                }
            }
        });
        this.f14349e.unlock();
        return z2;
    }

    public final void b() {
        this.f14349e.lock();
        r rVar = this.f14350f;
        if (rVar != null && this.i && !this.f14352h) {
            rVar.start();
        }
        this.f14349e.unlock();
    }

    public final void c() {
        this.f14349e.lock();
        r rVar = this.f14350f;
        if (rVar != null) {
            rVar.updateVideoLayout();
        }
        this.f14349e.unlock();
    }

    protected final void runOnUiThread(Runnable runnable) {
        Context context = this.b;
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnable);
        } else {
            g.Log(5, "Not running from an Activity; Ignoring execution request...");
        }
    }
}

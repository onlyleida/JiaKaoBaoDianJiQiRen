package com.iflytek.cloud.record;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.g;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    private boolean A;
    ReentrantLock B;
    Condition C;
    AudioManager.OnAudioFocusChangeListener D;
    private int E;
    private Handler F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AudioTrack f12400a;
    private com.iflytek.cloud.record.b b;
    private Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f12401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InterfaceC0242c f12402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f12403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12404g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12405h;
    private int i;
    private boolean j;
    private boolean k;
    private Object l;
    private Object m;
    private final int n;
    private final int o;
    private final int p;
    private int q;
    private final float r;
    private final float s;
    private final float t;
    private int u;
    private float v;
    private float w;
    private float x;
    private boolean y;
    private boolean z;

    class a implements AudioManager.OnAudioFocusChangeListener {
        a() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -2 || i == -3 || i == -1) {
                DebugLog.LogD("PcmPlayer", "pause start");
                if (c.this.d()) {
                    DebugLog.LogD("PcmPlayer", "pause success");
                    c.this.k = true;
                    if (c.this.f12402e != null) {
                        c.this.f12402e.c();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == 1) {
                DebugLog.LogD("PcmPlayer", "resume start");
                if (c.this.k) {
                    c.this.k = false;
                    if (c.this.g()) {
                        DebugLog.LogD("PcmPlayer", "resume success");
                        if (c.this.f12402e != null) {
                            c.this.f12402e.b();
                        }
                    }
                }
            }
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                if (c.this.f12402e != null) {
                    c.this.f12402e.onError((SpeechError) message.obj);
                    c.this.f12402e = null;
                    return;
                }
                return;
            }
            if (i == 1) {
                if (c.this.f12402e != null) {
                    c.this.f12402e.c();
                    return;
                }
                return;
            }
            if (i == 2) {
                if (c.this.f12402e != null) {
                    c.this.f12402e.b();
                }
            } else if (i == 3) {
                if (c.this.f12402e != null) {
                    c.this.f12402e.a(message.arg1, message.arg2, c.this.E);
                }
            } else if (i == 4 && c.this.f12402e != null) {
                c.this.f12402e.a();
                c.this.f12402e = null;
            }
        }
    }

    /* JADX INFO: renamed from: com.iflytek.cloud.record.c$c, reason: collision with other inner class name */
    public interface InterfaceC0242c {
        void a();

        void a(int i, int i2, int i3);

        void b();

        void c();

        void onError(SpeechError speechError);
    }

    private class d extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12408a;

        class a implements AudioTrack.OnPlaybackPositionUpdateListener {
            a() {
            }

            @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
            public void onMarkerReached(AudioTrack audioTrack) {
                DebugLog.LogI("PcmPlayer onMarkerReached");
                c.this.B.lock();
                try {
                    c.this.C.signalAll();
                } catch (Exception unused) {
                } finally {
                    c.this.B.unlock();
                }
            }

            @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
            public void onPeriodicNotification(AudioTrack audioTrack) {
            }
        }

        private d() {
            this.f12408a = c.this.f12405h;
        }

        public int a() {
            return this.f12408a;
        }

        /* JADX WARN: Code duplicated, block: B:137:0x0383  */
        /* JADX WARN: Undo finally extract visitor
        java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
        	at jadx.core.utils.Pair.hashCode(Pair.java:35)
        	at java.base/java.util.HashMap.hash(HashMap.java:338)
        	at java.base/java.util.HashMap.getNode(HashMap.java:576)
        	at java.base/java.util.HashMap.containsKey(HashMap.java:602)
        	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
        	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
        	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
         */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock reentrantLock;
            try {
                try {
                    DebugLog.LogD("PcmPlayer", "start player");
                    DebugLog.LogD("PcmPlayer", "mAudioFocus= " + c.this.f12404g);
                    if (c.this.f12404g) {
                        g.a(c.this.c, Boolean.valueOf(c.this.j), c.this.D);
                    } else {
                        g.a(c.this.c, Boolean.valueOf(c.this.j), null);
                    }
                    c.this.b.a();
                    synchronized (c.this.m) {
                        try {
                            if (c.this.f12403f != 4 && c.this.f12403f != 3) {
                                c.this.f12403f = 2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    c.this.i();
                    while (true) {
                        c.this.e();
                        if (c.this.f12403f == 2 || c.this.f12403f == 1 || c.this.y) {
                            if (c.this.b.l()) {
                                if (c.this.a(1, 2)) {
                                    Message.obtain(c.this.F, 2).sendToTarget();
                                    DebugLog.LogD("BUFFERING to PLAYING  fading ");
                                    c.this.i();
                                }
                                int iG = c.this.b.g();
                                com.iflytek.cloud.record.b.a aVarF = c.this.b.f();
                                if (aVarF != null) {
                                    c.this.E = aVarF.f12398d;
                                    Message.obtain(c.this.F, 3, iG, aVarF.c).sendToTarget();
                                }
                                if (c.this.f12400a.getPlayState() != 3) {
                                    c.this.f12400a.play();
                                }
                                if (c.this.z) {
                                    if (!c.this.b.j() && !c.this.b.a(c.this.u) && Math.abs(c.this.w - BitmapDescriptorFactory.HUE_RED) >= 0.1f) {
                                        DebugLog.LogD("no more size  fading ");
                                        c.this.j();
                                    } else if (2 == c.this.f12403f && ((c.this.b.j() || c.this.b.a(c.this.u)) && Math.abs(c.this.w - 1.0f) >= 0.1f)) {
                                        DebugLog.LogD("has buffer  fading ");
                                        c.this.i();
                                    }
                                }
                                if (c.this.y) {
                                    c.this.b();
                                }
                                c.this.b.a(c.this.f12400a, c.this.q);
                            } else {
                                if (c.this.b.k()) {
                                    DebugLog.LogD("play stoped");
                                    int playbackHeadPosition = c.this.f12400a.getPlaybackHeadPosition();
                                    int i = (int) (c.this.b.i() / 2);
                                    if (i > playbackHeadPosition && c.this.B.tryLock()) {
                                        c.this.f12400a.setNotificationMarkerPosition(i);
                                        DebugLog.LogI("PcmPlayer setNotificationMarkerPosition");
                                        c.this.f12400a.setPlaybackPositionUpdateListener(new a());
                                        try {
                                            try {
                                                c.this.C.await(1000L, TimeUnit.MILLISECONDS);
                                                reentrantLock = c.this.B;
                                            } catch (InterruptedException e2) {
                                                DebugLog.LogI("pcmplayer interrupted");
                                                e2.printStackTrace();
                                                reentrantLock = c.this.B;
                                            }
                                            reentrantLock.unlock();
                                        } catch (Throwable th2) {
                                            c.this.B.unlock();
                                            throw th2;
                                        }
                                    }
                                    synchronized (c.this.m) {
                                        try {
                                            DebugLog.LogI("pcmplayer isover stop:" + c.this.f12403f);
                                            if (c.this.f12403f != 4) {
                                                c.this.f12403f = 4;
                                                Message.obtain(c.this.F, 4).sendToTarget();
                                            }
                                            c.this.y = false;
                                            break;
                                        } catch (Throwable th3) {
                                            throw th3;
                                        }
                                    }
                                }
                                if (c.this.y) {
                                    c.this.y = false;
                                } else {
                                    if (c.this.a(2, 1)) {
                                        DebugLog.LogD("play onpaused!");
                                        Message.obtain(c.this.F, 1).sendToTarget();
                                    }
                                    Thread.sleep(5L);
                                }
                            }
                        } else if (c.this.f12403f == 3) {
                            if (2 != c.this.f12400a.getPlayState()) {
                                c.this.f12400a.pause();
                                DebugLog.LogD("pause done");
                                Message.obtain(c.this.F, 1).sendToTarget();
                                if (c.this.y) {
                                    c.this.h();
                                }
                            }
                            Thread.sleep(5L);
                        } else if (4 == c.this.f12403f) {
                            c.this.h();
                            break;
                        }
                        c.this.f12401d = null;
                        DebugLog.LogD("PcmPlayer", "player stopped");
                    }
                    if (c.this.f12400a != null) {
                        c.this.f12400a.stop();
                    }
                    synchronized (c.this.m) {
                        try {
                            c.this.f12403f = 4;
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    if (c.this.f12400a != null) {
                        c.this.f12400a.release();
                        c.this.f12400a = null;
                    }
                    if (c.this.f12404g) {
                        g.b(c.this.c, Boolean.valueOf(c.this.j), c.this.D);
                    } else {
                        g.b(c.this.c, Boolean.valueOf(c.this.j), null);
                    }
                } catch (Exception e3) {
                    DebugLog.LogE(e3);
                    Message.obtain(c.this.F, 0, new SpeechError(ErrorCode.ERROR_PLAY_MEDIA)).sendToTarget();
                    synchronized (c.this.m) {
                        try {
                            c.this.f12403f = 4;
                            if (c.this.f12400a != null) {
                                c.this.f12400a.release();
                                c.this.f12400a = null;
                            }
                            if (c.this.f12404g) {
                                g.b(c.this.c, Boolean.valueOf(c.this.j), c.this.D);
                            }
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                }
                c.this.f12401d = null;
                DebugLog.LogD("PcmPlayer", "player stopped");
            } catch (Throwable th6) {
                synchronized (c.this.m) {
                    try {
                        c.this.f12403f = 4;
                        if (c.this.f12400a != null) {
                            c.this.f12400a.release();
                            c.this.f12400a = null;
                        }
                        if (c.this.f12404g) {
                            g.b(c.this.c, Boolean.valueOf(c.this.j), c.this.D);
                        } else {
                            g.b(c.this.c, Boolean.valueOf(c.this.j), null);
                        }
                        c.this.f12401d = null;
                        DebugLog.LogD("PcmPlayer", "player stopped");
                        throw th6;
                    } catch (Throwable th7) {
                        throw th7;
                    }
                }
            }
        }

        public void a(int i) {
            this.f12408a = i;
        }

        /* synthetic */ d(c cVar, a aVar) {
            this();
        }
    }

    public c(Context context, int i, boolean z, boolean z2, boolean z3) {
        this.f12400a = null;
        this.b = null;
        this.c = null;
        this.f12401d = null;
        this.f12402e = null;
        this.f12403f = 0;
        this.f12404g = true;
        this.f12405h = 3;
        this.j = false;
        this.k = false;
        this.l = new Object();
        this.m = this;
        this.n = 2;
        this.o = 500;
        this.p = 50;
        this.q = 1600;
        this.r = 1.0f;
        this.s = BitmapDescriptorFactory.HUE_RED;
        this.t = 0.1f;
        this.u = 16000;
        this.v = BitmapDescriptorFactory.HUE_RED;
        this.w = 1.0f;
        this.x = 0.1f;
        this.y = false;
        this.z = false;
        this.A = false;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.B = reentrantLock;
        this.C = reentrantLock.newCondition();
        this.D = new a();
        this.E = 0;
        this.F = new b(Looper.getMainLooper());
        this.c = context;
        this.f12405h = i;
        this.j = z;
        this.A = z2;
        this.z = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() throws Exception {
        d dVar = this.f12401d;
        if (this.f12400a == null || !(dVar == null || dVar.a() == this.f12405h)) {
            DebugLog.LogD("PcmPlayer", "prepAudioPlayer || audiotrack is null or stream type is change.");
            a();
            if (dVar != null) {
                dVar.a(this.f12405h);
            }
        }
    }

    public int c() {
        return this.f12403f;
    }

    public boolean d() {
        if (this.f12403f == 4 || this.f12403f == 3) {
            return false;
        }
        DebugLog.LogD("pause start fade out");
        j();
        this.f12403f = 3;
        return true;
    }

    public void f() {
        synchronized (this.l) {
            AudioTrack audioTrack = this.f12400a;
            if (audioTrack != null) {
                if (audioTrack.getPlayState() == 3) {
                    this.f12400a.stop();
                }
                this.f12400a.release();
                this.f12400a = null;
            }
            DebugLog.LogD("PcmPlayer", "mAudioTrack released");
        }
    }

    public boolean g() {
        boolean zA = a(3, 2);
        g.a(this.c, Boolean.valueOf(this.j), this.D);
        if (zA) {
            DebugLog.LogD("resume start fade in");
            Message.obtain(this.F, 2).sendToTarget();
            i();
        }
        return zA;
    }

    public void h() {
        DebugLog.LogD("fading set silence");
        synchronized (this.m) {
            if (Math.abs(BitmapDescriptorFactory.HUE_RED - this.w) < 0.1f) {
                this.v = BitmapDescriptorFactory.HUE_RED;
                this.y = false;
            }
        }
        AudioTrack audioTrack = this.f12400a;
        float f2 = this.v;
        audioTrack.setStereoVolume(f2, f2);
    }

    public void i() {
        if (this.A) {
            synchronized (this.m) {
                DebugLog.LogD("start fade in");
                this.y = true;
                this.w = 1.0f;
                this.x = 0.1f;
            }
        }
    }

    public void j() {
        if (this.A) {
            synchronized (this.m) {
                DebugLog.LogD("start fade out");
                this.y = true;
                this.w = BitmapDescriptorFactory.HUE_RED;
                this.x = -0.1f;
            }
        }
    }

    public void k() {
        if (4 != this.f12403f) {
            DebugLog.LogD("stop start fade out");
            j();
        }
        synchronized (this.m) {
            this.f12403f = 4;
        }
    }

    public void b() {
        if (this.A) {
            synchronized (this.m) {
                if (Math.abs(this.w - this.v) < 0.1f) {
                    this.v = this.w;
                    this.y = false;
                    DebugLog.LogD("fading finish");
                } else {
                    this.v += this.x;
                }
            }
            AudioTrack audioTrack = this.f12400a;
            float f2 = this.v;
            audioTrack.setStereoVolume(f2, f2);
            return;
        }
        this.y = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, int i2) {
        boolean z;
        synchronized (this.m) {
            if (i == this.f12403f) {
                this.f12403f = i2;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private void a() throws Exception {
        DebugLog.LogD("PcmPlayer", "createAudio start");
        int iH = this.b.h();
        this.i = AudioTrack.getMinBufferSize(iH, 2, 2);
        int i = (iH / 1000) * 2 * 50;
        this.q = i;
        this.u = i * 10;
        if (this.f12400a != null) {
            f();
        }
        DebugLog.LogD("PcmPlayer", "createAudio || mStreamType = " + this.f12405h + ", buffer size: " + this.i);
        this.f12400a = new AudioTrack(this.f12405h, iH, 2, 2, this.i * 2, 1);
        this.b.d(this.i * 2);
        int i2 = this.i;
        if (i2 != -2 && i2 != -1) {
            DebugLog.LogD("PcmPlayer", "createAudio end");
            return;
        }
        throw new Exception();
    }

    public boolean a(com.iflytek.cloud.record.b bVar, InterfaceC0242c interfaceC0242c) {
        boolean z;
        DebugLog.LogD("PcmPlayer", "play mPlaytate= " + this.f12403f + ",mAudioFocus= " + this.f12404g);
        synchronized (this.m) {
            if (this.f12403f == 4 || this.f12403f == 0 || this.f12403f == 3 || this.f12401d == null) {
                this.b = bVar;
                this.f12402e = interfaceC0242c;
                d dVar = new d(this, null);
                this.f12401d = dVar;
                dVar.start();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public c(Context context) {
        this.f12400a = null;
        this.b = null;
        this.c = null;
        this.f12401d = null;
        this.f12402e = null;
        this.f12403f = 0;
        this.f12404g = true;
        this.f12405h = 3;
        this.j = false;
        this.k = false;
        this.l = new Object();
        this.m = this;
        this.n = 2;
        this.o = 500;
        this.p = 50;
        this.q = 1600;
        this.r = 1.0f;
        this.s = BitmapDescriptorFactory.HUE_RED;
        this.t = 0.1f;
        this.u = 16000;
        this.v = BitmapDescriptorFactory.HUE_RED;
        this.w = 1.0f;
        this.x = 0.1f;
        this.y = false;
        this.z = false;
        this.A = false;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.B = reentrantLock;
        this.C = reentrantLock.newCondition();
        this.D = new a();
        this.E = 0;
        this.F = new b(Looper.getMainLooper());
        this.c = context;
    }
}

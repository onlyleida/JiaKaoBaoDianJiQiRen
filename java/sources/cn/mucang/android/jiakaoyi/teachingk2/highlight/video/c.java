package cn.mucang.android.jiakaoyi.teachingk2.highlight.video;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaMuxer;
import android.util.Log;
import cn.mucang.android.jiakaoyi.framework.log.f;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Object f7172a;
    protected volatile boolean b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected volatile boolean f7173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f7174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f7175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f7176g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected volatile MediaCodec f7177h;
    protected a i;
    protected MediaCodec.BufferInfo j;
    protected String k;
    protected MediaMuxer l;
    private long m;

    public interface a {
        void a(c cVar);

        void b(c cVar);
    }

    public c() {
        Object obj = new Object();
        this.f7172a = obj;
        this.m = 0L;
        synchronized (obj) {
            new Thread(this, getClass().getSimpleName()).start();
            try {
                obj.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public static final MediaCodecInfo i(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
            }
        }
        return null;
    }

    protected void a() {
        if (this.f7177h == null) {
            return;
        }
        if (this.l == null) {
            Log.w("Encoder", "muxer is unexpectedly null");
            return;
        }
        int i = 0;
        while (this.b) {
            int iDequeueOutputBuffer = this.f7177h.dequeueOutputBuffer(this.j, 10000L);
            if (iDequeueOutputBuffer == -1) {
                if (!this.f7174e && (i = i + 1) > 5) {
                    return;
                }
            } else if (iDequeueOutputBuffer == -3) {
                Log.v("Encoder", "INFO_OUTPUT_BUFFERS_CHANGED");
            } else if (iDequeueOutputBuffer == -2) {
                Log.v("Encoder", "INFO_OUTPUT_FORMAT_CHANGED");
                if (this.f7175f) {
                    throw new RuntimeException("format changed twice");
                }
                this.f7176g = this.l.addTrack(this.f7177h.getOutputFormat());
                this.f7175f = true;
                this.l.start();
            } else if (iDequeueOutputBuffer < 0) {
                Log.w("Encoder", "drain:unexpected result from encoder#dequeueOutputBuffer: " + iDequeueOutputBuffer);
            } else {
                ByteBuffer outputBuffer = this.f7177h.getOutputBuffer(iDequeueOutputBuffer);
                if (outputBuffer == null) {
                    throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer + " was null");
                }
                if ((this.j.flags & 2) != 0) {
                    Log.d("Encoder", "drain:BUFFER_FLAG_CODEC_CONFIG");
                    this.j.size = 0;
                }
                MediaCodec.BufferInfo bufferInfo = this.j;
                if (bufferInfo.size != 0) {
                    if (!this.f7175f) {
                        throw new RuntimeException("drain:muxer hasn't started");
                    }
                    bufferInfo.presentationTimeUs = f();
                    this.l.writeSampleData(this.f7176g, outputBuffer, this.j);
                    this.m = this.j.presentationTimeUs;
                    i = 0;
                }
                this.f7177h.releaseOutputBuffer(iDequeueOutputBuffer, false);
                if ((this.j.flags & 4) != 0) {
                    this.b = false;
                    this.f7175f = false;
                    return;
                }
            }
        }
    }

    protected void b(byte[] bArr, int i, long j) {
        if (this.b) {
            int i2 = 0;
            while (this.b && i2 < i) {
                int iDequeueInputBuffer = this.f7177h.dequeueInputBuffer(10000L);
                if (iDequeueInputBuffer >= 0) {
                    ByteBuffer inputBuffer = this.f7177h.getInputBuffer(iDequeueInputBuffer);
                    inputBuffer.clear();
                    int iRemaining = inputBuffer.remaining();
                    if (i2 + iRemaining >= i) {
                        iRemaining = i - i2;
                    }
                    int i3 = iRemaining;
                    if (i3 > 0 && bArr != null) {
                        inputBuffer.put(bArr, i2, i3);
                    }
                    i2 += i3;
                    if (i <= 0) {
                        this.f7174e = true;
                        Log.i("Encoder", "send BUFFER_FLAG_END_OF_STREAM");
                        this.f7177h.queueInputBuffer(iDequeueInputBuffer, 0, 0, j, 4);
                        return;
                    }
                    this.f7177h.queueInputBuffer(iDequeueInputBuffer, 0, i3, j, 0);
                }
            }
        }
    }

    public void c(byte[] bArr, int i) {
        synchronized (this.f7172a) {
            b(bArr, i, f());
        }
        d();
    }

    public boolean d() {
        synchronized (this.f7172a) {
            if (this.b && !this.f7173d) {
                this.c++;
                this.f7172a.notifyAll();
                return true;
            }
            return false;
        }
    }

    public String e() {
        return this.k;
    }

    protected long f() {
        long jNanoTime = System.nanoTime() / 1000;
        long j = this.m;
        return jNanoTime < j ? jNanoTime + (j - jNanoTime) : jNanoTime;
    }

    public abstract void g() throws Exception;

    protected void h() {
        Log.d("Encoder", "release:");
        this.b = false;
        if (this.f7177h != null) {
            try {
                f.o("MediaCodec stop");
                this.f7177h.stop();
                this.f7177h.release();
                this.f7177h = null;
            } catch (Exception e2) {
                Log.e("Encoder", "failed releasing MediaCodec", e2);
            }
        }
        if (this.f7175f && this.l != null) {
            try {
                f.o("Muxer stop");
                this.l.stop();
            } catch (Exception e3) {
                Log.e("Encoder", "failed stopping muxer", e3);
            }
        }
        this.j = null;
        try {
            this.i.a(this);
        } catch (Exception e4) {
            Log.e("Encoder", "failed onStopped", e4);
        }
    }

    public void j(a aVar) {
        this.i = aVar;
    }

    public void k(String str) {
        this.k = str;
    }

    protected void l() {
        Log.d("Encoder", "sending EOS to encoder");
        c(null, 0);
    }

    public void m() {
        Log.v("Encoder", "startRecording");
        synchronized (this.f7172a) {
            this.b = true;
            this.f7173d = false;
            this.f7172a.notifyAll();
        }
    }

    public void n() {
        Log.v("Encoder", "stopRecording");
        this.f7173d = true;
        synchronized (this.f7172a) {
            if (this.b) {
                this.f7172a.notifyAll();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        boolean z2;
        Log.d("Encoder", "Encoder thread starting");
        synchronized (this.f7172a) {
            this.f7173d = false;
            this.c = 0;
            this.f7172a.notify();
        }
        try {
            while (true) {
                synchronized (this.f7172a) {
                    z = this.f7173d;
                    int i = this.c;
                    z2 = i > 0;
                    if (z2) {
                        this.c = i - 1;
                    }
                }
                if (z) {
                    try {
                        break;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else if (z2) {
                    try {
                        a();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                } else {
                    synchronized (this.f7172a) {
                        try {
                            try {
                                this.f7172a.wait();
                            } catch (InterruptedException unused) {
                                Log.d("Encoder", "Encoder thread exiting");
                                synchronized (this.f7172a) {
                                    this.f7173d = true;
                                    this.b = false;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                Log.d("Encoder", "Encoder thread exiting");
                synchronized (this.f7172a) {
                    this.f7173d = true;
                    this.b = false;
                }
            }
            a();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        a();
        l();
        synchronized (this.f7172a) {
            h();
        }
        Log.d("Encoder", "Encoder thread exiting");
        synchronized (this.f7172a) {
            this.f7173d = true;
            this.b = false;
        }
    }
}

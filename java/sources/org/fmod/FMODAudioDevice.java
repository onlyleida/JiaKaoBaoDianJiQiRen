package org.fmod;

import android.media.AudioTrack;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class FMODAudioDevice implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f16233h = 0;
    private static int i = 1;
    private static int j = 2;
    private static int k = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Thread f16234a = null;
    private volatile boolean b = false;
    private AudioTrack c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f16235d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteBuffer f16236e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f16237f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile a f16238g;

    private native int fmodGetInfo(int i2);

    private native int fmodProcess(ByteBuffer byteBuffer);

    private void releaseAudioTrack() {
        AudioTrack audioTrack = this.c;
        if (audioTrack != null) {
            if (audioTrack.getState() == 1) {
                this.c.stop();
            }
            this.c.release();
            this.c = null;
        }
        this.f16236e = null;
        this.f16237f = null;
        this.f16235d = false;
    }

    public synchronized void close() {
        stop();
    }

    native int fmodProcessMicData(ByteBuffer byteBuffer, int i2);

    public boolean isRunning() {
        return this.f16234a != null && this.f16234a.isAlive();
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = 3;
        while (this.b) {
            if (!this.f16235d && i2 > 0) {
                releaseAudioTrack();
                int iFmodGetInfo = fmodGetInfo(f16233h);
                int iRound = Math.round(AudioTrack.getMinBufferSize(iFmodGetInfo, 3, 2) * 1.1f) & (-4);
                int iFmodGetInfo2 = fmodGetInfo(i);
                int iFmodGetInfo3 = fmodGetInfo(j) * iFmodGetInfo2 * 4;
                AudioTrack audioTrack = new AudioTrack(3, iFmodGetInfo, 3, 2, iFmodGetInfo3 > iRound ? iFmodGetInfo3 : iRound, 1);
                this.c = audioTrack;
                boolean z = audioTrack.getState() == 1;
                this.f16235d = z;
                if (z) {
                    ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iFmodGetInfo2 * 2 * 2);
                    this.f16236e = byteBufferAllocateDirect;
                    this.f16237f = new byte[byteBufferAllocateDirect.capacity()];
                    this.c.play();
                    i2 = 3;
                } else {
                    Log.e("FMOD", "AudioTrack failed to initialize (status " + this.c.getState() + ")");
                    releaseAudioTrack();
                    i2 += -1;
                }
            }
            if (this.f16235d) {
                if (fmodGetInfo(k) == 1) {
                    fmodProcess(this.f16236e);
                    ByteBuffer byteBuffer = this.f16236e;
                    byteBuffer.get(this.f16237f, 0, byteBuffer.capacity());
                    this.c.write(this.f16237f, 0, this.f16236e.capacity());
                    this.f16236e.position(0);
                } else {
                    releaseAudioTrack();
                }
            }
        }
        releaseAudioTrack();
    }

    public synchronized void start() {
        if (this.f16234a != null) {
            stop();
        }
        this.f16234a = new Thread(this, "FMODAudioDevice");
        this.f16234a.setPriority(10);
        this.b = true;
        this.f16234a.start();
        if (this.f16238g != null) {
            this.f16238g.b();
        }
    }

    public synchronized int startAudioRecord(int i2, int i3, int i4) {
        if (this.f16238g == null) {
            this.f16238g = new a(this, i2, i3);
            this.f16238g.b();
        }
        return this.f16238g.a();
    }

    public synchronized void stop() {
        while (this.f16234a != null) {
            this.b = false;
            try {
                this.f16234a.join();
                this.f16234a = null;
            } catch (InterruptedException unused) {
            }
        }
        if (this.f16238g != null) {
            this.f16238g.c();
        }
    }

    public synchronized void stopAudioRecord() {
        if (this.f16238g != null) {
            this.f16238g.c();
            this.f16238g = null;
        }
    }
}

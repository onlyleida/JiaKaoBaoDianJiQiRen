package org.fmod;

import android.media.AudioRecord;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FMODAudioDevice f16239a;
    private final ByteBuffer b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f16240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f16241e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Thread f16242f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f16243g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AudioRecord f16244h;
    private boolean i;

    a(FMODAudioDevice fMODAudioDevice, int i, int i2) {
        this.f16239a = fMODAudioDevice;
        this.c = i;
        this.f16240d = i2;
        this.b = ByteBuffer.allocateDirect(AudioRecord.getMinBufferSize(i, i2, 2));
    }

    private void d() {
        AudioRecord audioRecord = this.f16244h;
        if (audioRecord != null) {
            if (audioRecord.getState() == 1) {
                this.f16244h.stop();
            }
            this.f16244h.release();
            this.f16244h = null;
        }
        this.b.position(0);
        this.i = false;
    }

    public final int a() {
        return this.b.capacity();
    }

    public final void b() {
        if (this.f16242f != null) {
            c();
        }
        this.f16243g = true;
        this.f16242f = new Thread(this);
        this.f16242f.start();
    }

    public final void c() {
        while (this.f16242f != null) {
            this.f16243g = false;
            try {
                this.f16242f.join();
                this.f16242f = null;
            } catch (InterruptedException unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 3;
        while (this.f16243g) {
            if (!this.i && i > 0) {
                d();
                AudioRecord audioRecord = new AudioRecord(1, this.c, this.f16240d, this.f16241e, this.b.capacity());
                this.f16244h = audioRecord;
                boolean z = audioRecord.getState() == 1;
                this.i = z;
                if (z) {
                    this.b.position(0);
                    this.f16244h.startRecording();
                    i = 3;
                } else {
                    Log.e("FMOD", "AudioRecord failed to initialize (status " + this.f16244h.getState() + ")");
                    i += -1;
                    d();
                }
            }
            if (this.i && this.f16244h.getRecordingState() == 3) {
                AudioRecord audioRecord2 = this.f16244h;
                ByteBuffer byteBuffer = this.b;
                this.f16239a.fmodProcessMicData(this.b, audioRecord2.read(byteBuffer, byteBuffer.capacity()));
                this.b.position(0);
            }
        }
        d();
    }
}

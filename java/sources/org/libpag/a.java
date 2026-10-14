package org.libpag;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
class a implements t.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaCodec f16279a;
    private long b;
    final /* synthetic */ MediaFormat c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ VideoSurface f16280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ MediaCodec[] f16281e;

    a(MediaFormat mediaFormat, VideoSurface videoSurface, MediaCodec[] mediaCodecArr) {
        this.c = mediaFormat;
        this.f16280d = videoSurface;
        this.f16281e = mediaCodecArr;
    }

    @Override // org.libpag.t.b
    public void a(boolean z) {
        if (z && this.f16279a != null) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.b;
            try {
                this.f16279a.stop();
            } catch (Exception unused) {
            }
            try {
                this.f16279a.release();
            } catch (Exception unused2) {
            }
            this.f16279a = null;
            this.f16280d.a();
            new RuntimeException("init decoder timeout. cost: " + jUptimeMillis + "ms").printStackTrace();
        }
        if (!z) {
            this.f16281e[0] = this.f16279a;
        }
        HardwareDecoder.f16251a.getAndDecrement();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b = SystemClock.uptimeMillis();
        try {
            MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(this.c.getString("mime"));
            this.f16279a = mediaCodecCreateDecoderByType;
            mediaCodecCreateDecoderByType.configure(this.c, this.f16280d.getInputSurface(), (MediaCrypto) null, 0);
            this.f16279a.start();
        } catch (Exception unused) {
            Log.e("HardwareDecoder", "create and config hardware decoder have exception");
            MediaCodec mediaCodec = this.f16279a;
            if (mediaCodec != null) {
                mediaCodec.release();
                this.f16279a = null;
                this.f16280d.a();
            }
        }
    }
}

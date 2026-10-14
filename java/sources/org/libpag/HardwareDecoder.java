package org.libpag;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.SimpleExoPlayer;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
class HardwareDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f16251a = new AtomicInteger();
    private MediaCodec c;
    private VideoSurface b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f16252d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MediaCodec.BufferInfo f16253e = new MediaCodec.BufferInfo();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f16254f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f16255g = false;

    HardwareDecoder() {
    }

    private static HardwareDecoder Create(MediaFormat mediaFormat) {
        VideoSurface videoSurfaceA;
        AtomicInteger atomicInteger = f16251a;
        if (atomicInteger.get() >= 10 || Build.VERSION.SDK_INT < 21 || (videoSurfaceA = VideoSurface.a(mediaFormat.getInteger("width"), mediaFormat.getInteger("height"))) == null) {
            return null;
        }
        atomicInteger.getAndIncrement();
        HandlerThread handlerThread = new HandlerThread("libpag_GPUDecoder_init_decoder");
        try {
            handlerThread.start();
            MediaCodec[] mediaCodecArr = {null};
            boolean zA = new t(handlerThread.getLooper()).a(new a(mediaFormat, videoSurfaceA, mediaCodecArr), SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            handlerThread.quitSafely();
            if (!zA) {
                return null;
            }
            HardwareDecoder hardwareDecoder = new HardwareDecoder();
            hardwareDecoder.b = videoSurfaceA;
            hardwareDecoder.c = mediaCodecArr[0];
            return hardwareDecoder;
        } catch (Error | Exception e2) {
            e2.printStackTrace();
            f16251a.getAndDecrement();
            return null;
        }
    }

    private int dequeueInputBuffer() {
        try {
            return this.c.dequeueInputBuffer(1000L);
        } catch (Error | Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private int dequeueOutputBuffer() {
        try {
            return this.c.dequeueOutputBuffer(this.f16253e, 1000L);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private ByteBuffer getInputBuffer(int i) {
        try {
            return Build.VERSION.SDK_INT >= 21 ? this.c.getInputBuffer(i) : this.c.getInputBuffers()[i];
        } catch (Error | Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private VideoSurface getVideoSurface() {
        return this.b;
    }

    private int onDecodeFrame() {
        releaseOutputBuffer();
        try {
            int iDequeueOutputBuffer = dequeueOutputBuffer();
            if ((this.f16253e.flags & 4) == 0) {
                if (iDequeueOutputBuffer >= 0) {
                    this.f16254f = iDequeueOutputBuffer;
                }
                return this.f16254f != -1 ? 0 : -1;
            }
            if (iDequeueOutputBuffer < 0) {
                return -3;
            }
            this.f16254f = iDequeueOutputBuffer;
            return -3;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -2;
        }
    }

    private int onEndOfStream() {
        int iDequeueInputBuffer = dequeueInputBuffer();
        if (iDequeueInputBuffer >= 0) {
            return queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
        }
        return -1;
    }

    private void onFlush() {
        if (this.f16252d) {
            return;
        }
        try {
            this.c.flush();
            this.f16253e = new MediaCodec.BufferInfo();
            this.f16254f = -1;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void onRelease() {
        if (this.f16255g) {
            return;
        }
        this.f16255g = true;
        releaseOutputBuffer();
        releaseDecoder();
    }

    private boolean onRenderFrame() {
        int i = this.f16254f;
        if (i == -1) {
            return false;
        }
        int iReleaseOutputBuffer = releaseOutputBuffer(i, true);
        this.f16254f = -1;
        return iReleaseOutputBuffer == 0;
    }

    private int onSendBytes(ByteBuffer byteBuffer, long j) {
        int iDequeueInputBuffer = dequeueInputBuffer();
        if (iDequeueInputBuffer < 0) {
            return -1;
        }
        ByteBuffer inputBuffer = getInputBuffer(iDequeueInputBuffer);
        if (inputBuffer == null) {
            return -2;
        }
        inputBuffer.clear();
        byteBuffer.position(0);
        inputBuffer.put(byteBuffer);
        return queueInputBuffer(iDequeueInputBuffer, 0, byteBuffer.limit(), j, 0);
    }

    private long presentationTime() {
        return this.f16253e.presentationTimeUs;
    }

    private int queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        try {
            this.c.queueInputBuffer(i, i2, i3, j, i4);
            this.f16252d = false;
            return 0;
        } catch (Error | Exception e2) {
            e2.printStackTrace();
            return -2;
        }
    }

    private void releaseAsync(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        f16251a.getAndIncrement();
        HandlerThread handlerThread = new HandlerThread("libpag_GPUDecoder_release_decoder");
        try {
            handlerThread.start();
            new Handler(handlerThread.getLooper()).post(new d(this, runnable, handlerThread));
        } catch (Error | Exception e2) {
            e2.printStackTrace();
            runnable.run();
        }
    }

    private void releaseDecoder() {
        if (this.c == null) {
            return;
        }
        releaseAsync(new b(this));
    }

    private void releaseOutputBuffer() {
        int i = this.f16254f;
        if (i != -1) {
            releaseOutputBuffer(i, false);
            this.f16254f = -1;
        }
    }

    private int releaseOutputBuffer(int i, boolean z) {
        try {
            this.c.releaseOutputBuffer(i, z);
            return 0;
        } catch (Error | Exception e2) {
            e2.printStackTrace();
            return -2;
        }
    }
}

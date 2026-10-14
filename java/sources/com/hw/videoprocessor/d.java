package com.hw.videoprocessor;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.hw.videoprocessor.g.h;
import com.serenegiant.media.MediaCodecHelper;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class d extends Thread implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaCodec f12070a;
    private MediaMuxer b;
    private AtomicBoolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CountDownLatch f12071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Exception f12072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f12074g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12075h;
    private int i;
    private int j;
    private MediaExtractor k;
    private int l;
    private volatile CountDownLatch m;
    private volatile Surface n;
    private h o;
    private volatile long p;

    public d(MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, int i, int i2, int i3, int i4, int i5, int i6, AtomicBoolean atomicBoolean, CountDownLatch countDownLatch) {
        super("VideoProcessEncodeThread");
        this.p = -1L;
        this.b = mediaMuxer;
        this.c = atomicBoolean;
        this.f12071d = countDownLatch;
        this.k = mediaExtractor;
        this.f12073f = i;
        this.f12075h = i3;
        this.f12074g = i2;
        this.i = i4;
        this.l = i6;
        this.j = i5;
        this.m = new CountDownLatch(1);
    }

    private void b() throws IOException {
        boolean z;
        int i;
        MediaFormat trackFormat = this.k.getTrackFormat(this.l);
        int integer = this.j;
        if (integer <= 0) {
            integer = trackFormat.containsKey("frame-rate") ? trackFormat.getInteger("frame-rate") : e.f12076a;
        }
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", this.f12074g, this.f12075h);
        mediaFormatCreateVideoFormat.setInteger("color-format", MediaCodecHelper.OMX_COLOR_FormatAndroidOpaque);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", integer);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", this.i);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        this.f12070a = mediaCodecCreateEncoderByType;
        if (f.e(mediaCodecCreateEncoderByType, "video/avc", mediaFormatCreateVideoFormat, 8, 512)) {
            com.hw.videoprocessor.g.b.f("supportProfileHigh,enable ProfileHigh", new Object[0]);
        }
        int iC = f.c(this.f12070a, "video/avc");
        if (iC > 0 && this.f12073f > iC) {
            com.hw.videoprocessor.g.b.b(this.f12073f + " bitrate too large,set to:" + iC, new Object[0]);
            this.f12073f = (int) (((float) iC) * 0.8f);
        }
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.f12073f);
        int i2 = 1;
        this.f12070a.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.n = this.f12070a.createInputSurface();
        this.f12070a.start();
        this.m.countDown();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        int i3 = (int) (1000000.0f / integer);
        int i4 = -5;
        boolean z2 = false;
        int i5 = 0;
        int iAddTrack = -5;
        boolean z3 = false;
        long j = -1;
        while (true) {
            if (this.c.get() && !z2) {
                this.f12070a.signalEndOfInputStream();
                z2 = true;
            }
            int iDequeueOutputBuffer = this.f12070a.dequeueOutputBuffer(bufferInfo, 2500L);
            com.hw.videoprocessor.g.b.f("encode outputBufferIndex = " + iDequeueOutputBuffer, new Object[0]);
            if (z2 && iDequeueOutputBuffer == -1) {
                i5 += i2;
                if (i5 > 10) {
                    com.hw.videoprocessor.g.b.b("INFO_TRY_AGAIN_LATER 10 times,force End!", new Object[0]);
                    break;
                }
            } else {
                i5 = 0;
            }
            if (iDequeueOutputBuffer != -1) {
                if (iDequeueOutputBuffer == -2) {
                    MediaFormat outputFormat = this.f12070a.getOutputFormat();
                    if (iAddTrack == i4) {
                        iAddTrack = this.b.addTrack(outputFormat);
                        this.b.start();
                        this.f12071d.countDown();
                    }
                    com.hw.videoprocessor.g.b.f("encode newFormat = " + outputFormat, new Object[0]);
                } else {
                    if (iDequeueOutputBuffer >= 0) {
                        ByteBuffer outputBuffer = this.f12070a.getOutputBuffer(iDequeueOutputBuffer);
                        if (bufferInfo.flags == 4) {
                            z = z2;
                            i = iDequeueOutputBuffer;
                            if (bufferInfo.presentationTimeUs < 0) {
                                bufferInfo.presentationTimeUs = 0L;
                            }
                        } else {
                            z = z2;
                            i = iDequeueOutputBuffer;
                        }
                        if (!z3 && j != -1 && bufferInfo.presentationTimeUs < ((long) (i3 / 2)) + j) {
                            com.hw.videoprocessor.g.b.b("video 时间戳错误，lastVideoFrameTimeUs:" + j + " info.presentationTimeUs:" + bufferInfo.presentationTimeUs + " VIDEO_FRAME_TIME_US:" + i3, new Object[0]);
                            z3 = true;
                        }
                        if (z3) {
                            bufferInfo.presentationTimeUs = ((long) i3) + j;
                            com.hw.videoprocessor.g.b.b("video 时间戳错误，使用修正的时间戳:" + bufferInfo.presentationTimeUs, new Object[0]);
                            z3 = false;
                        }
                        if (bufferInfo.flags != 2) {
                            j = bufferInfo.presentationTimeUs;
                        }
                        if (this.p != -1) {
                            bufferInfo.presentationTimeUs = this.p;
                        }
                        com.hw.videoprocessor.g.b.f("writeSampleData,size:" + bufferInfo.size + " time:" + (bufferInfo.presentationTimeUs / 1000), new Object[0]);
                        this.b.writeSampleData(iAddTrack, outputBuffer, bufferInfo);
                        d(bufferInfo);
                        this.f12070a.releaseOutputBuffer(i, false);
                        if (bufferInfo.flags == 4) {
                            com.hw.videoprocessor.g.b.f("encoderDone", new Object[0]);
                            break;
                        }
                    } else {
                        com.hw.videoprocessor.g.b.b("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer, new Object[0]);
                    }
                    z2 = z;
                    i4 = -5;
                    i2 = 1;
                }
                z = z2;
                z2 = z;
                i4 = -5;
                i2 = 1;
            }
        }
        com.hw.videoprocessor.g.b.f("Video Encode Done!", new Object[0]);
    }

    private void d(MediaCodec.BufferInfo bufferInfo) {
        h hVar = this.o;
        if (hVar == null) {
            return;
        }
        hVar.b((bufferInfo.flags & 4) > 0 ? Long.MAX_VALUE : bufferInfo.presentationTimeUs);
    }

    @Override // com.hw.videoprocessor.b
    public CountDownLatch a() {
        return this.m;
    }

    public Exception c() {
        return this.f12072e;
    }

    public void e(h hVar) {
        this.o = hVar;
    }

    @Override // com.hw.videoprocessor.b
    public Surface getSurface() {
        return this.n;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0018 A[PHI: r0
      0x0018: PHI (r0v7 'e' java.lang.Exception) = (r0v2 'e' java.lang.Exception), (r0v8 'e' java.lang.Exception) binds: [B:23:0x0039, B:10:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        MediaCodec mediaCodec;
        Exception exc;
        super.run();
        try {
            b();
            try {
                if (this.f12070a != null) {
                }
            } catch (Exception e2) {
                e = e2;
                exc = this.f12072e;
                if (exc == null) {
                    exc = e;
                }
                this.f12072e = exc;
                com.hw.videoprocessor.g.b.c(e);
            }
        } catch (Exception e3) {
            com.hw.videoprocessor.g.b.c(e3);
            this.f12072e = e3;
            try {
                if (this.f12070a != null) {
                    mediaCodec = this.f12070a;
                }
            } catch (Exception e4) {
                e = e4;
                exc = this.f12072e;
                if (exc == null) {
                    exc = e;
                }
                this.f12072e = exc;
                com.hw.videoprocessor.g.b.c(e);
            }
        } finally {
            try {
                mediaCodec = this.f12070a;
                if (mediaCodec != null) {
                    mediaCodec.stop();
                    this.f12070a.release();
                }
            } catch (Exception e5) {
                Exception exc2 = this.f12072e;
                if (exc2 == null) {
                    exc2 = e5;
                }
                this.f12072e = exc2;
                com.hw.videoprocessor.g.b.c(e5);
            }
        }
    }

    @Override // com.hw.videoprocessor.b
    public void setTime(long j) {
        this.p = j;
    }
}

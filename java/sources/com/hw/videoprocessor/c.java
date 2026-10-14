package com.hw.videoprocessor;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.util.Pair;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class c extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaExtractor f12064a;
    private MediaCodec b;
    private Integer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f12065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Float f12066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f12067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Exception f12068g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12069h;
    private b i;
    private com.hw.videoprocessor.g.d j;
    private com.hw.videoprocessor.g.e k;
    private Integer l;
    private Integer m;
    private boolean n;
    private com.hw.videoprocessor.g.c o;
    private List<Pair<Long, Long>> p;

    public c(b bVar, MediaExtractor mediaExtractor, Integer num, Integer num2, List<Pair<Long, Long>> list, Integer num3, Integer num4, Float f2, boolean z, int i, AtomicBoolean atomicBoolean) {
        super("VideoProcessDecodeThread");
        this.f12064a = mediaExtractor;
        this.c = num;
        this.f12065d = num2;
        this.p = list;
        this.f12066e = Float.valueOf(f2 != null ? f2.floatValue() : 1.0f);
        this.f12069h = i;
        this.f12067f = atomicBoolean;
        this.i = bVar;
        this.l = num4;
        this.m = num3;
        this.n = z;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0341  */
    /* JADX WARN: Code duplicated, block: B:35:0x0123  */
    /* JADX WARN: Code duplicated, block: B:37:0x0132  */
    private void a() throws IOException {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        long j;
        long jLongValue;
        float fFloatValue;
        List<Pair<Long, Long>> list;
        boolean z5;
        int iDequeueInputBuffer;
        Integer num;
        try {
            if (!this.i.a().await(5L, TimeUnit.SECONDS)) {
                this.f12068g = new TimeoutException("wait eglContext timeout!");
                return;
            }
            com.hw.videoprocessor.g.d dVar = new com.hw.videoprocessor.g.d(this.i.getSurface());
            this.j = dVar;
            dVar.c();
            MediaFormat trackFormat = this.f12064a.getTrackFormat(this.f12069h);
            this.b = MediaCodec.createDecoderByType(trackFormat.getString("mime"));
            com.hw.videoprocessor.g.e eVar = new com.hw.videoprocessor.g.e();
            this.k = eVar;
            int i = 0;
            this.b.configure(trackFormat, eVar.c(), (MediaCrypto) null, 0);
            this.b.start();
            if (this.n && (num = this.m) != null && this.l != null) {
                if (this.f12066e != null) {
                    this.m = Integer.valueOf((int) (num.intValue() * this.f12066e.floatValue()));
                }
                if (this.m.intValue() > this.l.intValue()) {
                    this.o = new com.hw.videoprocessor.g.c(this.m.intValue(), this.l.intValue());
                    com.hw.videoprocessor.g.b.g("帧率过高，需要丢帧:" + this.m + "->" + this.l, new Object[0]);
                }
            }
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            boolean z6 = false;
            boolean z7 = false;
            int i2 = 0;
            int i3 = 0;
            long j2 = -1;
            while (!z6) {
                long j3 = 2500;
                int i4 = -1;
                if (!z7) {
                    int sampleTrackIndex = this.f12064a.getSampleTrackIndex();
                    if (sampleTrackIndex == this.f12069h) {
                        int iDequeueInputBuffer2 = this.b.dequeueInputBuffer(2500L);
                        if (iDequeueInputBuffer2 >= 0) {
                            int sampleData = this.f12064a.readSampleData(this.b.getInputBuffer(iDequeueInputBuffer2), i);
                            if (sampleData < 0) {
                                this.b.queueInputBuffer(iDequeueInputBuffer2, 0, 0, 0L, 4);
                                z6 = true;
                            } else {
                                this.b.queueInputBuffer(iDequeueInputBuffer2, 0, sampleData, this.f12064a.getSampleTime(), 0);
                                this.f12064a.advance();
                            }
                        }
                    } else {
                        z5 = sampleTrackIndex == -1;
                        if (z5) {
                            com.hw.videoprocessor.g.b.f("inputDone", new Object[i]);
                            iDequeueInputBuffer = this.b.dequeueInputBuffer(2500L);
                            if (iDequeueInputBuffer >= 0) {
                                this.b.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                                z7 = true;
                            }
                        }
                    }
                    if (z5) {
                        com.hw.videoprocessor.g.b.f("inputDone", new Object[i]);
                        iDequeueInputBuffer = this.b.dequeueInputBuffer(2500L);
                        if (iDequeueInputBuffer >= 0) {
                            this.b.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                            z7 = true;
                        }
                    }
                }
                boolean z8 = !z6;
                if (z6) {
                    com.hw.videoprocessor.g.b.f("decoderOutputAvailable:" + z8, new Object[i]);
                }
                while (true) {
                    if (z8) {
                        int iDequeueOutputBuffer = this.b.dequeueOutputBuffer(bufferInfo, j3);
                        com.hw.videoprocessor.g.b.f("outputBufferIndex = " + iDequeueOutputBuffer, new Object[i]);
                        if (z7 && iDequeueOutputBuffer == i4) {
                            i2++;
                            if (i2 > 10) {
                                com.hw.videoprocessor.g.b.b("INFO_TRY_AGAIN_LATER 10 times,force End!", new Object[i]);
                            }
                            z6 = true;
                        } else {
                            i2 = 0;
                        }
                        if (iDequeueOutputBuffer != i4) {
                            if (iDequeueOutputBuffer == -2) {
                                com.hw.videoprocessor.g.b.f("decode newFormat = " + this.b.getOutputFormat(), new Object[i]);
                            } else {
                                if (iDequeueOutputBuffer < 0) {
                                    com.hw.videoprocessor.g.b.b("unexpected result from decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer, new Object[i]);
                                } else {
                                    Integer num2 = this.f12065d;
                                    if (num2 == null || bufferInfo.presentationTimeUs < num2.intValue() * 1000) {
                                        z = z7;
                                        z2 = z6;
                                        z3 = true;
                                    } else {
                                        bufferInfo.flags |= 4;
                                        z3 = false;
                                        z2 = true;
                                        z = true;
                                    }
                                    Integer num3 = this.c;
                                    boolean z9 = z2;
                                    if (num3 != null && bufferInfo.presentationTimeUs < num3.intValue() * 1000) {
                                        com.hw.videoprocessor.g.b.b("drop frame startTime = " + this.c + " present time = " + (bufferInfo.presentationTimeUs / 1000), new Object[0]);
                                        z3 = false;
                                    }
                                    if (this.f12065d == null && this.c == null && (list = this.p) != null) {
                                        Iterator<Pair<Long, Long>> it = list.iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                z3 = false;
                                                break;
                                            }
                                            Pair<Long, Long> next = it.next();
                                            if (bufferInfo.presentationTimeUs >= ((Long) next.first).longValue() && bufferInfo.presentationTimeUs <= ((Long) next.second).longValue()) {
                                                z3 = true;
                                                break;
                                            }
                                        }
                                    }
                                    if (bufferInfo.flags == 4) {
                                        this.b.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                        com.hw.videoprocessor.g.b.f("decoderDone", new Object[0]);
                                        z7 = z;
                                        z6 = true;
                                    } else {
                                        com.hw.videoprocessor.g.c cVar = this.o;
                                        if (cVar != null && cVar.a(i3)) {
                                            com.hw.videoprocessor.g.b.g("帧率过高，丢帧:" + i3, new Object[0]);
                                            z3 = false;
                                        }
                                        i3++;
                                        this.b.releaseOutputBuffer(iDequeueOutputBuffer, z3);
                                        if (z3) {
                                            try {
                                                this.k.a();
                                                z4 = false;
                                            } catch (Exception e2) {
                                                com.hw.videoprocessor.g.b.b(e2.getMessage(), new Object[0]);
                                                z4 = true;
                                            }
                                            if (!z4) {
                                                float f2 = 1.0f;
                                                if (this.f12065d != null || this.c != null) {
                                                    if (j2 == -1) {
                                                        j2 = bufferInfo.presentationTimeUs;
                                                        StringBuilder sb = new StringBuilder();
                                                        sb.append("videoStartTime:");
                                                        j = 1000;
                                                        sb.append(j2 / 1000);
                                                        com.hw.videoprocessor.g.b.f(sb.toString(), new Object[0]);
                                                    } else {
                                                        j = 1000;
                                                    }
                                                    jLongValue = (bufferInfo.presentationTimeUs - j2) * j;
                                                } else {
                                                    if (this.p == null) {
                                                        jLongValue = 0;
                                                        break;
                                                    }
                                                    int i5 = 0;
                                                    long jLongValue2 = 0;
                                                    while (true) {
                                                        if (i5 >= this.p.size()) {
                                                            jLongValue = 0;
                                                            break;
                                                        }
                                                        Pair<Long, Long> pair = this.p.get(i5);
                                                        if (bufferInfo.presentationTimeUs >= ((Long) pair.first).longValue() && bufferInfo.presentationTimeUs <= ((Long) pair.second).longValue()) {
                                                            jLongValue = (bufferInfo.presentationTimeUs - ((Long) pair.first).longValue()) + jLongValue2;
                                                            long jLongValue3 = bufferInfo.presentationTimeUs - ((Long) pair.first).longValue();
                                                            long jLongValue4 = ((Long) pair.second).longValue() - bufferInfo.presentationTimeUs;
                                                            if (jLongValue3 < jLongValue4) {
                                                                fFloatValue = jLongValue3 / (this.f12066e.floatValue() * 500000.0f);
                                                                if (i5 == 0) {
                                                                    fFloatValue = 1.0f;
                                                                }
                                                            } else {
                                                                fFloatValue = jLongValue4 / (this.f12066e.floatValue() * 500000.0f);
                                                                if (i5 == this.p.size() - 1) {
                                                                    fFloatValue = 1.0f;
                                                                }
                                                            }
                                                            f2 = fFloatValue <= 1.0f ? fFloatValue : 1.0f;
                                                            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                                                                break;
                                                            }
                                                            f2 = BitmapDescriptorFactory.HUE_RED;
                                                            break;
                                                        }
                                                        jLongValue2 += ((Long) pair.second).longValue() - ((Long) pair.first).longValue();
                                                        i5++;
                                                    }
                                                }
                                                long jFloatValue = (long) (jLongValue / this.f12066e.floatValue());
                                                this.i.setTime(jFloatValue);
                                                this.k.b(false, f2);
                                                com.hw.videoprocessor.g.b.f("drawImage,setPresentationTimeMs:" + ((jFloatValue / 1000) / 1000), new Object[0]);
                                                this.j.e(jFloatValue);
                                                this.j.f();
                                                z7 = z;
                                                z6 = z9;
                                            }
                                        }
                                        z7 = z;
                                        z6 = z9;
                                    }
                                }
                                i = 0;
                                j3 = 2500;
                                i4 = -1;
                            }
                            i = 0;
                            j3 = 2500;
                            i4 = -1;
                        }
                        i = 0;
                    }
                    i = 0;
                }
            }
            com.hw.videoprocessor.g.b.f("Video Decode Done!", new Object[0]);
            this.f12067f.set(true);
        } catch (InterruptedException e3) {
            com.hw.videoprocessor.g.b.c(e3);
            this.f12068g = e3;
        }
    }

    public Exception b() {
        return this.f12068g;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0026 A[PHI: r0
      0x0026: PHI (r0v9 'e' java.lang.Exception) = (r0v4 'e' java.lang.Exception), (r0v12 'e' java.lang.Exception) binds: [B:35:0x0055, B:16:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Exception exc;
        super.run();
        try {
            a();
            com.hw.videoprocessor.g.d dVar = this.j;
            if (dVar != null) {
                dVar.d();
            }
            com.hw.videoprocessor.g.e eVar = this.k;
            if (eVar != null) {
                eVar.d();
            }
            try {
                if (this.b != null) {
                }
            } catch (Exception e2) {
                e = e2;
                exc = this.f12068g;
                if (exc == null) {
                    exc = e;
                }
                this.f12068g = exc;
                com.hw.videoprocessor.g.b.c(e);
            }
        } catch (Exception e3) {
            this.f12068g = e3;
            com.hw.videoprocessor.g.b.c(e3);
            if (this.j != null) {
                this.j.d();
            }
            com.hw.videoprocessor.g.e eVar2 = this.k;
            if (eVar2 != null) {
                eVar2.d();
            }
            try {
                if (this.b != null) {
                }
            } catch (Exception e4) {
                e = e4;
                exc = this.f12068g;
                if (exc == null) {
                    exc = e;
                }
                this.f12068g = exc;
                com.hw.videoprocessor.g.b.c(e);
            }
        } finally {
            com.hw.videoprocessor.g.d dVar2 = this.j;
            if (dVar2 != null) {
                dVar2.d();
            }
            com.hw.videoprocessor.g.e eVar3 = this.k;
            if (eVar3 != null) {
                eVar3.d();
            }
            try {
                MediaCodec mediaCodec = this.b;
                if (mediaCodec != null) {
                    mediaCodec.stop();
                    this.b.release();
                }
            } catch (Exception e5) {
                Exception exc2 = this.f12068g;
                if (exc2 == null) {
                    exc2 = e5;
                }
                this.f12068g = exc2;
                com.hw.videoprocessor.g.b.c(e5);
            }
        }
    }
}

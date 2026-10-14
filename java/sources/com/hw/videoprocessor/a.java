package com.hw.videoprocessor;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.hw.videoprocessor.g.h;
import com.hw.videoprocessor.g.i;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public class a extends Thread implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e.a f12058a;
    private Integer b;
    private Integer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Float f12059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f12060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Exception f12061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MediaMuxer f12062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12063h;
    private MediaExtractor i;
    private CountDownLatch j;
    private h k;

    public a(Context context, e.a aVar, MediaMuxer mediaMuxer, Integer num, Integer num2, Float f2, int i, CountDownLatch countDownLatch) {
        super("VideoProcessDecodeThread");
        this.f12058a = aVar;
        this.b = num;
        this.c = num2;
        this.f12059d = f2;
        this.f12062g = mediaMuxer;
        this.f12060e = context;
        this.f12063h = i;
        this.i = new MediaExtractor();
        this.j = countDownLatch;
    }

    private void b() throws Exception {
        this.f12058a.a(this.i);
        int iD = f.d(this.i, true);
        if (iD >= 0) {
            this.i.selectTrack(iD);
            MediaFormat trackFormat = this.i.getTrackFormat(iD);
            String string = trackFormat.containsKey("mime") ? trackFormat.getString("mime") : "audio/mp4a-latm";
            Integer num = this.b;
            Integer numValueOf = num == null ? null : Integer.valueOf(num.intValue() * 1000);
            Integer num2 = this.c;
            Integer numValueOf2 = num2 != null ? Integer.valueOf(num2.intValue() * 1000) : null;
            if (!this.j.await(3L, TimeUnit.SECONDS)) {
                throw new TimeoutException("wait muxerStartLatch timeout!");
            }
            if (this.f12059d == null && string.equals("audio/mp4a-latm")) {
                com.hw.videoprocessor.g.a.e(this.i, this.f12062g, this.f12063h, numValueOf, numValueOf2, this);
            } else {
                Context context = this.f12060e;
                MediaExtractor mediaExtractor = this.i;
                MediaMuxer mediaMuxer = this.f12062g;
                int i = this.f12063h;
                Float f2 = this.f12059d;
                com.hw.videoprocessor.g.a.f(context, mediaExtractor, mediaMuxer, i, numValueOf, numValueOf2, Float.valueOf(f2 == null ? 1.0f : f2.floatValue()), this);
            }
        }
        h hVar = this.k;
        if (hVar != null) {
            hVar.a(1.0f);
        }
        com.hw.videoprocessor.g.b.f("Audio Process Done!", new Object[0]);
    }

    @Override // com.hw.videoprocessor.g.i
    public void a(float f2) {
        h hVar = this.k;
        if (hVar != null) {
            hVar.a(f2);
        }
    }

    public Exception c() {
        return this.f12061f;
    }

    public void d(h hVar) {
        this.k = hVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        try {
            try {
                b();
            } catch (Exception e2) {
                this.f12061f = e2;
                com.hw.videoprocessor.g.b.c(e2);
            }
        } finally {
            this.i.release();
        }
    }
}

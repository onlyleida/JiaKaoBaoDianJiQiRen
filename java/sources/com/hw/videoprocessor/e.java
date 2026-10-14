package com.hw.videoprocessor;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.net.Uri;
import android.util.Pair;
import com.hw.videoprocessor.g.h;
import com.hw.videoprocessor.g.i;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
@TargetApi(21)
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12076a = 20;
    public static int b = 524288;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f12077a;
        public String b;
        public Uri c;

        public a(String str) {
            this.b = str;
        }

        public void a(MediaExtractor mediaExtractor) throws IOException {
            String str = this.b;
            if (str != null) {
                mediaExtractor.setDataSource(str);
            } else {
                mediaExtractor.setDataSource(this.f12077a, this.c, (Map<String, String>) null);
            }
        }

        public void b(MediaMetadataRetriever mediaMetadataRetriever) {
            String str = this.b;
            if (str != null) {
                mediaMetadataRetriever.setDataSource(str);
            } else {
                mediaMetadataRetriever.setDataSource(this.f12077a, this.c);
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f12078a;
        private a b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f12079d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f12080e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Integer f12081f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Integer f12082g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Float f12083h;
        private Boolean i;
        private Integer j;
        private Integer k;
        private Integer l;
        private i m;
        private List<Pair<Long, Long>> n;
        private boolean o = true;

        public b(Context context) {
            this.f12078a = context;
        }

        public b q(boolean z) {
            this.i = Boolean.valueOf(z);
            return this;
        }

        public b r(List<Pair<Long, Long>> list) {
            this.n = list;
            return this;
        }

        public b s(String str) {
            this.b = new a(str);
            return this;
        }

        public b t(String str) {
            this.c = str;
            return this;
        }

        public void u() throws Exception {
            e.a(this.f12078a, this);
        }

        public b v(float f2) {
            this.f12083h = Float.valueOf(f2);
            return this;
        }
    }

    public static void a(Context context, b bVar) throws Exception {
        Integer num;
        int iAddTrack;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        bVar.b.b(mediaMetadataRetriever);
        int iIntValue = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
        int iIntValue2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
        int i = b;
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(20);
        if (strExtractMetadata != null) {
            i = Integer.parseInt(strExtractMetadata);
        }
        int iIntValue3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(9));
        mediaMetadataRetriever.release();
        if (bVar.j == null) {
            bVar.j = Integer.valueOf(i);
        }
        if (bVar.l == null) {
            bVar.l = 1;
        }
        if (bVar.f12079d != null) {
            iIntValue = bVar.f12079d.intValue();
        }
        if (bVar.f12080e != null) {
            iIntValue2 = bVar.f12080e.intValue();
        }
        if (iIntValue % 2 != 0) {
            iIntValue++;
        }
        int i2 = iIntValue;
        if (iIntValue2 % 2 != 0) {
            iIntValue2++;
        }
        int i3 = iIntValue2;
        MediaExtractor mediaExtractor = new MediaExtractor();
        bVar.b.a(mediaExtractor);
        int iD = f.d(mediaExtractor, false);
        int iD2 = f.d(mediaExtractor, true);
        MediaMuxer mediaMuxer = new MediaMuxer(bVar.c, 0);
        boolean zBooleanValue = bVar.i == null ? true : bVar.i.booleanValue();
        Integer numValueOf = bVar.f12082g;
        if (iD2 >= 0) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(iD2);
            int iB = com.hw.videoprocessor.g.a.b(trackFormat);
            int integer = trackFormat.getInteger("channel-count");
            int integer2 = trackFormat.getInteger("sample-rate");
            int iC = com.hw.videoprocessor.g.a.c(trackFormat);
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", integer2, integer);
            mediaFormatCreateAudioFormat.setInteger("bitrate", iB);
            mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
            mediaFormatCreateAudioFormat.setInteger("max-input-size", iC);
            if (!zBooleanValue) {
                mediaMuxer = mediaMuxer;
                long jFloatValue = iIntValue3 * 1000;
                long j = trackFormat.getLong("durationUs");
                if (bVar.f12081f != null || bVar.f12082g != null || bVar.f12083h != null) {
                    if (bVar.f12081f != null && bVar.f12082g != null) {
                        jFloatValue = (bVar.f12082g.intValue() - bVar.f12081f.intValue()) * 1000;
                    }
                    if (bVar.f12083h != null) {
                        jFloatValue = (long) (jFloatValue / bVar.f12083h.floatValue());
                    }
                    if (jFloatValue >= j) {
                        jFloatValue = j;
                    }
                    mediaFormatCreateAudioFormat.setLong("durationUs", jFloatValue);
                    numValueOf = Integer.valueOf((bVar.f12081f == null ? 0 : bVar.f12081f.intValue()) + ((int) (jFloatValue / 1000)));
                }
            } else if (bVar.f12081f == null && bVar.f12082g == null && bVar.f12083h == null) {
                mediaMuxer = mediaMuxer;
            } else {
                long jFloatValue2 = (bVar.f12081f == null || bVar.f12082g == null) ? trackFormat.getLong("durationUs") : (bVar.f12082g.intValue() - bVar.f12081f.intValue()) * 1000;
                if (bVar.f12083h != null) {
                    jFloatValue2 = (long) (jFloatValue2 / bVar.f12083h.floatValue());
                }
                mediaFormatCreateAudioFormat.setLong("durationUs", jFloatValue2);
            }
            com.hw.videoprocessor.g.a.a(mediaFormatCreateAudioFormat, 2, integer2, integer);
            mediaMuxer = mediaMuxer;
            iAddTrack = mediaMuxer.addTrack(mediaFormatCreateAudioFormat);
            num = numValueOf;
        } else {
            num = numValueOf;
            iAddTrack = 0;
        }
        mediaExtractor.selectTrack(iD);
        if (bVar.f12081f != null) {
            mediaExtractor.seekTo(bVar.f12081f.intValue() * 1000, 0);
        } else {
            mediaExtractor.seekTo(0L, 0);
        }
        h hVar = new h(bVar.m);
        hVar.d(bVar.f12083h);
        hVar.e(bVar.f12081f == null ? 0 : bVar.f12081f.intValue());
        if (bVar.f12082g != null) {
            iIntValue3 = bVar.f12082g.intValue();
        }
        hVar.c(iIntValue3);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        MediaMuxer mediaMuxer2 = mediaMuxer;
        d dVar = new d(mediaExtractor, mediaMuxer, bVar.j.intValue(), i2, i3, bVar.l.intValue(), bVar.k == null ? f12076a : bVar.k.intValue(), iD, atomicBoolean, countDownLatch);
        int iB2 = f.b(bVar.b);
        if (iB2 <= 0) {
            iB2 = (int) Math.ceil(f.a(bVar.b));
        }
        c cVar = new c(dVar, mediaExtractor, bVar.f12081f, bVar.f12082g, bVar.n, Integer.valueOf(iB2), Integer.valueOf(bVar.k == null ? f12076a : bVar.k.intValue()), bVar.f12083h, bVar.o, iD, atomicBoolean);
        com.hw.videoprocessor.a aVar = new com.hw.videoprocessor.a(context, bVar.b, mediaMuxer2, bVar.f12081f, num, zBooleanValue ? bVar.f12083h : null, iAddTrack, countDownLatch);
        dVar.e(hVar);
        aVar.d(hVar);
        cVar.start();
        dVar.start();
        aVar.start();
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            cVar.join();
            dVar.join();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            aVar.join();
            com.hw.videoprocessor.g.b.g(String.format("编解码:%dms,音频:%dms", Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)), new Object[0]);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        try {
            mediaMuxer2.release();
            mediaExtractor.release();
        } catch (Exception e3) {
            com.hw.videoprocessor.g.b.c(e3);
        }
        if (dVar.c() != null) {
            throw dVar.c();
        }
        if (cVar.b() != null) {
            throw cVar.b();
        }
        if (aVar.c() != null) {
            throw aVar.c();
        }
    }

    public static b b(Context context) {
        return new b(context);
    }
}

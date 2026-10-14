package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.offline.FilterableManifest;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheKeyFactory;
import com.google.android.exoplayer2.upstream.cache.CacheWriter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.RunnableFutureTask;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SegmentDownloader<M extends FilterableManifest<M>> implements Downloader {
    private static final int BUFFER_SIZE_BYTES = 131072;
    private static final long MAX_MERGED_SEGMENT_START_TIME_DIFF_US = 20000000;
    private final ArrayList<RunnableFutureTask<?, ?>> activeRunnables;
    private final Cache cache;
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final CacheKeyFactory cacheKeyFactory;
    private final Executor executor;
    private volatile boolean isCanceled;
    private final DataSpec manifestDataSpec;
    private final ParsingLoadable.Parser<M> manifestParser;
    private final PriorityTaskManager priorityTaskManager;
    private final ArrayList<StreamKey> streamKeys;

    private static final class ProgressNotifier implements CacheWriter.ProgressListener {
        private long bytesDownloaded;
        private final long contentLength;
        private final Downloader.ProgressListener progressListener;
        private int segmentsDownloaded;
        private final int totalSegments;

        public ProgressNotifier(Downloader.ProgressListener r1, long r2, int r4, long r5, int r7) {
            this.progressListener = r1;
            this.contentLength = r2;
            this.totalSegments = r4;
            this.bytesDownloaded = r5;
            this.segmentsDownloaded = r7;
        }

        private float getPercentDownloaded() {
            long r0 = this.contentLength;
            if (r0 != (-1)) goto L5;
        L8:
            int r1 = this.totalSegments;
            if (r1 != 0) goto L11;
            return -1.0f;
        L11:
            return (this.segmentsDownloaded * 100.0f) / r1;
        L5:
            if (r0 == 0) goto L8;
            return (this.bytesDownloaded * 100.0f) / r0;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener
        public void onProgress(long r7, long r9, long r11) {
            long r3 = this.bytesDownloaded + r11;
            this.bytesDownloaded = r3;
            this.progressListener.onProgress(this.contentLength, r3, getPercentDownloaded());
        }

        public void onSegmentDownloaded() {
            this.segmentsDownloaded++;
            this.progressListener.onProgress(this.contentLength, this.bytesDownloaded, getPercentDownloaded());
        }
    }

    protected static class Segment implements Comparable<Segment> {
        public final DataSpec dataSpec;
        public final long startTimeUs;

        public Segment(long r1, DataSpec r3) {
            this.startTimeUs = r1;
            this.dataSpec = r3;
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Segment r1) {
            return compareTo2(r1);
        }

        /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
        public int compareTo2(Segment r5) {
            return Util.compareLong(this.startTimeUs, r5.startTimeUs);
        }
    }

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final CacheWriter cacheWriter;
        public final CacheDataSource dataSource;
        private final ProgressNotifier progressNotifier;
        public final Segment segment;
        public final byte[] temporaryBuffer;

        public SegmentDownloadRunnable(Segment r2, CacheDataSource r3, ProgressNotifier r4, byte[] r5) {
            this.segment = r2;
            this.dataSource = r3;
            this.progressNotifier = r4;
            this.temporaryBuffer = r5;
            this.cacheWriter = new CacheWriter(r3, r2.dataSpec, r5, r4);
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        protected void cancelWork() {
            this.cacheWriter.cancel();
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        protected /* bridge */ /* synthetic */ Void doWork() throws Exception {
            return doWork2();
        }

        @Override // com.google.android.exoplayer2.util.RunnableFutureTask
        /* JADX INFO: renamed from: doWork, reason: avoid collision after fix types in other method */
        protected Void doWork2() throws IOException {
            this.cacheWriter.cache();
            ProgressNotifier r0 = this.progressNotifier;
            if (r0 == null) goto L7;
            r0.onSegmentDownloaded();
            return null;
        L7:
            return null;
        }
    }

    public SegmentDownloader(MediaItem r2, ParsingLoadable.Parser<M> r3, CacheDataSource.Factory r4, Executor r5) {
        Assertions.checkNotNull(r2.playbackProperties);
        this.manifestDataSpec = getCompressibleDataSpec(r2.playbackProperties.uri);
        this.manifestParser = r3;
        this.streamKeys = new ArrayList(r2.playbackProperties.streamKeys);
        this.cacheDataSourceFactory = r4;
        this.executor = r5;
        this.cache = (Cache) Assertions.checkNotNull(r4.getCache());
        this.cacheKeyFactory = r4.getCacheKeyFactory();
        this.priorityTaskManager = r4.getUpstreamPriorityTaskManager();
        this.activeRunnables = new ArrayList();
    }

    static /* synthetic */ ParsingLoadable.Parser access$000(SegmentDownloader r0) {
        return r0.manifestParser;
    }

    private <T> void addActiveRunnable(RunnableFutureTask<T, ?> r3) throws InterruptedException {
        ArrayList<RunnableFutureTask<?, ?>> r0 = this.activeRunnables;
        monitor-enter(r0);
    L11:
        th = move-exception;
        throw th;
    L5:
        if (this.isCanceled == true) goto L10;
        this.activeRunnables.add(r3);     // Catch: Throwable -> L11
        monitor-exit(r0);     // Catch: Throwable -> L11
        return;
    L10:
        throw new InterruptedException();     // Catch: Throwable -> L11
    }

    private static boolean canMergeSegments(DataSpec r5, DataSpec r6) {
        if (r5.uri.equals(r6.uri) == false) goto L17;
        long r0 = r5.length;
        if (r0 == (-1)) goto L17;
        if ((r5.position + r0) != r6.position) goto L17;
        if (Util.areEqual(r5.key, r6.key) == false) goto L17;
        if (r5.flags != r6.flags) goto L17;
        if (r5.httpMethod != r6.httpMethod) goto L17;
        if (r5.httpRequestHeaders.equals(r6.httpRequestHeaders) == false) goto L17;
        return true;
    L17:
        return false;
    }

    protected static DataSpec getCompressibleDataSpec(Uri r1) {
        return new DataSpec.Builder().setUri(r1).setFlags(1).build();
    }

    private static void mergeSegments(List<Segment> r13, CacheKeyFactory r14) {
        HashMap r0 = new HashMap();
        int r1 = 0;
        int r2 = 0;
    L4:
        if (r1 >= r13.size()) goto L22;
        Segment r3 = r13.get(r1);
        String r4 = r14.buildCacheKey(r3.dataSpec);
        Integer r5 = (Integer) r0.get(r4);
        if (r5 != null) goto L8;
        Segment r6 = null;
    L9:
        if (r6 != null) goto L11;
    L20:
        r0.put(r4, Integer.valueOf(r2));
        r13.set(r2, r3);
        r2 = r2 + 1;
    L21:
        r1 = r1 + 1;
        goto L4
    L11:
        if (r3.startTimeUs > (r6.startTimeUs + MAX_MERGED_SEGMENT_START_TIME_DIFF_US)) goto L20;
        if (canMergeSegments(r6.dataSpec, r3.dataSpec) == false) goto L20;
        long r7 = r3.dataSpec.length;
        long r8 = -1;
        if (r7 == (-1)) goto L19;
        r8 = r6.dataSpec.length + r7;
    L19:
        DataSpec r9 = r6.dataSpec.subrange(0, r8);
        r13.set(((Integer) Assertions.checkNotNull(r5)).intValue(), new Segment(r6.startTimeUs, r9));
        goto L21
    L8:
        r6 = r13.get(r5.intValue());
        goto L9
    L22:
        Util.removeRange(r13, r2, r13.size());
    }

    private void removeActiveRunnable(RunnableFutureTask<?, ?> r3) {
        ArrayList<RunnableFutureTask<?, ?>> r0 = this.activeRunnables;
        monitor-enter(r0);
        this.activeRunnables.remove(r3);     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public void cancel() {
        ArrayList<RunnableFutureTask<?, ?>> r0 = this.activeRunnables;
        monitor-enter(r0);
        this.isCanceled = true;     // Catch: Throwable -> L11
        int r2 = 0;
    L7:
        if (r2 >= this.activeRunnables.size()) goto L9;
        this.activeRunnables.get(r2).cancel(true);     // Catch: Throwable -> L11
        r2 = r2 + 1;     // Catch: Throwable -> L11
        goto L7
    L9:
        monitor-exit(r0);     // Catch: Throwable -> L11
        return;
    L11:
        th = move-exception;
        throw th;
    }

    @Override // com.google.android.exoplayer2.offline.Downloader
    public final void download(Downloader.ProgressListener r26) throws IOException, InterruptedException {
        SegmentDownloader<M> r1 = this;
        ArrayDeque r2 = new ArrayDeque();
        ArrayDeque r3 = new ArrayDeque();
        PriorityTaskManager r0 = r1.priorityTaskManager;
        if (r0 == null) goto L100;
        r0.add(-1000);
    L100:
        CacheDataSource r4 = r1.cacheDataSourceFactory.createDataSourceForDownloading();     // Catch: Throwable -> L81
        FilterableManifest r7 = r1.getManifest(r4, r1.manifestDataSpec, false);     // Catch: Throwable -> L81
        if (r1.streamKeys.isEmpty() == true) goto L9;
        r7 = (FilterableManifest) r7.copy(r1.streamKeys);     // Catch: Throwable -> L81
    L9:
        List<Segment> r5 = r1.getSegments(r4, r7, false);     // Catch: Throwable -> L81
        Collections.sort(r5);     // Catch: Throwable -> L81
        mergeSegments(r5, r1.cacheKeyFactory);     // Catch: Throwable -> L81
        int r12 = r5.size();     // Catch: Throwable -> L81
        int r8 = r5.size() - 1;
        long r10 = 0;
        long r13 = 0;
        int r15 = 0;
    L11:
        if (r8 < 0) goto L31;
        DataSpec r9 = r5.get(r8).dataSpec;     // Catch: Throwable -> L29
        String r11 = r1.cacheKeyFactory.buildCacheKey(r9);     // Catch: Throwable -> L29
        long r6 = r9.length;     // Catch: Throwable -> L29
        if (r6 != (-1)) goto L19;
        long r16 = com.google.android.exoplayer2.upstream.cache.d.a(r1.cache.getContentMetadata(r11));     // Catch: Throwable -> L81
        if (r16 == (-1)) goto L19;
        r6 = r16 - r9.position;
    L19:
        ArrayDeque r24 = r2;
        long r14 = r1.cache.getCachedBytes(r11, r9.position, r6);     // Catch: Throwable -> L29
        r13 = r13 + r14;     // Catch: Throwable -> L29
        if (r6 != (-1)) goto L22;
        r10 = -1;
    L28:
        r8 = r8 - 1;     // Catch: Throwable -> L29
        r1 = this;
        r2 = r24;
        goto L11
    L22:
        if (r6 != r14) goto L25;
        r15 = r15 + 1;     // Catch: Throwable -> L29
        r5.remove(r8);     // Catch: Throwable -> L29
    L25:
        if (r10 == (-1)) goto L28;
        r10 = r10 + r6;     // Catch: Throwable -> L29
    L29:
        th = th;
        SegmentDownloader<M> r17 = this;
    L83:
        int r18 = 0;
    L85:
        if (r18 >= r17.activeRunnables.size()) goto L87;
        r17.activeRunnables.get(r18).cancel(true);
        r18 = r18 + 1;
        goto L85
    L87:
        int r19 = r17.activeRunnables.size() - 1;
    L88:
        if (r19 < 0) goto L90;
        r17.activeRunnables.get(r19).blockUntilFinished();
        r17.removeActiveRunnable(r19);
        r19 = r19 - 1;
        goto L88
    L90:
        PriorityTaskManager r20 = r17.priorityTaskManager;
        if (r20 == null) goto L93;
        r20.remove(-1000);
    L93:
        throw th;
    L31:
        ArrayDeque r25 = r2;
        if (r26 == null) goto L34;
        ProgressNotifier r21 = new ProgressNotifier(r26, r10, r12, r13, r15);     // Catch: Throwable -> L29
    L35:
        r25.addAll(r5);     // Catch: Throwable -> L29
        r17 = this;
    L94:
    L79:
        th = th;
        goto L83
    L38:
        if (r17.isCanceled == true) goto L68;
        if (r25.isEmpty() == true) goto L68;
        PriorityTaskManager r22 = r17.priorityTaskManager;     // Catch: Throwable -> L79
        if (r22 == null) goto L45;
        r22.proceed(-1000);     // Catch: Throwable -> L79
    L45:
        if (r3.isEmpty() == true) goto L47;
        SegmentDownloadRunnable r23 = (SegmentDownloadRunnable) r3.removeFirst();     // Catch: Throwable -> L79
        CacheDataSource r27 = r23.dataSource;     // Catch: Throwable -> L79
        byte[] r28 = r23.temporaryBuffer;     // Catch: Throwable -> L79
    L48:
        SegmentDownloadRunnable r29 = new SegmentDownloadRunnable((Segment) r25.removeFirst(), r27, r21, r28);     // Catch: Throwable -> L79
        r17.addActiveRunnable(r29);     // Catch: Throwable -> L79
        r17.executor.execute(r29);     // Catch: Throwable -> L79
        int r30 = r17.activeRunnables.size() - 1;     // Catch: Throwable -> L79
    L49:
        if (r30 < 0) goto L66;
        SegmentDownloadRunnable r31 = (SegmentDownloadRunnable) r17.activeRunnables.get(r30);     // Catch: Throwable -> L79
        if (r25.isEmpty() == false) goto L53;
    L96:
        r31.get();     // Catch: ExecutionException -> L56 Throwable -> L79
        r17.removeActiveRunnable(r30);     // Catch: ExecutionException -> L56 Throwable -> L79
        r3.addLast(r31);     // Catch: ExecutionException -> L56 Throwable -> L79
    L63:
        r30 = r30 - 1;     // Catch: Throwable -> L79
    L56:
        e = move-exception;
        Throwable r32 = (Throwable) Assertions.checkNotNull(e.getCause());     // Catch: Throwable -> L79
        if ((r32 instanceof PriorityTaskManager.PriorityTooLowException) == false) goto L61;
        r25.addFirst(r31.segment);     // Catch: Throwable -> L79
        r17.removeActiveRunnable(r30);     // Catch: Throwable -> L79
        r3.addLast(r31);     // Catch: Throwable -> L79
        goto L63
    L61:
        if ((r32 instanceof IOException) == true) goto L65;
        Util.sneakyThrow(r32);     // Catch: Throwable -> L79
        goto L63
    L65:
        throw ((IOException) r32);     // Catch: Throwable -> L79
    L53:
        if (r31.isDone() == false) goto L63;
    L66:
        r29.blockUntilStarted();     // Catch: Throwable -> L79
        goto L94
    L47:
        r27 = r17.cacheDataSourceFactory.createDataSourceForDownloading();     // Catch: Throwable -> L79
        r28 = new byte[131072];     // Catch: Throwable -> L79
    L68:
        int r33 = 0;
    L70:
        if (r33 >= r17.activeRunnables.size()) goto L72;
        r17.activeRunnables.get(r33).cancel(true);
        r33 = r33 + 1;
        goto L70
    L72:
        int r34 = r17.activeRunnables.size() - 1;
    L73:
        if (r34 < 0) goto L75;
        r17.activeRunnables.get(r34).blockUntilFinished();
        r17.removeActiveRunnable(r34);
        r34 = r34 - 1;
        goto L73
    L75:
        PriorityTaskManager r35 = r17.priorityTaskManager;
        if (r35 == null) goto L118;
        r35.remove(-1000);
        return;
    L118:
        return;
    L34:
        r21 = null;
    L81:
        th = th;
        r17 = r1;
        goto L83
    }

    protected final <T> T execute(RunnableFutureTask<T, ?> r3, boolean r4) throws InterruptedException, IOException {
        if (r4 == false) goto L13;
        r3.run();
        return r3.get();
    L6:
        e = move-exception;
        Throwable r0 = (Throwable) Assertions.checkNotNull(e.getCause());
        if ((r0 instanceof IOException) == true) goto L11;
        Util.sneakyThrow(e);
        goto L13
    L11:
        throw ((IOException) r0);
    L13:
        if (this.isCanceled == true) goto L36;
        PriorityTaskManager r5 = this.priorityTaskManager;
        if (r5 == null) goto L17;
        r5.proceed(-1000);
    L17:
        addActiveRunnable(r3);
        this.executor.execute(r3);
        T r6 = r3.get();     // Catch: Throwable -> L21 ExecutionException -> L23
    L19:
        r3.blockUntilFinished();
        removeActiveRunnable(r3);
        return r6;
    L23:
        e = move-exception;
        Throwable r1 = (Throwable) Assertions.checkNotNull(e.getCause());     // Catch: Throwable -> L21
        if ((r1 instanceof PriorityTaskManager.PriorityTooLowException) == false) goto L28;
    L30:
        r3.blockUntilFinished();
        removeActiveRunnable(r3);
        goto L13
    L28:
        if ((r1 instanceof IOException) == true) goto L32;
        Util.sneakyThrow(e);     // Catch: Throwable -> L21
        goto L30
    L32:
        throw ((IOException) r1);     // Catch: Throwable -> L21
    L21:
        th = move-exception;
        r3.blockUntilFinished();
        removeActiveRunnable(r3);
        throw th;
    L36:
        throw new InterruptedException();
    }

    protected final M getManifest(final DataSource r2, final DataSpec r3, boolean r4) throws InterruptedException, IOException {
        return (M) execute(new AnonymousClass1(this, r2, r3), r4);
    }

    protected abstract List<Segment> getSegments(DataSource r1, M r2, boolean r3) throws IOException, InterruptedException;

    @Override // com.google.android.exoplayer2.offline.Downloader
    public final void remove() {
        CacheDataSource r0 = this.cacheDataSourceFactory.createDataSourceForRemovingDownload();
        List<Segment> r1 = getSegments(r0, getManifest(r0, this.manifestDataSpec, true), true);     // Catch: Throwable -> L8 Exception -> L16 InterruptedException -> L11
        int r2 = 0;
    L5:
        if (r2 >= r1.size()) goto L10;
        this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(r1.get(r2).dataSpec));     // Catch: Throwable -> L8 Exception -> L16 InterruptedException -> L11
        r2 = r2 + 1;
        goto L5
    L8:
        th = move-exception;
        this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
        throw th;
    L11:
        Thread.currentThread().interrupt();     // Catch: Throwable -> L8
    L10:
        this.cache.removeResource(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
    }

    private void removeActiveRunnable(int r3) {
        ArrayList<RunnableFutureTask<?, ?>> r0 = this.activeRunnables;
        monitor-enter(r0);
        this.activeRunnables.remove(r3);     // Catch: Throwable -> L7
        monitor-exit(r0);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }
}

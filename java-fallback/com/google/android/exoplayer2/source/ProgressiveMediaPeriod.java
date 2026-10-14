package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: classes5.dex */
final class ProgressiveMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private static final Format ICY_FORMAT = null;
    private static final Map<String, String> ICY_METADATA_HEADERS = null;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final long continueLoadingCheckIntervalBytes;
    private final String customCacheKey;
    private final DataSource dataSource;
    private int dataType;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private long durationUs;
    private int enabledTrackCount;
    private int extractedSamplesCountAtStartOfLoad;
    private final Handler handler;
    private boolean haveAudioVideoTracks;
    private IcyHeaders icyHeaders;
    private boolean isLive;
    private long lastSeekPositionUs;
    private long length;
    private final Listener listener;
    private final ConditionVariable loadCondition;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final Loader loader;
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private boolean notifyDiscontinuity;
    private final Runnable onContinueLoadingRequestedRunnable;
    private boolean pendingDeferredRetry;
    private long pendingResetPositionUs;
    private boolean prepared;
    private final ProgressiveMediaExtractor progressiveMediaExtractor;
    private boolean released;
    private TrackId[] sampleQueueTrackIds;
    private SampleQueue[] sampleQueues;
    private boolean sampleQueuesBuilt;
    private SeekMap seekMap;
    private boolean seenFirstTrackSelection;
    private TrackState trackState;
    private final Uri uri;

    final class ExtractingLoadable implements Loader.Loadable, IcyDataSource.Listener {
        private final StatsDataSource dataSource;
        private DataSpec dataSpec;
        private final ExtractorOutput extractorOutput;
        private TrackOutput icyTrackOutput;
        private long length;
        private volatile boolean loadCanceled;
        private final ConditionVariable loadCondition;
        private final long loadTaskId;
        private boolean pendingExtractorSeek;
        private final PositionHolder positionHolder;
        private final ProgressiveMediaExtractor progressiveMediaExtractor;
        private long seekTimeUs;
        private boolean seenIcyMetadata;
        final /* synthetic */ ProgressiveMediaPeriod this$0;
        private final Uri uri;

        public ExtractingLoadable(ProgressiveMediaPeriod r1, Uri r2, DataSource r3, ProgressiveMediaExtractor r4, ExtractorOutput r5, ConditionVariable r6) {
            this.this$0 = r1;
            this.uri = r2;
            this.dataSource = new StatsDataSource(r3);
            this.progressiveMediaExtractor = r4;
            this.extractorOutput = r5;
            this.loadCondition = r6;
            this.positionHolder = new PositionHolder();
            this.pendingExtractorSeek = true;
            this.length = -1;
            this.loadTaskId = LoadEventInfo.getNewId();
            this.dataSpec = buildDataSpec(0);
        }

        static /* synthetic */ StatsDataSource access$100(ExtractingLoadable r0) {
            return r0.dataSource;
        }

        static /* synthetic */ long access$200(ExtractingLoadable r2) {
            return r2.loadTaskId;
        }

        static /* synthetic */ DataSpec access$300(ExtractingLoadable r0) {
            return r0.dataSpec;
        }

        static /* synthetic */ long access$400(ExtractingLoadable r2) {
            return r2.seekTimeUs;
        }

        static /* synthetic */ long access$500(ExtractingLoadable r2) {
            return r2.length;
        }

        static /* synthetic */ void access$600(ExtractingLoadable r0, long r1, long r3) {
            r0.setLoadPosition(r1, r3);
        }

        private DataSpec buildDataSpec(long r3) {
            return new DataSpec.Builder().setUri(this.uri).setPosition(r3).setKey(ProgressiveMediaPeriod.access$1400(this.this$0)).setFlags(6).setHttpRequestHeaders(ProgressiveMediaPeriod.access$1300()).build();
        }

        private void setLoadPosition(long r2, long r4) {
            this.positionHolder.position = r2;
            this.seekTimeUs = r4;
            this.pendingExtractorSeek = true;
            this.seenIcyMetadata = false;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws IOException {
            int r2 = 0;
        L3:
            if (r2 != 0) goto L44;
            if (this.loadCanceled == true) goto L59;
            long r13 = this.positionHolder.position;     // Catch: Throwable -> L37
            DataSpec r6 = buildDataSpec(r13);     // Catch: Throwable -> L37
            this.dataSpec = r6;     // Catch: Throwable -> L37
            long r7 = this.dataSource.open(r6);     // Catch: Throwable -> L37
            this.length = r7;     // Catch: Throwable -> L37
            if (r7 == (-1)) goto L10;
            this.length = r7 + r13;     // Catch: Throwable -> L37
        L10:
            ProgressiveMediaPeriod.access$702(this.this$0, IcyHeaders.parse(this.dataSource.getResponseHeaders()));     // Catch: Throwable -> L37
            DataReader r8 = this.dataSource;     // Catch: Throwable -> L37
            if (ProgressiveMediaPeriod.access$700(this.this$0) != null) goto L13;
        L15:
            ProgressiveMediaExtractor r9 = this.progressiveMediaExtractor;     // Catch: Throwable -> L37
            long r4 = r13;
            r9.init(r8, this.uri, this.dataSource.getResponseHeaders(), r13, this.length, this.extractorOutput);     // Catch: Throwable -> L37
            if (ProgressiveMediaPeriod.access$700(this.this$0) == null) goto L19;
            this.progressiveMediaExtractor.disableSeekingOnMp3Streams();     // Catch: Throwable -> L37
        L19:
            if (this.pendingExtractorSeek == false) goto L21;
            this.progressiveMediaExtractor.seek(r4, this.seekTimeUs);     // Catch: Throwable -> L37
            this.pendingExtractorSeek = false;     // Catch: Throwable -> L37
        L21:
            long r14 = r4;
        L22:
            if (r2 != 0) goto L31;
            if (this.loadCanceled == true) goto L31;
            this.loadCondition.block();     // Catch: InterruptedException -> L29 Throwable -> L37
            r2 = this.progressiveMediaExtractor.read(this.positionHolder);     // Catch: Throwable -> L37
            r4 = this.progressiveMediaExtractor.getCurrentInputPosition();     // Catch: Throwable -> L37
            if (r4 <= (ProgressiveMediaPeriod.access$900(this.this$0) + r14)) goto L22;
            this.loadCondition.close();     // Catch: Throwable -> L37
            ProgressiveMediaPeriod.access$1100(this.this$0).post(ProgressiveMediaPeriod.access$1000(this.this$0));     // Catch: Throwable -> L37
            goto L21
        L30:
            throw new InterruptedIOException();     // Catch: Throwable -> L37
        L31:
            if (r2 != 1) goto L34;
            r2 = 0;
        L36:
            Util.closeQuietly(this.dataSource);
            goto L3
        L34:
            if (this.progressiveMediaExtractor.getCurrentInputPosition() == (-1)) goto L36;
            PositionHolder r3 = this.positionHolder;
            r3.position = this.progressiveMediaExtractor.getCurrentInputPosition();
            goto L36
        L13:
            if (ProgressiveMediaPeriod.access$700(this.this$0).metadataInterval == (-1)) goto L15;
            r8 = new IcyDataSource(this.dataSource, ProgressiveMediaPeriod.access$700(this.this$0).metadataInterval, this);     // Catch: Throwable -> L37
            TrackOutput r10 = this.this$0.icyTrack();     // Catch: Throwable -> L37
            this.icyTrackOutput = r10;     // Catch: Throwable -> L37
            r10.format(ProgressiveMediaPeriod.access$800());     // Catch: Throwable -> L37
        L37:
            th = move-exception;
            if (r2 != 1) goto L40;
        L42:
            Util.closeQuietly(this.dataSource);
            throw th;
        L40:
            if (this.progressiveMediaExtractor.getCurrentInputPosition() == (-1)) goto L42;
            PositionHolder r5 = this.positionHolder;
            r5.position = this.progressiveMediaExtractor.getCurrentInputPosition();
            goto L42
        L59:
            return;
        }

        @Override // com.google.android.exoplayer2.source.IcyDataSource.Listener
        public void onIcyMetadata(ParsableByteArray r10) {
            if (this.seenIcyMetadata == true) goto L5;
            long r0 = this.seekTimeUs;
        L6:
            long r3 = r0;
            int r6 = r10.bytesLeft();
            TrackOutput r2 = (TrackOutput) Assertions.checkNotNull(this.icyTrackOutput);
            r2.sampleData(r10, r6);
            r2.sampleMetadata(r3, 1, r6, 0, null);
            this.seenIcyMetadata = true;
            return;
        L5:
            r0 = Math.max(ProgressiveMediaPeriod.access$1200(this.this$0), this.seekTimeUs);
            goto L6
        }
    }

    interface Listener {
        void onSourceInfoRefreshed(long r1, boolean r3, boolean r4);
    }

    private final class SampleStreamImpl implements SampleStream {
        final /* synthetic */ ProgressiveMediaPeriod this$0;
        private final int track;

        public SampleStreamImpl(ProgressiveMediaPeriod r1, int r2) {
            this.this$0 = r1;
            this.track = r2;
        }

        static /* synthetic */ int access$000(SampleStreamImpl r0) {
            return r0.track;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return this.this$0.isReady(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.this$0.maybeThrowError(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder r3, DecoderInputBuffer r4, int r5) {
            return this.this$0.readData(this.track, r3, r4, r5);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long r3) {
            return this.this$0.skipData(this.track, r3);
        }
    }

    private static final class TrackId {
        public final int id;
        public final boolean isIcyTrack;

        public TrackId(int r1, boolean r2) {
            this.id = r1;
            this.isIcyTrack = r2;
        }

        public boolean equals(Object r5) {
            if (this != r5) goto L6;
            return true;
        L6:
            if (r5 != null) goto L8;
        L17:
            return false;
        L8:
            if (TrackId.class != r5.getClass()) goto L17;
            TrackId r6 = (TrackId) r5;
            if (this.id == r6.id) goto L13;
        L15:
            return false;
        L13:
            if (this.isIcyTrack != r6.isIcyTrack) goto L15;
            return true;
        }

        public int hashCode() {
            return (this.id * 31) + (this.isIcyTrack ? 1 : 0);
        }
    }

    private static final class TrackState {
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final TrackGroupArray tracks;

        public TrackState(TrackGroupArray r1, boolean[] r2) {
            this.tracks = r1;
            this.trackIsAudioVideoFlags = r2;
            int r3 = r1.length;
            this.trackEnabledStates = new boolean[r3];
            this.trackNotifiedDownstreamFormats = new boolean[r3];
        }
    }

    static {
        ICY_METADATA_HEADERS = createIcyMetadataHeaders();
        ICY_FORMAT = new Format.Builder().setId("icy").setSampleMimeType(MimeTypes.APPLICATION_ICY).build();
    }

    public ProgressiveMediaPeriod(Uri r1, DataSource r2, ProgressiveMediaExtractor r3, DrmSessionManager r4, DrmSessionEventListener.EventDispatcher r5, LoadErrorHandlingPolicy r6, MediaSourceEventListener.EventDispatcher r7, Listener r8, Allocator r9, String r10, int r11) {
        this.uri = r1;
        this.dataSource = r2;
        this.drmSessionManager = r4;
        this.drmEventDispatcher = r5;
        this.loadErrorHandlingPolicy = r6;
        this.mediaSourceEventDispatcher = r7;
        this.listener = r8;
        this.allocator = r9;
        this.customCacheKey = r10;
        this.continueLoadingCheckIntervalBytes = r11;
        this.loader = new Loader("ProgressiveMediaPeriod");
        this.progressiveMediaExtractor = r3;
        this.loadCondition = new ConditionVariable();
        this.maybeFinishPrepareRunnable = new j(this);
        this.onContinueLoadingRequestedRunnable = new l(this);
        this.handler = Util.createHandlerForCurrentLooper();
        this.sampleQueueTrackIds = new TrackId[0];
        this.sampleQueues = new SampleQueue[0];
        this.pendingResetPositionUs = C.TIME_UNSET;
        this.length = -1;
        this.durationUs = C.TIME_UNSET;
        this.dataType = 1;
    }

    public static /* synthetic */ void a(ProgressiveMediaPeriod r0) {
        r0.maybeFinishPrepare();
    }

    static /* synthetic */ Runnable access$1000(ProgressiveMediaPeriod r0) {
        return r0.onContinueLoadingRequestedRunnable;
    }

    static /* synthetic */ Handler access$1100(ProgressiveMediaPeriod r0) {
        return r0.handler;
    }

    static /* synthetic */ long access$1200(ProgressiveMediaPeriod r2) {
        return r2.getLargestQueuedTimestampUs();
    }

    static /* synthetic */ Map access$1300() {
        return ICY_METADATA_HEADERS;
    }

    static /* synthetic */ String access$1400(ProgressiveMediaPeriod r0) {
        return r0.customCacheKey;
    }

    static /* synthetic */ IcyHeaders access$700(ProgressiveMediaPeriod r0) {
        return r0.icyHeaders;
    }

    static /* synthetic */ IcyHeaders access$702(ProgressiveMediaPeriod r0, IcyHeaders r1) {
        r0.icyHeaders = r1;
        return r1;
    }

    static /* synthetic */ Format access$800() {
        return ICY_FORMAT;
    }

    static /* synthetic */ long access$900(ProgressiveMediaPeriod r2) {
        return r2.continueLoadingCheckIntervalBytes;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private void assertPrepared() {
        Assertions.checkState(this.prepared);
        Assertions.checkNotNull(this.trackState);
        Assertions.checkNotNull(this.seekMap);
    }

    private /* synthetic */ void b() {
        if (this.released == true) goto L6;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        return;
    }

    private boolean configureRetry(ExtractingLoadable r7, int r8) {
        if (this.length != (-1)) goto L20;
        SeekMap r0 = this.seekMap;
        if (r0 != null) goto L7;
    L9:
        int r1 = 0;
        if (this.prepared == true) goto L12;
    L15:
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0;
        this.extractedSamplesCountAtStartOfLoad = 0;
        SampleQueue[] r9 = this.sampleQueues;
        int r2 = r9.length;
    L16:
        if (r1 >= r2) goto L18;
        r9[r1].reset();
        r1 = r1 + 1;
        goto L16
    L18:
        ExtractingLoadable.access$600(r7, 0, 0);
        return true;
    L12:
        if (suppressRead() == true) goto L15;
        this.pendingDeferredRetry = true;
        return false;
    L7:
        if (r0.getDurationUs() == C.TIME_UNSET) goto L9;
    L20:
        this.extractedSamplesCountAtStartOfLoad = r8;
        return true;
    }

    private void copyLengthFromLoader(ExtractingLoadable r6) {
        if (this.length != (-1)) goto L6;
        this.length = ExtractingLoadable.access$500(r6);
        return;
    }

    private static Map<String, String> createIcyMetadataHeaders() {
        HashMap r0 = new HashMap();
        r0.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(r0);
    }

    private /* synthetic */ void d(SeekMap r1) {
        setSeekMap(r1);
    }

    private int getExtractedSamplesCount() {
        SampleQueue[] r0 = this.sampleQueues;
        int r1 = r0.length;
        int r2 = 0;
        int r3 = 0;
    L3:
        if (r2 >= r1) goto L5;
        r3 = r3 + r0[r2].getWriteIndex();
        r2 = r2 + 1;
        goto L3
    L5:
        return r3;
    }

    private long getLargestQueuedTimestampUs() {
        SampleQueue[] r0 = this.sampleQueues;
        int r1 = r0.length;
        long r2 = Long.MIN_VALUE;
        int r4 = 0;
    L3:
        if (r4 >= r1) goto L5;
        r2 = Math.max(r2, r0[r4].getLargestQueuedTimestampUs());
        r4 = r4 + 1;
        goto L3
    L5:
        return r2;
    }

    private boolean isPendingReset() {
        if (this.pendingResetPositionUs == C.TIME_UNSET) goto L5;
        return true;
    L5:
        return false;
    }

    private void maybeFinishPrepare() {
        if (this.released == false) goto L5;
        return;
    L5:
        if (this.prepared == false) goto L7;
        return;
    L7:
        if (this.sampleQueuesBuilt == true) goto L9;
        return;
    L9:
        if (this.seekMap == null) goto L60;
        SampleQueue[] r0 = this.sampleQueues;
        int r1 = r0.length;
        int r3 = 0;
    L12:
        if (r3 >= r1) goto L17;
        if (r0[r3].getUpstreamFormat() == null) goto L15;
        r3 = r3 + 1;
        goto L12
    L15:
        return;
    L17:
        this.loadCondition.close();
        int r2 = this.sampleQueues.length;
        TrackGroup[] r4 = new TrackGroup[r2];
        boolean[] r5 = new boolean[r2];
        int r6 = 0;
    L19:
        if (r6 >= r2) goto L46;
        Format r7 = (Format) Assertions.checkNotNull(this.sampleQueues[r6].getUpstreamFormat());
        String r8 = r7.sampleMimeType;
        boolean r9 = MimeTypes.isAudio(r8);
        if (r9 == false) goto L23;
    L26:
        boolean r10 = true;
    L27:
        r5[r6] = r10;
        this.haveAudioVideoTracks = r10 | this.haveAudioVideoTracks;
        IcyHeaders r11 = this.icyHeaders;
        if (r11 == null) goto L45;
        if (r9 == false) goto L31;
    L32:
        Metadata r12 = r7.metadata;
        if (r12 != null) goto L35;
        Metadata r13 = new Metadata(new Metadata.Entry[]{r11});
    L36:
        r7 = r7.buildUpon().setMetadata(r13).build();
    L37:
        if (r9 == false) goto L45;
        if (r7.averageBitrate != (-1)) goto L45;
        if (r7.peakBitrate != (-1)) goto L45;
        if (r11.bitrate == (-1)) goto L45;
        r7 = r7.buildUpon().setAverageBitrate(r11.bitrate).build();
        goto L45
    L35:
        r13 = r12.copyWithAppendedEntries(new Metadata.Entry[]{r11});
        goto L36
    L31:
        if (this.sampleQueueTrackIds[r6].isIcyTrack == false) goto L37;
    L45:
        r4[r6] = new TrackGroup(new Format[]{r7.copyWithExoMediaCryptoType(this.drmSessionManager.getExoMediaCryptoType(r7))});
        r6 = r6 + 1;
        goto L19
    L23:
        if (MimeTypes.isVideo(r8) == true) goto L26;
        r10 = false;
        goto L27
    L46:
        this.trackState = new TrackState(new TrackGroupArray(r4), r5);
        this.prepared = true;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
        return;
    }

    private void maybeNotifyDownstreamFormat(int r11) {
        assertPrepared();
        TrackState r0 = this.trackState;
        boolean[] r1 = r0.trackNotifiedDownstreamFormats;
        if (r1[r11] == true) goto L6;
        Format r5 = r0.tracks.get(r11).getFormat(0);
        this.mediaSourceEventDispatcher.downstreamFormatChanged(MimeTypes.getTrackType(r5.sampleMimeType), r5, 0, null, this.lastSeekPositionUs);
        r1[r11] = true;
        return;
    }

    private void maybeStartDeferredRetry(int r4) {
        assertPrepared();
        boolean[] r0 = this.trackState.trackIsAudioVideoFlags;
        if (this.pendingDeferredRetry == true) goto L5;
        return;
    L5:
        if (r0[r4] == false) goto L16;
        SampleQueue r5 = this.sampleQueues[r4];
        int r1 = 0;
        if (r5.isReady(false) == true) goto L17;
        this.pendingResetPositionUs = 0;
        this.pendingDeferredRetry = false;
        this.notifyDiscontinuity = true;
        this.lastSeekPositionUs = 0;
        this.extractedSamplesCountAtStartOfLoad = 0;
        SampleQueue[] r6 = this.sampleQueues;
        int r2 = r6.length;
    L10:
        if (r1 >= r2) goto L12;
        r6[r1].reset();
        r1 = r1 + 1;
        goto L10
    L12:
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        return;
    L17:
        return;
    }

    private TrackOutput prepareTrackOutput(TrackId r6) {
        int r0 = this.sampleQueues.length;
        int r1 = 0;
    L3:
        if (r1 >= r0) goto L9;
        if (r6.equals(this.sampleQueueTrackIds[r1]) == true) goto L7;
        r1 = r1 + 1;
        goto L3
    L7:
        return this.sampleQueues[r1];
    L9:
        SampleQueue r2 = SampleQueue.createWithDrm(this.allocator, this.handler.getLooper(), this.drmSessionManager, this.drmEventDispatcher);
        r2.setUpstreamFormatChangeListener(this);
        int r3 = r0 + 1;
        TrackId[] r4 = (TrackId[]) Arrays.copyOf(this.sampleQueueTrackIds, r3);
        r4[r0] = r6;
        this.sampleQueueTrackIds = (TrackId[]) Util.castNonNullTypeArray(r4);
        SampleQueue[] r7 = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, r3);
        r7[r0] = r2;
        this.sampleQueues = (SampleQueue[]) Util.castNonNullTypeArray(r7);
        return r2;
    }

    private boolean seekInsideBufferUs(boolean[] r5, long r6) {
        int r0 = this.sampleQueues.length;
        int r2 = 0;
    L3:
        if (r2 >= r0) goto L12;
        if (this.sampleQueues[r2].seekTo(r6, false) == true) goto L11;
        if (r5[r2] == true) goto L10;
        if (this.haveAudioVideoTracks == true) goto L11;
    L10:
        return false;
    L11:
        r2 = r2 + 1;
        goto L3
    L12:
        return true;
    }

    private void setSeekMap(SeekMap r9) {
        if (this.icyHeaders != null) goto L5;
        SeekMap r0 = r9;
    L6:
        this.seekMap = r0;
        this.durationUs = r9.getDurationUs();
        int r1 = 1;
        if (this.length == (-1)) goto L9;
    L11:
        boolean r2 = false;
    L12:
        this.isLive = r2;
        if (r2 == false) goto L15;
        r1 = 7;
    L15:
        this.dataType = r1;
        this.listener.onSourceInfoRefreshed(this.durationUs, r9.isSeekable(), this.isLive);
        if (this.prepared == true) goto L19;
        maybeFinishPrepare();
        return;
    L19:
        return;
    L9:
        if (r9.getDurationUs() != C.TIME_UNSET) goto L11;
        r2 = true;
        goto L12
    L5:
        r0 = new SeekMap.Unseekable(C.TIME_UNSET);
        goto L6
    }

    private void startLoading() {
        ExtractingLoadable r8 = new ExtractingLoadable(this, this.uri, this.dataSource, this.progressiveMediaExtractor, this, this.loadCondition);
        if (this.prepared == false) goto L14;
        Assertions.checkState(isPendingReset());
        long r0 = this.durationUs;
        if (r0 != C.TIME_UNSET) goto L7;
    L10:
        ExtractingLoadable.access$600(r8, ((SeekMap) Assertions.checkNotNull(this.seekMap)).getSeekPoints(this.pendingResetPositionUs).first.position, this.pendingResetPositionUs);
        SampleQueue[] r1 = this.sampleQueues;
        int r2 = r1.length;
        int r4 = 0;
    L11:
        if (r4 >= r2) goto L13;
        r1[r4].setStartTimeUs(this.pendingResetPositionUs);
        r4 = r4 + 1;
        goto L11
    L13:
        this.pendingResetPositionUs = C.TIME_UNSET;
        goto L14
    L7:
        if (this.pendingResetPositionUs <= r0) goto L10;
        this.loadingFinished = true;
        this.pendingResetPositionUs = C.TIME_UNSET;
        return;
    L14:
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        long r13 = this.loader.startLoading(r8, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
        DataSpec r12 = ExtractingLoadable.access$300(r8);
        this.mediaSourceEventDispatcher.loadStarted(new LoadEventInfo(ExtractingLoadable.access$200(r8), r12, r13), 1, -1, null, 0, null, ExtractingLoadable.access$400(r8), this.durationUs);
    }

    private boolean suppressRead() {
        if (this.notifyDiscontinuity == false) goto L5;
    L8:
        return true;
    L5:
        if (isPendingReset() == true) goto L8;
        return false;
    }

    public /* synthetic */ void c() {
        b();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long r1) {
        if (this.loadingFinished == false) goto L5;
        return false;
    L5:
        if (this.loader.hasFatalError() == false) goto L7;
        return false;
    L7:
        if (this.pendingDeferredRetry == false) goto L9;
        return false;
    L9:
        if (this.prepared == true) goto L11;
    L13:
        boolean r2 = this.loadCondition.open();
        if (this.loader.isLoading() == true) goto L19;
        startLoading();
        return true;
    L19:
        return r2;
    L11:
        if (this.enabledTrackCount != 0) goto L13;
        return false;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long r6, boolean r8) {
        assertPrepared();
        if (isPendingReset() == false) goto L5;
        return;
    L5:
        boolean[] r0 = this.trackState.trackEnabledStates;
        int r1 = this.sampleQueues.length;
        int r2 = 0;
    L6:
        if (r2 >= r1) goto L8;
        this.sampleQueues[r2].discardTo(r6, r8, r0[r2]);
        r2 = r2 + 1;
        goto L6
    }

    public /* synthetic */ void e(SeekMap r1) {
        d(r1);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long r10, SeekParameters r12) {
        assertPrepared();
        if (this.seekMap.isSeekable() == true) goto L6;
        return 0;
    L6:
        SeekMap.SeekPoints r0 = this.seekMap.getSeekPoints(r10);
        return r12.resolveSeekPositionUs(r10, r0.first.timeUs, r0.second.timeUs);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        assertPrepared();
        boolean[] r0 = this.trackState.trackIsAudioVideoFlags;
        if (this.loadingFinished == false) goto L6;
        return Long.MIN_VALUE;
    L6:
        if (isPendingReset() == false) goto L10;
        return this.pendingResetPositionUs;
    L10:
        if (this.haveAudioVideoTracks == false) goto L19;
        int r1 = this.sampleQueues.length;
        int r6 = 0;
        long r7 = Long.MAX_VALUE;
    L12:
        if (r6 >= r1) goto L21;
        if (r0[r6] == false) goto L18;
        if (this.sampleQueues[r6].isLastSampleQueued() == true) goto L18;
        r7 = Math.min(r7, this.sampleQueues[r6].getLargestQueuedTimestampUs());
    L18:
        r6 = r6 + 1;
    L21:
        if (r7 != Long.MAX_VALUE) goto L24;
        r7 = getLargestQueuedTimestampUs();
    L24:
        if (r7 == Long.MIN_VALUE) goto L26;
        return r7;
    L26:
        return this.lastSeekPositionUs;
    L19:
        r7 = Long.MAX_VALUE;
        goto L21
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (this.enabledTrackCount != 0) goto L6;
        return Long.MIN_VALUE;
    L6:
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public /* synthetic */ List getStreamKeys(List r1) {
        return r.$default$getStreamKeys(this, r1);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        assertPrepared();
        return this.trackState.tracks;
    }

    TrackOutput icyTrack() {
        return prepareTrackOutput(new TrackId(0, true));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        if (this.loader.isLoading() == true) goto L5;
    L7:
        return false;
    L5:
        if (this.loadCondition.isOpen() == false) goto L7;
        return true;
    }

    boolean isReady(int r2) {
        if (suppressRead() == false) goto L5;
    L7:
        return false;
    L5:
        if (this.sampleQueues[r2].isReady(this.loadingFinished) == false) goto L7;
        return true;
    }

    void maybeThrowError(int r2) throws IOException {
        this.sampleQueues[r2].maybeThrowError();
        maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
        if (this.loadingFinished == true) goto L5;
        return;
    L5:
        if (this.prepared == false) goto L8;
        return;
    L8:
        throw new ParserException("Loading finished before preparation is complete.");
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public /* bridge */ /* synthetic */ void onLoadCanceled(Loader.Loadable r1, long r2, long r4, boolean r6) {
        onLoadCanceled((ExtractingLoadable) r1, r2, r4, r6);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public /* bridge */ /* synthetic */ void onLoadCompleted(Loader.Loadable r1, long r2, long r4) {
        onLoadCompleted((ExtractingLoadable) r1, r2, r4);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public /* bridge */ /* synthetic */ Loader.LoadErrorAction onLoadError(Loader.Loadable r1, long r2, long r4, IOException r6, int r7) {
        return onLoadError((ExtractingLoadable) r1, r2, r4, r6, r7);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        SampleQueue[] r0 = this.sampleQueues;
        int r1 = r0.length;
        int r2 = 0;
    L3:
        if (r2 >= r1) goto L5;
        r0[r2].release();
        r2 = r2 + 1;
        goto L3
    L5:
        this.progressiveMediaExtractor.release();
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format r2) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback r1, long r2) {
        this.callback = r1;
        this.loadCondition.open();
        startLoading();
    }

    int readData(int r4, FormatHolder r5, DecoderInputBuffer r6, int r7) {
        if (suppressRead() == false) goto L5;
        return -3;
    L5:
        maybeNotifyDownstreamFormat(r4);
        int r8 = this.sampleQueues[r4].read(r5, r6, r7, this.loadingFinished);
        if (r8 != (-3)) goto L8;
        maybeStartDeferredRetry(r4);
    L8:
        return r8;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (this.notifyDiscontinuity == true) goto L5;
        return C.TIME_UNSET;
    L5:
        if (this.loadingFinished == false) goto L7;
    L8:
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    L7:
        if (getExtractedSamplesCount() > this.extractedSamplesCountAtStartOfLoad) goto L8;
        return C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long r1) {
    }

    public void release() {
        if (this.prepared == false) goto L7;
        SampleQueue[] r0 = this.sampleQueues;
        int r1 = r0.length;
        int r2 = 0;
    L5:
        if (r2 >= r1) goto L7;
        r0[r2].preRelease();
        r2 = r2 + 1;
    L7:
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(final SeekMap r3) {
        this.handler.post(new k(this, r3));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long r5) {
        assertPrepared();
        boolean[] r0 = this.trackState.trackIsAudioVideoFlags;
        if (this.seekMap.isSeekable() == true) goto L6;
        r5 = 0;
    L6:
        int r1 = 0;
        this.notifyDiscontinuity = false;
        this.lastSeekPositionUs = r5;
        if (isPendingReset() == false) goto L11;
        this.pendingResetPositionUs = r5;
        return r5;
    L11:
        if (this.dataType != 7) goto L13;
    L15:
        this.pendingDeferredRetry = false;
        this.pendingResetPositionUs = r5;
        this.loadingFinished = false;
        if (this.loader.isLoading() == false) goto L21;
        SampleQueue[] r2 = this.sampleQueues;
        int r3 = r2.length;
    L18:
        if (r1 >= r3) goto L20;
        r2[r1].discardToEnd();
        r1 = r1 + 1;
        goto L18
    L20:
        this.loader.cancelLoading();
    L24:
        return r5;
    L21:
        this.loader.clearFatalError();
        SampleQueue[] r4 = this.sampleQueues;
        int r6 = r4.length;
    L22:
        if (r1 >= r6) goto L24;
        r4[r1].reset();
        r1 = r1 + 1;
        goto L22
    L13:
        if (seekInsideBufferUs(r0, r5) == false) goto L15;
        return r5;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] r9, boolean[] r10, SampleStream[] r11, boolean[] r12, long r13) {
        assertPrepared();
        TrackState r0 = this.trackState;
        TrackGroupArray r1 = r0.tracks;
        boolean[] r2 = r0.trackEnabledStates;
        int r3 = this.enabledTrackCount;
        int r4 = 0;
        int r5 = 0;
    L4:
        if (r5 >= r9.length) goto L14;
        if (r11[r5] == null) goto L12;
        if (r9[r5] != null) goto L10;
    L11:
        int r6 = SampleStreamImpl.access$000((SampleStreamImpl) r11[r5]);
        Assertions.checkState(r2[r6]);
        this.enabledTrackCount--;
        r2[r6] = false;
        r11[r5] = null;
        goto L12
    L10:
        if (r10[r5] == false) goto L11;
    L12:
        r5 = r5 + 1;
        goto L4
    L14:
        if (this.seenFirstTrackSelection == false) goto L18;
        if (r3 == 0) goto L19;
    L20:
        boolean r14 = false;
    L21:
        int r7 = 0;
    L23:
        if (r7 >= r9.length) goto L46;
        if (r11[r7] != null) goto L44;
        if (r9[r7] == null) goto L44;
        ExoTrackSelection r8 = r9[r7];
        if (r8.length() != 1) goto L31;
        boolean r15 = true;
    L32:
        Assertions.checkState(r15);
        if (r8.getIndexInTrackGroup(0) != 0) goto L35;
        boolean r16 = true;
    L36:
        Assertions.checkState(r16);
        int r17 = r1.indexOf(r8.getTrackGroup());
        Assertions.checkState(!r2[r17]);
        this.enabledTrackCount++;
        r2[r17] = true;
        r11[r7] = new SampleStreamImpl(this, r17);
        r12[r7] = true;
        if (r14 == true) goto L44;
        SampleQueue r18 = this.sampleQueues[r17];
        if (r18.seekTo(r13, true) == false) goto L41;
    L43:
        r14 = false;
        goto L44
    L41:
        if (r18.getReadIndex() == 0) goto L43;
        r14 = true;
        goto L44
    L35:
        r16 = false;
        goto L36
    L31:
        r15 = false;
    L44:
        r7 = r7 + 1;
        goto L23
    L46:
        if (this.enabledTrackCount != 0) goto L56;
        this.pendingDeferredRetry = false;
        this.notifyDiscontinuity = false;
        if (this.loader.isLoading() == false) goto L53;
        SampleQueue[] r19 = this.sampleQueues;
        int r110 = r19.length;
    L50:
        if (r4 >= r110) goto L52;
        r19[r4].discardToEnd();
        r4 = r4 + 1;
        goto L50
    L52:
        this.loader.cancelLoading();
    L64:
        this.seenFirstTrackSelection = true;
        return r13;
    L53:
        SampleQueue[] r20 = this.sampleQueues;
        int r111 = r20.length;
    L54:
        if (r4 >= r111) goto L64;
        r20[r4].reset();
        r4 = r4 + 1;
        goto L54
    L56:
        if (r14 == false) goto L64;
        r13 = seekToUs(r13);
    L59:
        if (r4 >= r11.length) goto L64;
        if (r11[r4] == null) goto L63;
        r12[r4] = true;
    L63:
        r4 = r4 + 1;
    L19:
        r14 = true;
        goto L21
    L18:
        if (r13 == 0) goto L20;
        goto L19
    }

    int skipData(int r3, long r4) {
        if (suppressRead() == false) goto L6;
        return 0;
    L6:
        maybeNotifyDownstreamFormat(r3);
        SampleQueue r0 = this.sampleQueues[r3];
        int r5 = r0.getSkipCount(r4, this.loadingFinished);
        r0.skip(r5);
        if (r5 != 0) goto L9;
        maybeStartDeferredRetry(r3);
    L9:
        return r5;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int r2, int r3) {
        return prepareTrackOutput(new TrackId(r2, false));
    }

    public void onLoadCanceled(ExtractingLoadable r16, long r17, long r19, boolean r21) {
        StatsDataSource r1 = ExtractingLoadable.access$100(r16);
        LoadEventInfo r14 = new LoadEventInfo(ExtractingLoadable.access$200(r16), ExtractingLoadable.access$300(r16), r1.getLastOpenedUri(), r1.getLastResponseHeaders(), r17, r19, r1.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(ExtractingLoadable.access$200(r16));
        this.mediaSourceEventDispatcher.loadCanceled(r14, 1, -1, null, 0, null, ExtractingLoadable.access$400(r16), this.durationUs);
        if (r21 == true) goto L12;
        copyLengthFromLoader(r16);
        SampleQueue[] r2 = this.sampleQueues;
        int r3 = r2.length;
        int r4 = 0;
    L5:
        if (r4 >= r3) goto L8;
        r2[r4].reset();
        r4 = r4 + 1;
        goto L5
    L8:
        if (this.enabledTrackCount <= 0) goto L13;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        return;
    L13:
        return;
    }

    public void onLoadCompleted(ExtractingLoadable r16, long r17, long r19) {
        if (this.durationUs != C.TIME_UNSET) goto L11;
        SeekMap r1 = this.seekMap;
        if (r1 == null) goto L11;
        boolean r2 = r1.isSeekable();
        long r3 = getLargestQueuedTimestampUs();
        if (r3 != Long.MIN_VALUE) goto L9;
        long r4 = 0;
    L10:
        this.durationUs = r4;
        this.listener.onSourceInfoRefreshed(r4, r2, this.isLive);
        goto L11
    L9:
        r4 = r3 + DEFAULT_LAST_SAMPLE_DURATION_US;
    L11:
        StatsDataSource r5 = ExtractingLoadable.access$100(r16);
        LoadEventInfo r14 = new LoadEventInfo(ExtractingLoadable.access$200(r16), ExtractingLoadable.access$300(r16), r5.getLastOpenedUri(), r5.getLastResponseHeaders(), r17, r19, r5.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(ExtractingLoadable.access$200(r16));
        this.mediaSourceEventDispatcher.loadCompleted(r14, 1, -1, null, 0, null, ExtractingLoadable.access$400(r16), this.durationUs);
        copyLengthFromLoader(r16);
        this.loadingFinished = true;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    public Loader.LoadErrorAction onLoadError(ExtractingLoadable r26, long r27, long r29, IOException r31, int r32) {
        copyLengthFromLoader(r26);
        StatsDataSource r1 = ExtractingLoadable.access$100(r26);
        LoadEventInfo r14 = new LoadEventInfo(ExtractingLoadable.access$200(r26), ExtractingLoadable.access$300(r26), r1.getLastOpenedUri(), r1.getLastResponseHeaders(), r27, r29, r1.getBytesRead());
        long r2 = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(r14, new MediaLoadData(1, -1, null, 0, null, C.usToMs(ExtractingLoadable.access$400(r26)), C.usToMs(this.durationUs)), r31, r32));
        if (r2 != C.TIME_UNSET) goto L5;
        Loader.LoadErrorAction r3 = Loader.DONT_RETRY_FATAL;
    L13:
        boolean r16 = !r3.isRetry();
        this.mediaSourceEventDispatcher.loadError(r14, 1, -1, null, 0, null, ExtractingLoadable.access$400(r26), this.durationUs, r31, r16);
        if (r16 == false) goto L16;
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(ExtractingLoadable.access$200(r26));
    L16:
        return r3;
    L5:
        int r4 = getExtractedSamplesCount();
        if (r4 <= this.extractedSamplesCountAtStartOfLoad) goto L8;
        boolean r5 = true;
    L10:
        if (configureRetry(r26, r4) == false) goto L12;
        r3 = Loader.createRetryAction(r5, r2);
        goto L13
    L12:
        r3 = Loader.DONT_RETRY;
        goto L13
    L8:
        r5 = false;
        goto L10
    }

    void maybeThrowError() throws IOException {
        this.loader.maybeThrowError(this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }
}

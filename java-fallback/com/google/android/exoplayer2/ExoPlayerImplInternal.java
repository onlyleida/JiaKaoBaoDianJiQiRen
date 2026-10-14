package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.TextRenderer;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender {
    private static final int ACTIVE_INTERVAL_MS = 10;
    private static final int IDLE_INTERVAL_MS = 1000;
    private static final long MIN_RENDERER_SLEEP_DURATION_MS = 2000;
    private static final int MSG_ADD_MEDIA_SOURCES = 18;
    private static final int MSG_ATTEMPT_RENDERER_ERROR_RECOVERY = 25;
    private static final int MSG_DO_SOME_WORK = 2;
    private static final int MSG_MOVE_MEDIA_SOURCES = 19;
    private static final int MSG_PERIOD_PREPARED = 8;
    private static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 16;
    private static final int MSG_PLAYLIST_UPDATE_REQUESTED = 22;
    private static final int MSG_PREPARE = 0;
    private static final int MSG_RELEASE = 7;
    private static final int MSG_REMOVE_MEDIA_SOURCES = 20;
    private static final int MSG_SEEK_TO = 3;
    private static final int MSG_SEND_MESSAGE = 14;
    private static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    private static final int MSG_SET_FOREGROUND_MODE = 13;
    private static final int MSG_SET_MEDIA_SOURCES = 17;
    private static final int MSG_SET_OFFLOAD_SCHEDULING_ENABLED = 24;
    private static final int MSG_SET_PAUSE_AT_END_OF_WINDOW = 23;
    private static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    private static final int MSG_SET_PLAY_WHEN_READY = 1;
    private static final int MSG_SET_REPEAT_MODE = 11;
    private static final int MSG_SET_SEEK_PARAMETERS = 5;
    private static final int MSG_SET_SHUFFLE_ENABLED = 12;
    private static final int MSG_SET_SHUFFLE_ORDER = 21;
    private static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 9;
    private static final int MSG_STOP = 6;
    private static final int MSG_TRACK_SELECTION_INVALIDATED = 10;
    private static final String TAG = "ExoPlayerImplInternal";
    private final long backBufferDurationUs;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    private boolean deliverPendingMessageAtStartPositionRequired;
    private final TrackSelectorResult emptyTrackSelectorResult;
    private int enabledRendererCount;
    private boolean foregroundMode;
    private final HandlerWrapper handler;
    private final HandlerThread internalPlaybackThread;
    private boolean isRebuffering;
    private final LivePlaybackSpeedControl livePlaybackSpeedControl;
    private final LoadControl loadControl;
    private final DefaultMediaClock mediaClock;
    private final MediaSourceList mediaSourceList;
    private int nextPendingMessageIndexHint;
    private boolean offloadSchedulingEnabled;
    private boolean pauseAtEndOfWindow;
    private SeekPosition pendingInitialSeekPosition;
    private final ArrayList<PendingMessageInfo> pendingMessages;
    private boolean pendingPauseAtEndOfPeriod;
    private ExoPlaybackException pendingRecoverableRendererError;
    private final Timeline.Period period;
    private PlaybackInfo playbackInfo;
    private PlaybackInfoUpdate playbackInfoUpdate;
    private final PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private final Looper playbackLooper;
    private final MediaPeriodQueue queue;
    private final long releaseTimeoutMs;
    private boolean released;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionUs;
    private final Renderer[] renderers;
    private int repeatMode;
    private boolean requestForRendererSleep;
    private final boolean retainBackBufferFromKeyframe;
    private SeekParameters seekParameters;
    private long setForegroundModeTimeoutMs;
    private boolean shouldContinueLoading;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;

    private static final class MediaSourceListUpdateMessage {
        private final List<MediaSourceList.MediaSourceHolder> mediaSourceHolders;
        private final long positionUs;
        private final ShuffleOrder shuffleOrder;
        private final int windowIndex;

        /* synthetic */ MediaSourceListUpdateMessage(List r1, ShuffleOrder r2, int r3, long r4, AnonymousClass1 r6) {
            this(r1, r2, r3, r4);
        }

        static /* synthetic */ int access$200(MediaSourceListUpdateMessage r0) {
            return r0.windowIndex;
        }

        static /* synthetic */ List access$300(MediaSourceListUpdateMessage r0) {
            return r0.mediaSourceHolders;
        }

        static /* synthetic */ ShuffleOrder access$400(MediaSourceListUpdateMessage r0) {
            return r0.shuffleOrder;
        }

        static /* synthetic */ long access$500(MediaSourceListUpdateMessage r2) {
            return r2.positionUs;
        }

        private MediaSourceListUpdateMessage(List<MediaSourceList.MediaSourceHolder> r1, ShuffleOrder r2, int r3, long r4) {
            this.mediaSourceHolders = r1;
            this.shuffleOrder = r2;
            this.windowIndex = r3;
            this.positionUs = r4;
        }
    }

    private static class MoveMediaItemsMessage {
        public final int fromIndex;
        public final int newFromIndex;
        public final ShuffleOrder shuffleOrder;
        public final int toIndex;

        public MoveMediaItemsMessage(int r1, int r2, int r3, ShuffleOrder r4) {
            this.fromIndex = r1;
            this.toIndex = r2;
            this.newFromIndex = r3;
            this.shuffleOrder = r4;
        }
    }

    private static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;
        public Object resolvedPeriodUid;

        public PendingMessageInfo(PlayerMessage r1) {
            this.message = r1;
        }

        @Override // java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(PendingMessageInfo r1) {
            return compareTo2(r1);
        }

        public void setResolvedPosition(int r1, long r2, Object r4) {
            this.resolvedPeriodIndex = r1;
            this.resolvedPeriodTimeUs = r2;
            this.resolvedPeriodUid = r4;
        }

        /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
        public int compareTo2(PendingMessageInfo r6) {
            Object r0 = this.resolvedPeriodUid;
            if (r0 != null) goto L5;
            boolean r3 = true;
        L7:
            if (r6.resolvedPeriodUid != null) goto L9;
            boolean r4 = true;
        L10:
            if (r3 == r4) goto L14;
            if (r0 == null) goto L21;
            return -1;
        L21:
            return 1;
        L14:
            if (r0 != null) goto L16;
            return 0;
        L16:
            int r1 = this.resolvedPeriodIndex - r6.resolvedPeriodIndex;
            if (r1 == 0) goto L20;
            return r1;
        L20:
            return Util.compareLong(this.resolvedPeriodTimeUs, r6.resolvedPeriodTimeUs);
        L9:
            r4 = false;
            goto L10
        L5:
            r3 = false;
            goto L7
        }
    }

    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        private boolean hasPendingChange;
        public boolean hasPlayWhenReadyChangeReason;
        public int operationAcks;
        public int playWhenReadyChangeReason;
        public PlaybackInfo playbackInfo;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate(PlaybackInfo r1) {
            this.playbackInfo = r1;
        }

        static /* synthetic */ boolean access$100(PlaybackInfoUpdate r0) {
            return r0.hasPendingChange;
        }

        public void incrementPendingOperationAcks(int r3) {
            boolean r0 = this.hasPendingChange;
            if (r3 <= 0) goto L5;
            boolean r1 = true;
        L6:
            this.hasPendingChange = r0 | r1;
            this.operationAcks += r3;
            return;
        L5:
            r1 = false;
            goto L6
        }

        public void setPlayWhenReadyChangeReason(int r2) {
            this.hasPendingChange = true;
            this.hasPlayWhenReadyChangeReason = true;
            this.playWhenReadyChangeReason = r2;
        }

        public void setPlaybackInfo(PlaybackInfo r3) {
            boolean r0 = this.hasPendingChange;
            if (this.playbackInfo == r3) goto L5;
            boolean r1 = true;
        L6:
            this.hasPendingChange = r0 | r1;
            this.playbackInfo = r3;
            return;
        L5:
            r1 = false;
            goto L6
        }

        public void setPositionDiscontinuity(int r4) {
            boolean r1 = true;
            if (this.positionDiscontinuity == true) goto L5;
        L11:
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = r4;
            return;
        L5:
            if (this.discontinuityReason == 5) goto L11;
            if (r4 == 5) goto L9;
            r1 = false;
        L9:
            Assertions.checkArgument(r1);
        }
    }

    public interface PlaybackInfoUpdateListener {
        void onPlaybackInfoUpdate(PlaybackInfoUpdate r1);
    }

    private static final class PositionUpdateForPlaylistChange {
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final MediaSource.MediaPeriodId periodId;
        public final long periodPositionUs;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId r1, long r2, long r4, boolean r6, boolean r7, boolean r8) {
            this.periodId = r1;
            this.periodPositionUs = r2;
            this.requestedContentPositionUs = r4;
            this.forceBufferingState = r6;
            this.endPlayback = r7;
            this.setTargetLiveOffset = r8;
        }
    }

    private static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline r1, int r2, long r3) {
            this.timeline = r1;
            this.windowIndex = r2;
            this.windowPositionUs = r3;
        }
    }

    public ExoPlayerImplInternal(Renderer[] r12, TrackSelector r13, TrackSelectorResult r14, LoadControl r15, BandwidthMeter r16, int r17, boolean r18, AnalyticsCollector r19, SeekParameters r20, LivePlaybackSpeedControl r21, long r22, boolean r24, Looper r25, Clock r26, PlaybackInfoUpdateListener r27) {
        this.playbackInfoUpdateListener = r27;
        this.renderers = r12;
        this.trackSelector = r13;
        this.emptyTrackSelectorResult = r14;
        this.loadControl = r15;
        this.bandwidthMeter = r16;
        this.repeatMode = r17;
        this.shuffleModeEnabled = r18;
        this.seekParameters = r20;
        this.livePlaybackSpeedControl = r21;
        this.releaseTimeoutMs = r22;
        this.setForegroundModeTimeoutMs = r22;
        this.pauseAtEndOfWindow = r24;
        this.clock = r26;
        this.backBufferDurationUs = r15.getBackBufferDurationUs();
        this.retainBackBufferFromKeyframe = r15.retainBackBufferFromKeyframe();
        PlaybackInfo r5 = PlaybackInfo.createDummy(r14);
        this.playbackInfo = r5;
        this.playbackInfoUpdate = new PlaybackInfoUpdate(r5);
        this.rendererCapabilities = new RendererCapabilities[r12.length];
        int r6 = 0;
    L4:
        if (r6 >= r12.length) goto L6;
        r12[r6].setIndex(r6);
        this.rendererCapabilities[r6] = r12[r6].getCapabilities();
        r6 = r6 + 1;
        goto L4
    L6:
        this.mediaClock = new DefaultMediaClock(this, r26);
        this.pendingMessages = new ArrayList();
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        r13.init(this, r16);
        this.deliverPendingMessageAtStartPositionRequired = true;
        Handler r1 = new Handler(r25);
        this.queue = new MediaPeriodQueue(r19, r1);
        this.mediaSourceList = new MediaSourceList(this, r19, r1);
        HandlerThread r2 = new HandlerThread("ExoPlayer:Playback", -16);
        this.internalPlaybackThread = r2;
        r2.start();
        Looper r3 = r2.getLooper();
        this.playbackLooper = r3;
        this.handler = r26.createHandler(r3, this);
    }

    private /* synthetic */ Boolean a() {
        return Boolean.valueOf(this.released);
    }

    static /* synthetic */ boolean access$602(ExoPlayerImplInternal r0, boolean r1) {
        r0.requestForRendererSleep = r1;
        return r1;
    }

    static /* synthetic */ HandlerWrapper access$700(ExoPlayerImplInternal r0) {
        return r0.handler;
    }

    private void addMediaItemsInternal(MediaSourceListUpdateMessage r3, int r4) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        MediaSourceList r0 = this.mediaSourceList;
        if (r4 != (-1)) goto L5;
        r4 = r0.getSize();
    L5:
        handleMediaSourceListInfoRefreshed(r0.addMediaSources(r4, MediaSourceListUpdateMessage.access$300(r3), MediaSourceListUpdateMessage.access$400(r3)), false);
    }

    private void attemptRendererErrorRecovery() throws ExoPlaybackException {
        seekToCurrentPosition(true);
    }

    private /* synthetic */ void c(PlayerMessage r3) {
        deliverMessage(r3);     // Catch: ExoPlaybackException -> L4
        return;
    L4:
        e = move-exception;
        Log.e(TAG, "Unexpected error delivering message on external thread.", e);
        throw new RuntimeException(e);
    }

    private void deliverMessage(PlayerMessage r5) throws ExoPlaybackException {
        if (r5.isCanceled() == false) goto L12;
        return;
    L12:
        r5.getTarget().handleMessage(r5.getType(), r5.getPayload());     // Catch: Throwable -> L9
        r5.markAsProcessed(true);
        return;
    L9:
        th = move-exception;
        r5.markAsProcessed(true);
        throw th;
    }

    private void disableRenderer(Renderer r2) throws ExoPlaybackException {
        if (isRendererEnabled(r2) == true) goto L5;
        return;
    L5:
        this.mediaClock.onRendererDisabled(r2);
        ensureStopped(r2);
        r2.disable();
        this.enabledRendererCount--;
    }

    private void doSomeWork() throws ExoPlaybackException, IOException {
        long r1 = this.clock.uptimeMillis();
        updatePeriods();
        int r3 = this.playbackInfo.playbackState;
        if (r3 != 1) goto L5;
    L130:
        this.handler.removeMessages(2);
        return;
    L5:
        if (r3 == 4) goto L130;
        MediaPeriodHolder r4 = this.queue.getPlayingPeriod();
        if (r4 != null) goto L11;
        scheduleNextWork(r1, 10);
        return;
    L11:
        TraceUtil.beginSection("doSomeWork");
        updatePlaybackPositions();
        if (r4.prepared == false) goto L50;
        long r13 = SystemClock.elapsedRealtime() * 1000;
        r4.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
        int r7 = 0;
        boolean r8 = true;
        boolean r9 = true;
    L14:
        Renderer[] r10 = this.renderers;
        if (r7 >= r10.length) goto L51;
        Renderer r11 = r10[r7];
        if (isRendererEnabled(r11) == false) goto L49;
        r11.render(this.rendererPositionUs, r13);
        if (r8 == true) goto L22;
    L24:
        r8 = false;
    L26:
        if (r4.sampleStreams[r7] == r11.getStream()) goto L28;
        boolean r5 = true;
    L29:
        if (r5 == false) goto L31;
    L33:
        boolean r6 = false;
    L34:
        if (r5 == true) goto L42;
        if (r6 == true) goto L42;
        if (r11.isReady() == true) goto L42;
        if (r11.isEnded() == true) goto L42;
        boolean r12 = false;
    L43:
        if (r9 == false) goto L46;
        if (r12 == false) goto L46;
        r9 = true;
    L47:
        if (r12 == true) goto L49;
        r11.maybeThrowStreamError();
    L46:
        r9 = false;
    L42:
        r12 = true;
        goto L43
    L31:
        if (r11.hasReadStreamToEnd() == false) goto L33;
        r6 = true;
        goto L34
    L28:
        r5 = false;
        goto L29
    L22:
        if (r11.isEnded() == false) goto L24;
        r8 = true;
    L49:
        r7 = r7 + 1;
    L51:
        long r14 = r4.info.durationUs;
        if (r8 == true) goto L54;
    L60:
        boolean r15 = false;
    L61:
        if (r15 == false) goto L66;
        if (this.pendingPauseAtEndOfPeriod == false) goto L66;
        this.pendingPauseAtEndOfPeriod = false;
        setPlayWhenReadyInternal(false, this.playbackInfo.playbackSuppressionReason, false, 5);
    L66:
        if (r15 == false) goto L71;
        if (r4.info.isFinal == false) goto L71;
        setState(4);
        stopRenderers();
    L90:
        if (this.playbackInfo.playbackState != 2) goto L109;
        int r16 = 0;
    L92:
        Renderer[] r17 = this.renderers;
        if (r16 >= r17.length) goto L100;
        if (isRendererEnabled(r17[r16]) == false) goto L99;
        if (this.renderers[r16].getStream() != r4.sampleStreams[r16]) goto L99;
        this.renderers[r16].maybeThrowStreamError();
    L99:
        r16 = r16 + 1;
        goto L92
    L100:
        PlaybackInfo r18 = this.playbackInfo;
        if (r18.isLoading == true) goto L109;
        if (r18.totalBufferedDurationUs >= 500000) goto L109;
        if (isLoadingPossible() == false) goto L109;
        throw new IllegalStateException("Playback stuck buffering and not loading");
    L109:
        boolean r19 = this.offloadSchedulingEnabled;
        PlaybackInfo r20 = this.playbackInfo;
        if (r19 == r20.offloadSchedulingEnabled) goto L113;
        this.playbackInfo = r20.copyWithOffloadSchedulingEnabled(r19);
    L113:
        if (shouldPlayWhenReady() == true) goto L115;
    L116:
        int r21 = this.playbackInfo.playbackState;
        if (r21 != 2) goto L120;
    L118:
        boolean r2 = !maybeScheduleWakeup(r1, 10);
    L125:
        PlaybackInfo r22 = this.playbackInfo;
        if (r22.sleepingForOffload == r2) goto L128;
        this.playbackInfo = r22.copyWithSleepingForOffload(r2);
    L128:
        this.requestForRendererSleep = false;
        TraceUtil.endSection();
        return;
    L120:
        if (this.enabledRendererCount == 0) goto L123;
        if (r21 == 4) goto L123;
        scheduleNextWork(r1, 1000);
    L124:
        r2 = false;
    L123:
        this.handler.removeMessages(2);
        goto L124
    L115:
        if (this.playbackInfo.playbackState == 3) goto L118;
    L71:
        if (this.playbackInfo.playbackState != 2) goto L78;
        if (shouldTransitionToReadyState(r9) == false) goto L78;
        setState(3);
        this.pendingRecoverableRendererError = null;
        if (shouldPlayWhenReady() == false) goto L90;
        startRenderers();
    L78:
        if (this.playbackInfo.playbackState != 3) goto L90;
        if (this.enabledRendererCount == 0) goto L82;
        if (r9 == true) goto L90;
    L85:
        this.isRebuffering = shouldPlayWhenReady();
        setState(2);
        if (this.isRebuffering == false) goto L88;
        notifyTrackSelectionRebuffer();
        this.livePlaybackSpeedControl.notifyRebuffer();
    L88:
        stopRenderers();
        goto L90
    L82:
        if (isTimelineReady() == false) goto L85;
    L54:
        if (r4.prepared == false) goto L60;
        if (r14 != C.TIME_UNSET) goto L58;
    L59:
        r15 = true;
        goto L61
    L58:
        if (r14 > this.playbackInfo.positionUs) goto L60;
    L50:
        r4.mediaPeriod.maybeThrowPrepareError();
        r8 = true;
        r9 = true;
        goto L51
    }

    private void enableRenderer(int r18, boolean r19) throws ExoPlaybackException {
        Renderer r1 = this.renderers[r18];
        if (isRendererEnabled(r1) == false) goto L5;
        return;
    L5:
        MediaPeriodHolder r2 = this.queue.getReadingPeriod();
        if (r2 != this.queue.getPlayingPeriod()) goto L8;
        boolean r9 = true;
    L9:
        TrackSelectorResult r3 = r2.getTrackSelectorResult();
        RendererConfiguration r6 = r3.rendererConfigurations[r18];
        Format[] r7 = getFormats(r3.selections[r18]);
        if (shouldPlayWhenReady() == true) goto L12;
    L14:
        boolean r14 = false;
    L15:
        if (r19 == true) goto L18;
        if (r14 == false) goto L18;
        boolean r8 = true;
    L19:
        this.enabledRendererCount++;
        r1.enable(r6, r7, r2.sampleStreams[r18], this.rendererPositionUs, r8, r9, r2.getStartPositionRendererTime(), r2.getRendererOffset());
        r1.handleMessage(103, new AnonymousClass1(this));
        this.mediaClock.onRendererEnabled(r1);
        if (r14 == false) goto L23;
        r1.start();
        return;
    L23:
        return;
    L18:
        r8 = false;
        goto L19
    L12:
        if (this.playbackInfo.playbackState != 3) goto L14;
        r14 = true;
        goto L15
    L8:
        r9 = false;
        goto L9
    }

    private void enableRenderers() throws ExoPlaybackException {
        enableRenderers(new boolean[this.renderers.length]);
    }

    private void ensureStopped(Renderer r3) throws ExoPlaybackException {
        if (r3.getState() != 2) goto L6;
        r3.stop();
        return;
    }

    private ImmutableList<Metadata> extractMetadataFromTrackSelectionArray(ExoTrackSelection[] r8) {
        ImmutableList.Builder r0 = new ImmutableList.Builder();
        int r1 = r8.length;
        int r3 = 0;
        boolean r4 = false;
    L3:
        if (r3 >= r1) goto L11;
        ExoTrackSelection r5 = r8[r3];
        if (r5 == null) goto L10;
        Metadata r6 = r5.getFormat(0).metadata;
        if (r6 != null) goto L9;
        r0.add(new Metadata(new Metadata.Entry[0]));
        goto L10
    L9:
        r0.add(r6);
        r4 = true;
    L10:
        r3 = r3 + 1;
        goto L3
    L11:
        if (r4 == false) goto L14;
        return r0.build();
    L14:
        return ImmutableList.of();
    }

    private long getCurrentLiveOffsetUs() {
        PlaybackInfo r0 = this.playbackInfo;
        return getLiveOffsetUs(r0.timeline, r0.periodId.periodUid, r0.positionUs);
    }

    private static Format[] getFormats(ExoTrackSelection r4) {
        int r0 = 0;
        if (r4 == null) goto L5;
        int r1 = r4.length();
    L6:
        Format[] r2 = new Format[r1];
    L7:
        if (r0 >= r1) goto L9;
        r2[r0] = r4.getFormat(r0);
        r0 = r0 + 1;
        goto L7
    L9:
        return r2;
    L5:
        r1 = 0;
        goto L6
    }

    private long getLiveOffsetUs(Timeline r5, Object r6, long r7) {
        r5.getWindow(r5.getPeriodByUid(r6, this.period).windowIndex, this.window);
        Timeline.Window r8 = this.window;
        if (r8.windowStartTimeMs != C.TIME_UNSET) goto L5;
    L11:
        return C.TIME_UNSET;
    L5:
        if (r8.isLive() == false) goto L11;
        Timeline.Window r9 = this.window;
        if (r9.isDynamic == false) goto L11;
        return C.msToUs(r9.getCurrentUnixTimeMs() - this.window.windowStartTimeMs) - (r7 + this.period.getPositionInWindowUs());
    }

    private long getMaxRendererReadPositionUs() {
        MediaPeriodHolder r0 = this.queue.getReadingPeriod();
        if (r0 != null) goto L6;
        return 0;
    L6:
        long r1 = r0.getRendererOffset();
        if (r0.prepared == true) goto L9;
        return r1;
    L9:
        int r3 = 0;
    L10:
        Renderer[] r4 = this.renderers;
        if (r3 >= r4.length) goto L22;
        if (isRendererEnabled(r4[r3]) == false) goto L21;
        if (this.renderers[r3].getStream() != r0.sampleStreams[r3]) goto L21;
        long r5 = this.renderers[r3].getReadingPositionUs();
        if (r5 == Long.MIN_VALUE) goto L19;
        r1 = Math.max(r5, r1);
        goto L21
    L19:
        return Long.MIN_VALUE;
    L21:
        r3 = r3 + 1;
        goto L10
    L22:
        return r1;
    }

    private Pair<MediaSource.MediaPeriodId, Long> getPlaceholderFirstMediaPeriodPosition(Timeline r10) {
        long r1 = 0;
        if (r10.isEmpty() == true) goto L5;
        int r6 = r10.getFirstWindowIndex(this.shuffleModeEnabled);
        Pair<Object, Long> r0 = r10.getPeriodPosition(this.window, this.period, r6, C.TIME_UNSET);
        MediaSource.MediaPeriodId r3 = this.queue.resolveMediaPeriodIdForAds(r10, r0.first, 0);
        long r4 = ((Long) r0.second).longValue();
        if (r3.isAd() == false) goto L13;
        r10.getPeriodByUid(r3.periodUid, this.period);
        if (r3.adIndexInAdGroup != this.period.getFirstAdIndexToPlay(r3.adGroupIndex)) goto L11;
        r1 = this.period.getAdResumePositionUs();
    L11:
        r4 = r1;
    L13:
        return Pair.create(r3, Long.valueOf(r4));
    L5:
        return Pair.create(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L);
    }

    private long getTotalBufferedDurationUs() {
        return getTotalBufferedDurationUs(this.playbackInfo.bufferedPositionUs);
    }

    private void handleContinueLoadingRequested(MediaPeriod r3) {
        if (this.queue.isLoading(r3) == true) goto L5;
        return;
    L5:
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        maybeContinueLoading();
    }

    private void handleLoadingMediaPeriodChanged(boolean r6) {
        MediaPeriodHolder r0 = this.queue.getLoadingPeriod();
        if (r0 != null) goto L5;
        MediaSource.MediaPeriodId r1 = this.playbackInfo.periodId;
    L6:
        boolean r2 = !this.playbackInfo.loadingMediaPeriodId.equals(r1);
        if (r2 == false) goto L9;
        this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(r1);
    L9:
        PlaybackInfo r3 = this.playbackInfo;
        if (r0 != null) goto L12;
        long r4 = r3.positionUs;
    L13:
        r3.bufferedPositionUs = r4;
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if (r2 == true) goto L16;
        if (r6 == true) goto L16;
        return;
    L16:
        if (r0 != null) goto L18;
        return;
    L18:
        if (r0.prepared == false) goto L23;
        updateLoadControlTrackSelection(r0.getTrackGroups(), r0.getTrackSelectorResult());
        return;
    L23:
        return;
    L12:
        r4 = r0.getBufferedPositionUs();
        goto L13
    L5:
        r1 = r0.info.id;
        goto L6
    }

    private void handleMediaSourceListInfoRefreshed(Timeline r25, boolean r26) throws ExoPlaybackException {
        PositionUpdateForPlaylistChange r7 = resolvePositionForPlaylistChange(r25, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        MediaSource.MediaPeriodId r8 = r7.periodId;
        long r9 = r7.requestedContentPositionUs;
        boolean r0 = r7.forceBufferingState;
        long r13 = r7.periodPositionUs;
        if (this.playbackInfo.periodId.equals(r8) == true) goto L5;
    L8:
        boolean r16 = true;
    L9:
        int r17 = 3;
        SeekPosition r6 = null;
        long r18 = C.TIME_UNSET;
    L60:
        th = th;
    L62:
        PlaybackInfo r1 = this.playbackInfo;
        Timeline r4 = r1.timeline;
        MediaSource.MediaPeriodId r5 = r1.periodId;
        if (r7.setTargetLiveOffset == false) goto L65;
        r18 = r13;
    L65:
        SeekPosition r15 = r6;
        updateLivePlaybackSpeedControl(r25, r8, r4, r5, r18);
        if (r16 == false) goto L68;
    L69:
        PlaybackInfo r2 = this.playbackInfo;
        Object r3 = r2.periodId.periodUid;
        Timeline r10 = r2.timeline;
        if (r16 == false) goto L77;
        if (r26 == false) goto L77;
        if (r10.isEmpty() == true) goto L77;
        if (r10.getPeriodByUid(r3, this.period).isPlaceholder == true) goto L77;
        boolean r23 = true;
    L78:
        long r11 = this.playbackInfo.discontinuityStartPositionUs;
        if (r25.getIndexOfPeriod(r3) != (-1)) goto L81;
        r17 = 4;
    L81:
        this.playbackInfo = handlePositionDiscontinuity(r8, r13, r9, r11, r23, r17);
    L82:
        resetPendingPauseAtEndOfPeriod();
        resolvePendingMessagePositions(r25, this.playbackInfo.timeline);
        this.playbackInfo = this.playbackInfo.copyWithTimeline(r25);
        if (r25.isEmpty() == true) goto L85;
        this.pendingInitialSeekPosition = r15;
    L85:
        handleLoadingMediaPeriodChanged(false);
        throw th;
    L77:
        r23 = false;
        goto L78
    L68:
        if (r9 == this.playbackInfo.requestedContentPositionUs) goto L82;
    L11:
        if (r7.endPlayback == true) goto L13;
    L87:
        if (r16 == true) goto L22;
        boolean r19 = false;
        if (this.queue.updateQueuedPeriods(r25, this.rendererPositionUs, getMaxRendererReadPositionUs()) == true) goto L32;
        seekToCurrentPosition(false);     // Catch: Throwable -> L58
    L32:
        PlaybackInfo r12 = this.playbackInfo;
        Timeline r14 = r12.timeline;
        MediaSource.MediaPeriodId r20 = r12.periodId;
        if (r7.setTargetLiveOffset == false) goto L35;
        long r21 = r13;
    L36:
        updateLivePlaybackSpeedControl(r25, r8, r14, r20, r21);
        if (r16 == false) goto L39;
    L40:
        PlaybackInfo r22 = this.playbackInfo;
        Object r24 = r22.periodId.periodUid;
        Timeline r27 = r22.timeline;
        if (r16 == false) goto L48;
        if (r26 == false) goto L48;
        if (r27.isEmpty() == true) goto L48;
        if (r27.getPeriodByUid(r24, this.period).isPlaceholder == true) goto L48;
        boolean r28 = true;
    L49:
        long r29 = this.playbackInfo.discontinuityStartPositionUs;
        if (r25.getIndexOfPeriod(r24) != (-1)) goto L52;
        r17 = 4;
    L52:
        this.playbackInfo = handlePositionDiscontinuity(r8, r13, r9, r29, r28, r17);
    L53:
        resetPendingPauseAtEndOfPeriod();
        resolvePendingMessagePositions(r25, this.playbackInfo.timeline);
        this.playbackInfo = this.playbackInfo.copyWithTimeline(r25);
        if (r25.isEmpty() == true) goto L56;
        this.pendingInitialSeekPosition = null;
    L56:
        handleLoadingMediaPeriodChanged(r19);
        return;
    L48:
        r28 = false;
        goto L49
    L39:
        if (r9 == this.playbackInfo.requestedContentPositionUs) goto L53;
    L35:
        r21 = -9223372036854775807L;
        goto L36
    L22:
        r19 = false;
        if (r25.isEmpty() == true) goto L32;
        MediaPeriodHolder r30 = this.queue.getPlayingPeriod();     // Catch: Throwable -> L58
    L25:
        if (r30 == null) goto L31;
        if (r30.info.id.equals(r8) == false) goto L29;
        r30.info = this.queue.getUpdatedMediaPeriodInfo(r25, r30.info);     // Catch: Throwable -> L58
    L29:
        r30 = r30.getNext();     // Catch: Throwable -> L58
        goto L25
    L31:
        r13 = seekToPeriodPosition(r8, r13, r0);     // Catch: Throwable -> L58
    L58:
        th = th;
        r6 = null;
        goto L62
    L13:
        if (this.playbackInfo.playbackState == 1) goto L15;
        setState(4);     // Catch: Throwable -> L60
    L15:
        resetInternal(false, false, false, true);     // Catch: Throwable -> L60
        goto L87
    L5:
        if (r13 != this.playbackInfo.positionUs) goto L8;
        r16 = false;
        goto L9
    }

    private void handlePeriodPrepared(MediaPeriod r12) throws ExoPlaybackException {
        if (this.queue.isLoading(r12) == true) goto L5;
        return;
    L5:
        MediaPeriodHolder r13 = this.queue.getLoadingPeriod();
        r13.handlePrepared(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline);
        updateLoadControlTrackSelection(r13.getTrackGroups(), r13.getTrackSelectorResult());
        if (r13 != this.queue.getPlayingPeriod()) goto L8;
        resetRendererPosition(r13.info.startPositionUs);
        enableRenderers();
        PlaybackInfo r0 = this.playbackInfo;
        MediaSource.MediaPeriodId r2 = r0.periodId;
        long r7 = r13.info.startPositionUs;
        this.playbackInfo = handlePositionDiscontinuity(r2, r7, r0.requestedContentPositionUs, r7, false, 5);
    L8:
        maybeContinueLoading();
    }

    private void handlePlaybackParameters(PlaybackParameters r3, boolean r4) throws ExoPlaybackException {
        handlePlaybackParameters(r3, r3.speed, true, r4);
    }

    private PlaybackInfo handlePositionDiscontinuity(MediaSource.MediaPeriodId r15, long r16, long r18, long r20, boolean r22, int r23) {
        if (this.deliverPendingMessageAtStartPositionRequired == false) goto L5;
    L10:
        boolean r1 = true;
    L11:
        this.deliverPendingMessageAtStartPositionRequired = r1;
        resetPendingPauseAtEndOfPeriod();
        PlaybackInfo r2 = this.playbackInfo;
        TrackGroupArray r3 = r2.trackGroups;
        TrackSelectorResult r4 = r2.trackSelectorResult;
        List<Metadata> r5 = r2.staticMetadata;
        if (this.mediaSourceList.isPrepared() == false) goto L27;
        MediaPeriodHolder r6 = this.queue.getPlayingPeriod();
        if (r6 != null) goto L16;
        TrackGroupArray r7 = TrackGroupArray.EMPTY;
    L17:
        if (r6 != null) goto L19;
        TrackSelectorResult r8 = this.emptyTrackSelectorResult;
    L20:
        ImmutableList<Metadata> r9 = extractMetadataFromTrackSelectionArray(r8.selections);
        if (r6 == null) goto L25;
        MediaPeriodInfo r10 = r6.info;
        if (r10.requestedContentPositionUs == r18) goto L25;
        r6.info = r10.copyWithRequestedContentPositionUs(r18);
    L25:
        TrackGroupArray r11 = r7;
        TrackSelectorResult r12 = r8;
        List<Metadata> r13 = r9;
    L30:
        if (r22 == false) goto L33;
        this.playbackInfoUpdate.setPositionDiscontinuity(r23);
    L33:
        return this.playbackInfo.copyWithNewPosition(r15, r16, r18, r20, getTotalBufferedDurationUs(), r11, r12, r13);
    L19:
        r8 = r6.getTrackSelectorResult();
        goto L20
    L16:
        r7 = r6.getTrackGroups();
        goto L17
    L27:
        if (r15.equals(this.playbackInfo.periodId) == true) goto L29;
        TrackGroupArray r14 = TrackGroupArray.EMPTY;
        TrackSelectorResult r17 = this.emptyTrackSelectorResult;
        r11 = r14;
        r12 = r17;
        r13 = ImmutableList.of();
        goto L30
    L29:
        r13 = r5;
        r11 = r3;
        r12 = r4;
        goto L30
    L5:
        if (r16 != this.playbackInfo.positionUs) goto L10;
        if (r15.equals(this.playbackInfo.periodId) == false) goto L10;
        r1 = false;
        goto L11
    }

    private boolean hasReadingPeriodFinishedReading() {
        MediaPeriodHolder r0 = this.queue.getReadingPeriod();
        if (r0.prepared == true) goto L5;
        return false;
    L5:
        int r1 = 0;
    L6:
        Renderer[] r3 = this.renderers;
        if (r1 >= r3.length) goto L16;
        Renderer r4 = r3[r1];
        SampleStream r5 = r0.sampleStreams[r1];
        if (r4.getStream() != r5) goto L15;
        if (r5 == null) goto L14;
        if (r4.hasReadStreamToEnd() == false) goto L15;
    L14:
        r1 = r1 + 1;
    L15:
        return false;
    L16:
        return true;
    }

    private boolean isLoadingPossible() {
        MediaPeriodHolder r0 = this.queue.getLoadingPeriod();
        if (r0 != null) goto L6;
        return false;
    L6:
        if (r0.getNextLoadPositionUs() != Long.MIN_VALUE) goto L8;
        return false;
    L8:
        return true;
    }

    private static boolean isRendererEnabled(Renderer r0) {
        if (r0.getState() == 0) goto L5;
        return true;
    L5:
        return false;
    }

    private boolean isTimelineReady() {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
        long r1 = r0.info.durationUs;
        if (r0.prepared == true) goto L5;
    L11:
        return false;
    L5:
        if (r1 != C.TIME_UNSET) goto L7;
    L10:
        return true;
    L7:
        if (this.playbackInfo.positionUs < r1) goto L10;
        if (shouldPlayWhenReady() == true) goto L11;
        goto L10
    }

    private void maybeContinueLoading() {
        boolean r0 = shouldContinueLoading();
        this.shouldContinueLoading = r0;
        if (r0 == false) goto L5;
        this.queue.getLoadingPeriod().continueLoading(this.rendererPositionUs);
    L5:
        updateIsLoading();
    }

    private void maybeNotifyPlaybackInfoChanged() {
        this.playbackInfoUpdate.setPlaybackInfo(this.playbackInfo);
        if (PlaybackInfoUpdate.access$100(this.playbackInfoUpdate) == false) goto L6;
        this.playbackInfoUpdateListener.onPlaybackInfoUpdate(this.playbackInfoUpdate);
        this.playbackInfoUpdate = new PlaybackInfoUpdate(this.playbackInfo);
        return;
    }

    private boolean maybeScheduleWakeup(long r2, long r4) {
        if (this.offloadSchedulingEnabled == true) goto L5;
    L8:
        scheduleNextWork(r2, r4);
        return true;
    L5:
        if (this.requestForRendererSleep == false) goto L8;
        return false;
    }

    private void maybeTriggerPendingMessages(long r8, long r10) throws ExoPlaybackException {
        if (this.pendingMessages.isEmpty() == false) goto L5;
        return;
    L5:
        if (this.playbackInfo.periodId.isAd() == false) goto L8;
        return;
    L8:
        if (this.deliverPendingMessageAtStartPositionRequired == false) goto L10;
        r8 = r8 - 1;
        this.deliverPendingMessageAtStartPositionRequired = false;
    L10:
        PlaybackInfo r0 = this.playbackInfo;
        int r1 = r0.timeline.getIndexOfPeriod(r0.periodId.periodUid);
        int r2 = Math.min(this.nextPendingMessageIndexHint, this.pendingMessages.size());
        if (r2 <= 0) goto L13;
        PendingMessageInfo r3 = this.pendingMessages.get(r2 - 1);
    L14:
        if (r3 == null) goto L24;
        int r4 = r3.resolvedPeriodIndex;
        if (r4 > r1) goto L20;
        if (r4 != r1) goto L24;
        if (r3.resolvedPeriodTimeUs <= r8) goto L24;
    L20:
        r2 = r2 - 1;
        if (r2 <= 0) goto L13;
        r3 = this.pendingMessages.get(r2 - 1);
        goto L14
    L13:
        r3 = null;
    L24:
        if (r2 >= this.pendingMessages.size()) goto L26;
        PendingMessageInfo r5 = this.pendingMessages.get(r2);
    L27:
        if (r5 == null) goto L38;
        if (r5.resolvedPeriodUid == null) goto L38;
        int r6 = r5.resolvedPeriodIndex;
        if (r6 < r1) goto L35;
        if (r6 != r1) goto L38;
        if (r5.resolvedPeriodTimeUs > r8) goto L38;
    L35:
        r2 = r2 + 1;
        if (r2 >= this.pendingMessages.size()) goto L26;
        r5 = this.pendingMessages.get(r2);
        goto L27
    L26:
        r5 = null;
    L38:
        if (r5 == null) goto L66;
        if (r5.resolvedPeriodUid == null) goto L66;
        if (r5.resolvedPeriodIndex != r1) goto L66;
        long r7 = r5.resolvedPeriodTimeUs;
        if (r7 <= r8) goto L66;
        if (r7 > r10) goto L66;
        sendMessageToTarget(r5.message);     // Catch: Throwable -> L59
        if (r5.message.getDeleteAfterDelivery() == false) goto L51;
    L54:
        this.pendingMessages.remove(r2);
    L56:
        if (r2 < this.pendingMessages.size()) goto L57;
        r5 = null;
        goto L38
    L57:
        r5 = this.pendingMessages.get(r2);
        goto L38
    L51:
        if (r5.message.isCanceled() == true) goto L54;
        r2 = r2 + 1;
    L59:
        th = move-exception;
        if (r5.message.getDeleteAfterDelivery() == false) goto L63;
    L64:
        this.pendingMessages.remove(r2);
    L65:
        throw th;
    L63:
        if (r5.message.isCanceled() == false) goto L65;
    L66:
        this.nextPendingMessageIndexHint = r2;
        return;
    L71:
        r5 = null;
        goto L27
    L70:
        r3 = null;
        goto L14
    }

    private void maybeUpdateLoadingPeriod() throws ExoPlaybackException {
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        if (this.queue.shouldLoadNextMediaPeriod() == false) goto L11;
        MediaPeriodInfo r0 = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo);
        if (r0 == null) goto L11;
        MediaPeriodHolder r1 = this.queue.enqueueNextMediaPeriodHolder(this.rendererCapabilities, this.trackSelector, this.loadControl.getAllocator(), this.mediaSourceList, r0, this.emptyTrackSelectorResult);
        r1.mediaPeriod.prepare(this, r0.startPositionUs);
        if (this.queue.getPlayingPeriod() != r1) goto L9;
        resetRendererPosition(r1.getStartPositionRendererTime());
    L9:
        handleLoadingMediaPeriodChanged(false);
    L11:
        if (this.shouldContinueLoading == false) goto L13;
        this.shouldContinueLoading = isLoadingPossible();
        updateIsLoading();
        return;
    L13:
        maybeContinueLoading();
    }

    private void maybeUpdatePlayingPeriod() throws ExoPlaybackException {
        boolean r0 = false;
    L4:
        if (shouldAdvancePlayingPeriod() == false) goto L8;
        if (r0 == false) goto L7;
        maybeNotifyPlaybackInfoChanged();
    L7:
        MediaPeriodHolder r1 = this.queue.getPlayingPeriod();
        MediaPeriodHolder r2 = this.queue.advancePlayingPeriod();
        MediaPeriodInfo r3 = r2.info;
        MediaSource.MediaPeriodId r4 = r3.id;
        long r9 = r3.startPositionUs;
        PlaybackInfo r5 = handlePositionDiscontinuity(r4, r9, r3.requestedContentPositionUs, r9, true, 0);
        this.playbackInfo = r5;
        Timeline r6 = r5.timeline;
        updateLivePlaybackSpeedControl(r6, r2.info.id, r6, r1.info.id, C.TIME_UNSET);
        resetPendingPauseAtEndOfPeriod();
        updatePlaybackPositions();
        r0 = true;
        goto L4
    }

    private void maybeUpdateReadingPeriod() {
        MediaPeriodHolder r0 = this.queue.getReadingPeriod();
        if (r0 != null) goto L5;
        return;
    L5:
        int r4 = 0;
        if (r0.getNext() == null) goto L44;
        if (this.pendingPauseAtEndOfPeriod == true) goto L44;
        if (hasReadingPeriodFinishedReading() == true) goto L14;
        return;
    L14:
        if (r0.getNext().prepared == false) goto L16;
    L18:
        TrackSelectorResult r1 = r0.getTrackSelectorResult();
        MediaPeriodHolder r2 = this.queue.advanceReadingPeriod();
        TrackSelectorResult r5 = r2.getTrackSelectorResult();
        if (r2.prepared == true) goto L21;
    L24:
        int r3 = 0;
    L26:
        if (r3 >= this.renderers.length) goto L42;
        boolean r6 = r1.isRendererEnabled(r3);
        boolean r7 = r5.isRendererEnabled(r3);
        if (r6 == false) goto L41;
        if (this.renderers[r3].isCurrentStreamFinal() == true) goto L41;
        if (this.rendererCapabilities[r3].getTrackType() != 7) goto L34;
        boolean r8 = true;
    L35:
        RendererConfiguration r9 = r1.rendererConfigurations[r3];
        RendererConfiguration r10 = r5.rendererConfigurations[r3];
        if (r7 == true) goto L38;
    L40:
        setCurrentStreamFinal(this.renderers[r3], r2.getStartPositionRendererTime());
        goto L41
    L38:
        if (r10.equals(r9) == false) goto L40;
        if (r8 == false) goto L41;
    L34:
        r8 = false;
    L41:
        r3 = r3 + 1;
        goto L26
    L42:
        return;
    L21:
        if (r2.mediaPeriod.readDiscontinuity() == C.TIME_UNSET) goto L24;
        setAllRendererStreamsFinal(r2.getStartPositionRendererTime());
        return;
    L16:
        if (this.rendererPositionUs >= r0.getNext().getStartPositionRendererTime()) goto L18;
        return;
    L44:
        if (r0.info.isFinal == true) goto L47;
        if (this.pendingPauseAtEndOfPeriod == true) goto L47;
        return;
    L47:
        Renderer[] r11 = this.renderers;
        if (r4 >= r11.length) goto L75;
        Renderer r12 = r11[r4];
        SampleStream r13 = r0.sampleStreams[r4];
        if (r13 == null) goto L62;
        if (r12.getStream() != r13) goto L62;
        if (r12.hasReadStreamToEnd() == false) goto L62;
        long r14 = r0.info.durationUs;
        if (r14 != C.TIME_UNSET) goto L58;
    L60:
        long r15 = -9223372036854775807L;
    L61:
        setCurrentStreamFinal(r12, r15);
        goto L62
    L58:
        if (r14 == Long.MIN_VALUE) goto L60;
        r15 = r0.getRendererOffset() + r0.info.durationUs;
    L62:
        r4 = r4 + 1;
        goto L47
    }

    private void maybeUpdateReadingRenderers() throws ExoPlaybackException {
        MediaPeriodHolder r0 = this.queue.getReadingPeriod();
        if (r0 != null) goto L5;
        return;
    L5:
        if (this.queue.getPlayingPeriod() != r0) goto L7;
        return;
    L7:
        if (r0.allRenderersInCorrectState == false) goto L10;
        return;
    L10:
        if (replaceStreamsOrDisableRendererForTransition() == false) goto L15;
        enableRenderers();
        return;
    }

    private void mediaSourceListUpdateRequestedInternal() throws ExoPlaybackException {
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.createTimeline(), true);
    }

    private void moveMediaItemsInternal(MoveMediaItemsMessage r5) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.moveMediaSourceRange(r5.fromIndex, r5.toIndex, r5.newFromIndex, r5.shuffleOrder), false);
    }

    private void notifyTrackSelectionDiscontinuity() {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
    L3:
        if (r0 == null) goto L11;
        ExoTrackSelection[] r1 = r0.getTrackSelectorResult().selections;
        int r2 = r1.length;
        int r3 = 0;
    L5:
        if (r3 >= r2) goto L10;
        ExoTrackSelection r4 = r1[r3];
        if (r4 == null) goto L9;
        r4.onDiscontinuity();
    L9:
        r3 = r3 + 1;
        goto L5
    L10:
        r0 = r0.getNext();
        goto L3
    }

    private void notifyTrackSelectionPlayWhenReadyChanged(boolean r6) {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
    L3:
        if (r0 == null) goto L11;
        ExoTrackSelection[] r1 = r0.getTrackSelectorResult().selections;
        int r2 = r1.length;
        int r3 = 0;
    L5:
        if (r3 >= r2) goto L10;
        ExoTrackSelection r4 = r1[r3];
        if (r4 == null) goto L9;
        r4.onPlayWhenReadyChanged(r6);
    L9:
        r3 = r3 + 1;
        goto L5
    L10:
        r0 = r0.getNext();
        goto L3
    }

    private void notifyTrackSelectionRebuffer() {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
    L3:
        if (r0 == null) goto L11;
        ExoTrackSelection[] r1 = r0.getTrackSelectorResult().selections;
        int r2 = r1.length;
        int r3 = 0;
    L5:
        if (r3 >= r2) goto L10;
        ExoTrackSelection r4 = r1[r3];
        if (r4 == null) goto L9;
        r4.onRebuffer();
    L9:
        r3 = r3 + 1;
        goto L5
    L10:
        r0 = r0.getNext();
        goto L3
    }

    private void prepareInternal() {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        resetInternal(false, false, false, true);
        this.loadControl.onPrepared();
        if (this.playbackInfo.timeline.isEmpty() == false) goto L5;
        int r0 = 4;
    L6:
        setState(r0);
        this.mediaSourceList.prepare(this.bandwidthMeter.getTransferListener());
        this.handler.sendEmptyMessage(2);
        return;
    L5:
        r0 = 2;
        goto L6
    }

    private void releaseInternal() {
        resetInternal(true, false, true, false);
        this.loadControl.onReleased();
        setState(1);
        this.internalPlaybackThread.quit();
        monitor-enter(this);
        this.released = true;     // Catch: Throwable -> L7
        notifyAll();     // Catch: Throwable -> L7
        monitor-exit(this);     // Catch: Throwable -> L7
        return;
    L7:
        th = move-exception;
        throw th;
    }

    private void removeMediaItemsInternal(int r3, int r4, ShuffleOrder r5) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.removeMediaSourceRange(r3, r4, r5), false);
    }

    private boolean replaceStreamsOrDisableRendererForTransition() throws ExoPlaybackException {
        MediaPeriodHolder r0 = this.queue.getReadingPeriod();
        TrackSelectorResult r1 = r0.getTrackSelectorResult();
        int r3 = 0;
        boolean r4 = false;
    L3:
        Renderer[] r5 = this.renderers;
        if (r3 >= r5.length) goto L25;
        Renderer r8 = r5[r3];
        if (isRendererEnabled(r8) == false) goto L23;
        if (r8.getStream() == r0.sampleStreams[r3]) goto L11;
        boolean r6 = true;
    L13:
        if (r1.isRendererEnabled(r3) == false) goto L17;
        if (r6 == false) goto L23;
    L17:
        if (r8.isCurrentStreamFinal() == true) goto L20;
        r8.replaceStream(getFormats(r1.selections[r3]), r0.sampleStreams[r3], r0.getStartPositionRendererTime(), r0.getRendererOffset());
        goto L23
    L20:
        if (r8.isEnded() == false) goto L22;
        disableRenderer(r8);
        goto L23
    L22:
        r4 = true;
        goto L23
    L11:
        r6 = false;
    L23:
        r3 = r3 + 1;
        goto L3
    L25:
        return !r4;
    }

    private void reselectTracksInternal() throws ExoPlaybackException {
        float r0 = this.mediaClock.getPlaybackParameters().speed;
        MediaPeriodHolder r1 = this.queue.getPlayingPeriod();
        MediaPeriodHolder r2 = this.queue.getReadingPeriod();
        boolean r3 = true;
    L3:
        if (r1 == null) goto L44;
        if (r1.prepared == false) goto L56;
        TrackSelectorResult r13 = r1.selectTracks(r0, this.playbackInfo.timeline);
        if (r13.isEquivalent(r1.getTrackSelectorResult()) == false) goto L10;
        if (r1 != r2) goto L43;
        r3 = false;
    L43:
        r1 = r1.getNext();
        goto L3
    L10:
        if (r3 == false) goto L33;
        MediaPeriodHolder r6 = this.queue.getPlayingPeriod();
        boolean r16 = this.queue.removeAfter(r6);
        boolean[] r7 = new boolean[this.renderers.length];
        long r12 = r6.applyTrackSelection(r13, this.playbackInfo.positionUs, r16, r7);
        PlaybackInfo r4 = this.playbackInfo;
        if (r4.playbackState != 4) goto L14;
    L16:
        boolean r14 = false;
    L17:
        PlaybackInfo r5 = this.playbackInfo;
        this.playbackInfo = handlePositionDiscontinuity(r5.periodId, r12, r5.requestedContentPositionUs, r5.discontinuityStartPositionUs, r14, 5);
        if (r14 == false) goto L20;
        resetRendererPosition(r12);
    L20:
        boolean[] r8 = new boolean[this.renderers.length];
        int r9 = 0;
    L21:
        Renderer[] r10 = this.renderers;
        if (r9 >= r10.length) goto L32;
        Renderer r11 = r10[r9];
        r8[r9] = isRendererEnabled(r11);
        SampleStream r15 = r6.sampleStreams[r9];
        if (r8[r9] == false) goto L31;
        if (r15 == r11.getStream()) goto L29;
        disableRenderer(r11);
        goto L31
    L29:
        if (r7[r9] == false) goto L31;
        r11.resetPosition(this.rendererPositionUs);
    L31:
        r9 = r9 + 1;
        goto L21
    L32:
        enableRenderers(r8);
    L36:
        handleLoadingMediaPeriodChanged(true);
        if (this.playbackInfo.playbackState == 4) goto L55;
        maybeContinueLoading();
        updatePlaybackPositions();
        this.handler.sendEmptyMessage(2);
        return;
    L55:
        return;
    L14:
        if (r12 == r4.positionUs) goto L16;
        r14 = true;
        goto L17
    L33:
        this.queue.removeAfter(r1);
        if (r1.prepared == false) goto L36;
        r1.applyTrackSelection(r13, Math.max(r1.info.startPositionUs, r1.toPeriodTime(this.rendererPositionUs)), false);
        goto L36
    L56:
        return;
    }

    private void resetInternal(boolean r30, boolean r31, boolean r32, boolean r33) {
        this.handler.removeMessages(2);
        ExoPlaybackException r2 = null;
        this.pendingRecoverableRendererError = null;
        this.isRebuffering = false;
        this.mediaClock.stop();
        this.rendererPositionUs = 0;
        Renderer[] r4 = this.renderers;
        int r5 = r4.length;
        int r6 = 0;
    L4:
        if (r6 >= r5) goto L13;
        disableRenderer(r4[r6]);     // Catch: RuntimeException -> L8 Throwable -> L10
    L12:
        r6 = r6 + 1;
    L10:
        e = move-exception;
        Log.e(TAG, "Disable failed.", e);
        goto L12
    L13:
        if (r30 == false) goto L22;
        Renderer[] r7 = this.renderers;
        int r8 = r7.length;
        int r9 = 0;
    L15:
        if (r9 >= r8) goto L22;
        r7[r9].reset();     // Catch: RuntimeException -> L19
    L21:
        r9 = r9 + 1;
    L19:
        e = move-exception;
        Log.e(TAG, "Reset failed.", e);
    L22:
        this.enabledRendererCount = 0;
        PlaybackInfo r0 = this.playbackInfo;
        MediaSource.MediaPeriodId r10 = r0.periodId;
        long r11 = r0.positionUs;
        if (shouldUseRequestedContentPosition(this.playbackInfo, this.period) == false) goto L25;
        long r12 = this.playbackInfo.requestedContentPositionUs;
    L26:
        if (r31 == false) goto L30;
        this.pendingInitialSeekPosition = null;
        Pair<MediaSource.MediaPeriodId, Long> r1 = getPlaceholderFirstMediaPeriodPosition(this.playbackInfo.timeline);
        r10 = (MediaSource.MediaPeriodId) r1.first;
        r11 = ((Long) r1.second).longValue();
        r12 = C.TIME_UNSET;
        if (r10.equals(this.playbackInfo.periodId) == true) goto L30;
        boolean r3 = true;
        MediaSource.MediaPeriodId r17 = r10;
        long r25 = r11;
    L31:
        this.queue.clear();
        this.shouldContinueLoading = false;
        PlaybackInfo r13 = this.playbackInfo;
        Timeline r14 = r13.timeline;
        int r15 = r13.playbackState;
        if (r33 == true) goto L35;
        r2 = r13.playbackError;
    L35:
        ExoPlaybackException r16 = r2;
        if (r3 == false) goto L38;
        TrackGroupArray r18 = TrackGroupArray.EMPTY;
    L39:
        TrackGroupArray r19 = r18;
        if (r3 == false) goto L42;
        TrackSelectorResult r20 = this.emptyTrackSelectorResult;
    L43:
        TrackSelectorResult r110 = r20;
        if (r3 == false) goto L46;
        List r21 = ImmutableList.of();
    L47:
        List r111 = r21;
        PlaybackInfo r22 = this.playbackInfo;
        MediaSource.MediaPeriodId r23 = r17;
        long r24 = r25;
        long r26 = r25;
        this.playbackInfo = new PlaybackInfo(r14, r23, r12, r24, r15, r16, false, r19, r110, r111, r17, r22.playWhenReady, r22.playbackSuppressionReason, r22.playbackParameters, r26, 0, r25, this.offloadSchedulingEnabled, false);
        if (r32 == false) goto L61;
        this.mediaSourceList.release();
        return;
    L61:
        return;
    L46:
        r21 = r13.staticMetadata;
        goto L47
    L42:
        r20 = r13.trackSelectorResult;
        goto L43
    L38:
        r18 = r13.trackGroups;
    L30:
        r17 = r10;
        r25 = r11;
        r3 = false;
        goto L31
    L25:
        r12 = this.playbackInfo.positionUs;
        goto L26
    }

    private void resetPendingPauseAtEndOfPeriod() {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
        if (r0 != null) goto L5;
    L9:
        boolean r1 = false;
    L10:
        this.pendingPauseAtEndOfPeriod = r1;
        return;
    L5:
        if (r0.info.isLastInTimelineWindow == false) goto L9;
        if (this.pauseAtEndOfWindow == false) goto L9;
        r1 = true;
        goto L10
    }

    private void resetRendererPosition(long r5) throws ExoPlaybackException {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
        if (r0 == null) goto L6;
        r5 = r0.toRendererTime(r5);
    L6:
        this.rendererPositionUs = r5;
        this.mediaClock.resetPosition(r5);
        Renderer[] r6 = this.renderers;
        int r7 = r6.length;
        int r1 = 0;
    L7:
        if (r1 >= r7) goto L12;
        Renderer r2 = r6[r1];
        if (isRendererEnabled(r2) == false) goto L11;
        r2.resetPosition(this.rendererPositionUs);
    L11:
        r1 = r1 + 1;
        goto L7
    L12:
        notifyTrackSelectionDiscontinuity();
    }

    private static void resolvePendingMessageEndOfStreamPosition(Timeline r4, PendingMessageInfo r5, Timeline.Window r6, Timeline.Period r7) {
        int r8 = r4.getWindow(r4.getPeriodByUid(r5.resolvedPeriodUid, r7).windowIndex, r6).lastPeriodIndex;
        Object r9 = r4.getPeriod(r8, r7, true).uid;
        long r0 = r7.durationUs;
        if (r0 == C.TIME_UNSET) goto L5;
        long r1 = r0 - 1;
    L6:
        r5.setResolvedPosition(r8, r1, r9);
        return;
    L5:
        r1 = Long.MAX_VALUE;
        goto L6
    }

    private static boolean resolvePendingMessagePosition(PendingMessageInfo r15, Timeline r16, Timeline r17, int r18, boolean r19, Timeline.Window r20, Timeline.Period r21) {
        Object r2 = r15.resolvedPeriodUid;
        if (r2 == null) goto L5;
        int r3 = r16.getIndexOfPeriod(r2);
        if (r3 != (-1)) goto L19;
        return false;
    L19:
        if (r15.message.getPositionMs() != Long.MIN_VALUE) goto L22;
        resolvePendingMessageEndOfStreamPosition(r16, r15, r20, r21);
        return true;
    L22:
        r15.resolvedPeriodIndex = r3;
        r17.getPeriodByUid(r15.resolvedPeriodUid, r21);
        if (r21.isPlaceholder == true) goto L25;
    L27:
        return true;
    L25:
        if (r17.getWindow(r21.windowIndex, r20).firstPeriodIndex != r17.getIndexOfPeriod(r15.resolvedPeriodUid)) goto L27;
        long r5 = r15.resolvedPeriodTimeUs + r21.getPositionInWindowUs();
        Pair<Object, Long> r1 = r16.getPeriodPosition(r20, r21, r16.getPeriodByUid(r15.resolvedPeriodUid, r21).windowIndex, r5);
        r15.setResolvedPosition(r16.getIndexOfPeriod(r1.first), ((Long) r1.second).longValue(), r1.first);
        goto L27
    L5:
        if (r15.message.getPositionMs() != Long.MIN_VALUE) goto L7;
        long r4 = C.TIME_UNSET;
    L8:
        Pair<Object, Long> r6 = resolveSeekPosition(r16, new SeekPosition(r15.message.getTimeline(), r15.message.getWindowIndex(), r4), false, r18, r19, r20, r21);
        if (r6 != null) goto L11;
        return false;
    L11:
        r15.setResolvedPosition(r16.getIndexOfPeriod(r6.first), ((Long) r6.second).longValue(), r6.first);
        if (r15.message.getPositionMs() != Long.MIN_VALUE) goto L14;
        resolvePendingMessageEndOfStreamPosition(r16, r15, r20, r21);
    L14:
        return true;
    L7:
        r4 = C.msToUs(r15.message.getPositionMs());
        goto L8
    }

    private void resolvePendingMessagePositions(Timeline r10, Timeline r11) {
        if (r10.isEmpty() == true) goto L5;
    L7:
        int r0 = this.pendingMessages.size() - 1;
    L8:
        if (r0 < 0) goto L13;
        if (resolvePendingMessagePosition(this.pendingMessages.get(r0), r10, r11, this.repeatMode, this.shuffleModeEnabled, this.window, this.period) == true) goto L12;
        this.pendingMessages.get(r0).message.markAsProcessed(false);
        this.pendingMessages.remove(r0);
    L12:
        r0 = r0 - 1;
        goto L8
    L13:
        Collections.sort(this.pendingMessages);
        return;
    L5:
        if (r11.isEmpty() == false) goto L7;
    }

    private static PositionUpdateForPlaylistChange resolvePositionForPlaylistChange(Timeline r29, PlaybackInfo r30, SeekPosition r31, MediaPeriodQueue r32, int r33, boolean r34, Timeline.Window r35, Timeline.Period r36) {
        if (r29.isEmpty() == true) goto L5;
        MediaSource.MediaPeriodId r12 = r30.periodId;
        Object r13 = r12.periodUid;
        boolean r0 = shouldUseRequestedContentPosition(r30, r36);
        if (r0 == false) goto L9;
        long r1 = r30.requestedContentPositionUs;
    L10:
        long r14 = r1;
        boolean r18 = false;
        if (r31 == null) goto L26;
        int r15 = -1;
        Pair<Object, Long> r2 = resolveSeekPosition(r29, r31, true, r33, r34, r35, r36);
        if (r2 != null) goto L16;
        int r3 = r29.getFirstWindowIndex(r34);
        boolean r4 = false;
        boolean r5 = false;
        boolean r6 = true;
    L24:
        boolean r28 = r4;
        boolean r26 = r5;
        boolean r27 = r6;
        MediaSource.MediaPeriodId r20 = r12;
    L25:
        int r7 = r3;
    L47:
        if (r7 == r15) goto L49;
        Pair<Object, Long> r8 = r29.getPeriodPosition(r35, r36, r7, C.TIME_UNSET);
        r13 = r8.first;
        r14 = ((Long) r8.second).longValue();
        long r24 = -9223372036854775807L;
    L50:
        MediaSource.MediaPeriodId r9 = r32.resolveMediaPeriodIdForAds(r29, r13, r14);
        if (r9.nextAdGroupIndex == r15) goto L58;
        int r10 = r20.nextAdGroupIndex;
        if (r10 != r15) goto L55;
    L57:
        boolean r11 = false;
    L60:
        if (r20.periodUid.equals(r13) == true) goto L62;
    L67:
        if (r18 == false) goto L70;
        r9 = r20;
    L70:
        if (r9.isAd() == true) goto L72;
        long r22 = r14;
    L81:
        return new PositionUpdateForPlaylistChange(r9, r22, r24, r26, r27, r28);
    L72:
        if (r9.equals(r20) == false) goto L75;
        long r16 = r30.positionUs;
    L74:
        r22 = r16;
        goto L81
    L75:
        r29.getPeriodByUid(r9.periodUid, r36);
        if (r9.adIndexInAdGroup != r36.getFirstAdIndexToPlay(r9.adGroupIndex)) goto L78;
        r16 = r36.getAdResumePositionUs();
        goto L74
    L78:
        r16 = 0;
        goto L74
    L62:
        if (r20.isAd() == true) goto L67;
        if (r9.isAd() == true) goto L67;
        if (r11 == false) goto L67;
        r18 = true;
        goto L67
    L55:
        if (r9.adGroupIndex < r10) goto L57;
    L58:
        r11 = true;
        goto L60
    L49:
        r24 = r14;
        goto L50
    L16:
        if (r31.windowPositionUs != C.TIME_UNSET) goto L18;
        int r17 = r29.getPeriodByUid(r2.first, r36).windowIndex;
        boolean r19 = false;
    L20:
        if (r30.playbackState != 4) goto L22;
        boolean r21 = true;
    L23:
        r5 = r21;
        r6 = false;
        r4 = r19;
        r3 = r17;
        goto L24
    L22:
        r21 = false;
        goto L23
    L18:
        r13 = r2.first;
        r14 = ((Long) r2.second).longValue();
        r19 = true;
        r17 = -1;
        goto L20
    L26:
        r20 = r12;
        r15 = -1;
        if (r30.timeline.isEmpty() == false) goto L32;
        int r23 = r29.getFirstWindowIndex(r34);
    L29:
        r7 = r23;
    L30:
        r26 = false;
        r27 = false;
        r28 = false;
        goto L47
    L32:
        if (r29.getIndexOfPeriod(r13) != (-1)) goto L38;
        Object r25 = resolveSubsequentPeriod(r35, r36, r33, r34, r13, r30.timeline, r29);
        if (r25 != null) goto L36;
        r3 = r29.getFirstWindowIndex(r34);
        boolean r37 = true;
    L37:
        r27 = r37;
        r20 = r20;
        r26 = false;
        r28 = false;
        goto L25
    L36:
        r3 = r29.getPeriodByUid(r25, r36).windowIndex;
        r37 = false;
        goto L37
    L38:
        if (r0 == true) goto L40;
        r7 = -1;
        goto L30
    L40:
        if (r14 != C.TIME_UNSET) goto L42;
        r23 = r29.getPeriodByUid(r13, r36).windowIndex;
        goto L29
    L42:
        r20 = r20;
        r30.timeline.getPeriodByUid(r20.periodUid, r36);
        if (r30.timeline.getWindow(r36.windowIndex, r35).firstPeriodIndex != r30.timeline.getIndexOfPeriod(r20.periodUid)) goto L45;
        Pair<Object, Long> r38 = r29.getPeriodPosition(r35, r36, r29.getPeriodByUid(r13, r36).windowIndex, r14 + r36.getPositionInWindowUs());
        r13 = r38.first;
        r14 = ((Long) r38.second).longValue();
    L45:
        r7 = -1;
        r26 = false;
        r27 = false;
        r28 = true;
        goto L47
    L9:
        r1 = r30.positionUs;
        goto L10
    L5:
        return new PositionUpdateForPlaylistChange(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0, C.TIME_UNSET, false, true, false);
    }

    private static Pair<Object, Long> resolveSeekPosition(Timeline r12, SeekPosition r13, boolean r14, int r15, boolean r16, Timeline.Window r17, Timeline.Period r18) {
        Timeline r1 = r13.timeline;
        if (r12.isEmpty() == false) goto L6;
        return null;
    L6:
        if (r1.isEmpty() == false) goto L8;
        Timeline r10 = r12;
    L29:
        Timeline r2 = r10;
        Pair<Object, Long> r3 = r2.getPeriodPosition(r17, r18, r13.windowIndex, r13.windowPositionUs);     // Catch: IndexOutOfBoundsException -> L28
        if (r12.equals(r10) == false) goto L14;
        return r3;
    L14:
        if (r12.getIndexOfPeriod(r3.first) == (-1)) goto L22;
        if (r10.getPeriodByUid(r3.first, r18).isPlaceholder == true) goto L18;
        return r3;
    L18:
        if (r10.getWindow(r18.windowIndex, r17).firstPeriodIndex == r10.getIndexOfPeriod(r3.first)) goto L20;
        return r3;
    L20:
        return r12.getPeriodPosition(r17, r18, r12.getPeriodByUid(r3.first, r18).windowIndex, r13.windowPositionUs);
    L22:
        if (r14 == false) goto L27;
        Object r0 = resolveSubsequentPeriod(r17, r18, r15, r16, r3.first, r10, r12);
        if (r0 == null) goto L27;
        return r12.getPeriodPosition(r17, r18, r12.getPeriodByUid(r0, r18).windowIndex, C.TIME_UNSET);
    L27:
        return null;
    L8:
        r10 = r1;
        goto L29
    }

    static Object resolveSubsequentPeriod(Timeline.Window r9, Timeline.Period r10, int r11, boolean r12, Object r13, Timeline r14, Timeline r15) {
        int r16 = r14.getIndexOfPeriod(r13);
        int r0 = r14.getPeriodCount();
        int r2 = 0;
        int r4 = r16;
        int r17 = -1;
    L3:
        if (r2 >= r0) goto L9;
        if (r17 != (-1)) goto L9;
        r4 = r14.getNextPeriodIndex(r4, r10, r9, r11, r12);
        if (r4 == (-1)) goto L9;
        r17 = r15.getIndexOfPeriod(r14.getUidOfPeriod(r4));
        r2 = r2 + 1;
    L9:
        if (r17 != (-1)) goto L12;
        return null;
    L12:
        return r15.getUidOfPeriod(r17);
    }

    private void scheduleNextWork(long r3, long r5) {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessageAtTime(2, r3 + r5);
    }

    private void seekToCurrentPosition(boolean r12) throws ExoPlaybackException {
        MediaSource.MediaPeriodId r0 = this.queue.getPlayingPeriod().info.id;
        long r3 = seekToPeriodPosition(r0, this.playbackInfo.positionUs, true, false);
        if (r3 == this.playbackInfo.positionUs) goto L6;
        PlaybackInfo r1 = this.playbackInfo;
        this.playbackInfo = handlePositionDiscontinuity(r0, r3, r1.requestedContentPositionUs, r1.discontinuityStartPositionUs, r12, 5);
        return;
    }

    private void seekToInternal(SeekPosition r20) throws ExoPlaybackException {
        boolean r8 = true;
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Pair<Object, Long> r1 = resolveSeekPosition(this.playbackInfo.timeline, r20, true, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        if (r1 != null) goto L6;
        Pair<MediaSource.MediaPeriodId, Long> r7 = getPlaceholderFirstMediaPeriodPosition(this.playbackInfo.timeline);
        MediaSource.MediaPeriodId r9 = (MediaSource.MediaPeriodId) r7.first;
        long r12 = ((Long) r7.second).longValue();
        boolean r10 = !this.playbackInfo.timeline.isEmpty();
        long r17 = -9223372036854775807L;
    L5:
        long r4 = r12;
        long r13 = r17;
    L74:
    L68:
        th = th;
        long r11 = r4;
    L70:
        this.playbackInfo = handlePositionDiscontinuity(r9, r11, r13, r11, r10, 2);
        throw th;
    L23:
        if (this.playbackInfo.timeline.isEmpty() == false) goto L26;
        this.pendingInitialSeekPosition = r20;     // Catch: Throwable -> L68
    L31:
        long r14 = r4;
    L64:
        this.playbackInfo = handlePositionDiscontinuity(r9, r14, r13, r14, r10, 2);
        return;
    L26:
        if (r1 != null) goto L33;
        if (this.playbackInfo.playbackState == 1) goto L30;
        setState(4);     // Catch: Throwable -> L68
    L30:
        resetInternal(false, true, false, true);     // Catch: Throwable -> L68
        goto L31
    L33:
        if (r9.equals(this.playbackInfo.periodId) == false) goto L51;
        MediaPeriodHolder r2 = this.queue.getPlayingPeriod();     // Catch: Throwable -> L68
        if (r2 != null) goto L37;
    L41:
        long r3 = r4;
    L43:
        if (C.usToMs(r3) != C.usToMs(this.playbackInfo.positionUs)) goto L53;
        PlaybackInfo r5 = this.playbackInfo;     // Catch: Throwable -> L68
        int r6 = r5.playbackState;     // Catch: Throwable -> L68
        if (r6 != 2) goto L47;
    L48:
        long r15 = r5.positionUs;     // Catch: Throwable -> L68
        this.playbackInfo = handlePositionDiscontinuity(r9, r15, r13, r15, r10, 2);
        return;
    L47:
        if (r6 == 3) goto L48;
    L53:
        if (this.playbackInfo.playbackState != 4) goto L55;
        boolean r0 = true;
    L56:
        long r16 = seekToPeriodPosition(r9, r3, r0);     // Catch: Throwable -> L68
        if (r4 != r16) goto L61;
        r8 = false;
    L61:
        boolean r18 = r8 | r10;
        PlaybackInfo r19 = this.playbackInfo;     // Catch: Throwable -> L66
        Timeline r21 = r19.timeline;     // Catch: Throwable -> L66
        updateLivePlaybackSpeedControl(r21, r9, r21, r19.periodId, r13);     // Catch: Throwable -> L66
        r10 = r18;
        r14 = r16;
    L66:
        th = th;
        r10 = r18;
        r11 = r16;
        goto L70
    L55:
        r0 = false;
        goto L56
    L37:
        if (r2.prepared == false) goto L41;
        if (r4 == 0) goto L41;
        r3 = r2.mediaPeriod.getAdjustedSeekPositionUs(r4, this.seekParameters);     // Catch: Throwable -> L68
        goto L43
    L51:
        r3 = r4;
        goto L53
    L6:
        Object r22 = r1.first;
        r12 = ((Long) r1.second).longValue();
        if (r20.windowPositionUs != C.TIME_UNSET) goto L9;
        long r23 = -9223372036854775807L;
    L10:
        MediaSource.MediaPeriodId r24 = this.queue.resolveMediaPeriodIdForAds(this.playbackInfo.timeline, r22, r12);
        if (r24.isAd() == false) goto L18;
        this.playbackInfo.timeline.getPeriodByUid(r24.periodUid, this.period);
        if (this.period.getFirstAdIndexToPlay(r24.adGroupIndex) != r24.adIndexInAdGroup) goto L15;
        long r110 = this.period.getAdResumePositionUs();
    L16:
        r4 = r110;
        r13 = r23;
        r10 = true;
        r9 = r24;
        goto L74
    L15:
        r110 = 0;
        goto L16
    L18:
        if (r20.windowPositionUs != C.TIME_UNSET) goto L20;
        boolean r25 = true;
    L21:
        r17 = r23;
        r10 = r25;
        r9 = r24;
        goto L5
    L20:
        r25 = false;
        goto L21
    L9:
        r23 = r12;
        goto L10
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId r8, long r9, boolean r11) throws ExoPlaybackException {
        if (this.queue.getPlayingPeriod() == this.queue.getReadingPeriod()) goto L5;
        boolean r5 = true;
    L7:
        return seekToPeriodPosition(r8, r9, r5, r11);
    L5:
        r5 = false;
        goto L7
    }

    private void sendMessageInternal(PlayerMessage r10) throws ExoPlaybackException {
        if (r10.getPositionMs() != C.TIME_UNSET) goto L6;
        sendMessageToTarget(r10);
        return;
    L6:
        if (this.playbackInfo.timeline.isEmpty() == false) goto L8;
        this.pendingMessages.add(new PendingMessageInfo(r10));
        return;
    L8:
        PendingMessageInfo r0 = new PendingMessageInfo(r10);
        Timeline r4 = this.playbackInfo.timeline;
        if (resolvePendingMessagePosition(r0, r4, r4, this.repeatMode, this.shuffleModeEnabled, this.window, this.period) == false) goto L11;
        this.pendingMessages.add(r0);
        Collections.sort(this.pendingMessages);
        return;
    L11:
        r10.markAsProcessed(false);
    }

    private void sendMessageToTarget(PlayerMessage r3) throws ExoPlaybackException {
        if (r3.getLooper() != this.playbackLooper) goto L8;
        deliverMessage(r3);
        int r4 = this.playbackInfo.playbackState;
        if (r4 == 3) goto L7;
        if (r4 == 2) goto L7;
        return;
    L7:
        this.handler.sendEmptyMessage(2);
        return;
    L8:
        this.handler.obtainMessage(15, r3).sendToTarget();
    }

    private void sendMessageToTargetThread(final PlayerMessage r4) {
        Looper r0 = r4.getLooper();
        if (r0.getThread().isAlive() == true) goto L6;
        Log.w("TAG", "Trying to send message on a dead thread.");
        r4.markAsProcessed(false);
        return;
    L6:
        this.clock.createHandler(r0, null).post(new b0(this, r4));
    }

    private void setAllRendererStreamsFinal(long r6) {
        Renderer[] r0 = this.renderers;
        int r1 = r0.length;
        int r2 = 0;
    L3:
        if (r2 >= r1) goto L8;
        Renderer r3 = r0[r2];
        if (r3.getStream() == null) goto L7;
        setCurrentStreamFinal(r3, r6);
    L7:
        r2 = r2 + 1;
        goto L3
    }

    private void setCurrentStreamFinal(Renderer r2, long r3) {
        r2.setCurrentStreamFinal();
        if ((r2 instanceof TextRenderer) == false) goto L6;
        ((TextRenderer) r2).setFinalStreamEndPositionUs(r3);
        return;
    }

    private void setForegroundModeInternal(boolean r5, AtomicBoolean r6) {
        if (this.foregroundMode == r5) goto L12;
        this.foregroundMode = r5;
        if (r5 == true) goto L12;
        Renderer[] r7 = this.renderers;
        int r0 = r7.length;
        int r1 = 0;
    L7:
        if (r1 >= r0) goto L12;
        Renderer r2 = r7[r1];
        if (isRendererEnabled(r2) == true) goto L11;
        r2.reset();
    L11:
        r1 = r1 + 1;
    L12:
        if (r6 == null) goto L21;
        monitor-enter(this);
        r6.set(true);     // Catch: Throwable -> L18
        notifyAll();     // Catch: Throwable -> L18
        monitor-exit(this);     // Catch: Throwable -> L18
        return;
    L18:
        th = move-exception;
        throw th;
    }

    private void setMediaItemsInternal(MediaSourceListUpdateMessage r6) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        if (MediaSourceListUpdateMessage.access$200(r6) == (-1)) goto L5;
        this.pendingInitialSeekPosition = new SeekPosition(new PlaylistTimeline(MediaSourceListUpdateMessage.access$300(r6), MediaSourceListUpdateMessage.access$400(r6)), MediaSourceListUpdateMessage.access$200(r6), MediaSourceListUpdateMessage.access$500(r6));
    L5:
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setMediaSources(MediaSourceListUpdateMessage.access$300(r6), MediaSourceListUpdateMessage.access$400(r6)), false);
    }

    private void setOffloadSchedulingEnabledInternal(boolean r4) {
        if (r4 != this.offloadSchedulingEnabled) goto L5;
        return;
    L5:
        this.offloadSchedulingEnabled = r4;
        PlaybackInfo r0 = this.playbackInfo;
        int r1 = r0.playbackState;
        if (r4 == false) goto L8;
    L13:
        this.playbackInfo = r0.copyWithOffloadSchedulingEnabled(r4);
        return;
    L8:
        if (r1 == 4) goto L13;
        if (r1 == 1) goto L13;
        this.handler.sendEmptyMessage(2);
    }

    private void setPauseAtEndOfWindowInternal(boolean r2) throws ExoPlaybackException {
        this.pauseAtEndOfWindow = r2;
        resetPendingPauseAtEndOfPeriod();
        if (this.pendingPauseAtEndOfPeriod == true) goto L5;
        return;
    L5:
        if (this.queue.getReadingPeriod() == this.queue.getPlayingPeriod()) goto L9;
        seekToCurrentPosition(true);
        handleLoadingMediaPeriodChanged(false);
        return;
    }

    private void setPlayWhenReadyInternal(boolean r2, int r3, boolean r4, int r5) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(r4 ? 1 : 0);
        this.playbackInfoUpdate.setPlayWhenReadyChangeReason(r5);
        this.playbackInfo = this.playbackInfo.copyWithPlayWhenReady(r2, r3);
        this.isRebuffering = false;
        notifyTrackSelectionPlayWhenReadyChanged(r2);
        if (shouldPlayWhenReady() == true) goto L5;
        stopRenderers();
        updatePlaybackPositions();
        return;
    L5:
        int r6 = this.playbackInfo.playbackState;
        if (r6 != 3) goto L8;
        startRenderers();
        this.handler.sendEmptyMessage(2);
        return;
    L8:
        if (r6 != 2) goto L13;
        this.handler.sendEmptyMessage(2);
        return;
    }

    private void setPlaybackParametersInternal(PlaybackParameters r2) throws ExoPlaybackException {
        this.mediaClock.setPlaybackParameters(r2);
        handlePlaybackParameters(this.mediaClock.getPlaybackParameters(), true);
    }

    private void setRepeatModeInternal(int r3) throws ExoPlaybackException {
        this.repeatMode = r3;
        if (this.queue.updateRepeatMode(this.playbackInfo.timeline, r3) == true) goto L5;
        seekToCurrentPosition(true);
    L5:
        handleLoadingMediaPeriodChanged(false);
    }

    private void setSeekParametersInternal(SeekParameters r1) {
        this.seekParameters = r1;
    }

    private void setShuffleModeEnabledInternal(boolean r3) throws ExoPlaybackException {
        this.shuffleModeEnabled = r3;
        if (this.queue.updateShuffleModeEnabled(this.playbackInfo.timeline, r3) == true) goto L5;
        seekToCurrentPosition(true);
    L5:
        handleLoadingMediaPeriodChanged(false);
    }

    private void setShuffleOrderInternal(ShuffleOrder r3) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setShuffleOrder(r3), false);
    }

    private void setState(int r3) {
        PlaybackInfo r0 = this.playbackInfo;
        if (r0.playbackState == r3) goto L6;
        this.playbackInfo = r0.copyWithPlaybackState(r3);
        return;
    }

    private boolean shouldAdvancePlayingPeriod() {
        if (shouldPlayWhenReady() == true) goto L6;
        return false;
    L6:
        if (this.pendingPauseAtEndOfPeriod == false) goto L8;
        return false;
    L8:
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
        if (r0 != null) goto L11;
        return false;
    L11:
        MediaPeriodHolder r1 = r0.getNext();
        if (r1 != null) goto L14;
        return false;
    L14:
        if (this.rendererPositionUs >= r1.getStartPositionRendererTime()) goto L16;
        return false;
    L16:
        if (r1.allRenderersInCorrectState == false) goto L21;
        return true;
    L21:
        return false;
    }

    private boolean shouldContinueLoading() {
        if (isLoadingPossible() == true) goto L6;
        return false;
    L6:
        MediaPeriodHolder r0 = this.queue.getLoadingPeriod();
        long r6 = getTotalBufferedDurationUs(r0.getNextLoadPositionUs());
        if (r0 != this.queue.getPlayingPeriod()) goto L9;
        long r4 = r0.toPeriodTime(this.rendererPositionUs);
    L11:
        return this.loadControl.shouldContinueLoading(r4, r6, this.mediaClock.getPlaybackParameters().speed);
    L9:
        r4 = r0.toPeriodTime(this.rendererPositionUs) - r0.info.startPositionUs;
        goto L11
    }

    private boolean shouldPlayWhenReady() {
        PlaybackInfo r0 = this.playbackInfo;
        if (r0.playWhenReady == true) goto L5;
    L7:
        return false;
    L5:
        if (r0.playbackSuppressionReason != 0) goto L7;
        return true;
    }

    private boolean shouldTransitionToReadyState(boolean r13) {
        if (this.enabledRendererCount != 0) goto L7;
        return isTimelineReady();
    L7:
        if (r13 == true) goto L9;
        return false;
    L9:
        PlaybackInfo r14 = this.playbackInfo;
        if (r14.isLoading == true) goto L13;
        return true;
    L13:
        if (shouldUseLivePlaybackSpeedControl(r14.timeline, this.queue.getPlayingPeriod().info.id) == false) goto L15;
        long r3 = this.livePlaybackSpeedControl.getTargetLiveOffsetUs();
    L16:
        long r10 = r3;
        MediaPeriodHolder r15 = this.queue.getLoadingPeriod();
        if (r15.isFullyBuffered() == true) goto L19;
    L21:
        boolean r1 = false;
    L23:
        if (r15.info.id.isAd() == true) goto L25;
    L27:
        boolean r16 = false;
    L28:
        if (r1 == true) goto L32;
        if (r16 == true) goto L32;
        if (this.loadControl.shouldStartPlayback(getTotalBufferedDurationUs(), this.mediaClock.getPlaybackParameters().speed, this.isRebuffering, r10) == true) goto L32;
        return false;
    L32:
        return true;
    L25:
        if (r15.prepared == true) goto L27;
        r16 = true;
        goto L28
    L19:
        if (r15.info.isFinal == false) goto L21;
        r1 = true;
        goto L23
    L15:
        r3 = C.TIME_UNSET;
        goto L16
    }

    private boolean shouldUseLivePlaybackSpeedControl(Timeline r5, MediaSource.MediaPeriodId r6) {
        if (r6.isAd() == false) goto L5;
        return false;
    L5:
        if (r5.isEmpty() == true) goto L19;
        r5.getWindow(r5.getPeriodByUid(r6.periodUid, this.period).windowIndex, this.window);
        if (this.window.isLive() == false) goto L16;
        Timeline.Window r7 = this.window;
        if (r7.isDynamic == true) goto L12;
        return false;
    L12:
        if (r7.windowStartTimeMs == C.TIME_UNSET) goto L18;
        return true;
    L18:
        return false;
    L16:
        return false;
    L19:
        return false;
    }

    private static boolean shouldUseRequestedContentPosition(PlaybackInfo r2, Timeline.Period r3) {
        MediaSource.MediaPeriodId r0 = r2.periodId;
        Timeline r4 = r2.timeline;
        if (r0.isAd() == false) goto L5;
    L10:
        return true;
    L5:
        if (r4.isEmpty() == true) goto L10;
        if (r4.getPeriodByUid(r0.periodUid, r3).isPlaceholder == true) goto L10;
        return false;
    }

    private void startRenderers() throws ExoPlaybackException {
        int r0 = 0;
        this.isRebuffering = false;
        this.mediaClock.start();
        Renderer[] r1 = this.renderers;
        int r2 = r1.length;
    L3:
        if (r0 >= r2) goto L8;
        Renderer r3 = r1[r0];
        if (isRendererEnabled(r3) == false) goto L7;
        r3.start();
    L7:
        r0 = r0 + 1;
        goto L3
    }

    private void stopInternal(boolean r3, boolean r4) {
        if (r3 == false) goto L5;
    L8:
        boolean r5 = true;
    L9:
        resetInternal(r5, false, true, false);
        this.playbackInfoUpdate.incrementPendingOperationAcks(r4 ? 1 : 0);
        this.loadControl.onStopped();
        setState(1);
        return;
    L5:
        if (this.foregroundMode == false) goto L8;
        r5 = false;
        goto L9
    }

    private void stopRenderers() throws ExoPlaybackException {
        this.mediaClock.stop();
        Renderer[] r0 = this.renderers;
        int r1 = r0.length;
        int r2 = 0;
    L3:
        if (r2 >= r1) goto L8;
        Renderer r3 = r0[r2];
        if (isRendererEnabled(r3) == false) goto L7;
        ensureStopped(r3);
    L7:
        r2 = r2 + 1;
        goto L3
    }

    private void updateIsLoading() {
        MediaPeriodHolder r0 = this.queue.getLoadingPeriod();
        if (this.shouldContinueLoading == true) goto L9;
        if (r0 != null) goto L6;
    L8:
        boolean r1 = false;
    L10:
        PlaybackInfo r2 = this.playbackInfo;
        if (r1 == r2.isLoading) goto L14;
        this.playbackInfo = r2.copyWithIsLoading(r1);
        return;
    L14:
        return;
    L6:
        if (r0.mediaPeriod.isLoading() == false) goto L8;
    L9:
        r1 = true;
        goto L10
    }

    private void updateLivePlaybackSpeedControl(Timeline r4, MediaSource.MediaPeriodId r5, Timeline r6, MediaSource.MediaPeriodId r7, long r8) {
        if (r4.isEmpty() == false) goto L5;
    L17:
        float r9 = this.mediaClock.getPlaybackParameters().speed;
        PlaybackParameters r10 = this.playbackInfo.playbackParameters;
        if (r9 == r10.speed) goto L23;
        this.mediaClock.setPlaybackParameters(r10);
        return;
    L23:
        return;
    L5:
        if (shouldUseLivePlaybackSpeedControl(r4, r5) == false) goto L17;
        r4.getWindow(r4.getPeriodByUid(r5.periodUid, this.period).windowIndex, this.window);
        this.livePlaybackSpeedControl.setLiveConfiguration((MediaItem.LiveConfiguration) Util.castNonNull(this.window.liveConfiguration));
        if (r8 == C.TIME_UNSET) goto L10;
        this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(getLiveOffsetUs(r4, r5.periodUid, r8));
        return;
    L10:
        Object r11 = this.window.uid;
        Object r12 = null;
        if (r6.isEmpty() == true) goto L14;
        r12 = r6.getWindow(r6.getPeriodByUid(r7.periodUid, this.period).windowIndex, this.window).uid;
    L14:
        if (Util.areEqual(r12, r11) == true) goto L22;
        this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(C.TIME_UNSET);
        return;
    }

    private void updateLoadControlTrackSelection(TrackGroupArray r3, TrackSelectorResult r4) {
        this.loadControl.onTracksSelected(this.renderers, r3, r4.selections);
    }

    private void updatePeriods() throws ExoPlaybackException, IOException {
        if (this.playbackInfo.timeline.isEmpty() == false) goto L5;
        return;
    L5:
        if (this.mediaSourceList.isPrepared() == false) goto L10;
        maybeUpdateLoadingPeriod();
        maybeUpdateReadingPeriod();
        maybeUpdateReadingRenderers();
        maybeUpdatePlayingPeriod();
        return;
    }

    private void updatePlaybackPositions() throws ExoPlaybackException {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
        if (r0 != null) goto L6;
        return;
    L6:
        if (r0.prepared == false) goto L8;
        long r6 = r0.mediaPeriod.readDiscontinuity();
    L10:
        if (r6 == C.TIME_UNSET) goto L14;
        resetRendererPosition(r6);
        if (r6 == this.playbackInfo.positionUs) goto L19;
        PlaybackInfo r1 = this.playbackInfo;
        this.playbackInfo = handlePositionDiscontinuity(r1.periodId, r6, r1.requestedContentPositionUs, r6, true, 5);
    L19:
        MediaPeriodHolder r2 = this.queue.getLoadingPeriod();
        this.playbackInfo.bufferedPositionUs = r2.getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        PlaybackInfo r3 = this.playbackInfo;
        if (r3.playWhenReady == true) goto L22;
        return;
    L22:
        if (r3.playbackState == 3) goto L24;
        return;
    L24:
        if (shouldUseLivePlaybackSpeedControl(r3.timeline, r3.periodId) == true) goto L26;
        return;
    L26:
        if (this.playbackInfo.playbackParameters.speed != 1.0f) goto L34;
        float r4 = this.livePlaybackSpeedControl.getAdjustedPlaybackSpeed(getCurrentLiveOffsetUs(), getTotalBufferedDurationUs());
        if (this.mediaClock.getPlaybackParameters().speed == r4) goto L35;
        this.mediaClock.setPlaybackParameters(this.playbackInfo.playbackParameters.withSpeed(r4));
        handlePlaybackParameters(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
        return;
    L35:
        return;
    L34:
        return;
    L14:
        DefaultMediaClock r5 = this.mediaClock;
        if (r0 == this.queue.getReadingPeriod()) goto L17;
        boolean r7 = true;
    L18:
        long r8 = r5.syncAndGetPositionUs(r7);
        this.rendererPositionUs = r8;
        long r9 = r0.toPeriodTime(r8);
        maybeTriggerPendingMessages(this.playbackInfo.positionUs, r9);
        this.playbackInfo.positionUs = r9;
        goto L19
    L17:
        r7 = false;
        goto L18
    L8:
        r6 = -9223372036854775807L;
        goto L10
    }

    private void updateTrackSelectionPlaybackSpeed(float r6) {
        MediaPeriodHolder r0 = this.queue.getPlayingPeriod();
    L3:
        if (r0 == null) goto L11;
        ExoTrackSelection[] r1 = r0.getTrackSelectorResult().selections;
        int r2 = r1.length;
        int r3 = 0;
    L5:
        if (r3 >= r2) goto L10;
        ExoTrackSelection r4 = r1[r3];
        if (r4 == null) goto L9;
        r4.onPlaybackSpeed(r6);
    L9:
        r3 = r3 + 1;
        goto L5
    L10:
        r0 = r0.getNext();
        goto L3
    }

    private synchronized void waitUninterruptibly(Supplier<Boolean> r7, long r8) {
        monitor-enter(this);
        long r0 = this.clock.elapsedRealtime() + r8;     // Catch: Throwable -> L16
        boolean r2 = false;
    L5:
        if (r7.get().booleanValue() == true) goto L12;
        if (r8 <= 0) goto L12;
        this.clock.onThreadBlocked();     // Catch: InterruptedException -> L10 Throwable -> L16
        wait(r8);     // Catch: InterruptedException -> L10 Throwable -> L16
    L11:
        r8 = r0 - this.clock.elapsedRealtime();     // Catch: Throwable -> L16
    L10:
        r2 = true;
    L12:
        if (r2 == false) goto L14;
        Thread.currentThread().interrupt();     // Catch: Throwable -> L16
    L14:
        monitor-exit(this);
        return;
    L16:
        th = move-exception;
        throw th;
    }

    public void addMediaSources(int r10, List<MediaSourceList.MediaSourceHolder> r11, ShuffleOrder r12) {
        this.handler.obtainMessage(18, r10, 0, new MediaSourceListUpdateMessage(r11, r12, -1, C.TIME_UNSET, null)).sendToTarget();
    }

    public /* synthetic */ Boolean b() {
        return a();
    }

    public /* synthetic */ void d(PlayerMessage r1) {
        c(r1);
    }

    public void experimentalSetForegroundModeTimeoutMs(long r1) {
        this.setForegroundModeTimeoutMs = r1;
    }

    public void experimentalSetOffloadSchedulingEnabled(boolean r4) {
        this.handler.obtainMessage(24, r4 ? 1 : 0, 0).sendToTarget();
    }

    public Looper getPlaybackLooper() {
        return this.playbackLooper;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message r7) {
    L62:
        e = e;
        if (e.type != 1) goto L69;
        MediaPeriodHolder r4 = this.queue.getReadingPeriod();
        if (r4 == null) goto L69;
        e = e.copyWithMediaPeriodId(r4.info.id);
    L69:
        if (e.isRecoverable == true) goto L71;
    L73:
        ExoPlaybackException r5 = this.pendingRecoverableRendererError;
        if (r5 == null) goto L76;
        r5.addSuppressed(e);
        e = this.pendingRecoverableRendererError;
    L76:
        Log.e(TAG, "Playback error", e);
        stopInternal(true, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(e);
    L77:
        maybeNotifyPlaybackInfoChanged();
    L78:
        return true;
    L71:
        if (this.pendingRecoverableRendererError != null) goto L73;
        Log.w(TAG, "Recoverable renderer error", e);
        this.pendingRecoverableRendererError = e;
        HandlerWrapper r0 = this.handler;
        r0.sendMessageAtFrontOfQueue(r0.obtainMessage(25, e));
    L57:
        e = move-exception;
        ExoPlaybackException r8 = ExoPlaybackException.createForSource(e);
        MediaPeriodHolder r6 = this.queue.getPlayingPeriod();
        if (r6 == null) goto L61;
        r8 = r8.copyWithMediaPeriodId(r6.info.id);
    L61:
        Log.e(TAG, "Playback error", r8);
        stopInternal(false, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(r8);
        maybeNotifyPlaybackInfoChanged();
    L55:
        e = move-exception;
        ExoPlaybackException r9 = ExoPlaybackException.createForUnexpected(e);
        Log.e(TAG, "Playback error", r9);
        stopInternal(true, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(r9);
        maybeNotifyPlaybackInfoChanged();
        goto L78
    L4:
        switch(r7.what) {
            case 0: goto L52;
            case 1: goto L48;
            case 2: goto L46;
            case 3: goto L45;
            case 4: goto L44;
            case 5: goto L43;
            case 6: goto L42;
            case 7: goto L40;
            case 8: goto L39;
            case 9: goto L38;
            case 10: goto L37;
            case 11: goto L36;
            case 12: goto L32;
            case 13: goto L27;
            case 14: goto L25;
            case 15: goto L24;
            case 16: goto L23;
            case 17: goto L22;
            case 18: goto L21;
            case 19: goto L20;
            case 20: goto L19;
            case 21: goto L18;
            case 22: goto L17;
            case 23: goto L13;
            case 24: goto L8;
            case 25: goto L6;
            default: goto L5;
        };     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
    L5:
        return false;
    L6:
        attemptRendererErrorRecovery();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
    L53:
        maybeNotifyPlaybackInfoChanged();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L78
    L17:
        mediaSourceListUpdateRequestedInternal();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L18:
        setShuffleOrderInternal((ShuffleOrder) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L19:
        removeMediaItemsInternal(r7.arg1, r7.arg2, (ShuffleOrder) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L20:
        moveMediaItemsInternal((MoveMediaItemsMessage) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L21:
        addMediaItemsInternal((MediaSourceListUpdateMessage) r7.obj, r7.arg1);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L22:
        setMediaItemsInternal((MediaSourceListUpdateMessage) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L23:
        handlePlaybackParameters((PlaybackParameters) r7.obj, false);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L24:
        sendMessageToTargetThread((PlayerMessage) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L25:
        sendMessageInternal((PlayerMessage) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L36:
        setRepeatModeInternal(r7.arg1);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L37:
        reselectTracksInternal();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L38:
        handleContinueLoadingRequested((MediaPeriod) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L39:
        handlePeriodPrepared((MediaPeriod) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L40:
        releaseInternal();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        return true;
    L42:
        stopInternal(false, true);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L43:
        setSeekParametersInternal((SeekParameters) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L44:
        setPlaybackParametersInternal((PlaybackParameters) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L45:
        seekToInternal((SeekPosition) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L46:
        doSomeWork();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L52:
        prepareInternal();     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L8:
        if (r7.arg1 != 1) goto L10;
        boolean r10 = true;
    L11:
        setOffloadSchedulingEnabledInternal(r10);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L10:
        r10 = false;
        goto L11
    L13:
        if (r7.arg1 == 0) goto L15;
        boolean r11 = true;
    L16:
        setPauseAtEndOfWindowInternal(r11);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L15:
        r11 = false;
        goto L16
    L27:
        if (r7.arg1 == 0) goto L29;
        boolean r12 = true;
    L30:
        setForegroundModeInternal(r12, (AtomicBoolean) r7.obj);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L29:
        r12 = false;
        goto L30
    L32:
        if (r7.arg1 == 0) goto L34;
        boolean r13 = true;
    L35:
        setShuffleModeEnabledInternal(r13);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L34:
        r13 = false;
        goto L35
    L48:
        if (r7.arg1 == 0) goto L50;
        boolean r14 = true;
    L51:
        setPlayWhenReadyInternal(r14, r7.arg2, true, 1);     // Catch: RuntimeException -> L55 IOException -> L57 ExoPlaybackException -> L62
        goto L53
    L50:
        r14 = false;
        goto L51
    }

    public void moveMediaSources(int r2, int r3, int r4, ShuffleOrder r5) {
        MoveMediaItemsMessage r0 = new MoveMediaItemsMessage(r2, r3, r4, r5);
        this.handler.obtainMessage(19, r0).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public /* bridge */ /* synthetic */ void onContinueLoadingRequested(SequenceableLoader r1) {
        onContinueLoadingRequested((MediaPeriod) r1);
    }

    @Override // com.google.android.exoplayer2.DefaultMediaClock.PlaybackParametersListener
    public void onPlaybackParametersChanged(PlaybackParameters r3) {
        this.handler.obtainMessage(16, r3).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.MediaSourceList.MediaSourceListInfoRefreshListener
    public void onPlaylistUpdateRequested() {
        this.handler.sendEmptyMessage(22);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod r3) {
        this.handler.obtainMessage(8, r3).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    public void prepare() {
        this.handler.obtainMessage(0).sendToTarget();
    }

    public synchronized boolean release() {
        monitor-enter(this);
    L14:
        th = move-exception;
        throw th;
    L4:
        if (this.released == true) goto L12;
        if (this.internalPlaybackThread.isAlive() == false) goto L12;
        this.handler.sendEmptyMessage(7);     // Catch: Throwable -> L14
        waitUninterruptibly(new a0(this), this.releaseTimeoutMs);     // Catch: Throwable -> L14
        boolean r0 = this.released;     // Catch: Throwable -> L14
        monitor-exit(this);
        return r0;
    L12:
        monitor-exit(this);
        return true;
    }

    public void removeMediaSources(int r3, int r4, ShuffleOrder r5) {
        this.handler.obtainMessage(20, r3, r4, r5).sendToTarget();
    }

    public void seekTo(Timeline r3, int r4, long r5) {
        this.handler.obtainMessage(3, new SeekPosition(r3, r4, r5)).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.PlayerMessage.Sender
    public synchronized void sendMessage(PlayerMessage r3) {
        monitor-enter(this);
    L14:
        th = move-exception;
        throw th;
    L4:
        if (this.released == false) goto L6;
    L11:
        Log.w(TAG, "Ignoring messages sent after release.");     // Catch: Throwable -> L14
        r3.markAsProcessed(false);     // Catch: Throwable -> L14
        monitor-exit(this);
        return;
    L6:
        if (this.internalPlaybackThread.isAlive() == false) goto L11;
        this.handler.obtainMessage(14, r3).sendToTarget();     // Catch: Throwable -> L14
        monitor-exit(this);
    }

    public synchronized boolean setForegroundMode(boolean r4) {
        monitor-enter(this);
    L18:
        th = move-exception;
        throw th;
    L4:
        if (this.released == false) goto L6;
    L16:
        monitor-exit(this);
        return true;
    L6:
        if (this.internalPlaybackThread.isAlive() == false) goto L16;
        if (r4 == false) goto L13;
        this.handler.obtainMessage(13, 1, 0).sendToTarget();     // Catch: Throwable -> L18
        monitor-exit(this);
        return true;
    L13:
        final AtomicBoolean r5 = new AtomicBoolean();     // Catch: Throwable -> L18
        this.handler.obtainMessage(13, 0, 0, r5).sendToTarget();     // Catch: Throwable -> L18
        waitUninterruptibly(new t0(r5), this.setForegroundModeTimeoutMs);     // Catch: Throwable -> L18
        boolean r6 = r5.get();     // Catch: Throwable -> L18
        monitor-exit(this);
        return r6;
    }

    public void setMediaSources(List<MediaSourceList.MediaSourceHolder> r10, int r11, long r12, ShuffleOrder r14) {
        this.handler.obtainMessage(17, new MediaSourceListUpdateMessage(r10, r14, r11, r12, null)).sendToTarget();
    }

    public void setPauseAtEndOfWindow(boolean r4) {
        this.handler.obtainMessage(23, r4 ? 1 : 0, 0).sendToTarget();
    }

    public void setPlayWhenReady(boolean r3, int r4) {
        this.handler.obtainMessage(1, r3 ? 1 : 0, r4).sendToTarget();
    }

    public void setPlaybackParameters(PlaybackParameters r3) {
        this.handler.obtainMessage(4, r3).sendToTarget();
    }

    public void setRepeatMode(int r4) {
        this.handler.obtainMessage(11, r4, 0).sendToTarget();
    }

    public void setSeekParameters(SeekParameters r3) {
        this.handler.obtainMessage(5, r3).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean r4) {
        this.handler.obtainMessage(12, r4 ? 1 : 0, 0).sendToTarget();
    }

    public void setShuffleOrder(ShuffleOrder r3) {
        this.handler.obtainMessage(21, r3).sendToTarget();
    }

    public void stop() {
        this.handler.obtainMessage(6).sendToTarget();
    }

    private void enableRenderers(boolean[] r6) throws ExoPlaybackException {
        MediaPeriodHolder r0 = this.queue.getReadingPeriod();
        TrackSelectorResult r1 = r0.getTrackSelectorResult();
        int r2 = 0;
        int r3 = 0;
    L4:
        if (r3 >= this.renderers.length) goto L10;
        if (r1.isRendererEnabled(r3) == true) goto L8;
        this.renderers[r3].reset();
    L8:
        r3 = r3 + 1;
    L10:
        if (r2 >= this.renderers.length) goto L15;
        if (r1.isRendererEnabled(r2) == false) goto L14;
        enableRenderer(r2, r6[r2]);
    L14:
        r2 = r2 + 1;
        goto L10
    L15:
        r0.allRenderersInCorrectState = true;
    }

    private long getTotalBufferedDurationUs(long r6) {
        MediaPeriodHolder r0 = this.queue.getLoadingPeriod();
        if (r0 != null) goto L6;
        return 0;
    L6:
        return Math.max(0, r6 - r0.toPeriodTime(this.rendererPositionUs));
    }

    private void handlePlaybackParameters(PlaybackParameters r4, float r5, boolean r6, boolean r7) throws ExoPlaybackException {
        if (r6 == false) goto L6;
        if (r7 == false) goto L5;
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
    L5:
        this.playbackInfo = this.playbackInfo.copyWithPlaybackParameters(r4);
    L6:
        updateTrackSelectionPlaybackSpeed(r4.speed);
        Renderer[] r8 = this.renderers;
        int r9 = r8.length;
        int r0 = 0;
    L7:
        if (r0 >= r9) goto L12;
        Renderer r1 = r8[r0];
        if (r1 == null) goto L11;
        r1.setPlaybackSpeed(r5, r4.speed);
    L11:
        r0 = r0 + 1;
        goto L7
    }

    public void onContinueLoadingRequested(MediaPeriod r3) {
        this.handler.obtainMessage(9, r3).sendToTarget();
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId r8, long r9, boolean r11, boolean r12) throws ExoPlaybackException {
        stopRenderers();
        this.isRebuffering = false;
        if (r12 == false) goto L5;
    L6:
        setState(2);
    L7:
        MediaPeriodHolder r13 = this.queue.getPlayingPeriod();
        MediaPeriodHolder r2 = r13;
    L8:
        if (r2 == null) goto L14;
        if (r8.equals(r2.info.id) == true) goto L14;
        r2 = r2.getNext();
    L14:
        if (r11 == true) goto L19;
        if (r13 != r2) goto L19;
        if (r2 != null) goto L18;
    L27:
        if (r2 == null) goto L40;
        this.queue.removeAfter(r2);
        if (r2.prepared == true) goto L31;
        r2.info = r2.info.copyWithStartPositionUs(r9);
    L39:
        resetRendererPosition(r9);
        maybeContinueLoading();
    L41:
        handleLoadingMediaPeriodChanged(false);
        this.handler.sendEmptyMessage(2);
        return r9;
    L31:
        long r14 = r2.info.durationUs;
        if (r14 == C.TIME_UNSET) goto L37;
        if (r9 < r14) goto L37;
        r9 = Math.max(0, r14 - 1);
    L37:
        if (r2.hasEnabledTracks == false) goto L39;
        long r10 = r2.mediaPeriod.seekToUs(r9);
        r2.mediaPeriod.discardBuffer(r10 - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
        r9 = r10;
        goto L39
    L40:
        this.queue.clear();
        resetRendererPosition(r9);
        goto L41
    L18:
        if (r2.toRendererTime(r9) >= 0) goto L27;
    L19:
        Renderer[] r15 = this.renderers;
        int r16 = r15.length;
        int r17 = 0;
    L20:
        if (r17 >= r16) goto L22;
        disableRenderer(r15[r17]);
        r17 = r17 + 1;
        goto L20
    L22:
        if (r2 == null) goto L27;
    L24:
        if (this.queue.getPlayingPeriod() == r2) goto L26;
        this.queue.advancePlayingPeriod();
        goto L24
    L26:
        this.queue.removeAfter(r2);
        r2.setRendererOffset(0);
        enableRenderers();
        goto L27
    L5:
        if (this.playbackInfo.playbackState != 3) goto L7;
        goto L6
    }
}

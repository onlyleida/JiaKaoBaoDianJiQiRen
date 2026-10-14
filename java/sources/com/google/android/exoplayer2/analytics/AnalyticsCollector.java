package com.google.android.exoplayer2.analytics;

import android.os.Looper;
import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.device.DeviceInfo;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriodId;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.ExoFlags;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.base.Objects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: classes5.dex */
public class AnalyticsCollector implements Player.Listener, AudioRendererEventListener, VideoRendererEventListener, MediaSourceEventListener, BandwidthMeter.EventListener, DrmSessionEventListener {
    private final Clock clock;
    private final SparseArray<AnalyticsListener.EventTime> eventTimes;
    private boolean isSeeking;
    private ListenerSet<AnalyticsListener> listeners;
    private final MediaPeriodQueueTracker mediaPeriodQueueTracker;
    private final Timeline.Period period;
    private Player player;
    private final Timeline.Window window;

    private static final class MediaPeriodQueueTracker {
        private MediaSource.MediaPeriodId currentPlayerMediaPeriod;
        private ImmutableList<MediaSource.MediaPeriodId> mediaPeriodQueue = ImmutableList.of();
        private ImmutableMap<MediaSource.MediaPeriodId, Timeline> mediaPeriodTimelines = ImmutableMap.of();
        private final Timeline.Period period;
        private MediaSource.MediaPeriodId playingMediaPeriod;
        private MediaSource.MediaPeriodId readingMediaPeriod;

        public MediaPeriodQueueTracker(Timeline.Period period) {
            this.period = period;
        }

        private void addTimelineForMediaPeriodId(ImmutableMap.Builder<MediaSource.MediaPeriodId, Timeline> builder, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            if (mediaPeriodId == null) {
                return;
            }
            if (timeline.getIndexOfPeriod(mediaPeriodId.periodUid) != -1) {
                builder.put(mediaPeriodId, timeline);
                return;
            }
            Timeline timeline2 = this.mediaPeriodTimelines.get(mediaPeriodId);
            if (timeline2 != null) {
                builder.put(mediaPeriodId, timeline2);
            }
        }

        private static MediaSource.MediaPeriodId findCurrentPlayerMediaPeriodInQueue(Player player, ImmutableList<MediaSource.MediaPeriodId> immutableList, MediaSource.MediaPeriodId mediaPeriodId, Timeline.Period period) {
            Timeline currentTimeline = player.getCurrentTimeline();
            int currentPeriodIndex = player.getCurrentPeriodIndex();
            Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(currentPeriodIndex);
            int adGroupIndexAfterPositionUs = (player.isPlayingAd() || currentTimeline.isEmpty()) ? -1 : currentTimeline.getPeriod(currentPeriodIndex, period).getAdGroupIndexAfterPositionUs(C.msToUs(player.getCurrentPosition()) - period.getPositionInWindowUs());
            for (int i = 0; i < immutableList.size(); i++) {
                MediaSource.MediaPeriodId mediaPeriodId2 = immutableList.get(i);
                if (isMatchingMediaPeriod(mediaPeriodId2, uidOfPeriod, player.isPlayingAd(), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), adGroupIndexAfterPositionUs)) {
                    return mediaPeriodId2;
                }
            }
            if (immutableList.isEmpty() && mediaPeriodId != null) {
                if (isMatchingMediaPeriod(mediaPeriodId, uidOfPeriod, player.isPlayingAd(), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), adGroupIndexAfterPositionUs)) {
                    return mediaPeriodId;
                }
            }
            return null;
        }

        private static boolean isMatchingMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, Object obj, boolean z, int i, int i2, int i3) {
            if (mediaPeriodId.periodUid.equals(obj)) {
                return (z && mediaPeriodId.adGroupIndex == i && mediaPeriodId.adIndexInAdGroup == i2) || (!z && mediaPeriodId.adGroupIndex == -1 && mediaPeriodId.nextAdGroupIndex == i3);
            }
            return false;
        }

        private void updateMediaPeriodTimelines(Timeline timeline) {
            ImmutableMap.Builder<MediaSource.MediaPeriodId, Timeline> builder = ImmutableMap.builder();
            if (this.mediaPeriodQueue.isEmpty()) {
                addTimelineForMediaPeriodId(builder, this.playingMediaPeriod, timeline);
                if (!Objects.equal(this.readingMediaPeriod, this.playingMediaPeriod)) {
                    addTimelineForMediaPeriodId(builder, this.readingMediaPeriod, timeline);
                }
                if (!Objects.equal(this.currentPlayerMediaPeriod, this.playingMediaPeriod) && !Objects.equal(this.currentPlayerMediaPeriod, this.readingMediaPeriod)) {
                    addTimelineForMediaPeriodId(builder, this.currentPlayerMediaPeriod, timeline);
                }
            } else {
                for (int i = 0; i < this.mediaPeriodQueue.size(); i++) {
                    addTimelineForMediaPeriodId(builder, this.mediaPeriodQueue.get(i), timeline);
                }
                if (!this.mediaPeriodQueue.contains(this.currentPlayerMediaPeriod)) {
                    addTimelineForMediaPeriodId(builder, this.currentPlayerMediaPeriod, timeline);
                }
            }
            this.mediaPeriodTimelines = builder.build();
        }

        public MediaSource.MediaPeriodId getCurrentPlayerMediaPeriod() {
            return this.currentPlayerMediaPeriod;
        }

        public MediaSource.MediaPeriodId getLoadingMediaPeriod() {
            if (this.mediaPeriodQueue.isEmpty()) {
                return null;
            }
            return (MediaSource.MediaPeriodId) Iterables.getLast(this.mediaPeriodQueue);
        }

        public Timeline getMediaPeriodIdTimeline(MediaSource.MediaPeriodId mediaPeriodId) {
            return this.mediaPeriodTimelines.get(mediaPeriodId);
        }

        public MediaSource.MediaPeriodId getPlayingMediaPeriod() {
            return this.playingMediaPeriod;
        }

        public MediaSource.MediaPeriodId getReadingMediaPeriod() {
            return this.readingMediaPeriod;
        }

        public void onPositionDiscontinuity(Player player) {
            this.currentPlayerMediaPeriod = findCurrentPlayerMediaPeriodInQueue(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
        }

        public void onQueueUpdated(List<MediaSource.MediaPeriodId> list, MediaSource.MediaPeriodId mediaPeriodId, Player player) {
            this.mediaPeriodQueue = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.playingMediaPeriod = list.get(0);
                this.readingMediaPeriod = (MediaSource.MediaPeriodId) Assertions.checkNotNull(mediaPeriodId);
            }
            if (this.currentPlayerMediaPeriod == null) {
                this.currentPlayerMediaPeriod = findCurrentPlayerMediaPeriodInQueue(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            }
            updateMediaPeriodTimelines(player.getCurrentTimeline());
        }

        public void onTimelineChanged(Player player) {
            this.currentPlayerMediaPeriod = findCurrentPlayerMediaPeriodInQueue(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            updateMediaPeriodTimelines(player.getCurrentTimeline());
        }
    }

    public AnalyticsCollector(Clock clock) {
        this.clock = (Clock) Assertions.checkNotNull(clock);
        this.listeners = new ListenerSet<>(Util.getCurrentOrMainLooper(), clock, new ListenerSet.IterationFinishedEvent() { // from class: com.google.android.exoplayer2.analytics.e0
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(Object obj, ExoFlags exoFlags) {
                AnalyticsCollector.a((AnalyticsListener) obj, exoFlags);
            }
        });
        Timeline.Period period = new Timeline.Period();
        this.period = period;
        this.window = new Timeline.Window();
        this.mediaPeriodQueueTracker = new MediaPeriodQueueTracker(period);
        this.eventTimes = new SparseArray<>();
    }

    static /* synthetic */ void L(AnalyticsListener.EventTime eventTime, int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, AnalyticsListener analyticsListener) {
        analyticsListener.onPositionDiscontinuity(eventTime, i);
        analyticsListener.onPositionDiscontinuity(eventTime, positionInfo, positionInfo2, i);
    }

    static /* synthetic */ void X(AnalyticsListener.EventTime eventTime, String str, long j, long j2, AnalyticsListener analyticsListener) {
        analyticsListener.onVideoDecoderInitialized(eventTime, str, j);
        analyticsListener.onVideoDecoderInitialized(eventTime, str, j2, j);
        analyticsListener.onDecoderInitialized(eventTime, 2, str, j);
    }

    static /* synthetic */ void Z(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters, AnalyticsListener analyticsListener) {
        analyticsListener.onVideoDisabled(eventTime, decoderCounters);
        analyticsListener.onDecoderDisabled(eventTime, 2, decoderCounters);
    }

    static /* synthetic */ void a(AnalyticsListener analyticsListener, ExoFlags exoFlags) {
    }

    static /* synthetic */ void a0(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters, AnalyticsListener analyticsListener) {
        analyticsListener.onVideoEnabled(eventTime, decoderCounters);
        analyticsListener.onDecoderEnabled(eventTime, 2, decoderCounters);
    }

    static /* synthetic */ void c0(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation, AnalyticsListener analyticsListener) {
        analyticsListener.onVideoInputFormatChanged(eventTime, format);
        analyticsListener.onVideoInputFormatChanged(eventTime, format, decoderReuseEvaluation);
        analyticsListener.onDecoderInputFormatChanged(eventTime, 2, format);
    }

    static /* synthetic */ void d0(AnalyticsListener.EventTime eventTime, VideoSize videoSize, AnalyticsListener analyticsListener) {
        analyticsListener.onVideoSizeChanged(eventTime, videoSize);
        analyticsListener.onVideoSizeChanged(eventTime, videoSize.width, videoSize.height, videoSize.unappliedRotationDegrees, videoSize.pixelWidthHeightRatio);
    }

    static /* synthetic */ void e(AnalyticsListener.EventTime eventTime, String str, long j, long j2, AnalyticsListener analyticsListener) {
        analyticsListener.onAudioDecoderInitialized(eventTime, str, j);
        analyticsListener.onAudioDecoderInitialized(eventTime, str, j2, j);
        analyticsListener.onDecoderInitialized(eventTime, 1, str, j);
    }

    static /* synthetic */ void g(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters, AnalyticsListener analyticsListener) {
        analyticsListener.onAudioDisabled(eventTime, decoderCounters);
        analyticsListener.onDecoderDisabled(eventTime, 1, decoderCounters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h0(Player player, AnalyticsListener analyticsListener, ExoFlags exoFlags) {
        analyticsListener.onEvents(player, new AnalyticsListener.Events(exoFlags, this.eventTimes));
    }

    private AnalyticsListener.EventTime generateLoadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getLoadingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateMediaPeriodEventTime(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        Assertions.checkNotNull(this.player);
        if (mediaPeriodId != null) {
            return this.mediaPeriodQueueTracker.getMediaPeriodIdTimeline(mediaPeriodId) != null ? generateEventTime(mediaPeriodId) : generateEventTime(Timeline.EMPTY, i, mediaPeriodId);
        }
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!(i < currentTimeline.getWindowCount())) {
            currentTimeline = Timeline.EMPTY;
        }
        return generateEventTime(currentTimeline, i, null);
    }

    private AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getPlayingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateReadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getReadingMediaPeriod());
    }

    static /* synthetic */ void h(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters, AnalyticsListener analyticsListener) {
        analyticsListener.onAudioEnabled(eventTime, decoderCounters);
        analyticsListener.onDecoderEnabled(eventTime, 1, decoderCounters);
    }

    static /* synthetic */ void i(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation, AnalyticsListener analyticsListener) {
        analyticsListener.onAudioInputFormatChanged(eventTime, format);
        analyticsListener.onAudioInputFormatChanged(eventTime, format, decoderReuseEvaluation);
        analyticsListener.onDecoderInputFormatChanged(eventTime, 1, format);
    }

    static /* synthetic */ void s(AnalyticsListener.EventTime eventTime, int i, AnalyticsListener analyticsListener) {
        analyticsListener.onDrmSessionAcquired(eventTime);
        analyticsListener.onDrmSessionAcquired(eventTime, i);
    }

    static /* synthetic */ void w(AnalyticsListener.EventTime eventTime, boolean z, AnalyticsListener analyticsListener) {
        analyticsListener.onLoadingChanged(eventTime, z);
        analyticsListener.onIsLoadingChanged(eventTime, z);
    }

    public void addListener(AnalyticsListener analyticsListener) {
        Assertions.checkNotNull(analyticsListener);
        this.listeners.add(analyticsListener);
    }

    protected final AnalyticsListener.EventTime generateCurrentPlayerMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getCurrentPlayerMediaPeriod());
    }

    @RequiresNonNull({"player"})
    protected final AnalyticsListener.EventTime generateEventTime(Timeline timeline, int i, MediaSource.MediaPeriodId mediaPeriodId) {
        long contentPosition;
        MediaSource.MediaPeriodId mediaPeriodId2 = timeline.isEmpty() ? null : mediaPeriodId;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        boolean z = timeline.equals(this.player.getCurrentTimeline()) && i == this.player.getCurrentWindowIndex();
        long defaultPositionMs = 0;
        if (mediaPeriodId2 == null || !mediaPeriodId2.isAd()) {
            if (z) {
                contentPosition = this.player.getContentPosition();
            } else if (!timeline.isEmpty()) {
                defaultPositionMs = timeline.getWindow(i, this.window).getDefaultPositionMs();
            }
            return new AnalyticsListener.EventTime(jElapsedRealtime, timeline, i, mediaPeriodId2, contentPosition, this.player.getCurrentTimeline(), this.player.getCurrentWindowIndex(), this.mediaPeriodQueueTracker.getCurrentPlayerMediaPeriod(), this.player.getCurrentPosition(), this.player.getTotalBufferedDuration());
        }
        if (z && this.player.getCurrentAdGroupIndex() == mediaPeriodId2.adGroupIndex && this.player.getCurrentAdIndexInAdGroup() == mediaPeriodId2.adIndexInAdGroup) {
            defaultPositionMs = this.player.getCurrentPosition();
        }
        contentPosition = defaultPositionMs;
        return new AnalyticsListener.EventTime(jElapsedRealtime, timeline, i, mediaPeriodId2, contentPosition, this.player.getCurrentTimeline(), this.player.getCurrentWindowIndex(), this.mediaPeriodQueueTracker.getCurrentPlayerMediaPeriod(), this.player.getCurrentPosition(), this.player.getTotalBufferedDuration());
    }

    public final void notifySeekStarted() {
        if (this.isSeeking) {
            return;
        }
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        this.isSeeking = true;
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, -1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.t0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onSeekStarted(eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public final void onAudioAttributesChanged(final AudioAttributes audioAttributes) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1016, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.f1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioAttributesChanged(eventTimeGenerateReadingMediaPeriodEventTime, audioAttributes);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioCodecError(final Exception exc) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.z0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioCodecError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDecoderInitialized(final String str, final long j, final long j2) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1009, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.l0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.e(eventTimeGenerateReadingMediaPeriodEventTime, str, j2, j, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDecoderReleased(final String str) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1013, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.j
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioDecoderReleased(eventTimeGenerateReadingMediaPeriodEventTime, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDisabled(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, 1014, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.t
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.g(eventTimeGeneratePlayingMediaPeriodEventTime, decoderCounters, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioEnabled(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1008, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.r
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.h(eventTimeGenerateReadingMediaPeriodEventTime, decoderCounters, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public /* synthetic */ void onAudioInputFormatChanged(Format format) {
        com.google.android.exoplayer2.audio.n.$default$onAudioInputFormatChanged(this, format);
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioInputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1010, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.j0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.i(eventTimeGenerateReadingMediaPeriodEventTime, format, decoderReuseEvaluation, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioPositionAdvancing(final long j) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1011, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.x0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioPositionAdvancing(eventTimeGenerateReadingMediaPeriodEventTime, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public final void onAudioSessionIdChanged(final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1015, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.g0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioSessionIdChanged(eventTimeGenerateReadingMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioSinkError(final Exception exc) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1018, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.k
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioSinkError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioUnderrun(final int i, final long j, final long j2) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1012, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.a1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onAudioUnderrun(eventTimeGenerateReadingMediaPeriodEventTime, i, j, j2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        com.google.android.exoplayer2.v0.$default$onAvailableCommandsChanged(this, commands);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener
    public final void onBandwidthSample(final int i, final long j, final long j2) {
        final AnalyticsListener.EventTime eventTimeGenerateLoadingMediaPeriodEventTime = generateLoadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateLoadingMediaPeriodEventTime, 1006, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.d0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onBandwidthEstimate(eventTimeGenerateLoadingMediaPeriodEventTime, i, j, j2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.text.TextOutput
    public /* synthetic */ void onCues(List list) {
        com.google.android.exoplayer2.w0.$default$onCues(this, list);
    }

    @Override // com.google.android.exoplayer2.device.DeviceListener
    public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        com.google.android.exoplayer2.device.b.$default$onDeviceInfoChanged(this, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.device.DeviceListener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        com.google.android.exoplayer2.device.b.$default$onDeviceVolumeChanged(this, i, z);
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onDownstreamFormatChanged(int i, MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1004, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.b1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDownstreamFormatChanged(eventTimeGenerateMediaPeriodEventTime, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmKeysLoaded(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1031, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.e
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDrmKeysLoaded(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmKeysRemoved(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, AnalyticsListener.EVENT_DRM_KEYS_REMOVED, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.r0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDrmKeysRemoved(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmKeysRestored(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1033, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.u
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDrmKeysRestored(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public /* synthetic */ void onDrmSessionAcquired(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.drm.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmSessionAcquired(int i, MediaSource.MediaPeriodId mediaPeriodId, final int i2) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1030, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.b0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.s(eventTimeGenerateMediaPeriodEventTime, i2, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmSessionManagerError(int i, MediaSource.MediaPeriodId mediaPeriodId, final Exception exc) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1032, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.o
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDrmSessionManagerError(eventTimeGenerateMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmSessionReleased(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.n0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDrmSessionReleased(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onDroppedFrames(final int i, final long j) {
        final AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, 1023, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.c0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onDroppedVideoFrames(eventTimeGeneratePlayingMediaPeriodEventTime, i, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onEvents(Player player, Player.Events events) {
        com.google.android.exoplayer2.v0.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onIsLoadingChanged(final boolean z) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 4, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.n
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.w(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onIsPlayingChanged(final boolean z) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 8, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.f0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onIsPlayingChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadCanceled(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1002, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.q0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onLoadCanceled(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadCompleted(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1001, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.q
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onLoadCompleted(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadError(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1003, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.p
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onLoadError(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData, iOException, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadStarted(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1000, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.w
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onLoadStarted(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onLoadingChanged(boolean z) {
        com.google.android.exoplayer2.v0.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onMediaItemTransition(final MediaItem mediaItem, final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.v0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onMediaItemTransition(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, mediaItem, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onMediaMetadataChanged(final MediaMetadata mediaMetadata) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 15, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.v
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onMediaMetadataChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, mediaMetadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.metadata.MetadataOutput
    public final void onMetadata(final Metadata metadata) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 1007, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.h
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onMetadata(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlayWhenReadyChanged(final boolean z, final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 6, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.a
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlayWhenReadyChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackParametersChanged(final PlaybackParameters playbackParameters) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 13, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.b
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlaybackParametersChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, playbackParameters);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackStateChanged(final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 5, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.z
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlaybackStateChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackSuppressionReasonChanged(final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 7, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.s
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlaybackSuppressionReasonChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlayerError(final ExoPlaybackException exoPlaybackException) {
        MediaPeriodId mediaPeriodId = exoPlaybackException.mediaPeriodId;
        final AnalyticsListener.EventTime eventTimeGenerateEventTime = mediaPeriodId != null ? generateEventTime(new MediaSource.MediaPeriodId(mediaPeriodId)) : generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateEventTime, 11, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.d
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlayerError(eventTimeGenerateEventTime, exoPlaybackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlayerStateChanged(final boolean z, final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, -1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.i
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlayerStateChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        com.google.android.exoplayer2.v0.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPositionDiscontinuity(final Player.PositionInfo positionInfo, final Player.PositionInfo positionInfo2, final int i) {
        if (i == 1) {
            this.isSeeking = false;
        }
        this.mediaPeriodQueueTracker.onPositionDiscontinuity((Player) Assertions.checkNotNull(this.player));
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 12, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.i0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.L(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i, positionInfo, positionInfo2, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public /* synthetic */ void onRenderedFirstFrame() {
        com.google.android.exoplayer2.video.l.$default$onRenderedFirstFrame(this);
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onRenderedFirstFrame(final Object obj, final long j) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1027, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.m0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj2) {
                ((AnalyticsListener) obj2).onRenderedFirstFrame(eventTimeGenerateReadingMediaPeriodEventTime, obj, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onRepeatModeChanged(final int i) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 9, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.e1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onRepeatModeChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onSeekProcessed() {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, -1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.x
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onSeekProcessed(eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onShuffleModeEnabledChanged(final boolean z) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.c1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onShuffleModeChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public final void onSkipSilenceEnabledChanged(final boolean z) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1017, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.h0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onSkipSilenceEnabledChanged(eventTimeGenerateReadingMediaPeriodEventTime, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onStaticMetadataChanged(final List<Metadata> list) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 3, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.y
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onStaticMetadataChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, list);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public void onSurfaceSizeChanged(final int i, final int i2) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1029, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.l
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onSurfaceSizeChanged(eventTimeGenerateReadingMediaPeriodEventTime, i, i2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onTimelineChanged(Timeline timeline, final int i) {
        this.mediaPeriodQueueTracker.onTimelineChanged((Player) Assertions.checkNotNull(this.player));
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 0, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.u0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onTimelineChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i) {
        com.google.android.exoplayer2.v0.$default$onTimelineChanged(this, timeline, obj, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onTracksChanged(final TrackGroupArray trackGroupArray, final TrackSelectionArray trackSelectionArray) {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 2, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.k0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onTracksChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, trackGroupArray, trackSelectionArray);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
        final AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1005, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.w0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onUpstreamDiscarded(eventTimeGenerateMediaPeriodEventTime, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoCodecError(final Exception exc) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onVideoCodecError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDecoderInitialized(final String str, final long j, final long j2) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1021, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.c
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.X(eventTimeGenerateReadingMediaPeriodEventTime, str, j2, j, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDecoderReleased(final String str) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1024, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.o0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onVideoDecoderReleased(eventTimeGenerateReadingMediaPeriodEventTime, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDisabled(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, 1025, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.p0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.Z(eventTimeGeneratePlayingMediaPeriodEventTime, decoderCounters, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoEnabled(final DecoderCounters decoderCounters) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1020, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.m
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.a0(eventTimeGenerateReadingMediaPeriodEventTime, decoderCounters, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoFrameProcessingOffset(final long j, final int i) {
        final AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, 1026, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.y0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onVideoFrameProcessingOffset(eventTimeGeneratePlayingMediaPeriodEventTime, j, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public /* synthetic */ void onVideoInputFormatChanged(Format format) {
        com.google.android.exoplayer2.video.m.$default$onVideoInputFormatChanged(this, format);
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoInputFormatChanged(final Format format, final DecoderReuseEvaluation decoderReuseEvaluation) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1022, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.s0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.c0(eventTimeGenerateReadingMediaPeriodEventTime, format, decoderReuseEvaluation, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f2) {
        com.google.android.exoplayer2.video.l.$default$onVideoSizeChanged(this, i, i2, i3, f2);
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public final void onVideoSizeChanged(final VideoSize videoSize) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1028, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.g1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                AnalyticsCollector.d0(eventTimeGenerateReadingMediaPeriodEventTime, videoSize, (AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public final void onVolumeChanged(final float f2) {
        final AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1019, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.d1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onVolumeChanged(eventTimeGenerateReadingMediaPeriodEventTime, f2);
            }
        });
    }

    public void release() {
        final AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        this.eventTimes.put(AnalyticsListener.EVENT_PLAYER_RELEASED, eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
        this.listeners.lazyRelease(AnalyticsListener.EVENT_PLAYER_RELEASED, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.analytics.a0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).onPlayerReleased(eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
            }
        });
    }

    public void removeListener(AnalyticsListener analyticsListener) {
        this.listeners.remove(analyticsListener);
    }

    protected final void sendEvent(AnalyticsListener.EventTime eventTime, int i, ListenerSet.Event<AnalyticsListener> event) {
        this.eventTimes.put(i, eventTime);
        this.listeners.sendEvent(i, event);
    }

    public void setPlayer(final Player player, Looper looper) {
        Assertions.checkState(this.player == null || this.mediaPeriodQueueTracker.mediaPeriodQueue.isEmpty());
        this.player = (Player) Assertions.checkNotNull(player);
        this.listeners = this.listeners.copy(looper, new ListenerSet.IterationFinishedEvent() { // from class: com.google.android.exoplayer2.analytics.f
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(Object obj, ExoFlags exoFlags) {
                this.f11752a.h0(player, (AnalyticsListener) obj, exoFlags);
            }
        });
    }

    public final void updateMediaPeriodQueueInfo(List<MediaSource.MediaPeriodId> list, MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onQueueUpdated(list, mediaPeriodId, (Player) Assertions.checkNotNull(this.player));
    }

    private AnalyticsListener.EventTime generateEventTime(MediaSource.MediaPeriodId mediaPeriodId) {
        Assertions.checkNotNull(this.player);
        Timeline mediaPeriodIdTimeline = mediaPeriodId == null ? null : this.mediaPeriodQueueTracker.getMediaPeriodIdTimeline(mediaPeriodId);
        if (mediaPeriodId != null && mediaPeriodIdTimeline != null) {
            return generateEventTime(mediaPeriodIdTimeline, mediaPeriodIdTimeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId);
        }
        int currentWindowIndex = this.player.getCurrentWindowIndex();
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!(currentWindowIndex < currentTimeline.getWindowCount())) {
            currentTimeline = Timeline.EMPTY;
        }
        return generateEventTime(currentTimeline, currentWindowIndex, null);
    }
}

package com.google.android.exoplayer2.util;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.audio.m;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.device.DeviceInfo;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.v0;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.android.exoplayer2.video.l;
import com.google.android.exoplayer2.w0;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class DebugTextViewHelper implements Player.Listener, Runnable {
    private static final int REFRESH_INTERVAL_MS = 1000;
    private final SimpleExoPlayer player;
    private boolean started;
    private final TextView textView;

    public DebugTextViewHelper(SimpleExoPlayer simpleExoPlayer, TextView textView) {
        Assertions.checkArgument(simpleExoPlayer.getApplicationLooper() == Looper.getMainLooper());
        this.player = simpleExoPlayer;
        this.textView = textView;
    }

    private static String getDecoderCountersBufferCountString(DecoderCounters decoderCounters) {
        if (decoderCounters == null) {
            return "";
        }
        decoderCounters.ensureUpdated();
        int i = decoderCounters.skippedInputBufferCount;
        int i2 = decoderCounters.skippedOutputBufferCount;
        int i3 = decoderCounters.renderedOutputBufferCount;
        int i4 = decoderCounters.droppedBufferCount;
        int i5 = decoderCounters.maxConsecutiveDroppedBufferCount;
        int i6 = decoderCounters.droppedToKeyframeCount;
        StringBuilder sb = new StringBuilder(93);
        sb.append(" sib:");
        sb.append(i);
        sb.append(" sb:");
        sb.append(i2);
        sb.append(" rb:");
        sb.append(i3);
        sb.append(" db:");
        sb.append(i4);
        sb.append(" mcdb:");
        sb.append(i5);
        sb.append(" dk:");
        sb.append(i6);
        return sb.toString();
    }

    private static String getPixelAspectRatioString(float f2) {
        if (f2 == -1.0f || f2 == 1.0f) {
            return "";
        }
        String strValueOf = String.valueOf(String.format(Locale.US, "%.02f", Float.valueOf(f2)));
        return strValueOf.length() != 0 ? " par:".concat(strValueOf) : new String(" par:");
    }

    private static String getVideoFrameProcessingOffsetAverageString(long j, int i) {
        return i == 0 ? "N/A" : String.valueOf((long) (j / ((double) i)));
    }

    protected String getAudioString() {
        Format audioFormat = this.player.getAudioFormat();
        DecoderCounters audioDecoderCounters = this.player.getAudioDecoderCounters();
        if (audioFormat == null || audioDecoderCounters == null) {
            return "";
        }
        String str = audioFormat.sampleMimeType;
        String str2 = audioFormat.id;
        int i = audioFormat.sampleRate;
        int i2 = audioFormat.channelCount;
        String decoderCountersBufferCountString = getDecoderCountersBufferCountString(audioDecoderCounters);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length() + String.valueOf(decoderCountersBufferCountString).length());
        sb.append("\n");
        sb.append(str);
        sb.append("(id:");
        sb.append(str2);
        sb.append(" hz:");
        sb.append(i);
        sb.append(" ch:");
        sb.append(i2);
        sb.append(decoderCountersBufferCountString);
        sb.append(")");
        return sb.toString();
    }

    protected String getDebugString() {
        String playerStateString = getPlayerStateString();
        String videoString = getVideoString();
        String audioString = getAudioString();
        StringBuilder sb = new StringBuilder(String.valueOf(playerStateString).length() + String.valueOf(videoString).length() + String.valueOf(audioString).length());
        sb.append(playerStateString);
        sb.append(videoString);
        sb.append(audioString);
        return sb.toString();
    }

    protected String getPlayerStateString() {
        String str;
        int playbackState = this.player.getPlaybackState();
        if (playbackState == 1) {
            str = "idle";
        } else if (playbackState == 2) {
            str = "buffering";
        } else if (playbackState != 3) {
            str = playbackState != 4 ? Constant.VENDOR_UNKNOWN : "ended";
        } else {
            str = "ready";
        }
        return String.format("playWhenReady:%s playbackState:%s window:%s", Boolean.valueOf(this.player.getPlayWhenReady()), str, Integer.valueOf(this.player.getCurrentWindowIndex()));
    }

    protected String getVideoString() {
        Format videoFormat = this.player.getVideoFormat();
        DecoderCounters videoDecoderCounters = this.player.getVideoDecoderCounters();
        if (videoFormat == null || videoDecoderCounters == null) {
            return "";
        }
        String str = videoFormat.sampleMimeType;
        String str2 = videoFormat.id;
        int i = videoFormat.width;
        int i2 = videoFormat.height;
        String pixelAspectRatioString = getPixelAspectRatioString(videoFormat.pixelWidthHeightRatio);
        String decoderCountersBufferCountString = getDecoderCountersBufferCountString(videoDecoderCounters);
        String videoFrameProcessingOffsetAverageString = getVideoFrameProcessingOffsetAverageString(videoDecoderCounters.totalVideoFrameProcessingOffsetUs, videoDecoderCounters.videoFrameProcessingOffsetCount);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length() + String.valueOf(pixelAspectRatioString).length() + String.valueOf(decoderCountersBufferCountString).length() + String.valueOf(videoFrameProcessingOffsetAverageString).length());
        sb.append("\n");
        sb.append(str);
        sb.append("(id:");
        sb.append(str2);
        sb.append(" r:");
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        sb.append(pixelAspectRatioString);
        sb.append(decoderCountersBufferCountString);
        sb.append(" vfpo: ");
        sb.append(videoFrameProcessingOffsetAverageString);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        m.$default$onAudioAttributesChanged(this, audioAttributes);
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public /* synthetic */ void onAudioSessionIdChanged(int i) {
        m.$default$onAudioSessionIdChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        v0.$default$onAvailableCommandsChanged(this, commands);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.text.TextOutput
    public /* synthetic */ void onCues(List list) {
        w0.$default$onCues(this, list);
    }

    @Override // com.google.android.exoplayer2.device.DeviceListener
    public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        com.google.android.exoplayer2.device.b.$default$onDeviceInfoChanged(this, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.device.DeviceListener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        com.google.android.exoplayer2.device.b.$default$onDeviceVolumeChanged(this, i, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onEvents(Player player, Player.Events events) {
        v0.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onIsLoadingChanged(boolean z) {
        v0.$default$onIsLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onIsPlayingChanged(boolean z) {
        v0.$default$onIsPlayingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onLoadingChanged(boolean z) {
        v0.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
        v0.$default$onMediaItemTransition(this, mediaItem, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        v0.$default$onMediaMetadataChanged(this, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.metadata.MetadataOutput
    public /* synthetic */ void onMetadata(Metadata metadata) {
        w0.$default$onMetadata(this, metadata);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlayWhenReadyChanged(boolean z, int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        v0.$default$onPlaybackParametersChanged(this, playbackParameters);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackStateChanged(int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        v0.$default$onPlaybackSuppressionReasonChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
        v0.$default$onPlayerError(this, exoPlaybackException);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
        v0.$default$onPlayerStateChanged(this, z, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        v0.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        updateAndPost();
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public /* synthetic */ void onRenderedFirstFrame() {
        l.$default$onRenderedFirstFrame(this);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onRepeatModeChanged(int i) {
        v0.$default$onRepeatModeChanged(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onSeekProcessed() {
        v0.$default$onSeekProcessed(this);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
        v0.$default$onShuffleModeEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
        m.$default$onSkipSilenceEnabledChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onStaticMetadataChanged(List list) {
        v0.$default$onStaticMetadataChanged(this, list);
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        l.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
        v0.$default$onTimelineChanged(this, timeline, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i) {
        v0.$default$onTimelineChanged(this, timeline, obj, i);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        v0.$default$onTracksChanged(this, trackGroupArray, trackSelectionArray);
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f2) {
        l.$default$onVideoSizeChanged(this, i, i2, i3, f2);
    }

    @Override // com.google.android.exoplayer2.video.VideoListener
    public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
        l.$default$onVideoSizeChanged(this, videoSize);
    }

    @Override // com.google.android.exoplayer2.audio.AudioListener
    public /* synthetic */ void onVolumeChanged(float f2) {
        m.$default$onVolumeChanged(this, f2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        updateAndPost();
    }

    public final void start() {
        if (this.started) {
            return;
        }
        this.started = true;
        this.player.addListener((Player.Listener) this);
        updateAndPost();
    }

    public final void stop() {
        if (this.started) {
            this.started = false;
            this.player.removeListener((Player.Listener) this);
            this.textView.removeCallbacks(this);
        }
    }

    @SuppressLint({"SetTextI18n"})
    protected final void updateAndPost() {
        this.textView.setText(getDebugString());
        this.textView.removeCallbacks(this);
        this.textView.postDelayed(this, 1000L);
    }
}

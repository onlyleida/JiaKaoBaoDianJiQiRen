package com.google.android.exoplayer2.audio;

import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultAudioSink implements AudioSink {
    private static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    private static final int AUDIO_TRACK_RETRY_DURATION_MS = 100;
    private static final int BUFFER_MULTIPLICATION_FACTOR = 4;
    public static final float DEFAULT_PLAYBACK_SPEED = 1.0f;
    private static final boolean DEFAULT_SKIP_SILENCE = false;
    private static final int ERROR_NATIVE_DEAD_OBJECT = -32;
    private static final long MAX_BUFFER_DURATION_US = 750000;
    public static final float MAX_PITCH = 8.0f;
    public static final float MAX_PLAYBACK_SPEED = 8.0f;
    private static final long MIN_BUFFER_DURATION_US = 250000;
    public static final float MIN_PITCH = 0.1f;
    public static final float MIN_PLAYBACK_SPEED = 0.1f;
    private static final long OFFLOAD_BUFFER_DURATION_US = 50000000;
    public static final int OFFLOAD_MODE_DISABLED = 0;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED = 2;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED = 1;
    private static final int OUTPUT_MODE_OFFLOAD = 1;
    private static final int OUTPUT_MODE_PASSTHROUGH = 2;
    private static final int OUTPUT_MODE_PCM = 0;
    private static final long PASSTHROUGH_BUFFER_DURATION_US = 250000;
    private static final String TAG = "DefaultAudioSink";
    public static boolean failOnSpuriousAudioTimestamp = false;
    private AudioProcessor[] activeAudioProcessors;
    private MediaPositionParameters afterDrainParameters;
    private AudioAttributes audioAttributes;
    private final AudioCapabilities audioCapabilities;
    private final AudioProcessorChain audioProcessorChain;
    private int audioSessionId;
    private AudioTrack audioTrack;
    private PlaybackParameters audioTrackPlaybackParameters;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private AuxEffectInfo auxEffectInfo;
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private Configuration configuration;
    private int drainingAudioProcessorIndex;
    private final boolean enableAudioTrackPlaybackParams;
    private final boolean enableFloatOutput;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private final PendingExceptionHolder<AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;
    private AudioSink.Listener listener;
    private MediaPositionParameters mediaPositionParameters;
    private final ArrayDeque<MediaPositionParameters> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private final int offloadMode;
    private StreamEventCallbackV29 offloadStreamEventCallbackV29;
    private ByteBuffer outputBuffer;
    private ByteBuffer[] outputBuffers;
    private Configuration pendingConfiguration;
    private boolean playing;
    private byte[] preV21OutputBuffer;
    private int preV21OutputBufferOffset;
    private final ConditionVariable releasingConditionVariable;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioTrack;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final AudioProcessor[] toFloatPcmAvailableAudioProcessors;
    private final AudioProcessor[] toIntPcmAvailableAudioProcessors;
    private final TrimmingAudioProcessor trimmingAudioProcessor;
    private boolean tunneling;
    private float volume;
    private final PendingExceptionHolder<AudioSink.WriteException> writeExceptionPendingExceptionHolder;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    public interface AudioProcessorChain {
        PlaybackParameters applyPlaybackParameters(PlaybackParameters r1);

        boolean applySkipSilenceEnabled(boolean r1);

        AudioProcessor[] getAudioProcessors();

        long getMediaDuration(long r1);

        long getSkippedOutputFrameCount();
    }

    private static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public Configuration(Format r1, int r2, int r3, int r4, int r5, int r6, int r7, int r8, boolean r9, AudioProcessor[] r10) {
            this.inputFormat = r1;
            this.inputPcmFrameSize = r2;
            this.outputMode = r3;
            this.outputPcmFrameSize = r4;
            this.outputSampleRate = r5;
            this.outputChannelConfig = r6;
            this.outputEncoding = r7;
            this.availableAudioProcessors = r10;
            this.bufferSize = computeBufferSize(r8, r9);
        }

        private int computeBufferSize(int r1, boolean r2) {
            if (r1 == 0) goto L4;
            return r1;
        L4:
            int r3 = this.outputMode;
            if (r3 != 0) goto L7;
            if (r2 == false) goto L18;
            float r4 = 8.0f;
        L20:
            return getPcmDefaultBufferSize(r4);
        L18:
            r4 = 1.0f;
            goto L20
        L7:
            if (r3 == 1) goto L15;
            if (r3 != 2) goto L13;
            return getEncodedDefaultBufferSize(250000);
        L13:
            throw new IllegalStateException();
        L15:
            return getEncodedDefaultBufferSize(DefaultAudioSink.OFFLOAD_BUFFER_DURATION_US);
        }

        private AudioTrack createAudioTrack(boolean r3, AudioAttributes r4, int r5) {
            int r0 = Util.SDK_INT;
            if (r0 < 29) goto L7;
            return createAudioTrackV29(r3, r4, r5);
        L7:
            if (r0 < 21) goto L11;
            return createAudioTrackV21(r3, r4, r5);
        L11:
            return createAudioTrackV9(r4, r5);
        }

        private AudioTrack createAudioTrackV21(boolean r8, AudioAttributes r9, int r10) {
            return new AudioTrack(getAudioTrackAttributesV21(r9, r8), DefaultAudioSink.access$1000(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, r10);
        }

        private AudioTrack createAudioTrackV29(boolean r4, AudioAttributes r5, int r6) {
            AudioFormat r0 = DefaultAudioSink.access$1000(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            android.media.AudioAttributes r7 = getAudioTrackAttributesV21(r5, r4);
            AudioTrack.Builder r8 = new AudioTrack.Builder().setAudioAttributes(r7).setAudioFormat(r0);
            boolean r9 = true;
            AudioTrack.Builder r10 = r8.setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(r6);
            if (this.outputMode == 1) goto L7;
            r9 = false;
        L7:
            return r10.setOffloadedPlayback(r9).build();
        }

        private AudioTrack createAudioTrackV9(AudioAttributes r9, int r10) {
            int r1 = Util.getStreamTypeForAudioUsage(r9.usage);
            if (r10 != 0) goto L7;
            return new AudioTrack(r1, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1);
        L7:
            return new AudioTrack(r1, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, r10);
        }

        private static android.media.AudioAttributes getAudioTrackAttributesV21(AudioAttributes r0, boolean r1) {
            if (r1 == false) goto L6;
            return getAudioTrackTunnelingAttributesV21();
        L6:
            return r0.getAudioAttributesV21();
        }

        private static android.media.AudioAttributes getAudioTrackTunnelingAttributesV21() {
            return new android.media.AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private int getEncodedDefaultBufferSize(long r4) {
            int r0 = DefaultAudioSink.access$1100(this.outputEncoding);
            if (this.outputEncoding != 5) goto L6;
            r0 = r0 * 2;
        L6:
            return (int) ((r4 * ((long) r0)) / 1000000);
        }

        private int getPcmDefaultBufferSize(float r7) {
            int r0 = AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            if (r0 == (-2)) goto L5;
            boolean r1 = true;
        L6:
            Assertions.checkState(r1);
            int r2 = Util.constrainValue(r0 * 4, ((int) durationUsToFrames(250000)) * this.outputPcmFrameSize, Math.max(r0, ((int) durationUsToFrames(DefaultAudioSink.MAX_BUFFER_DURATION_US)) * this.outputPcmFrameSize));
            if (r7 != 1.0f) goto L9;
            return r2;
        L9:
            return Math.round(r2 * r7);
        L5:
            r1 = false;
            goto L6
        }

        public AudioTrack buildAudioTrack(boolean r9, AudioAttributes r10, int r11) throws AudioSink.InitializationException {
            AudioTrack r12 = createAudioTrack(r9, r10, r11);     // Catch: Throwable -> L9 UnsupportedOperationException -> L11
            int r1 = r12.getState();
            if (r1 != 1) goto L15;
            return r12;
        L15:
            r12.release();     // Catch: Exception -> L14
        L8:
            throw new AudioSink.InitializationException(r1, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), null);
        L9:
            e = move-exception;
            throw new AudioSink.InitializationException(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), e);
        }

        public boolean canReuseAudioTrack(Configuration r3) {
            if (r3.outputMode == this.outputMode) goto L5;
        L13:
            return false;
        L5:
            if (r3.outputEncoding != this.outputEncoding) goto L13;
            if (r3.outputSampleRate != this.outputSampleRate) goto L13;
            if (r3.outputChannelConfig != this.outputChannelConfig) goto L13;
            if (r3.outputPcmFrameSize != this.outputPcmFrameSize) goto L13;
            return true;
        }

        public long durationUsToFrames(long r3) {
            return (r3 * ((long) this.outputSampleRate)) / 1000000;
        }

        public long framesToDurationUs(long r3) {
            return (r3 * 1000000) / ((long) this.outputSampleRate);
        }

        public long inputFramesToDurationUs(long r3) {
            return (r3 * 1000000) / ((long) this.inputFormat.sampleRate);
        }

        public boolean outputModeIsOffload() {
            if (this.outputMode == 1) goto L7;
            return false;
        L7:
            return true;
        }
    }

    public static class DefaultAudioProcessorChain implements AudioProcessorChain {
        private final AudioProcessor[] audioProcessors;
        private final SilenceSkippingAudioProcessor silenceSkippingAudioProcessor;
        private final SonicAudioProcessor sonicAudioProcessor;

        public DefaultAudioProcessorChain(AudioProcessor... r3) {
            this(r3, new SilenceSkippingAudioProcessor(), new SonicAudioProcessor());
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public PlaybackParameters applyPlaybackParameters(PlaybackParameters r3) {
            this.sonicAudioProcessor.setSpeed(r3.speed);
            this.sonicAudioProcessor.setPitch(r3.pitch);
            return r3;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public boolean applySkipSilenceEnabled(boolean r2) {
            this.silenceSkippingAudioProcessor.setEnabled(r2);
            return r2;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public long getMediaDuration(long r2) {
            return this.sonicAudioProcessor.getMediaDuration(r2);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.getSkippedFrames();
        }

        public DefaultAudioProcessorChain(AudioProcessor[] r4, SilenceSkippingAudioProcessor r5, SonicAudioProcessor r6) {
            AudioProcessor[] r0 = new AudioProcessor[r4.length + 2];
            this.audioProcessors = r0;
            System.arraycopy(r4, 0, r0, 0, r4.length);
            this.silenceSkippingAudioProcessor = r5;
            this.sonicAudioProcessor = r6;
            r0[r4.length] = r5;
            r0[r4.length + 1] = r6;
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        /* synthetic */ InvalidAudioTrackTimestampException(String r1, AnonymousClass1 r2) {
            this(r1);
        }

        private InvalidAudioTrackTimestampException(String r1) {
            super(r1);
        }
    }

    private static final class MediaPositionParameters {
        public final long audioTrackPositionUs;
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;
        public final boolean skipSilence;

        /* synthetic */ MediaPositionParameters(PlaybackParameters r1, boolean r2, long r3, long r5, AnonymousClass1 r7) {
            this(r1, r2, r3, r5);
        }

        private MediaPositionParameters(PlaybackParameters r1, boolean r2, long r3, long r5) {
            this.playbackParameters = r1;
            this.skipSilence = r2;
            this.mediaTimeUs = r3;
            this.audioTrackPositionUs = r5;
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OffloadMode {
    }

    private static final class PendingExceptionHolder<T extends Exception> {
        private T pendingException;
        private long throwDeadlineMs;
        private final long throwDelayMs;

        public PendingExceptionHolder(long r1) {
            this.throwDelayMs = r1;
        }

        public void clear() {
            this.pendingException = null;
        }

        public void throwExceptionIfDeadlineIsReached(T r6) throws Exception {
            long r0 = SystemClock.elapsedRealtime();
            if (this.pendingException != null) goto L6;
            this.pendingException = r6;
            this.throwDeadlineMs = this.throwDelayMs + r0;
        L6:
            if (r0 < this.throwDeadlineMs) goto L12;
            T r1 = this.pendingException;
            if (r1 == r6) goto L10;
            r1.addSuppressed(r6);
        L10:
            T r7 = this.pendingException;
            clear();
            throw r7;
        }
    }

    private final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        final /* synthetic */ DefaultAudioSink this$0;

        private PositionTrackerListener(DefaultAudioSink r1) {
            this.this$0 = r1;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long r3) {
            StringBuilder r0 = new StringBuilder(61);
            r0.append("Ignoring impossibly large audio latency: ");
            r0.append(r3);
            Log.w(DefaultAudioSink.TAG, r0.toString());
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(long r2) {
            if (DefaultAudioSink.access$400(this.this$0) == null) goto L6;
            DefaultAudioSink.access$400(this.this$0).onPositionAdvancing(r2);
            return;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long r7, long r9, long r11, long r13) {
            long r0 = DefaultAudioSink.access$600(this.this$0);
            long r2 = DefaultAudioSink.access$700(this.this$0);
            StringBuilder r4 = new StringBuilder(182);
            r4.append("Spurious audio timestamp (frame position mismatch): ");
            r4.append(r7);
            r4.append(", ");
            r4.append(r9);
            r4.append(", ");
            r4.append(r11);
            r4.append(", ");
            r4.append(r13);
            r4.append(", ");
            r4.append(r0);
            r4.append(", ");
            r4.append(r2);
            String r8 = r4.toString();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp == true) goto L7;
            Log.w(DefaultAudioSink.TAG, r8);
            return;
        L7:
            throw new InvalidAudioTrackTimestampException(r8, null);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long r7, long r9, long r11, long r13) {
            long r0 = DefaultAudioSink.access$600(this.this$0);
            long r2 = DefaultAudioSink.access$700(this.this$0);
            StringBuilder r4 = new StringBuilder(180);
            r4.append("Spurious audio timestamp (system clock mismatch): ");
            r4.append(r7);
            r4.append(", ");
            r4.append(r9);
            r4.append(", ");
            r4.append(r11);
            r4.append(", ");
            r4.append(r13);
            r4.append(", ");
            r4.append(r0);
            r4.append(", ");
            r4.append(r2);
            String r8 = r4.toString();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp == true) goto L7;
            Log.w(DefaultAudioSink.TAG, r8);
            return;
        L7:
            throw new InvalidAudioTrackTimestampException(r8, null);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int r11, long r12) {
            if (DefaultAudioSink.access$400(this.this$0) == null) goto L6;
            long r8 = SystemClock.elapsedRealtime() - DefaultAudioSink.access$900(this.this$0);
            DefaultAudioSink.access$400(this.this$0).onUnderrun(r11, r12, r8);
            return;
        }

        /* synthetic */ PositionTrackerListener(DefaultAudioSink r1, AnonymousClass1 r2) {
            this(r1);
        }
    }

    private final class StreamEventCallbackV29 {
        private final AudioTrack.StreamEventCallback callback;
        private final Handler handler;
        final /* synthetic */ DefaultAudioSink this$0;

        public StreamEventCallbackV29(final DefaultAudioSink r2) {
            this.this$0 = r2;
            this.handler = new Handler();
            this.callback = new AnonymousClass1(this, r2);
        }

        public void register(AudioTrack r3) {
            final Handler r0 = this.handler;
            Objects.requireNonNull(r0);
            r3.registerStreamEventCallback(new l(r0), this.callback);
        }

        public void unregister(AudioTrack r2) {
            r2.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    static {
    }

    public DefaultAudioSink(AudioCapabilities r2, AudioProcessor[] r3) {
        this(r2, r3, false);
    }

    static /* synthetic */ AudioFormat access$1000(int r0, int r1, int r2) {
        return getAudioFormat(r0, r1, r2);
    }

    static /* synthetic */ int access$1100(int r0) {
        return getMaximumEncodedRateBytesPerSecond(r0);
    }

    static /* synthetic */ ConditionVariable access$200(DefaultAudioSink r0) {
        return r0.releasingConditionVariable;
    }

    static /* synthetic */ AudioTrack access$300(DefaultAudioSink r0) {
        return r0.audioTrack;
    }

    static /* synthetic */ AudioSink.Listener access$400(DefaultAudioSink r0) {
        return r0.listener;
    }

    static /* synthetic */ boolean access$500(DefaultAudioSink r0) {
        return r0.playing;
    }

    static /* synthetic */ long access$600(DefaultAudioSink r2) {
        return r2.getSubmittedFrames();
    }

    static /* synthetic */ long access$700(DefaultAudioSink r2) {
        return r2.getWrittenFrames();
    }

    static /* synthetic */ long access$900(DefaultAudioSink r2) {
        return r2.lastFeedElapsedRealtimeMs;
    }

    private void applyAudioProcessorPlaybackParametersAndSkipSilence(long r12) {
        if (shouldApplyAudioProcessorPlaybackParameters() == false) goto L5;
        PlaybackParameters r0 = this.audioProcessorChain.applyPlaybackParameters(getAudioProcessorPlaybackParameters());
    L6:
        PlaybackParameters r2 = r0;
        if (shouldApplyAudioProcessorPlaybackParameters() == false) goto L9;
        boolean r1 = this.audioProcessorChain.applySkipSilenceEnabled(getSkipSilenceEnabled());
    L10:
        boolean r3 = r1;
        this.mediaPositionParametersCheckpoints.add(new MediaPositionParameters(r2, r3, Math.max(0, r12), this.configuration.framesToDurationUs(getWrittenFrames()), null));
        setupAudioProcessors();
        AudioSink.Listener r13 = this.listener;
        if (r13 == null) goto L14;
        r13.onSkipSilenceEnabledChanged(r1);
        return;
    L14:
        return;
    L9:
        r1 = false;
        goto L10
    L5:
        r0 = PlaybackParameters.DEFAULT;
        goto L6
    }

    private long applyMediaPositionParameters(long r5) {
    L3:
        if (this.mediaPositionParametersCheckpoints.isEmpty() == true) goto L7;
        if (r5 < this.mediaPositionParametersCheckpoints.getFirst().audioTrackPositionUs) goto L7;
        this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
    L7:
        MediaPositionParameters r0 = this.mediaPositionParameters;
        long r1 = r5 - r0.audioTrackPositionUs;
        if (r0.playbackParameters.equals(PlaybackParameters.DEFAULT) == false) goto L12;
        return this.mediaPositionParameters.mediaTimeUs + r1;
    L12:
        if (this.mediaPositionParametersCheckpoints.isEmpty() == false) goto L15;
        long r6 = this.audioProcessorChain.getMediaDuration(r1);
        return this.mediaPositionParameters.mediaTimeUs + r6;
    L15:
        MediaPositionParameters r2 = this.mediaPositionParametersCheckpoints.getFirst();
        long r7 = Util.getMediaDurationForPlayoutDuration(r2.audioTrackPositionUs - r5, this.mediaPositionParameters.playbackParameters.speed);
        return r2.mediaTimeUs - r7;
    }

    private long applySkipping(long r4) {
        return r4 + this.configuration.framesToDurationUs(this.audioProcessorChain.getSkippedOutputFrameCount());
    }

    private AudioTrack buildAudioTrack() throws AudioSink.InitializationException {
        return ((Configuration) Assertions.checkNotNull(this.configuration)).buildAudioTrack(this.tunneling, this.audioAttributes, this.audioSessionId);
    L4:
        e = move-exception;
        maybeDisableOffload();
        AudioSink.Listener r1 = this.listener;
        if (r1 == null) goto L8;
        r1.onAudioSinkError(e);
    L8:
        throw e;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    private boolean drainToEndOfStream() throws AudioSink.WriteException {
        if (this.drainingAudioProcessorIndex != (-1)) goto L6;
        this.drainingAudioProcessorIndex = 0;
    L5:
        boolean r0 = true;
    L7:
        int r4 = this.drainingAudioProcessorIndex;
        AudioProcessor[] r5 = this.activeAudioProcessors;
        if (r4 >= r5.length) goto L16;
        AudioProcessor r6 = r5[r4];
        if (r0 == false) goto L12;
        r6.queueEndOfStream();
    L12:
        processBuffers(C.TIME_UNSET);
        if (r6.isEnded() == true) goto L15;
        return false;
    L15:
        this.drainingAudioProcessorIndex++;
        goto L5
    L16:
        ByteBuffer r1 = this.outputBuffer;
        if (r1 == null) goto L21;
        writeBuffer(r1, C.TIME_UNSET);
        if (this.outputBuffer == null) goto L21;
        return false;
    L21:
        this.drainingAudioProcessorIndex = -1;
        return true;
    L6:
        r0 = false;
        goto L7
    }

    private void flushAudioProcessors() {
        int r0 = 0;
    L3:
        AudioProcessor[] r1 = this.activeAudioProcessors;
        if (r0 >= r1.length) goto L6;
        AudioProcessor r2 = r1[r0];
        r2.flush();
        this.outputBuffers[r0] = r2.getOutput();
        r0 = r0 + 1;
        goto L3
    }

    private static AudioFormat getAudioFormat(int r1, int r2, int r3) {
        return new AudioFormat.Builder().setSampleRate(r1).setChannelMask(r2).setEncoding(r3).build();
    }

    private PlaybackParameters getAudioProcessorPlaybackParameters() {
        return getMediaPositionParameters().playbackParameters;
    }

    private static int getChannelConfigForPassthrough(int r2) {
        int r0 = Util.SDK_INT;
        if (r0 > 28) goto L15;
        if (r2 != 7) goto L8;
        r2 = 8;
        goto L15
    L8:
        if (r2 != 3) goto L10;
    L13:
        r2 = 6;
        goto L15
    L10:
        if (r2 == 4) goto L13;
        if (r2 == 5) goto L13;
    L15:
        if (r0 > 26) goto L22;
        if ("fugu".equals(Util.DEVICE) == false) goto L22;
        if (r2 != 1) goto L22;
        r2 = 2;
    L22:
        return Util.getAudioTrackChannelConfig(r2);
    }

    private static Pair<Integer, Integer> getEncodingAndChannelConfigForPassthrough(Format r7, AudioCapabilities r8) {
        if (r8 != null) goto L5;
        return null;
    L5:
        int r1 = MimeTypes.getEncoding((String) Assertions.checkNotNull(r7.sampleMimeType), r7.codecs);
        int r5 = 6;
        if (r1 == 5) goto L17;
        if (r1 == 6) goto L17;
        if (r1 == 18) goto L17;
        if (r1 == 17) goto L17;
        if (r1 == 7) goto L17;
        if (r1 == 8) goto L17;
        if (r1 == 14) goto L17;
        boolean r2 = false;
    L18:
        if (r2 == true) goto L20;
        return null;
    L20:
        if (r1 == 18) goto L22;
    L24:
        if (r1 == 8) goto L26;
    L29:
        if (r8.supportsEncoding(r1) == true) goto L31;
        return null;
    L31:
        if (r1 == 18) goto L33;
        r5 = r7.channelCount;
        if (r5 <= r8.getMaxChannelCount()) goto L41;
        return null;
    L41:
        int r9 = getChannelConfigForPassthrough(r5);
        if (r9 != 0) goto L45;
        return null;
    L45:
        return Pair.create(Integer.valueOf(r1), Integer.valueOf(r9));
    L33:
        if (Util.SDK_INT < 29) goto L41;
        r5 = getMaxSupportedChannelCountForPassthroughV29(18, r7.sampleRate);
        if (r5 != 0) goto L41;
        Log.w(TAG, "E-AC3 JOC encoding supported but no channel count supported");
        return null;
    L26:
        if (r8.supportsEncoding(8) == true) goto L29;
        r1 = 7;
        goto L29
    L22:
        if (r8.supportsEncoding(18) == true) goto L24;
        r1 = 6;
    L17:
        r2 = true;
        goto L18
    }

    private static int getFramesPerEncodedSample(int r2, ByteBuffer r3) {
        switch(r2) {
            case 5: goto L27;
            case 6: goto L27;
            case 7: goto L25;
            case 8: goto L25;
            case 9: goto L19;
            case 10: goto L18;
            case 11: goto L16;
            case 12: goto L16;
            case 13: goto L4;
            case 14: goto L11;
            case 15: goto L9;
            case 16: goto L8;
            case 17: goto L7;
            case 18: goto L27;
            default: goto L4;
        };
    L4:
        StringBuilder r1 = new StringBuilder(38);
        r1.append("Unexpected audio encoding: ");
        r1.append(r2);
        throw new IllegalStateException(r1.toString());
    L8:
        return 1024;
    L9:
        return 512;
    L11:
        int r4 = Ac3Util.findTrueHdSyncframeOffset(r3);
        if (r4 != (-1)) goto L15;
        return 0;
    L15:
        return Ac3Util.parseTrueHdSyncframeAudioSampleCount(r3, r4) * 16;
    L16:
        return 2048;
    L18:
        return 1024;
    L19:
        int r5 = MpegAudioUtil.parseMpegAudioFrameSampleCount(Util.getBigEndianInt(r3, r3.position()));
        if (r5 == (-1)) goto L23;
        return r5;
    L23:
        throw new IllegalArgumentException();
    L7:
        return Ac4Util.parseAc4SyncframeAudioSampleCount(r3);
    L25:
        return DtsUtil.parseDtsAudioSampleCount(r3);
    L27:
        return Ac3Util.parseAc3SyncframeAudioSampleCount(r3);
    }

    private static int getMaxSupportedChannelCountForPassthroughV29(int r4, int r5) {
        android.media.AudioAttributes r0 = new android.media.AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        int r1 = 8;
    L3:
        if (r1 <= 0) goto L8;
        if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(r4).setSampleRate(r5).setChannelMask(Util.getAudioTrackChannelConfig(r1)).build(), r0) == true) goto L6;
        r1 = r1 - 1;
        goto L3
    L6:
        return r1;
    L8:
        return 0;
    }

    private static int getMaximumEncodedRateBytesPerSecond(int r0) {
        switch(r0) {
            case 5: goto L27;
            case 6: goto L25;
            case 7: goto L23;
            case 8: goto L21;
            case 9: goto L19;
            case 10: goto L17;
            case 11: goto L15;
            case 12: goto L13;
            case 13: goto L4;
            case 14: goto L11;
            case 15: goto L9;
            case 16: goto L7;
            case 17: goto L5;
            case 18: goto L25;
            default: goto L4;
        };
    L5:
        return Ac4Util.MAX_RATE_BYTES_PER_SECOND;
    L7:
        return AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
    L9:
        return 8000;
    L11:
        return Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
    L13:
        return AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND;
    L15:
        return 16000;
    L17:
        return 100000;
    L19:
        return MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
    L21:
        return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
    L23:
        return DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
    L25:
        return Ac3Util.E_AC3_MAX_RATE_BYTES_PER_SECOND;
    L27:
        return Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
    L4:
        throw new IllegalArgumentException();
    }

    private MediaPositionParameters getMediaPositionParameters() {
        MediaPositionParameters r0 = this.afterDrainParameters;
        if (r0 == null) goto L6;
        return r0;
    L6:
        if (this.mediaPositionParametersCheckpoints.isEmpty() == true) goto L9;
        return this.mediaPositionParametersCheckpoints.getLast();
    L9:
        return this.mediaPositionParameters;
    }

    private long getSubmittedFrames() {
        Configuration r0 = this.configuration;
        if (r0.outputMode != 0) goto L6;
        return this.submittedPcmBytes / ((long) r0.inputPcmFrameSize);
    L6:
        return this.submittedEncodedFrames;
    }

    private long getWrittenFrames() {
        Configuration r0 = this.configuration;
        if (r0.outputMode != 0) goto L6;
        return this.writtenPcmBytes / ((long) r0.outputPcmFrameSize);
    L6:
        return this.writtenEncodedFrames;
    }

    private void initializeAudioTrack() throws AudioSink.InitializationException {
        this.releasingConditionVariable.block();
        AudioTrack r0 = buildAudioTrack();
        this.audioTrack = r0;
        if (isOffloadedPlayback(r0) == false) goto L5;
        registerStreamEventCallbackV29(this.audioTrack);
        AudioTrack r1 = this.audioTrack;
        Format r2 = this.configuration.inputFormat;
        r1.setOffloadDelayPadding(r2.encoderDelay, r2.encoderPadding);
    L5:
        this.audioSessionId = this.audioTrack.getAudioSessionId();
        AudioTrackPositionTracker r3 = this.audioTrackPositionTracker;
        AudioTrack r4 = this.audioTrack;
        Configuration r5 = this.configuration;
        if (r5.outputMode != 2) goto L8;
        boolean r6 = true;
    L9:
        r3.setAudioTrack(r4, r6, r5.outputEncoding, r5.outputPcmFrameSize, r5.bufferSize);
        setVolumeInternal();
        int r7 = this.auxEffectInfo.effectId;
        if (r7 == 0) goto L12;
        this.audioTrack.attachAuxEffect(r7);
        this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
    L12:
        this.startMediaTimeUsNeedsInit = true;
        return;
    L8:
        r6 = false;
        goto L9
    }

    private static boolean isAudioTrackDeadObject(int r2) {
        if (Util.SDK_INT < 24) goto L7;
        if (r2 != (-6)) goto L7;
    L8:
        return true;
    L7:
        if (r2 == ERROR_NATIVE_DEAD_OBJECT) goto L8;
        return false;
    }

    private boolean isAudioTrackInitialized() {
        if (this.audioTrack == null) goto L5;
        return true;
    L5:
        return false;
    }

    private static boolean isOffloadedGaplessPlaybackSupported() {
        if (Util.SDK_INT >= 30) goto L5;
    L7:
        return false;
    L5:
        if (Util.MODEL.startsWith("Pixel") == false) goto L7;
        return true;
    }

    private static boolean isOffloadedPlayback(AudioTrack r2) {
        if (Util.SDK_INT >= 29) goto L5;
    L7:
        return false;
    L5:
        if (r2.isOffloadedPlayback() == false) goto L7;
        return true;
    }

    private static boolean isPassthroughPlaybackSupported(Format r0, AudioCapabilities r1) {
        if (getEncodingAndChannelConfigForPassthrough(r0, r1) == null) goto L5;
        return true;
    L5:
        return false;
    }

    private void maybeDisableOffload() {
        if (this.configuration.outputModeIsOffload() == true) goto L5;
        return;
    L5:
        this.offloadDisabledUntilNextConfiguration = true;
    }

    private void playPendingData() {
        if (this.stoppedAudioTrack == true) goto L6;
        this.stoppedAudioTrack = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
        return;
    }

    private void processBuffers(long r6) throws AudioSink.WriteException {
        int r0 = this.activeAudioProcessors.length;
        int r1 = r0;
    L3:
        if (r1 < 0) goto L22;
        if (r1 <= 0) goto L6;
        ByteBuffer r2 = this.outputBuffers[r1 - 1];
    L10:
        if (r1 == r0) goto L11;
        AudioProcessor r3 = this.activeAudioProcessors[r1];
        if (r1 <= this.drainingAudioProcessorIndex) goto L15;
        r3.queueInput(r2);
    L15:
        ByteBuffer r4 = r3.getOutput();
        this.outputBuffers[r1] = r4;
        if (r4.hasRemaining() == false) goto L19;
        r1 = r1 + 1;
    L19:
        if (r2.hasRemaining() == true) goto L20;
        r1 = r1 - 1;
        goto L3
    L20:
        return;
    L11:
        writeBuffer(r2, r6);
        goto L19
    L6:
        r2 = this.inputBuffer;
        if (r2 != null) goto L10;
        r2 = AudioProcessor.EMPTY_BUFFER;
        goto L10
    }

    private void registerStreamEventCallbackV29(AudioTrack r2) {
        if (this.offloadStreamEventCallbackV29 != null) goto L5;
        this.offloadStreamEventCallbackV29 = new StreamEventCallbackV29(this);
    L5:
        this.offloadStreamEventCallbackV29.register(r2);
    }

    private void resetSinkStateForFlush() {
        this.submittedPcmBytes = 0;
        this.submittedEncodedFrames = 0;
        this.writtenPcmBytes = 0;
        this.writtenEncodedFrames = 0;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new MediaPositionParameters(getAudioProcessorPlaybackParameters(), getSkipSilenceEnabled(), 0, 0, null);
        this.startMediaTimeUs = 0;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioTrack = false;
        this.handledEndOfStream = false;
        this.drainingAudioProcessorIndex = -1;
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.trimmingAudioProcessor.resetTrimmedFrameCount();
        flushAudioProcessors();
    }

    private void setAudioProcessorPlaybackParametersAndSkipSilence(PlaybackParameters r10, boolean r11) {
        MediaPositionParameters r0 = getMediaPositionParameters();
        if (r10.equals(r0.playbackParameters) == true) goto L5;
    L6:
        MediaPositionParameters r1 = new MediaPositionParameters(r10, r11, C.TIME_UNSET, C.TIME_UNSET, null);
        if (isAudioTrackInitialized() == false) goto L9;
        this.afterDrainParameters = r1;
        return;
    L9:
        this.mediaPositionParameters = r1;
        return;
    L5:
        if (r11 != r0.skipSilence) goto L6;
    }

    private void setAudioTrackPlaybackParametersV23(PlaybackParameters r3) {
        if (isAudioTrackInitialized() == false) goto L10;
        PlaybackParams r4 = new PlaybackParams().allowDefaults().setSpeed(r3.speed).setPitch(r3.pitch).setAudioFallbackMode(2);
        this.audioTrack.setPlaybackParams(r4);     // Catch: IllegalArgumentException -> L7
    L9:
        r3 = new PlaybackParameters(this.audioTrack.getPlaybackParams().getSpeed(), this.audioTrack.getPlaybackParams().getPitch());
        this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(r3.speed);
    L7:
        e = move-exception;
        Log.w(TAG, "Failed to set playback params", e);
    L10:
        this.audioTrackPlaybackParameters = r3;
    }

    private void setVolumeInternal() {
        if (isAudioTrackInitialized() == true) goto L6;
        return;
    L6:
        if (Util.SDK_INT < 21) goto L8;
        setVolumeInternalV21(this.audioTrack, this.volume);
        return;
    L8:
        setVolumeInternalV3(this.audioTrack, this.volume);
    }

    private static void setVolumeInternalV21(AudioTrack r0, float r1) {
        r0.setVolume(r1);
    }

    private static void setVolumeInternalV3(AudioTrack r0, float r1) {
        r0.setStereoVolume(r1, r1);
    }

    private void setupAudioProcessors() {
        AudioProcessor[] r0 = this.configuration.availableAudioProcessors;
        ArrayList r1 = new ArrayList();
        int r2 = r0.length;
        int r3 = 0;
    L3:
        if (r3 >= r2) goto L9;
        AudioProcessor r4 = r0[r3];
        if (r4.isActive() == false) goto L7;
        r1.add(r4);
    L8:
        r3 = r3 + 1;
        goto L3
    L7:
        r4.flush();
        goto L8
    L9:
        int r5 = r1.size();
        this.activeAudioProcessors = (AudioProcessor[]) r1.toArray(new AudioProcessor[r5]);
        this.outputBuffers = new ByteBuffer[r5];
        flushAudioProcessors();
    }

    private boolean shouldApplyAudioProcessorPlaybackParameters() {
        if (this.tunneling == false) goto L5;
    L9:
        return false;
    L5:
        if (MimeTypes.AUDIO_RAW.equals(this.configuration.inputFormat.sampleMimeType) == false) goto L9;
        if (shouldUseFloatOutput(this.configuration.inputFormat.pcmEncoding) == true) goto L9;
        return true;
    }

    private boolean shouldUseFloatOutput(int r2) {
        if (this.enableFloatOutput == true) goto L5;
    L7:
        return false;
    L5:
        if (Util.isEncodingHighResolutionPcm(r2) == false) goto L7;
        return true;
    }

    private boolean useOffloadedPlayback(Format r5, AudioAttributes r6) {
        if (Util.SDK_INT >= 29) goto L5;
    L33:
        return false;
    L5:
        if (this.offloadMode == 0) goto L33;
        int r0 = MimeTypes.getEncoding((String) Assertions.checkNotNull(r5.sampleMimeType), r5.codecs);
        if (r0 != 0) goto L10;
        return false;
    L10:
        int r2 = Util.getAudioTrackChannelConfig(r5.channelCount);
        if (r2 != 0) goto L14;
        return false;
    L14:
        if (AudioManager.isOffloadedPlaybackSupported(getAudioFormat(r5.sampleRate, r2, r0), r6.getAudioAttributesV21()) == true) goto L17;
        return false;
    L17:
        if (r5.encoderDelay == 0) goto L19;
    L22:
        boolean r7 = true;
    L24:
        if (this.offloadMode != 1) goto L26;
        boolean r8 = true;
    L27:
        if (r7 == false) goto L32;
        if (r8 == false) goto L32;
        if (isOffloadedGaplessPlaybackSupported() == true) goto L32;
        return false;
    L32:
        return true;
    L26:
        r8 = false;
        goto L27
    L19:
        if (r5.encoderPadding != 0) goto L22;
        r7 = false;
        goto L24
    }

    private void writeBuffer(ByteBuffer r13, long r14) throws AudioSink.WriteException {
        if (r13.hasRemaining() == true) goto L5;
        return;
    L5:
        ByteBuffer r0 = this.outputBuffer;
        boolean r2 = true;
        if (r0 == null) goto L11;
        if (r0 != r13) goto L9;
        boolean r1 = true;
    L10:
        Assertions.checkArgument(r1);
    L19:
        int r3 = r13.remaining();
        if (Util.SDK_INT >= 21) goto L28;
        int r15 = this.audioTrackPositionTracker.getAvailableBufferSize(this.writtenPcmBytes);
        if (r15 <= 0) goto L26;
        int r16 = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, Math.min(r3, r15));
        if (r16 <= 0) goto L35;
        this.preV21OutputBufferOffset += r16;
        r13.position(r13.position() + r16);
    L35:
        this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
        if (r16 >= 0) goto L48;
        boolean r17 = isAudioTrackDeadObject(r16);
        if (r17 == false) goto L40;
        maybeDisableOffload();
    L40:
        AudioSink.WriteException r18 = new AudioSink.WriteException(r16, this.configuration.inputFormat, r17);
        AudioSink.Listener r19 = this.listener;
        if (r19 == null) goto L44;
        r19.onAudioSinkError(r18);
    L44:
        if (r18.isRecoverable == true) goto L47;
        this.writeExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(r18);
        return;
    L47:
        throw r18;
    L48:
        this.writeExceptionPendingExceptionHolder.clear();
        if (isOffloadedPlayback(this.audioTrack) == false) goto L61;
        long r4 = this.writtenEncodedFrames;
        if (r4 <= 0) goto L54;
        this.isWaitingForOffloadEndOfStreamHandled = false;
    L54:
        if (this.playing == false) goto L61;
        if (this.listener == null) goto L61;
        if (r16 >= r3) goto L61;
        if (this.isWaitingForOffloadEndOfStreamHandled == true) goto L61;
        this.listener.onOffloadBufferFull(this.audioTrackPositionTracker.getPendingBufferDurationMs(r4));
    L61:
        int r110 = this.configuration.outputMode;
        if (r110 != 0) goto L64;
        this.writtenPcmBytes += (long) r16;
    L64:
        if (r16 != r3) goto L73;
        if (r110 != 0) goto L67;
    L71:
        this.outputBuffer = null;
        return;
    L67:
        if (r13 == this.inputBuffer) goto L70;
        r2 = false;
    L70:
        Assertions.checkState(r2);
        this.writtenEncodedFrames += (long) (this.framesPerEncodedSample * this.inputBufferAccessUnitCount);
        goto L71
    L73:
        return;
    L26:
        r16 = 0;
        goto L35
    L28:
        if (this.tunneling == true) goto L30;
        r16 = writeNonBlockingV21(this.audioTrack, r13, r3);
        goto L35
    L30:
        if (r14 == C.TIME_UNSET) goto L32;
        boolean r5 = true;
    L33:
        Assertions.checkState(r5);
        r16 = writeNonBlockingWithAvSyncV21(this.audioTrack, r13, r3, r14);
        goto L35
    L32:
        r5 = false;
        goto L33
    L9:
        r1 = false;
        goto L10
    L11:
        this.outputBuffer = r13;
        if (Util.SDK_INT >= 21) goto L19;
        int r6 = r13.remaining();
        byte[] r7 = this.preV21OutputBuffer;
        if (r7 != null) goto L16;
    L17:
        this.preV21OutputBuffer = new byte[r6];
    L18:
        int r8 = r13.position();
        r13.get(this.preV21OutputBuffer, 0, r6);
        r13.position(r8);
        this.preV21OutputBufferOffset = 0;
        goto L19
    L16:
        if (r7.length >= r6) goto L18;
        goto L17
    }

    private static int writeNonBlockingV21(AudioTrack r1, ByteBuffer r2, int r3) {
        return r1.write(r2, r3, 1);
    }

    private int writeNonBlockingWithAvSyncV21(AudioTrack r11, ByteBuffer r12, int r13, long r14) {
        if (Util.SDK_INT < 26) goto L7;
        return r11.write(r12, r13, 1, r14 * 1000);
    L7:
        if (this.avSyncHeader != null) goto L10;
        ByteBuffer r0 = ByteBuffer.allocate(16);
        this.avSyncHeader = r0;
        r0.order(ByteOrder.BIG_ENDIAN);
        this.avSyncHeader.putInt(1431633921);
    L10:
        if (this.bytesUntilNextAvSync != 0) goto L12;
        this.avSyncHeader.putInt(4, r13);
        this.avSyncHeader.putLong(8, r14 * 1000);
        this.avSyncHeader.position(0);
        this.bytesUntilNextAvSync = r13;
    L12:
        int r15 = this.avSyncHeader.remaining();
        if (r15 <= 0) goto L20;
        int r16 = r11.write(this.avSyncHeader, r15, 1);
        if (r16 >= 0) goto L18;
        this.bytesUntilNextAvSync = 0;
        return r16;
    L18:
        if (r16 >= r15) goto L20;
        return 0;
    L20:
        int r17 = writeNonBlockingV21(r11, r12, r13);
        if (r17 >= 0) goto L24;
        this.bytesUntilNextAvSync = 0;
        return r17;
    L24:
        this.bytesUntilNextAvSync -= r17;
        return r17;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void configure(Format r15, int r16, int[] r17) throws AudioSink.ConfigurationException {
        if (MimeTypes.AUDIO_RAW.equals(r15.sampleMimeType) == false) goto L28;
        Assertions.checkArgument(Util.isEncodingLinearPcm(r15.pcmEncoding));
        int r0 = Util.getPcmFrameSize(r15.pcmEncoding, r15.channelCount);
        if (shouldUseFloatOutput(r15.pcmEncoding) == false) goto L7;
        AudioProcessor[] r2 = this.toFloatPcmAvailableAudioProcessors;
    L8:
        this.trimmingAudioProcessor.setTrimFrameCount(r15.encoderDelay, r15.encoderPadding);
        if (Util.SDK_INT < 21) goto L11;
    L16:
        int[] r6 = r17;
    L17:
        this.channelMappingAudioProcessor.setChannelMap(r6);
        AudioProcessor.AudioFormat r5 = new AudioProcessor.AudioFormat(r15.sampleRate, r15.channelCount, r15.pcmEncoding);
        int r7 = r2.length;
        int r8 = 0;
    L18:
        if (r8 >= r7) goto L27;
        AudioProcessor r9 = r2[r8];
        AudioProcessor.AudioFormat r10 = r9.configure(r5);     // Catch: AudioProcessor.UnhandledAudioFormatException -> L24
        if (r9.isActive() == false) goto L23;
        r5 = r10;
    L23:
        r8 = r8 + 1;
    L24:
        e = move-exception;
        throw new AudioSink.ConfigurationException(e, r15);
    L27:
        int r11 = r5.encoding;
        int r12 = r5.sampleRate;
        int r13 = Util.getAudioTrackChannelConfig(r5.channelCount);
        AudioProcessor[] r14 = r2;
        int r18 = r11;
        int r19 = Util.getPcmFrameSize(r11, r5.channelCount);
        int r20 = 0;
    L35:
        if (r18 == 0) goto L44;
        if (r13 == 0) goto L42;
        this.offloadDisabledUntilNextConfiguration = false;
        int r4 = r0;
        Configuration r110 = new Configuration(r15, r4, r20, r19, r12, r13, r18, r16, this.enableAudioTrackPlaybackParams, r14);
        if (isAudioTrackInitialized() == false) goto L40;
        this.pendingConfiguration = r110;
        return;
    L40:
        this.configuration = r110;
        return;
    L42:
        String r21 = String.valueOf(r15);
        StringBuilder r22 = new StringBuilder(String.valueOf(r21).length() + 54);
        r22.append("Invalid output channel config (mode=");
        r22.append(r20);
        r22.append(") for: ");
        r22.append(r21);
        throw new AudioSink.ConfigurationException(r22.toString(), r15);
    L44:
        String r23 = String.valueOf(r15);
        StringBuilder r24 = new StringBuilder(String.valueOf(r23).length() + 48);
        r24.append("Invalid output encoding (mode=");
        r24.append(r20);
        r24.append(") for: ");
        r24.append(r23);
        throw new AudioSink.ConfigurationException(r24.toString(), r15);
    L11:
        if (r15.channelCount != 8) goto L16;
        if (r17 != null) goto L16;
        r6 = new int[6];
        int r25 = 0;
    L14:
        if (r25 >= 6) goto L17;
        r6[r25] = r25;
        r25 = r25 + 1;
        goto L14
    L7:
        r2 = this.toIntPcmAvailableAudioProcessors;
        goto L8
    L28:
        AudioProcessor[] r1 = new AudioProcessor[0];
        int r26 = r15.sampleRate;
        if (useOffloadedPlayback(r15, this.audioAttributes) == false) goto L31;
        int r27 = MimeTypes.getEncoding((String) Assertions.checkNotNull(r15.sampleMimeType), r15.codecs);
        r14 = r1;
        r18 = r27;
        r13 = Util.getAudioTrackChannelConfig(r15.channelCount);
        r0 = -1;
        r19 = -1;
        r12 = r26;
        r20 = 1;
        goto L35
    L31:
        Pair<Integer, Integer> r28 = getEncodingAndChannelConfigForPassthrough(r15, this.audioCapabilities);
        if (r28 == null) goto L46;
        int r29 = ((Integer) r28.first).intValue();
        r14 = r1;
        r18 = r29;
        r0 = -1;
        r19 = -1;
        r13 = ((Integer) r28.second).intValue();
        r12 = r26;
        r20 = 2;
        goto L35
    L46:
        String r3 = String.valueOf(r15);
        StringBuilder r30 = new StringBuilder(String.valueOf(r3).length() + 37);
        r30.append("Unable to configure passthrough for: ");
        r30.append(r3);
        throw new AudioSink.ConfigurationException(r30.toString(), r15);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling == false) goto L6;
        this.tunneling = false;
        flush();
        return;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void enableTunnelingV21() {
        if (Util.SDK_INT < 21) goto L5;
        boolean r0 = true;
    L6:
        Assertions.checkState(r0);
        Assertions.checkState(this.externalAudioSessionIdProvided);
        if (this.tunneling == true) goto L10;
        this.tunneling = true;
        flush();
        return;
    L10:
        return;
    L5:
        r0 = false;
        goto L6
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void experimentalFlushWithoutAudioTrackRelease() {
        if (Util.SDK_INT >= 25) goto L6;
        flush();
        return;
    L6:
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
        if (isAudioTrackInitialized() == true) goto L9;
        return;
    L9:
        resetSinkStateForFlush();
        if (this.audioTrackPositionTracker.isPlaying() == false) goto L12;
        this.audioTrack.pause();
    L12:
        this.audioTrack.flush();
        this.audioTrackPositionTracker.reset();
        AudioTrackPositionTracker r1 = this.audioTrackPositionTracker;
        AudioTrack r2 = this.audioTrack;
        Configuration r0 = this.configuration;
        if (r0.outputMode != 2) goto L15;
        boolean r3 = true;
    L16:
        r1.setAudioTrack(r2, r3, r0.outputEncoding, r0.outputPcmFrameSize, r0.bufferSize);
        this.startMediaTimeUsNeedsInit = true;
        return;
    L15:
        r3 = false;
        goto L16
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (isAudioTrackInitialized() == false) goto L19;
        resetSinkStateForFlush();
        if (this.audioTrackPositionTracker.isPlaying() == false) goto L8;
        this.audioTrack.pause();
    L8:
        if (isOffloadedPlayback(this.audioTrack) == false) goto L10;
        ((StreamEventCallbackV29) Assertions.checkNotNull(this.offloadStreamEventCallbackV29)).unregister(this.audioTrack);
    L10:
        final AudioTrack r0 = this.audioTrack;
        this.audioTrack = null;
        if (Util.SDK_INT < 21) goto L13;
    L15:
        Configuration r2 = this.pendingConfiguration;
        if (r2 == null) goto L18;
        this.configuration = r2;
        this.pendingConfiguration = null;
    L18:
        this.audioTrackPositionTracker.reset();
        this.releasingConditionVariable.close();
        final String r3 = "ExoPlayer:AudioTrackReleaseThread";
        new AnonymousClass1(this, r3, r0).start();
        goto L19
    L13:
        if (this.externalAudioSessionIdProvided == true) goto L15;
        this.audioSessionId = 0;
    L19:
        this.writeExceptionPendingExceptionHolder.clear();
        this.initializationExceptionPendingExceptionHolder.clear();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long getCurrentPositionUs(boolean r5) {
        if (isAudioTrackInitialized() == true) goto L5;
        return Long.MIN_VALUE;
    L5:
        if (this.startMediaTimeUsNeedsInit == false) goto L8;
        return Long.MIN_VALUE;
    L8:
        return applySkipping(applyMediaPositionParameters(Math.min(this.audioTrackPositionTracker.getCurrentPositionUs(r5), this.configuration.framesToDurationUs(getWrittenFrames()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int getFormatSupport(Format r4) {
        if (MimeTypes.AUDIO_RAW.equals(r4.sampleMimeType) == false) goto L19;
        if (Util.isEncodingLinearPcm(r4.pcmEncoding) == true) goto L8;
        int r5 = r4.pcmEncoding;
        StringBuilder r2 = new StringBuilder(33);
        r2.append("Invalid PCM encoding: ");
        r2.append(r5);
        Log.w(TAG, r2.toString());
        return 0;
    L8:
        int r6 = r4.pcmEncoding;
        if (r6 != 2) goto L11;
    L17:
        return 2;
    L11:
        if (this.enableFloatOutput == true) goto L13;
        return 1;
    L13:
        if (r6 == 4) goto L17;
        return 1;
    L19:
        if (this.offloadDisabledUntilNextConfiguration == true) goto L24;
        if (useOffloadedPlayback(r4, this.audioAttributes) == false) goto L24;
        return 2;
    L24:
        if (isPassthroughPlaybackSupported(r4, this.audioCapabilities) == false) goto L26;
        return 2;
    L26:
        return 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        if (this.enableAudioTrackPlaybackParams == false) goto L6;
        return this.audioTrackPlaybackParameters;
    L6:
        return getAudioProcessorPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean getSkipSilenceEnabled() {
        return getMediaPositionParameters().skipSilence;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean handleBuffer(ByteBuffer r18, long r19, int r21) throws AudioSink.InitializationException, AudioSink.WriteException {
        ByteBuffer r5 = this.inputBuffer;
        if (r5 == null) goto L7;
        if (r18 == r5) goto L7;
        boolean r6 = false;
    L8:
        Assertions.checkArgument(r6);
        if (this.pendingConfiguration == null) goto L24;
        if (drainToEndOfStream() == true) goto L14;
        return false;
    L14:
        if (this.pendingConfiguration.canReuseAudioTrack(this.configuration) == true) goto L19;
        playPendingData();
        if (hasPendingData() == false) goto L18;
        return false;
    L18:
        flush();
    L22:
        applyAudioProcessorPlaybackParametersAndSkipSilence(r19);
        goto L24
    L19:
        this.configuration = this.pendingConfiguration;
        this.pendingConfiguration = null;
        if (isOffloadedPlayback(this.audioTrack) == false) goto L22;
        this.audioTrack.setOffloadEndOfStream();
        AudioTrack r7 = this.audioTrack;
        Format r9 = this.configuration.inputFormat;
        r7.setOffloadDelayPadding(r9.encoderDelay, r9.encoderPadding);
        this.isWaitingForOffloadEndOfStreamHandled = true;
    L24:
        if (isAudioTrackInitialized() == false) goto L97;
    L33:
        this.initializationExceptionPendingExceptionHolder.clear();
        if (this.startMediaTimeUsNeedsInit == false) goto L44;
        this.startMediaTimeUs = Math.max(0, r19);
        this.startMediaTimeUsNeedsSync = false;
        this.startMediaTimeUsNeedsInit = false;
        if (this.enableAudioTrackPlaybackParams == true) goto L38;
    L40:
        applyAudioProcessorPlaybackParametersAndSkipSilence(r19);
        if (this.playing == false) goto L44;
        play();
        goto L44
    L38:
        if (Util.SDK_INT < 23) goto L40;
        setAudioTrackPlaybackParametersV23(this.audioTrackPlaybackParameters);
    L44:
        if (this.audioTrackPositionTracker.mayHandleBuffer(getWrittenFrames()) == true) goto L47;
        return false;
    L47:
        if (this.inputBuffer == null) goto L49;
    L88:
        processBuffers(r19);
        if (this.inputBuffer.hasRemaining() == true) goto L93;
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        return true;
    L93:
        if (this.audioTrackPositionTracker.isStalled(getWrittenFrames()) == false) goto L96;
        Log.w(TAG, "Resetting stalled audio track");
        flush();
        return true;
    L96:
        return false;
    L49:
        if (r18.order() != ByteOrder.LITTLE_ENDIAN) goto L51;
        boolean r8 = true;
    L52:
        Assertions.checkArgument(r8);
        if (r18.hasRemaining() == true) goto L55;
        return true;
    L55:
        Configuration r10 = this.configuration;
        if (r10.outputMode == 0) goto L63;
        if (this.framesPerEncodedSample != 0) goto L63;
        int r11 = getFramesPerEncodedSample(r10.outputEncoding, r18);
        this.framesPerEncodedSample = r11;
        if (r11 != 0) goto L63;
        return true;
    L63:
        if (this.afterDrainParameters != null) goto L65;
    L68:
        long r12 = this.startMediaTimeUs + this.configuration.inputFramesToDurationUs(getSubmittedFrames() - this.trimmingAudioProcessor.getTrimmedFrameCount());
        if (this.startMediaTimeUsNeedsSync == true) goto L74;
        if (Math.abs(r12 - r19) <= 200000) goto L74;
        this.listener.onAudioSinkError(new AudioSink.UnexpectedDiscontinuityException(r19, r12));
        this.startMediaTimeUsNeedsSync = true;
    L74:
        if (this.startMediaTimeUsNeedsSync == false) goto L84;
        if (drainToEndOfStream() == true) goto L78;
        return false;
    L78:
        long r13 = r19 - r12;
        this.startMediaTimeUs += r13;
        this.startMediaTimeUsNeedsSync = false;
        applyAudioProcessorPlaybackParametersAndSkipSilence(r19);
        AudioSink.Listener r14 = this.listener;
        if (r14 == null) goto L84;
        if (r13 == 0) goto L84;
        r14.onPositionDiscontinuity();
    L84:
        if (this.configuration.outputMode != 0) goto L86;
        this.submittedPcmBytes += (long) r18.remaining();
    L87:
        this.inputBuffer = r18;
        this.inputBufferAccessUnitCount = r21;
        goto L88
    L86:
        this.submittedEncodedFrames += (long) (this.framesPerEncodedSample * r21);
        goto L87
    L65:
        if (drainToEndOfStream() == true) goto L67;
        return false;
    L67:
        applyAudioProcessorPlaybackParametersAndSkipSilence(r19);
        this.afterDrainParameters = null;
        goto L68
    L51:
        r8 = false;
        goto L52
    L97:
        initializeAudioTrack();     // Catch: AudioSink.InitializationException -> L27
    L27:
        e = move-exception;
        if (e.isRecoverable == true) goto L32;
        this.initializationExceptionPendingExceptionHolder.throwExceptionIfDeadlineIsReached(e);
        return false;
    L32:
        throw e;
    L7:
        r6 = true;
        goto L8
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean hasPendingData() {
        if (isAudioTrackInitialized() == true) goto L5;
    L7:
        return false;
    L5:
        if (this.audioTrackPositionTracker.hasPendingData(getWrittenFrames()) == false) goto L7;
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean isEnded() {
        if (isAudioTrackInitialized() == true) goto L5;
    L10:
        return true;
    L5:
        if (this.handledEndOfStream == true) goto L7;
    L9:
        return false;
    L7:
        if (hasPendingData() == true) goto L9;
        goto L9
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (isAudioTrackInitialized() == true) goto L5;
        return;
    L5:
        if (this.audioTrackPositionTracker.pause() == false) goto L9;
        this.audioTrack.pause();
        return;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() {
        this.playing = true;
        if (isAudioTrackInitialized() == false) goto L6;
        this.audioTrackPositionTracker.start();
        this.audioTrack.play();
        return;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (this.handledEndOfStream == false) goto L5;
        return;
    L5:
        if (isAudioTrackInitialized() == true) goto L7;
        return;
    L7:
        if (drainToEndOfStream() == false) goto L12;
        playPendingData();
        this.handledEndOfStream = true;
        return;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        AudioProcessor[] r0 = this.toIntPcmAvailableAudioProcessors;
        int r1 = r0.length;
        int r3 = 0;
    L3:
        if (r3 >= r1) goto L5;
        r0[r3].reset();
        r3 = r3 + 1;
        goto L3
    L5:
        AudioProcessor[] r2 = this.toFloatPcmAvailableAudioProcessors;
        int r4 = r2.length;
        int r5 = 0;
    L6:
        if (r5 >= r4) goto L8;
        r2[r5].reset();
        r5 = r5 + 1;
        goto L6
    L8:
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioAttributes(AudioAttributes r2) {
        if (this.audioAttributes.equals(r2) == false) goto L5;
        return;
    L5:
        this.audioAttributes = r2;
        if (this.tunneling == false) goto L8;
        return;
    L8:
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAudioSessionId(int r2) {
        if (this.audioSessionId == r2) goto L10;
        this.audioSessionId = r2;
        if (r2 == 0) goto L7;
        boolean r3 = true;
    L8:
        this.externalAudioSessionIdProvided = r3;
        flush();
        return;
    L7:
        r3 = false;
        goto L8
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setAuxEffectInfo(AuxEffectInfo r5) {
        if (this.auxEffectInfo.equals(r5) == false) goto L5;
        return;
    L5:
        int r0 = r5.effectId;
        float r1 = r5.sendLevel;
        AudioTrack r2 = this.audioTrack;
        if (r2 != null) goto L8;
    L12:
        this.auxEffectInfo = r5;
        return;
    L8:
        if (this.auxEffectInfo.effectId == r0) goto L10;
        r2.attachAuxEffect(r0);
    L10:
        if (r0 == 0) goto L12;
        this.audioTrack.setAuxEffectSendLevel(r1);
        goto L12
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setListener(AudioSink.Listener r1) {
        this.listener = r1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setPlaybackParameters(PlaybackParameters r5) {
        PlaybackParameters r0 = new PlaybackParameters(Util.constrainValue(r5.speed, 0.1f, 8.0f), Util.constrainValue(r5.pitch, 0.1f, 8.0f));
        if (this.enableAudioTrackPlaybackParams == true) goto L5;
    L7:
        setAudioProcessorPlaybackParametersAndSkipSilence(r0, getSkipSilenceEnabled());
        return;
    L5:
        if (Util.SDK_INT < 23) goto L7;
        setAudioTrackPlaybackParametersV23(r0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setSkipSilenceEnabled(boolean r2) {
        setAudioProcessorPlaybackParametersAndSkipSilence(getAudioProcessorPlaybackParameters(), r2);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float r2) {
        if (this.volume == r2) goto L6;
        this.volume = r2;
        setVolumeInternal();
        return;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean supportsFormat(Format r1) {
        if (getFormatSupport(r1) == 0) goto L5;
        return true;
    L5:
        return false;
    }

    public DefaultAudioSink(AudioCapabilities r7, AudioProcessor[] r8, boolean r9) {
        this(r7, new DefaultAudioProcessorChain(r8), r9, false, 0);
    }

    public DefaultAudioSink(AudioCapabilities r11, AudioProcessorChain r12, boolean r13, boolean r14, int r15) {
        this.audioCapabilities = r11;
        this.audioProcessorChain = (AudioProcessorChain) Assertions.checkNotNull(r12);
        int r16 = Util.SDK_INT;
        if (r16 < 21) goto L6;
        if (r13 == false) goto L6;
        boolean r17 = true;
    L7:
        this.enableFloatOutput = r17;
        if (r16 < 23) goto L11;
        if (r14 == false) goto L11;
        boolean r18 = true;
    L12:
        this.enableAudioTrackPlaybackParams = r18;
        if (r16 >= 29) goto L16;
        r15 = 0;
    L16:
        this.offloadMode = r15;
        this.releasingConditionVariable = new ConditionVariable(true);
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener(this, null));
        ChannelMappingAudioProcessor r19 = new ChannelMappingAudioProcessor();
        this.channelMappingAudioProcessor = r19;
        TrimmingAudioProcessor r110 = new TrimmingAudioProcessor();
        this.trimmingAudioProcessor = r110;
        ArrayList r111 = new ArrayList();
        Collections.addAll(r111, new BaseAudioProcessor[]{new ResamplingAudioProcessor(), r19, r110});
        Collections.addAll(r111, r12.getAudioProcessors());
        this.toIntPcmAvailableAudioProcessors = (AudioProcessor[]) r111.toArray(new AudioProcessor[0]);
        this.toFloatPcmAvailableAudioProcessors = new AudioProcessor[]{new FloatResamplingAudioProcessor()};
        this.volume = 1.0f;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioSessionId = 0;
        this.auxEffectInfo = new AuxEffectInfo(0, BitmapDescriptorFactory.HUE_RED);
        PlaybackParameters r112 = PlaybackParameters.DEFAULT;
        this.mediaPositionParameters = new MediaPositionParameters(r112, false, 0, 0, null);
        this.audioTrackPlaybackParameters = r112;
        this.drainingAudioProcessorIndex = -1;
        this.activeAudioProcessors = new AudioProcessor[0];
        this.outputBuffers = new ByteBuffer[0];
        this.mediaPositionParametersCheckpoints = new ArrayDeque();
        this.initializationExceptionPendingExceptionHolder = new PendingExceptionHolder(100);
        this.writeExceptionPendingExceptionHolder = new PendingExceptionHolder(100);
        return;
    L11:
        r18 = false;
    L6:
        r17 = false;
        goto L7
    }
}

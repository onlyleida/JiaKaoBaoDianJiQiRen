package com.alivc.component.voice;

import a.a.a.a;
import a.a.a.b;
import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import com.alivc.live.pusher.LogUtil;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class WebRtcAudioTrack {
    private static final long AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS = 2000;
    private static final int BITS_PER_SAMPLE = 16;
    private static final int BUFFERS_PER_SECOND = 100;
    private static final int CALLBACK_BUFFER_SIZE_MS = 10;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_USAGE;
    private static final String TAG = "WebRtcAudioTrack";
    private static ErrorCallback errorCallback;
    private static volatile boolean speakerMute;
    private static int usageAttribute;
    private final AudioManager audioManager;
    private AudioTrackThread audioThread;
    private AudioTrack audioTrack;
    private AudioTrackListener audioTrackListener;
    private ByteBuffer byteBuffer;
    private byte[] emptyBytes;
    private final long nativeAudioRender;
    private final b.a threadChecker;

    public interface AudioTrackListener {
        void CacheDirectBufferAddress(ByteBuffer byteBuffer, long j);

        void GetPlayoutData(int i, long j);
    }

    public enum AudioTrackStartErrorCode {
        AUDIO_TRACK_START_EXCEPTION,
        AUDIO_TRACK_START_STATE_MISMATCH
    }

    private class AudioTrackThread extends Thread {
        private volatile boolean keepAlive;

        public AudioTrackThread(String str) {
            super(str);
            this.keepAlive = true;
        }

        private int writeBytes(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
            return Build.VERSION.SDK_INT >= 21 ? audioTrack.write(byteBuffer, i, 0) : audioTrack.write(byteBuffer.array(), byteBuffer.arrayOffset(), i);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            LogUtil.d(WebRtcAudioTrack.TAG, "AudioTrackThread" + WebRtcAudioUtils.getThreadInfo());
            WebRtcAudioTrack.assertTrue(WebRtcAudioTrack.this.audioTrack.getPlayState() == 3);
            int iCapacity = WebRtcAudioTrack.this.byteBuffer.capacity();
            while (this.keepAlive) {
                WebRtcAudioTrack.this.audioTrackListener.GetPlayoutData(iCapacity, WebRtcAudioTrack.this.nativeAudioRender);
                WebRtcAudioTrack.assertTrue(iCapacity <= WebRtcAudioTrack.this.byteBuffer.remaining());
                if (WebRtcAudioTrack.speakerMute) {
                    WebRtcAudioTrack.this.byteBuffer.clear();
                    WebRtcAudioTrack.this.byteBuffer.put(WebRtcAudioTrack.this.emptyBytes);
                    WebRtcAudioTrack.this.byteBuffer.position(0);
                }
                int iWriteBytes = writeBytes(WebRtcAudioTrack.this.audioTrack, WebRtcAudioTrack.this.byteBuffer, iCapacity);
                if (iWriteBytes != iCapacity) {
                    LogUtil.e(WebRtcAudioTrack.TAG, "AudioTrack.write played invalid number of bytes: " + iWriteBytes);
                    if (iWriteBytes < 0) {
                        this.keepAlive = false;
                        WebRtcAudioTrack.this.reportWebRtcAudioTrackError("AudioTrack.write failed: " + iWriteBytes);
                    }
                }
                WebRtcAudioTrack.this.byteBuffer.rewind();
            }
            if (WebRtcAudioTrack.this.audioTrack != null) {
                LogUtil.d(WebRtcAudioTrack.TAG, "Calling AudioTrack.stop...");
                try {
                    WebRtcAudioTrack.this.audioTrack.stop();
                    LogUtil.d(WebRtcAudioTrack.TAG, "AudioTrack.stop is done.");
                } catch (IllegalStateException e2) {
                    LogUtil.e(WebRtcAudioTrack.TAG, "AudioTrack.stop failed: " + e2.getMessage());
                }
            }
        }

        public void stopThread() {
            LogUtil.d(WebRtcAudioTrack.TAG, "stopThread");
            this.keepAlive = false;
        }
    }

    public interface ErrorCallback {
        void onWebRtcAudioTrackError(String str);

        void onWebRtcAudioTrackInitError(String str);

        void onWebRtcAudioTrackStartError(AudioTrackStartErrorCode audioTrackStartErrorCode, String str);
    }

    static {
        int defaultUsageAttribute = getDefaultUsageAttribute();
        DEFAULT_USAGE = defaultUsageAttribute;
        usageAttribute = defaultUsageAttribute;
    }

    WebRtcAudioTrack(AudioTrackListener audioTrackListener, long j) {
        b.a aVar = new b.a();
        this.threadChecker = aVar;
        aVar.a();
        LogUtil.d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
        this.audioManager = (AudioManager) a.a().getSystemService("audio");
        this.audioTrackListener = audioTrackListener;
        this.nativeAudioRender = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertTrue(boolean z) {
    }

    private int channelCountToConfiguration(int i) {
        return i == 1 ? 4 : 12;
    }

    @TargetApi(21)
    private static AudioTrack createAudioTrackOnLollipopOrHigher(int i, int i2, int i3) {
        LogUtil.d(TAG, "createAudioTrackOnLollipopOrHigher");
        int nativeOutputSampleRate = AudioTrack.getNativeOutputSampleRate(0);
        LogUtil.d(TAG, "nativeOutputSampleRate: " + nativeOutputSampleRate);
        if (i != nativeOutputSampleRate) {
            LogUtil.w(TAG, "Unable to use fast mode since requested sample rate is not native");
        }
        if (usageAttribute != DEFAULT_USAGE) {
            LogUtil.w(TAG, "A non default usage attribute is used: " + usageAttribute);
        }
        return new AudioTrack(new AudioAttributes.Builder().setUsage(usageAttribute).setContentType(1).build(), new AudioFormat.Builder().setEncoding(2).setSampleRate(i).setChannelMask(i2).build(), i3, 1, 0);
    }

    private static AudioTrack createAudioTrackOnLowerThanLollipop(int i, int i2, int i3) {
        return new AudioTrack(0, i, i2, 2, i3, 1);
    }

    private int getBufferSizeInFrames() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.audioTrack.getBufferSizeInFrames();
        }
        return -1;
    }

    private static int getDefaultUsageAttribute() {
        return Build.VERSION.SDK_INT >= 21 ? 2 : 0;
    }

    private int getStreamMaxVolume() {
        this.threadChecker.a();
        LogUtil.d(TAG, "getStreamMaxVolume");
        assertTrue(this.audioManager != null);
        return this.audioManager.getStreamMaxVolume(0);
    }

    private int getStreamVolume() {
        this.threadChecker.a();
        LogUtil.d(TAG, "getStreamVolume");
        assertTrue(this.audioManager != null);
        return this.audioManager.getStreamVolume(0);
    }

    private boolean isVolumeFixed() {
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        return this.audioManager.isVolumeFixed();
    }

    private void logBufferCapacityInFrames() {
        if (Build.VERSION.SDK_INT >= 24) {
            LogUtil.d(TAG, "AudioTrack: buffer capacity in frames: " + this.audioTrack.getBufferCapacityInFrames());
        }
    }

    private void logBufferSizeInFrames() {
        if (Build.VERSION.SDK_INT >= 23) {
            LogUtil.d(TAG, "AudioTrack: buffer size in frames: " + this.audioTrack.getBufferSizeInFrames());
        }
    }

    private void logMainParameters() {
        LogUtil.d(TAG, "AudioTrack: session ID: " + this.audioTrack.getAudioSessionId() + ", channels: " + this.audioTrack.getChannelCount() + ", sample rate: " + this.audioTrack.getSampleRate() + ", max gain: " + AudioTrack.getMaxVolume());
    }

    private void logMainParametersExtended() {
        logBufferSizeInFrames();
        logBufferCapacityInFrames();
    }

    private void logUnderrunCount() {
        if (Build.VERSION.SDK_INT >= 24) {
            LogUtil.d(TAG, "underrun count: " + this.audioTrack.getUnderrunCount());
        }
    }

    private void releaseAudioResources() {
        LogUtil.d(TAG, "releaseAudioResources");
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.audioTrack = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportWebRtcAudioTrackError(String str) {
        LogUtil.e(TAG, "Run-time playback error: " + str);
        ErrorCallback errorCallback2 = errorCallback;
        if (errorCallback2 != null) {
            errorCallback2.onWebRtcAudioTrackError(str);
        }
    }

    private void reportWebRtcAudioTrackInitError(String str) {
        LogUtil.e(TAG, "Init playout error: " + str);
        WebRtcAudioUtils.logAudioState(TAG);
        ErrorCallback errorCallback2 = errorCallback;
        if (errorCallback2 != null) {
            errorCallback2.onWebRtcAudioTrackInitError(str);
        }
    }

    private void reportWebRtcAudioTrackStartError(AudioTrackStartErrorCode audioTrackStartErrorCode, String str) {
        LogUtil.e(TAG, "Start playout error: " + audioTrackStartErrorCode + ". " + str);
        ErrorCallback errorCallback2 = errorCallback;
        if (errorCallback2 != null) {
            errorCallback2.onWebRtcAudioTrackStartError(audioTrackStartErrorCode, str);
        }
    }

    public static synchronized void setAudioTrackUsageAttribute(int i) {
        LogUtil.w(TAG, "Default usage attribute is changed from: " + DEFAULT_USAGE + " to " + i);
        usageAttribute = i;
    }

    public static void setErrorCallback(ErrorCallback errorCallback2) {
        LogUtil.d(TAG, "Set extended error callback");
        errorCallback = errorCallback2;
    }

    public static void setSpeakerMute(boolean z) {
        LogUtil.w(TAG, "setSpeakerMute(" + z + ")");
        speakerMute = z;
    }

    private boolean setStreamVolume(int i) {
        this.threadChecker.a();
        LogUtil.d(TAG, "setStreamVolume(" + i + ")");
        assertTrue(this.audioManager != null);
        if (isVolumeFixed()) {
            LogUtil.e(TAG, "The device implements a fixed volume policy.");
            return false;
        }
        this.audioManager.setStreamVolume(0, i, 0);
        return true;
    }

    public boolean initPlayout(int i, int i2, double d2) {
        this.threadChecker.a();
        LogUtil.d(TAG, "initPlayout(sampleRate=" + i + ", channels=" + i2 + ", bufferSizeFactor=" + d2 + ")");
        this.byteBuffer = ByteBuffer.allocateDirect(i2 * 2 * (i / 100));
        StringBuilder sb = new StringBuilder();
        sb.append("byteBuffer.capacity: ");
        sb.append(this.byteBuffer.capacity());
        LogUtil.d(TAG, sb.toString());
        this.emptyBytes = new byte[this.byteBuffer.capacity()];
        this.audioTrackListener.CacheDirectBufferAddress(this.byteBuffer, this.nativeAudioRender);
        int iChannelCountToConfiguration = channelCountToConfiguration(i2);
        int minBufferSize = (int) (((double) AudioTrack.getMinBufferSize(i, iChannelCountToConfiguration, 2)) * d2);
        LogUtil.d(TAG, "minBufferSizeInBytes: " + minBufferSize);
        if (minBufferSize < this.byteBuffer.capacity()) {
            reportWebRtcAudioTrackInitError("AudioTrack.getMinBufferSize returns an invalid value.");
            return false;
        }
        if (this.audioTrack != null) {
            reportWebRtcAudioTrackInitError("Conflict with existing AudioTrack.");
            return false;
        }
        try {
            AudioTrack audioTrackCreateAudioTrackOnLollipopOrHigher = Build.VERSION.SDK_INT >= 21 ? createAudioTrackOnLollipopOrHigher(i, iChannelCountToConfiguration, minBufferSize) : createAudioTrackOnLowerThanLollipop(i, iChannelCountToConfiguration, minBufferSize);
            this.audioTrack = audioTrackCreateAudioTrackOnLollipopOrHigher;
            if (audioTrackCreateAudioTrackOnLollipopOrHigher == null || audioTrackCreateAudioTrackOnLollipopOrHigher.getState() != 1) {
                reportWebRtcAudioTrackInitError("Initialization of audio track failed.");
                releaseAudioResources();
                return false;
            }
            logMainParameters();
            logMainParametersExtended();
            return true;
        } catch (IllegalArgumentException e2) {
            reportWebRtcAudioTrackInitError(e2.getMessage());
            releaseAudioResources();
            return false;
        }
    }

    public boolean startPlayout() {
        this.threadChecker.a();
        LogUtil.d(TAG, "startPlayout");
        assertTrue(this.audioTrack != null);
        assertTrue(this.audioThread == null);
        try {
            this.audioTrack.play();
            if (this.audioTrack.getPlayState() == 3) {
                AudioTrackThread audioTrackThread = new AudioTrackThread("AudioTrackJavaThread");
                this.audioThread = audioTrackThread;
                audioTrackThread.start();
                return true;
            }
            reportWebRtcAudioTrackStartError(AudioTrackStartErrorCode.AUDIO_TRACK_START_STATE_MISMATCH, "AudioTrack.play failed - incorrect state :" + this.audioTrack.getPlayState());
            releaseAudioResources();
            return false;
        } catch (IllegalStateException e2) {
            reportWebRtcAudioTrackStartError(AudioTrackStartErrorCode.AUDIO_TRACK_START_EXCEPTION, "AudioTrack.play failed: " + e2.getMessage());
        }
    }

    public boolean stopPlayout() {
        this.threadChecker.a();
        LogUtil.d(TAG, "stopPlayout");
        assertTrue(this.audioThread != null);
        logUnderrunCount();
        this.audioThread.stopThread();
        LogUtil.d(TAG, "Stopping the AudioTrackThread...");
        this.audioThread.interrupt();
        if (!b.a(this.audioThread, 2000L)) {
            LogUtil.e(TAG, "Join of AudioTrackThread timed out.");
            WebRtcAudioUtils.logAudioState(TAG);
        }
        LogUtil.d(TAG, "AudioTrackThread has now been stopped.");
        this.audioThread = null;
        releaseAudioResources();
        return true;
    }
}

package com.alivc.component.voice;

import com.alivc.live.pusher.LogUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class AudioTrackJNI {
    private WebRtcAudioTrack mAudioTrack;
    private final String TAG = "AudioTrackJNI";
    private final double kBufferSizeFactor = 1.0d;
    private boolean mInited = false;
    private int lastSampleRate = 0;
    private int lastChannel = 0;
    private WebRtcAudioTrack.AudioTrackListener mAudioTrackListener = new WebRtcAudioTrack.AudioTrackListener() { // from class: com.alivc.component.voice.AudioTrackJNI.1
        @Override // com.alivc.component.voice.WebRtcAudioTrack.AudioTrackListener
        public void CacheDirectBufferAddress(ByteBuffer byteBuffer, long j) {
            if (AudioTrackJNI.this.mAudioTrack != null) {
                AudioTrackJNI.this.nativeCacheDirectBufferAddress(byteBuffer, j);
            }
        }

        @Override // com.alivc.component.voice.WebRtcAudioTrack.AudioTrackListener
        public void GetPlayoutData(int i, long j) {
            if (AudioTrackJNI.this.mAudioTrack != null) {
                AudioTrackJNI.this.nativeGetPlayoutData(i, j);
            }
        }
    };
    private WebRtcAudioTrack.ErrorCallback mAudioTrackErrorCallback = new WebRtcAudioTrack.ErrorCallback() { // from class: com.alivc.component.voice.AudioTrackJNI.2
        @Override // com.alivc.component.voice.WebRtcAudioTrack.ErrorCallback
        public void onWebRtcAudioTrackError(String str) {
            AudioTrackJNI.this.nativeNotifyAudioDeviceError("AudioTrackJNI", -1, str);
        }

        @Override // com.alivc.component.voice.WebRtcAudioTrack.ErrorCallback
        public void onWebRtcAudioTrackInitError(String str) {
            AudioTrackJNI.this.nativeNotifyAudioDeviceError("AudioTrackJNI", -1, str);
        }

        @Override // com.alivc.component.voice.WebRtcAudioTrack.ErrorCallback
        public void onWebRtcAudioTrackStartError(WebRtcAudioTrack.AudioTrackStartErrorCode audioTrackStartErrorCode, String str) {
            AudioTrackJNI.this.nativeNotifyAudioDeviceError("AudioTrackJNI", audioTrackStartErrorCode.ordinal(), str);
        }
    };

    public AudioTrackJNI(long j) {
        this.mAudioTrack = null;
        LogUtil.d("AudioTrackJNI", "ME ME ME, AudioTrackJNI construct " + j);
        if (this.mAudioTrack == null) {
            this.mAudioTrack = new WebRtcAudioTrack(this.mAudioTrackListener, j);
            WebRtcAudioTrack.setErrorCallback(this.mAudioTrackErrorCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeCacheDirectBufferAddress(ByteBuffer byteBuffer, long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeGetPlayoutData(int i, long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeNotifyAudioDeviceError(String str, int i, String str2);

    public void destroy() {
        LogUtil.d("AudioTrackJNI", "destroy");
        this.mAudioTrack = null;
    }

    public boolean init(int i, int i2) {
        WebRtcAudioTrack webRtcAudioTrack;
        LogUtil.d("AudioTrackJNI", "init : sampleRate " + i + ", channel " + i2);
        if (this.mInited || (webRtcAudioTrack = this.mAudioTrack) == null) {
            return false;
        }
        boolean zInitPlayout = webRtcAudioTrack.initPlayout(i, i2, 1.0d);
        this.lastSampleRate = i;
        this.lastChannel = i2;
        this.mInited = true;
        return zInitPlayout;
    }

    public boolean pause() {
        LogUtil.d("AudioTrackJNI", "pause");
        WebRtcAudioTrack webRtcAudioTrack = this.mAudioTrack;
        if (webRtcAudioTrack == null) {
            return false;
        }
        boolean zStopPlayout = webRtcAudioTrack.stopPlayout();
        this.mInited = false;
        return zStopPlayout;
    }

    public boolean resume() {
        LogUtil.d("AudioTrackJNI", "resume");
        if (this.mAudioTrack != null) {
            return (!this.mInited ? init(this.lastSampleRate, this.lastChannel) : true) && this.mAudioTrack.startPlayout();
        }
        return false;
    }

    public boolean start() {
        LogUtil.d("AudioTrackJNI", TtmlNode.START);
        if (this.mAudioTrack != null) {
            return (!this.mInited ? init(this.lastSampleRate, this.lastChannel) : true) && this.mAudioTrack.startPlayout();
        }
        return false;
    }

    public boolean stop() {
        LogUtil.d("AudioTrackJNI", "stop");
        WebRtcAudioTrack webRtcAudioTrack = this.mAudioTrack;
        if (webRtcAudioTrack == null) {
            return false;
        }
        boolean zStopPlayout = webRtcAudioTrack.stopPlayout();
        this.mInited = false;
        return zStopPlayout;
    }
}

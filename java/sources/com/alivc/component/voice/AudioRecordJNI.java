package com.alivc.component.voice;

import com.alivc.live.pusher.LogUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class AudioRecordJNI {
    private WebRtcAudioRecord mAudioRecord;
    private final String TAG = "AudioRecordJNI";
    private WebRtcAudioRecord.AudioRecordListener mAudioRecordListener = new WebRtcAudioRecord.AudioRecordListener() { // from class: com.alivc.component.voice.AudioRecordJNI.1
        @Override // com.alivc.component.voice.WebRtcAudioRecord.AudioRecordListener
        public void CacheDirectBufferAddress(ByteBuffer byteBuffer, long j) {
            if (AudioRecordJNI.this.mAudioRecord != null) {
                AudioRecordJNI.this.nativeCacheDirectBufferAddress(byteBuffer, j);
            }
        }

        @Override // com.alivc.component.voice.WebRtcAudioRecord.AudioRecordListener
        public void DataIsRecorded(int i, long j) {
            if (AudioRecordJNI.this.mAudioRecord != null) {
                AudioRecordJNI.this.nativeDataIsRecorded(i, j);
            }
        }
    };
    private WebRtcAudioRecord.WebRtcAudioRecordErrorCallback mAudioRecordErrorCallback = new WebRtcAudioRecord.WebRtcAudioRecordErrorCallback() { // from class: com.alivc.component.voice.AudioRecordJNI.2
        @Override // com.alivc.component.voice.WebRtcAudioRecord.WebRtcAudioRecordErrorCallback
        public void onWebRtcAudioRecordError(String str) {
            AudioRecordJNI.this.nativeNotifyAudioDeviceError("AudioRecordJNI", -1, str);
        }

        @Override // com.alivc.component.voice.WebRtcAudioRecord.WebRtcAudioRecordErrorCallback
        public void onWebRtcAudioRecordInitError(String str) {
            AudioRecordJNI.this.nativeNotifyAudioDeviceError("AudioRecordJNI", -1, str);
        }

        @Override // com.alivc.component.voice.WebRtcAudioRecord.WebRtcAudioRecordErrorCallback
        public void onWebRtcAudioRecordStartError(WebRtcAudioRecord.AudioRecordStartErrorCode audioRecordStartErrorCode, String str) {
            AudioRecordJNI.this.nativeNotifyAudioDeviceError("AudioRecordJNI", audioRecordStartErrorCode.ordinal(), str);
        }
    };

    public AudioRecordJNI(long j) {
        this.mAudioRecord = null;
        LogUtil.d("AudioRecordJNI", "ME ME ME, AudioRecordJNI construct " + j);
        if (this.mAudioRecord == null) {
            this.mAudioRecord = new WebRtcAudioRecord(this.mAudioRecordListener, j);
            WebRtcAudioRecord.setErrorCallback(this.mAudioRecordErrorCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeCacheDirectBufferAddress(ByteBuffer byteBuffer, long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeDataIsRecorded(int i, long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeNotifyAudioDeviceError(String str, int i, String str2);

    public void destroy() {
        LogUtil.d("AudioRecordJNI", "destroy");
        this.mAudioRecord = null;
    }

    public boolean init(int i, int i2, int i3, boolean z) {
        LogUtil.d("AudioRecordJNI", "init : sampleRate " + i + ", channel " + i2 + ", native format " + i3);
        WebRtcAudioRecord webRtcAudioRecord = this.mAudioRecord;
        if (webRtcAudioRecord == null) {
            return false;
        }
        webRtcAudioRecord.enableBuiltInAEC(false);
        this.mAudioRecord.enableBuiltInNS(z);
        return this.mAudioRecord.initRecording(i, i2);
    }

    public boolean pause() {
        LogUtil.d("AudioRecordJNI", "pause");
        WebRtcAudioRecord webRtcAudioRecord = this.mAudioRecord;
        if (webRtcAudioRecord != null) {
            return webRtcAudioRecord.stopRecording();
        }
        return false;
    }

    public boolean resume() {
        LogUtil.d("AudioRecordJNI", "resume");
        WebRtcAudioRecord webRtcAudioRecord = this.mAudioRecord;
        if (webRtcAudioRecord != null) {
            return webRtcAudioRecord.startRecording();
        }
        return false;
    }

    public void setMute(boolean z) {
        LogUtil.d("AudioRecordJNI", "setMute, mute=" + z);
        WebRtcAudioRecord.setMicrophoneMute(z);
    }

    public boolean start() {
        LogUtil.d("AudioRecordJNI", TtmlNode.START);
        WebRtcAudioRecord webRtcAudioRecord = this.mAudioRecord;
        if (webRtcAudioRecord != null) {
            return webRtcAudioRecord.startRecording();
        }
        return false;
    }

    public boolean stop() {
        LogUtil.d("AudioRecordJNI", "stop");
        WebRtcAudioRecord webRtcAudioRecord = this.mAudioRecord;
        if (webRtcAudioRecord != null) {
            return webRtcAudioRecord.stopRecording();
        }
        return false;
    }
}

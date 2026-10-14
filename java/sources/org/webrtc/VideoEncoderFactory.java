package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
public interface VideoEncoderFactory {

    public interface VideoEncoderSelector {
        @CalledByNative("VideoEncoderSelector")
        VideoCodecInfo onAvailableBitrate(int i);

        @CalledByNative("VideoEncoderSelector")
        void onCurrentEncoder(VideoCodecInfo videoCodecInfo);

        @CalledByNative("VideoEncoderSelector")
        VideoCodecInfo onEncoderBroken();
    }

    @CalledByNative
    VideoEncoder createEncoder(VideoCodecInfo videoCodecInfo);

    @CalledByNative
    VideoEncoderSelector getEncoderSelector();

    @CalledByNative
    VideoCodecInfo[] getImplementations();

    @CalledByNative
    VideoCodecInfo[] getSupportedCodecs();
}

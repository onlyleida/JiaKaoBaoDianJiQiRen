package org.webrtc;

/* JADX INFO: compiled from: VideoProcessor.java */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class v0 {
    public static void $default$onFrameCaptured(VideoProcessor _this, VideoFrame videoFrame, VideoProcessor.FrameAdaptationParameters frameAdaptationParameters) {
        VideoFrame videoFrameA = a(videoFrame, frameAdaptationParameters);
        if (videoFrameA != null) {
            _this.onFrameCaptured(videoFrameA);
            videoFrameA.release();
        }
    }

    public static VideoFrame a(VideoFrame videoFrame, VideoProcessor.FrameAdaptationParameters frameAdaptationParameters) {
        if (frameAdaptationParameters.drop) {
            return null;
        }
        return new VideoFrame(videoFrame.getBuffer().cropAndScale(frameAdaptationParameters.cropX, frameAdaptationParameters.cropY, frameAdaptationParameters.cropWidth, frameAdaptationParameters.cropHeight, frameAdaptationParameters.scaleWidth, frameAdaptationParameters.scaleHeight), videoFrame.getRotation(), frameAdaptationParameters.timestampNs);
    }
}

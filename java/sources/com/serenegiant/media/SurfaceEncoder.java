package com.serenegiant.media;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(18)
public class SurfaceEncoder extends AbstractVideoEncoder implements ISurfaceEncoder {
    protected Surface mInputSurface;

    public SurfaceEncoder(IRecorder iRecorder, EncoderListener encoderListener) {
        super("video/avc", iRecorder, encoderListener);
    }

    @Override // com.serenegiant.media.AbstractEncoder
    public int getCaptureFormat() {
        return 0;
    }

    @Override // com.serenegiant.media.ISurfaceEncoder
    public Surface getInputSurface() {
        return this.mInputSurface;
    }

    @Override // com.serenegiant.media.AbstractEncoder
    protected boolean internalPrepare() throws Exception {
        this.mTrackIndex = -1;
        this.mRecorderStarted = false;
        this.mIsCapturing = true;
        this.mIsEOS = false;
        if (MediaCodecHelper.selectVideoEncoder("video/avc") == null) {
            return true;
        }
        int i = this.mWidth;
        boolean z = i >= 1000 || this.mHeight >= 1000;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, this.mHeight);
        mediaFormatCreateVideoFormat.setInteger("color-format", MediaCodecHelper.OMX_COLOR_FormatAndroidOpaque);
        int bitrate = this.mBitRate;
        if (bitrate <= 0) {
            bitrate = VideoConfig.getBitrate(this.mWidth, this.mHeight);
        }
        mediaFormatCreateVideoFormat.setInteger("bitrate", bitrate);
        int captureFps = this.mFramerate;
        if (captureFps <= 0) {
            captureFps = VideoConfig.getCaptureFps();
        }
        mediaFormatCreateVideoFormat.setInteger("frame-rate", captureFps);
        int iFrame = this.mIFrameIntervals;
        if (iFrame <= 0) {
            iFrame = VideoConfig.getIFrame();
        }
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", iFrame);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        this.mMediaCodec = mediaCodecCreateEncoderByType;
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.mInputSurface = this.mMediaCodec.createInputSurface();
        this.mMediaCodec.start();
        return z;
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void release() {
        super.release();
        this.mInputSurface = null;
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void signalEndOfInputStream() {
        this.mIsEOS = true;
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec != null) {
            mediaCodec.signalEndOfInputStream();
        }
    }
}

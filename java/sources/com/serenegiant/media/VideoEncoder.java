package com.serenegiant.media;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.serenegiant.common.BuildConfig;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public final class VideoEncoder extends AbstractVideoEncoder {
    private static final String TAG = "VideoEncoder";
    private static boolean isLoaded = false;
    private int BUF_SIZE;
    private final boolean mAlign16;
    private int mColorFormat;
    private byte[] mEncodeBytes;
    protected long mNativePtr;

    static {
        if (0 == 0) {
            System.loadLibrary(BuildConfig.STL_NAME);
            System.loadLibrary("jpeg-turbo2000");
            System.loadLibrary("png16");
            System.loadLibrary("common");
            System.loadLibrary("mediaencoder");
            isLoaded = true;
        }
    }

    public VideoEncoder(Recorder recorder, EncoderListener encoderListener, boolean z) {
        super("video/avc", recorder, encoderListener);
        int iCeil = ((((this.mWidth * ((int) Math.ceil(this.mHeight / 16.0f))) * 16) * 2) * 3) / 4;
        this.BUF_SIZE = iCeil;
        this.mEncodeBytes = new byte[iCeil];
        this.mAlign16 = z;
        this.mNativePtr = nativeCreate();
    }

    private final native long nativeCreate();

    private final native void nativeDestroy(long j);

    private static final native int nativePrepare(long j, int i, int i2, int i3);

    private static final native int nativeResize(long j, int i, int i2, int i3);

    private static final native int nativeStop(long j);

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void encode(ByteBuffer byteBuffer) {
        synchronized (this.mSync) {
            if (this.mIsCapturing && !this.mRequestStop) {
                try {
                    byteBuffer.rewind();
                    encode(byteBuffer, byteBuffer.limit(), getInputPTSUs());
                } catch (Exception e2) {
                    callOnError(e2);
                }
            }
        }
    }

    @Override // com.serenegiant.media.AbstractEncoder
    public int getCaptureFormat() {
        return -1;
    }

    @Override // com.serenegiant.media.AbstractEncoder
    protected boolean internalPrepare() throws Exception {
        this.mRecorderStarted = false;
        this.mIsCapturing = true;
        this.mIsEOS = false;
        MediaCodecInfo mediaCodecInfoSelectVideoEncoder = MediaCodecHelper.selectVideoEncoder("video/avc");
        if (mediaCodecInfoSelectVideoEncoder == null) {
            Log.e(TAG, "Unable to find an appropriate codec for video/avc");
            return true;
        }
        int i = this.mWidth;
        boolean z = i >= 1000 || this.mHeight >= 1000;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, this.mHeight);
        int iSelectColorFormat = MediaCodecHelper.selectColorFormat(mediaCodecInfoSelectVideoEncoder, "video/avc");
        this.mColorFormat = iSelectColorFormat;
        mediaFormatCreateVideoFormat.setInteger("color-format", iSelectColorFormat);
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
        Log.d(TAG, "format: " + mediaFormatCreateVideoFormat);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        this.mMediaCodec = mediaCodecCreateEncoderByType;
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.mMediaCodec.start();
        if (this.mAlign16) {
            int i2 = this.mWidth;
            if ((i2 / 16) * 16 != i2) {
                this.mWidth = ((i2 / 16) + 1) * 16;
            }
            int i3 = this.mHeight;
            if ((i3 / 16) * 16 != i3) {
                this.mHeight = ((i3 / 16) + 1) * 16;
            }
        }
        nativePrepare(this.mNativePtr, this.mWidth, this.mHeight, MediaCodecHelper.selectColorFormat(mediaCodecInfoSelectVideoEncoder, "video/avc"));
        return z;
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void release() {
        stop();
        long j = this.mNativePtr;
        if (j != 0) {
            nativeDestroy(j);
            this.mNativePtr = 0L;
        }
        super.release();
    }

    @Override // com.serenegiant.media.AbstractEncoder
    protected synchronized boolean startRecorder(IRecorder iRecorder, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        try {
            integer = mediaFormat.getInteger("width");
        } catch (Exception unused) {
            integer = this.mWidth;
        }
        try {
            integer2 = mediaFormat.getInteger("height");
        } catch (Exception unused2) {
            integer2 = this.mHeight;
        }
        nativeResize(this.mNativePtr, integer, integer2, this.mColorFormat);
        int i = (((integer * integer2) * 2) * 3) / 4;
        if (i != this.BUF_SIZE) {
            this.BUF_SIZE = i;
            this.mEncodeBytes = new byte[i];
        }
        return super.startRecorder(iRecorder, mediaFormat);
    }

    @Override // com.serenegiant.media.AbstractEncoder, com.serenegiant.media.Encoder
    public void stop() {
        long j = this.mNativePtr;
        if (j != 0) {
            nativeStop(j);
        }
        super.stop();
    }

    @Override // com.serenegiant.media.AbstractEncoder
    protected void stopRecorder(IRecorder iRecorder) {
        if (this.mRecorderStarted) {
            nativeStop(this.mNativePtr);
        }
        super.stopRecorder(iRecorder);
    }
}

package com.alivc.component.encoder;

import android.media.MediaCodec;
import android.os.Build;
import android.util.Log;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@NativeUsed
public class MediaCodecData {
    public static final int DATA_KEY_FRAME = 3;
    public static final int DATA_NORMAL_FRAME = 2;
    public static final int DATA_TYPE_SPECIFIC = 1;
    public static final int ERROR_CODE_OK = 0;
    public static final int ERROR_CODE_TRY_AGAIN = 1;
    public static final int ERROR_UNKNOWN = -1;
    private boolean isEos;
    private int mCode;
    private ByteBuffer mCodecData;
    private int mDataType;
    private long mDts;
    private MediaCodec mMediaCodec;
    private int mOutputBufferId;
    private long mPts;

    @NativeUsed
    public int getCode() {
        return this.mCode;
    }

    @NativeUsed
    public ByteBuffer getCodecData() {
        return this.mCodecData;
    }

    @NativeUsed
    public int getDataType() {
        return this.mDataType;
    }

    @NativeUsed
    public long getDts() {
        return this.mDts;
    }

    public int getPosition() {
        ByteBuffer byteBuffer = this.mCodecData;
        if (byteBuffer == null) {
            return 0;
        }
        return byteBuffer.limit();
    }

    @NativeUsed
    public long getPts() {
        return this.mPts;
    }

    @NativeUsed
    public boolean isEOS() {
        return this.isEos;
    }

    @NativeUsed
    public void release() {
        MediaCodec mediaCodec;
        int i;
        try {
            if (Build.VERSION.SDK_INT >= 16 && (mediaCodec = this.mMediaCodec) != null && (i = this.mOutputBufferId) > 0) {
                mediaCodec.releaseOutputBuffer(i, false);
                this.mMediaCodec = null;
                this.mOutputBufferId = 0;
            }
        } catch (Exception e2) {
            Log.e("MediaCodecData", "releaseOutputBuffer error" + e2.getMessage());
            e2.printStackTrace();
        }
        this.mCodecData = null;
    }

    public void setCode(int i) {
        this.mCode = i;
    }

    public void setCodecData(ByteBuffer byteBuffer, MediaCodec mediaCodec, int i) {
        this.mCodecData = byteBuffer;
        this.mMediaCodec = mediaCodec;
        this.mOutputBufferId = i;
    }

    public void setDataType(int i) {
        this.mDataType = i;
    }

    public void setDts(long j) {
        this.mDts = j;
    }

    public void setEos(boolean z) {
        this.isEos = z;
    }

    public void setPts(long j) {
        this.mPts = j;
    }

    public String toString() {
        return "MediaCodecData{mDataType=" + this.mDataType + ", mCode=" + this.mCode + ", mPts=" + this.mPts + ", mDts=" + this.mDts + '}';
    }
}

package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaFormat;
import com.serenegiant.common.BuildConfig;
import java.nio.ByteBuffer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(16)
public final class VideoMuxer implements IMuxer {
    private static boolean isLoaded = false;
    private volatile boolean mIsStarted;
    private int mLastTrackIndex = -1;
    protected long mNativePtr;
    private boolean mReleased;

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

    public VideoMuxer(String str) {
        this.mNativePtr = nativeCreate(str);
    }

    private static final native int nativeAddTrack(long j, String[] strArr, Object[] objArr);

    private final native long nativeCreate(String str);

    private final native long nativeCreateFromFD(int i);

    private final native void nativeDestroy(long j);

    private static final native int nativeStart(long j);

    private static final native int nativeStop(long j);

    private static final native int nativeWriteSampleData(long j, int i, ByteBuffer byteBuffer, int i2, int i3, long j2, int i4);

    @Override // com.serenegiant.media.IMuxer
    @SuppressLint({"InlinedApi"})
    public int addTrack(MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            throw new IllegalArgumentException("format must not be null.");
        }
        HashMap map = new HashMap();
        if (mediaFormat.containsKey("mime")) {
            map.put("mime", mediaFormat.getString("mime"));
        }
        if (mediaFormat.containsKey("width")) {
            map.put("width", Integer.valueOf(mediaFormat.getInteger("width")));
        }
        if (mediaFormat.containsKey("height")) {
            map.put("height", Integer.valueOf(mediaFormat.getInteger("height")));
        }
        if (mediaFormat.containsKey("bitrate")) {
            map.put("bitrate", Integer.valueOf(mediaFormat.getInteger("bitrate")));
        }
        if (mediaFormat.containsKey("color-format")) {
            map.put("color-format", Integer.valueOf(mediaFormat.getInteger("color-format")));
        }
        if (mediaFormat.containsKey("frame-rate")) {
            map.put("frame-rate", Integer.valueOf(mediaFormat.getInteger("frame-rate")));
        }
        if (mediaFormat.containsKey("i-frame-interval")) {
            map.put("i-frame-interval", Integer.valueOf(mediaFormat.getInteger("i-frame-interval")));
        }
        if (mediaFormat.containsKey("max-input-size")) {
            map.put("max-input-size", Integer.valueOf(mediaFormat.getInteger("max-input-size")));
        }
        if (mediaFormat.containsKey("durationUs")) {
            map.put("durationUs", Integer.valueOf(mediaFormat.getInteger("durationUs")));
        }
        if (mediaFormat.containsKey("what")) {
            map.put("what", Integer.valueOf(mediaFormat.getInteger("what")));
        }
        if (mediaFormat.containsKey("csd-0")) {
            map.put("csd-0", mediaFormat.getByteBuffer("csd-0"));
        }
        if (mediaFormat.containsKey("csd-1")) {
            map.put("csd-1", mediaFormat.getByteBuffer("csd-1"));
        }
        Object[] array = map.keySet().toArray();
        int length = array.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = (String) array[i];
        }
        int iNativeAddTrack = nativeAddTrack(this.mNativePtr, strArr, map.values().toArray());
        if (this.mLastTrackIndex >= iNativeAddTrack) {
            throw new IllegalArgumentException("Invalid format.");
        }
        this.mLastTrackIndex = iNativeAddTrack;
        return iNativeAddTrack;
    }

    protected void finalize() throws Throwable {
        release();
        super.finalize();
    }

    @Override // com.serenegiant.media.IMuxer
    public boolean isStarted() {
        return this.mIsStarted && !this.mReleased;
    }

    @Override // com.serenegiant.media.IMuxer
    public void release() {
        long j = this.mNativePtr;
        if (j != 0) {
            this.mReleased = true;
            nativeDestroy(j);
            this.mNativePtr = 0L;
        }
    }

    @Override // com.serenegiant.media.IMuxer
    public void start() {
        long j = this.mNativePtr;
        if ((j != 0 ? nativeStart(j) : -1) != 0) {
            throw new IllegalStateException("failed to start muxer");
        }
        this.mIsStarted = true;
    }

    @Override // com.serenegiant.media.IMuxer
    public void stop() {
        this.mIsStarted = false;
        long j = this.mNativePtr;
        if (j != 0 && nativeStop(j) != 0) {
            throw new RuntimeException("failed to stop muxer");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    @Override // com.serenegiant.media.IMuxer
    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        int iNativeWriteSampleData;
        if (this.mReleased) {
            iNativeWriteSampleData = 1;
        } else {
            long j = this.mNativePtr;
            if (j != 0) {
                iNativeWriteSampleData = nativeWriteSampleData(j, i, byteBuffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
            } else {
                iNativeWriteSampleData = 1;
            }
        }
        if (iNativeWriteSampleData != 0) {
            if (iNativeWriteSampleData == -2000) {
                throw new TimeoutException();
            }
            if (iNativeWriteSampleData == 1) {
                throw new IllegalStateException("muxer already released.");
            }
            throw new IllegalArgumentException("writeSampleData:err=" + iNativeWriteSampleData);
        }
    }

    public VideoMuxer(int i) {
        this.mNativePtr = nativeCreateFromFD(i);
    }
}

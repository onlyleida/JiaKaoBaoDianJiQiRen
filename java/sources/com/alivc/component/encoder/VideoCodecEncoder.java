package com.alivc.component.encoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.Range;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.serenegiant.media.MediaCodecHelper;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
@NativeUsed
public class VideoCodecEncoder {
    public static final int ERROR_API_LEVEL = 268448000;
    public static final int ERROR_INPUT_BUFFER_ERROR = 268448002;
    public static final int ERROR_NO_BUFFER_AVAILABLE = 268448003;
    public static final int ERROR_STATE = 268448001;
    public static final int OK = 0;
    private static final int STATE_ENCODING = 2;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_UNINITIALIZED = 0;
    private MediaCodec mMediaCodec;
    private ByteBuffer[] mOutputBuffers;
    public static final int[] SUPPORTED_COLOR_FORMATS = {21, 39, 19, 20, MediaCodecHelper.OMX_TI_COLOR_FormatYUV420PackedSemiPlanar};
    public static final String VERSION = "1.2.2";
    private static final String TAG = VideoCodecEncoder.class.getName() + " version" + VERSION;
    private int mState = 0;
    private int encodeFormat = -1;
    private int mOutputCount = 0;
    private Surface mSurface = null;

    private static boolean isRecognizedFormat(int i) {
        if (i == 39 || i == 2130706688) {
            return true;
        }
        switch (i) {
            case 19:
            case 20:
            case 21:
                return true;
            default:
                return false;
        }
    }

    private MediaCodecInfo selectCodecInfo(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
            }
        }
        return null;
    }

    private static int selectColorFormat(MediaCodecInfo mediaCodecInfo, boolean z, String str) {
        if (z) {
            return MediaCodecHelper.OMX_COLOR_FormatAndroidOpaque;
        }
        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
        int i = 0;
        while (true) {
            int[] iArr = capabilitiesForType.colorFormats;
            if (i >= iArr.length) {
                return 0;
            }
            int i2 = iArr[i];
            if (isRecognizedFormat(i2)) {
                return i2;
            }
            i++;
        }
    }

    @NativeUsed
    public Surface createInputSurface() {
        String str;
        String str2;
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null || this.mState != 1 || Build.VERSION.SDK_INT < 18) {
            str = TAG;
            str2 = "not support surface input";
        } else {
            try {
                if (this.mSurface == null) {
                    this.mSurface = mediaCodec.createInputSurface();
                }
                return this.mSurface;
            } catch (Exception e2) {
                this.mSurface = null;
                e2.printStackTrace();
                str = TAG;
                str2 = "create surface input failed";
            }
        }
        Log.e(str, str2);
        return null;
    }

    @NativeUsed
    public int init(String str, MediaFormat mediaFormat, boolean z, int i) {
        int i2;
        InvocationTargetException invocationTargetException;
        int i3;
        NoSuchMethodException noSuchMethodException;
        int i4;
        IllegalAccessException illegalAccessException;
        int i5;
        IOException iOException;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        MediaCodecInfo mediaCodecInfo;
        String str7;
        if (this.mState != 0) {
            return 268448001;
        }
        try {
            try {
                this.mOutputCount = 0;
                try {
                    MediaCodecInfo mediaCodecInfoSelectCodecInfo = selectCodecInfo(str);
                    if (mediaCodecInfoSelectCodecInfo == null) {
                        Log.d(TAG, "not supported mime type (" + str + ")");
                        return -1;
                    }
                    String str8 = TAG;
                    Log.i(str8, "Create MediaCodec " + mediaCodecInfoSelectCodecInfo.getName());
                    this.mMediaCodec = MediaCodec.createByCodecName(mediaCodecInfoSelectCodecInfo.getName());
                    MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoSelectCodecInfo.getCapabilitiesForType(str);
                    Log.i(str8, Arrays.toString(capabilitiesForType.colorFormats));
                    int iSelectColorFormat = selectColorFormat(mediaCodecInfoSelectCodecInfo, z, str);
                    this.encodeFormat = iSelectColorFormat;
                    if (iSelectColorFormat == 0) {
                        return -1;
                    }
                    Log.i(str8, "selected format " + this.encodeFormat);
                    mediaFormat.setInteger("color-format", this.encodeFormat);
                    mediaFormat.getInteger("frame-rate");
                    mediaFormat.setInteger("i-frame-interval", i);
                    mediaFormat.setInteger(Scopes.PROFILE, 1);
                    mediaFormat.setInteger(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, 512);
                    int i6 = Build.VERSION.SDK_INT;
                    if (i6 < 21 || i6 >= 29) {
                        str2 = DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL;
                        str3 = Scopes.PROFILE;
                        str4 = "i-frame-interval";
                        str5 = "frame-rate";
                        str6 = "width";
                        mediaCodecInfo = mediaCodecInfoSelectCodecInfo;
                        str7 = "height";
                    } else {
                        mediaCodecInfo = mediaCodecInfoSelectCodecInfo;
                        try {
                            MediaCodecInfo.VideoCapabilities videoCapabilities = (MediaCodecInfo.VideoCapabilities) MediaCodecInfo.VideoCapabilities.class.getMethod("create", MediaFormat.class, MediaCodecInfo.CodecCapabilities.class).invoke(null, mediaFormat, capabilitiesForType);
                            Range<Integer> bitrateRange = videoCapabilities.getBitrateRange();
                            int widthAlignment = videoCapabilities.getWidthAlignment();
                            int heightAlignment = videoCapabilities.getHeightAlignment();
                            Range<Integer> supportedWidths = videoCapabilities.getSupportedWidths();
                            Range<Integer> supportedHeights = videoCapabilities.getSupportedHeights();
                            str2 = DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL;
                            int integer = mediaFormat.getInteger("width");
                            str6 = "width";
                            int integer2 = mediaFormat.getInteger("height");
                            str7 = "height";
                            int integer3 = mediaFormat.getInteger("frame-rate");
                            str3 = Scopes.PROFILE;
                            boolean zIsSizeSupported = videoCapabilities.isSizeSupported(integer, integer2);
                            str5 = "frame-rate";
                            StringBuilder sb = new StringBuilder();
                            str4 = "i-frame-interval";
                            sb.append("bitrateRange [");
                            sb.append(bitrateRange.getLower());
                            sb.append(",");
                            sb.append(bitrateRange.getUpper());
                            sb.append("], widthAlignment = ");
                            sb.append(widthAlignment);
                            sb.append(", heightAlignment = ");
                            sb.append(heightAlignment);
                            sb.append(", widthRange [");
                            sb.append(supportedWidths.getLower());
                            sb.append(",");
                            sb.append(supportedWidths.getUpper());
                            sb.append("], heightRange [");
                            sb.append(supportedHeights.getLower());
                            sb.append(",");
                            sb.append(supportedHeights.getUpper());
                            sb.append("], isSizeSupport = ");
                            sb.append(zIsSizeSupported);
                            sb.append(", sizeAndRateSupport = ");
                            sb.append(videoCapabilities.areSizeAndRateSupported(integer, integer2, integer3));
                            Log.i(str8, sb.toString());
                            if (i6 >= 23) {
                                mediaFormat.setInteger("stride", integer);
                                mediaFormat.setInteger("slice-height", integer2);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            iOException = e;
                            i5 = 268448001;
                            Log.e(TAG, "Create MediaCodec Failed");
                            iOException.printStackTrace();
                            return i5;
                        } catch (IllegalAccessException e3) {
                            e = e3;
                            illegalAccessException = e;
                            i4 = 268448001;
                            illegalAccessException.printStackTrace();
                            return i4;
                        } catch (NoSuchMethodException e4) {
                            e = e4;
                            noSuchMethodException = e;
                            i3 = 268448001;
                            noSuchMethodException.printStackTrace();
                            return i3;
                        } catch (InvocationTargetException e5) {
                            e = e5;
                            invocationTargetException = e;
                            i2 = 268448001;
                            invocationTargetException.printStackTrace();
                            return i2;
                        } catch (Exception e6) {
                            e = e6;
                            e.printStackTrace();
                            return 268448001;
                        }
                    }
                    Log.i(str8, "encoder bitrate = " + mediaFormat.getInteger("bitrate") + ", encoder i frame interval = " + mediaFormat.getInteger(str4) + ", encoder frame rate = " + mediaFormat.getInteger(str5) + ", encoder profile = " + mediaFormat.getInteger(str3) + ", encoder level = " + mediaFormat.getInteger(str2) + ", encoder width = " + mediaFormat.getInteger(str6) + ", encoder height = " + mediaFormat.getInteger(str7));
                    this.mMediaCodec.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                    this.mState = 1;
                    if ("OMX.IMG.TOPAZ.VIDEO.Encoder".equals(mediaCodecInfo.getName())) {
                        Log.i(str8, "Product:" + Build.PRODUCT);
                        int i7 = this.encodeFormat;
                        if (i7 != 39) {
                            switch (i7) {
                                case 19:
                                    this.encodeFormat = 20;
                                    break;
                                case 20:
                                    this.encodeFormat = 19;
                                    break;
                                case 21:
                                    this.encodeFormat = 39;
                                    break;
                            }
                        } else {
                            this.encodeFormat = 21;
                        }
                    }
                    return this.encodeFormat;
                } catch (IOException e7) {
                    e = e7;
                } catch (IllegalAccessException e8) {
                    e = e8;
                } catch (NoSuchMethodException e9) {
                    e = e9;
                } catch (InvocationTargetException e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (IOException e12) {
            i5 = 268448001;
            iOException = e12;
        } catch (IllegalAccessException e13) {
            i4 = 268448001;
            illegalAccessException = e13;
        } catch (NoSuchMethodException e14) {
            i3 = 268448001;
            noSuchMethodException = e14;
        } catch (InvocationTargetException e15) {
            i2 = 268448001;
            invocationTargetException = e15;
        }
    }

    @NativeUsed
    public int initWithColorSpace(String str, MediaFormat mediaFormat, boolean z, int i, int i2, int i3) {
        int i4;
        InvocationTargetException invocationTargetException;
        int i5;
        NoSuchMethodException noSuchMethodException;
        int i6;
        IllegalAccessException illegalAccessException;
        int i7;
        IOException iOException;
        String str2;
        String str3;
        String str4;
        String str5;
        MediaCodecInfo mediaCodecInfo;
        String str6;
        int i8;
        int i9;
        if (this.mState != 0) {
            return 268448001;
        }
        try {
            try {
                this.mOutputCount = 0;
                try {
                    MediaCodecInfo mediaCodecInfoSelectCodecInfo = selectCodecInfo(str);
                    if (mediaCodecInfoSelectCodecInfo == null) {
                        Log.e(TAG, "not supported mime type (" + str + ")");
                        return -1;
                    }
                    String str7 = TAG;
                    Log.d(str7, "Create MediaCodec " + mediaCodecInfoSelectCodecInfo.getName() + " version " + VERSION);
                    this.mMediaCodec = MediaCodec.createByCodecName(mediaCodecInfoSelectCodecInfo.getName());
                    MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoSelectCodecInfo.getCapabilitiesForType(str);
                    Log.i(str7, Arrays.toString(capabilitiesForType.colorFormats));
                    int iSelectColorFormat = selectColorFormat(mediaCodecInfoSelectCodecInfo, z, str);
                    this.encodeFormat = iSelectColorFormat;
                    if (iSelectColorFormat == 0) {
                        return -1;
                    }
                    Log.i(str7, "selected format " + this.encodeFormat);
                    mediaFormat.setInteger("color-format", this.encodeFormat);
                    mediaFormat.getInteger("frame-rate");
                    mediaFormat.setInteger("i-frame-interval", i);
                    mediaFormat.setInteger(Scopes.PROFILE, 1);
                    mediaFormat.setInteger(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, 512);
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 < 21 || i10 >= 29) {
                        str2 = DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL;
                        str3 = Scopes.PROFILE;
                        str4 = "frame-rate";
                        str5 = "width";
                        mediaCodecInfo = mediaCodecInfoSelectCodecInfo;
                        str6 = "height";
                    } else {
                        mediaCodecInfo = mediaCodecInfoSelectCodecInfo;
                        try {
                            MediaCodecInfo.VideoCapabilities videoCapabilities = (MediaCodecInfo.VideoCapabilities) MediaCodecInfo.VideoCapabilities.class.getMethod("create", MediaFormat.class, MediaCodecInfo.CodecCapabilities.class).invoke(null, mediaFormat, capabilitiesForType);
                            Range<Integer> bitrateRange = videoCapabilities.getBitrateRange();
                            int widthAlignment = videoCapabilities.getWidthAlignment();
                            int heightAlignment = videoCapabilities.getHeightAlignment();
                            Range<Integer> supportedWidths = videoCapabilities.getSupportedWidths();
                            Range<Integer> supportedHeights = videoCapabilities.getSupportedHeights();
                            int integer = mediaFormat.getInteger("width");
                            str5 = "width";
                            int integer2 = mediaFormat.getInteger("height");
                            str6 = "height";
                            int integer3 = mediaFormat.getInteger("frame-rate");
                            str2 = DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL;
                            boolean zIsSizeSupported = videoCapabilities.isSizeSupported(integer, integer2);
                            str3 = Scopes.PROFILE;
                            StringBuilder sb = new StringBuilder();
                            str4 = "frame-rate";
                            sb.append("bitrateRange [");
                            sb.append(bitrateRange.getLower());
                            sb.append(",");
                            sb.append(bitrateRange.getUpper());
                            sb.append("], widthAlignment = ");
                            sb.append(widthAlignment);
                            sb.append(", heightAlignment = ");
                            sb.append(heightAlignment);
                            sb.append(", widthRange [");
                            sb.append(supportedWidths.getLower());
                            sb.append(",");
                            sb.append(supportedWidths.getUpper());
                            sb.append("], heightRange [");
                            sb.append(supportedHeights.getLower());
                            sb.append(",");
                            sb.append(supportedHeights.getUpper());
                            sb.append("], isSizeSupport = ");
                            sb.append(zIsSizeSupported);
                            sb.append(", sizeAndRateSupport = ");
                            sb.append(videoCapabilities.areSizeAndRateSupported(integer, integer2, integer3));
                            Log.i(str7, sb.toString());
                            if (i10 >= 23) {
                                mediaFormat.setInteger("stride", integer);
                                mediaFormat.setInteger("slice-height", integer2);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            iOException = e;
                            i7 = 268448001;
                            Log.e(TAG, "Create MediaCodec Failed");
                            iOException.printStackTrace();
                            return i7;
                        } catch (IllegalAccessException e3) {
                            e = e3;
                            illegalAccessException = e;
                            i6 = 268448001;
                            illegalAccessException.printStackTrace();
                            return i6;
                        } catch (NoSuchMethodException e4) {
                            e = e4;
                            noSuchMethodException = e;
                            i5 = 268448001;
                            noSuchMethodException.printStackTrace();
                            return i5;
                        } catch (InvocationTargetException e5) {
                            e = e5;
                            invocationTargetException = e;
                            i4 = 268448001;
                            invocationTargetException.printStackTrace();
                            return i4;
                        } catch (Exception e6) {
                            e = e6;
                            e.printStackTrace();
                            return 268448001;
                        }
                    }
                    if (i10 >= 24) {
                        i8 = i2 == 0 ? 2 : i2;
                        i9 = i3 == 0 ? 2 : i3;
                        if (1 == i8 || 2 == i8 || 6 == i8) {
                            mediaFormat.setInteger("color-standard", i8);
                            mediaFormat.setInteger("color-transfer", 3);
                        }
                        if (1 == i9 || 2 == i9) {
                            mediaFormat.setInteger("color-range", i9);
                        }
                    } else {
                        Log.i(str7, "Build.VERSION.SDK_INT = " + i10 + " is lower than 24");
                        i8 = i2;
                        i9 = i3;
                    }
                    Log.i(str7, "encoder bitrate = " + mediaFormat.getInteger("bitrate") + ", encoder i frame interval = " + mediaFormat.getInteger("i-frame-interval") + ", encoder frame rate = " + mediaFormat.getInteger(str4) + ", encoder profile = " + mediaFormat.getInteger(str3) + ", encoder level = " + mediaFormat.getInteger(str2) + ", encoder width = " + mediaFormat.getInteger(str5) + ", encoder height = " + mediaFormat.getInteger(str6) + ", colorStand = " + i8 + ", colorRange = " + i9);
                    this.mMediaCodec.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                    this.mState = 1;
                    if ("OMX.IMG.TOPAZ.VIDEO.Encoder".equals(mediaCodecInfo.getName())) {
                        Log.i(str7, "Product:" + Build.PRODUCT);
                        int i11 = this.encodeFormat;
                        if (i11 != 39) {
                            switch (i11) {
                                case 19:
                                    this.encodeFormat = 20;
                                    break;
                                case 20:
                                    this.encodeFormat = 19;
                                    break;
                                case 21:
                                    this.encodeFormat = 39;
                                    break;
                            }
                        } else {
                            this.encodeFormat = 21;
                        }
                    }
                    return this.encodeFormat;
                } catch (IOException e7) {
                    e = e7;
                } catch (IllegalAccessException e8) {
                    e = e8;
                } catch (NoSuchMethodException e9) {
                    e = e9;
                } catch (InvocationTargetException e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (IOException e12) {
            i7 = 268448001;
            iOException = e12;
        } catch (IllegalAccessException e13) {
            i6 = 268448001;
            illegalAccessException = e13;
        } catch (NoSuchMethodException e14) {
            i5 = 268448001;
            noSuchMethodException = e14;
        } catch (InvocationTargetException e15) {
            i4 = 268448001;
            invocationTargetException = e15;
        }
    }

    @NativeUsed
    public int inputFrame(byte[] bArr, long j, long j2, boolean z) {
        try {
            ByteBuffer[] inputBuffers = this.mMediaCodec.getInputBuffers();
            int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(j2);
            if (iDequeueInputBuffer < 0) {
                Log.d(TAG, "No buffer available !");
                return 268448003;
            }
            inputBuffers[iDequeueInputBuffer].clear();
            if (bArr == null) {
                Log.e(TAG, "Symptom of the \"Callback buffer was to small\" problem...");
            } else {
                inputBuffers[iDequeueInputBuffer].put(bArr, 0, bArr.length);
            }
            if (z && Build.VERSION.SDK_INT >= 19) {
                Bundle bundle = new Bundle();
                bundle.putInt("request-sync", 0);
                this.mMediaCodec.setParameters(bundle);
            }
            this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, inputBuffers[iDequeueInputBuffer].position(), j, z ? 1 : 0);
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @NativeUsed
    public int release() {
        if (this.mState != 1) {
            return 268448001;
        }
        this.mMediaCodec.release();
        this.mMediaCodec = null;
        Surface surface = this.mSurface;
        if (surface != null) {
            surface.release();
            this.mSurface = null;
        }
        this.mState = 0;
        return 0;
    }

    @NativeUsed
    public int setInputSurface(Surface surface) {
        String str;
        String str2;
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null || this.mState != 1 || Build.VERSION.SDK_INT < 18) {
            str = TAG;
            str2 = "error state codec " + this.mMediaCodec;
        } else {
            try {
                mediaCodec.setInputSurface(surface);
                return 0;
            } catch (Exception e2) {
                e2.printStackTrace();
                str = TAG;
                str2 = "set input surface failed";
            }
        }
        Log.e(str, str2);
        return -1;
    }

    @NativeUsed
    public int signalEndOfInput() {
        try {
            this.mMediaCodec.signalEndOfInputStream();
            return 0;
        } catch (Exception e2) {
            Log.e(TAG, "signalEndOfInputStream failed");
            e2.printStackTrace();
            return -1;
        }
    }

    @NativeUsed
    public int start() {
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec != null && this.mState == 1) {
            try {
                mediaCodec.start();
                this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                this.mState = 2;
                return 0;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 268448001;
    }

    @NativeUsed
    public int stop() {
        MediaCodec mediaCodec;
        if (this.mState == 2 && (mediaCodec = this.mMediaCodec) != null) {
            try {
                if (this.mOutputCount > 0) {
                    mediaCodec.flush();
                }
                this.mMediaCodec.stop();
                this.mState = 1;
                return 0;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return 268448001;
    }

    @NativeUsed
    public MediaCodecData tryRead(long j) {
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        MediaCodecData mediaCodecData = new MediaCodecData();
        try {
            int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(bufferInfo, j);
            if (iDequeueOutputBuffer >= 0) {
                ByteBuffer byteBuffer = this.mOutputBuffers[iDequeueOutputBuffer];
                if (bufferInfo.size != 0) {
                    byteBuffer.position(bufferInfo.offset);
                    byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                }
                mediaCodecData.setCodecData(byteBuffer, this.mMediaCodec, iDequeueOutputBuffer);
                int i = bufferInfo.flags;
                if ((i & 2) > 0) {
                    mediaCodecData.setDataType(1);
                } else {
                    if ((i & 1) > 0) {
                        mediaCodecData.setDataType(3);
                    } else {
                        mediaCodecData.setDataType(2);
                    }
                    this.mOutputCount++;
                }
                mediaCodecData.setPts(bufferInfo.presentationTimeUs);
                mediaCodecData.setDts(bufferInfo.presentationTimeUs);
                if ((bufferInfo.flags & 4) > 0) {
                    mediaCodecData.setEos(true);
                } else {
                    mediaCodecData.setEos(false);
                }
            } else {
                if (iDequeueOutputBuffer == -2) {
                    this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                } else if (iDequeueOutputBuffer != -1) {
                    if (iDequeueOutputBuffer == -3) {
                        this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                    } else {
                        mediaCodecData.setCode(-1);
                    }
                }
                mediaCodecData.setCode(1);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return mediaCodecData;
    }

    @NativeUsed
    public int updateBitrate(int i) {
        if (Build.VERSION.SDK_INT < 19) {
            return 268448000;
        }
        if (this.mState != 2 || this.mMediaCodec == null) {
            return 268448001;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("video-bitrate", i * 1000);
        try {
            this.mMediaCodec.setParameters(bundle);
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}

package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.C;
import com.google.common.primitives.UnsignedBytes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OpusUtil {
    private static final int DEFAULT_SEEK_PRE_ROLL_SAMPLES = 3840;
    private static final int FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT = 3;
    public static final int SAMPLE_RATE = 48000;

    private OpusUtil() {
    }

    public static List<byte[]> buildInitializationData(byte[] bArr) {
        long jSampleCountToNanoseconds = sampleCountToNanoseconds(getPreSkipSamples(bArr));
        long jSampleCountToNanoseconds2 = sampleCountToNanoseconds(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(buildNativeOrderByteArray(jSampleCountToNanoseconds));
        arrayList.add(buildNativeOrderByteArray(jSampleCountToNanoseconds2));
        return arrayList;
    }

    private static byte[] buildNativeOrderByteArray(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    public static int getChannelCount(byte[] bArr) {
        return bArr[9] & UnsignedBytes.MAX_VALUE;
    }

    public static int getPreSkipSamples(List<byte[]> list) {
        return list.size() == 3 ? (int) nanosecondsToSampleCount(ByteBuffer.wrap(list.get(1)).order(ByteOrder.nativeOrder()).getLong()) : getPreSkipSamples(list.get(0));
    }

    public static int getSeekPreRollSamples(List<byte[]> list) {
        return list.size() == 3 ? (int) nanosecondsToSampleCount(ByteBuffer.wrap(list.get(2)).order(ByteOrder.nativeOrder()).getLong()) : DEFAULT_SEEK_PRE_ROLL_SAMPLES;
    }

    private static long nanosecondsToSampleCount(long j) {
        return (j * 48000) / C.NANOS_PER_SECOND;
    }

    private static long sampleCountToNanoseconds(long j) {
        return (j * C.NANOS_PER_SECOND) / 48000;
    }

    private static int getPreSkipSamples(byte[] bArr) {
        return (bArr[10] & UnsignedBytes.MAX_VALUE) | ((bArr[11] & UnsignedBytes.MAX_VALUE) << 8);
    }
}

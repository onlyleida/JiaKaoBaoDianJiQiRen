package com.hw.videoprocessor.g;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.alivc.live.pusher.AlivcLivePushConstants;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.audio.DtsUtil;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.iflytek.cloud.ErrorCode;
import com.serenegiant.media.AbstractAudioEncoder;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import net.surina.soundtouch.SoundTouch;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Integer, Integer> f12084a;

    static {
        HashMap map = new HashMap();
        f12084a = map;
        map.put(96000, 0);
        map.put(88200, 1);
        map.put(Integer.valueOf(AbstractAudioEncoder.DEFAULT_BIT_RATE), 2);
        map.put(Integer.valueOf(OpusUtil.SAMPLE_RATE), 3);
        map.put(44100, 4);
        map.put(Integer.valueOf(AlivcLivePushConstants.DEFAULT_VALUE_INT_AUDIO_SAMPLE_RATE), 5);
        map.put(Integer.valueOf(ErrorCode.ERROR_TTS_INVALID_PARA), 6);
        map.put(22050, 7);
        map.put(16000, 8);
        map.put(Integer.valueOf(ErrorCode.MSP_ERROR_HTTP_BASE), 9);
        map.put(11025, 10);
        map.put(8000, 11);
        map.put(7350, 12);
    }

    public static void a(MediaFormat mediaFormat, int i, int i2, int i3) {
        Map<Integer, Integer> map = f12084a;
        int iIntValue = map.containsKey(Integer.valueOf(i2)) ? map.get(Integer.valueOf(i2)).intValue() : 4;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.put(0, (byte) ((i << 3) | (iIntValue >> 1)));
        byteBufferAllocate.put(1, (byte) (((iIntValue & 1) << 7) | (i3 << 3)));
        mediaFormat.setByteBuffer("csd-0", byteBufferAllocate);
    }

    public static int b(MediaFormat mediaFormat) {
        return mediaFormat.containsKey("bitrate") ? mediaFormat.getInteger("bitrate") : DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
    }

    public static int c(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("max-input-size")) {
            return mediaFormat.getInteger("max-input-size");
        }
        return 100000;
    }

    public static long d(MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, int i, Integer num, Integer num2, long j, i iVar) throws IOException {
        int iD = com.hw.videoprocessor.f.d(mediaExtractor, true);
        mediaExtractor.selectTrack(iD);
        Integer num3 = num == null ? 0 : num;
        mediaExtractor.seekTo(num3.intValue(), 2);
        MediaFormat trackFormat = mediaExtractor.getTrackFormat(iD);
        long j2 = trackFormat.getLong("durationUs");
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(trackFormat.getInteger("max-input-size"));
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        long j3 = j;
        while (true) {
            long sampleTime = mediaExtractor.getSampleTime();
            if (sampleTime == -1) {
                break;
            }
            if (sampleTime >= num3.intValue()) {
                if (num2 != null && sampleTime > num2.intValue()) {
                    break;
                }
                if (iVar != null) {
                    float fIntValue = (sampleTime - ((long) num3.intValue())) / (num2 == null ? j2 : num2.intValue() - num3.intValue());
                    if (fIntValue < BitmapDescriptorFactory.HUE_RED) {
                        fIntValue = BitmapDescriptorFactory.HUE_RED;
                    }
                    if (fIntValue > 1.0f) {
                        fIntValue = 1.0f;
                    }
                    iVar.a(fIntValue);
                }
                bufferInfo.presentationTimeUs = (sampleTime - ((long) num3.intValue())) + j;
                bufferInfo.flags = mediaExtractor.getSampleFlags();
                int sampleData = mediaExtractor.readSampleData(byteBufferAllocateDirect, 0);
                bufferInfo.size = sampleData;
                if (sampleData < 0) {
                    break;
                }
                b.f("writeAudioSampleData,time:" + (bufferInfo.presentationTimeUs / 1000.0f), new Object[0]);
                mediaMuxer.writeSampleData(i, byteBufferAllocateDirect, bufferInfo);
                long j4 = bufferInfo.presentationTimeUs;
                mediaExtractor.advance();
                j3 = j4;
            } else {
                mediaExtractor.advance();
            }
        }
        return j3;
    }

    public static long e(MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, int i, Integer num, Integer num2, i iVar) throws IOException {
        return d(mediaExtractor, mediaMuxer, i, num, num2, 0L, iVar);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0427  */
    /* JADX WARN: Code duplicated, block: B:104:0x0430 A[Catch: all -> 0x04af, TryCatch #4 {all -> 0x04af, blocks: (B:100:0x0404, B:104:0x0430, B:105:0x044e, B:107:0x0453, B:108:0x0455, B:110:0x045e, B:114:0x047a, B:120:0x048a, B:122:0x0496, B:113:0x0470), top: B:147:0x0404 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0453 A[Catch: all -> 0x04af, TryCatch #4 {all -> 0x04af, blocks: (B:100:0x0404, B:104:0x0430, B:105:0x044e, B:107:0x0453, B:108:0x0455, B:110:0x045e, B:114:0x047a, B:120:0x048a, B:122:0x0496, B:113:0x0470), top: B:147:0x0404 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x045e A[Catch: all -> 0x04af, TryCatch #4 {all -> 0x04af, blocks: (B:100:0x0404, B:104:0x0430, B:105:0x044e, B:107:0x0453, B:108:0x0455, B:110:0x045e, B:114:0x047a, B:120:0x048a, B:122:0x0496, B:113:0x0470), top: B:147:0x0404 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x046d  */
    /* JADX WARN: Code duplicated, block: B:113:0x0470 A[Catch: all -> 0x04af, TryCatch #4 {all -> 0x04af, blocks: (B:100:0x0404, B:104:0x0430, B:105:0x044e, B:107:0x0453, B:108:0x0455, B:110:0x045e, B:114:0x047a, B:120:0x048a, B:122:0x0496, B:113:0x0470), top: B:147:0x0404 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0481  */
    /* JADX WARN: Code duplicated, block: B:119:0x0488  */
    /* JADX WARN: Code duplicated, block: B:121:0x0492  */
    /* JADX WARN: Code duplicated, block: B:152:0x012f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x014e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x035c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x00b9 A[Catch: all -> 0x011a, TryCatch #3 {all -> 0x011a, blocks: (B:10:0x0084, B:12:0x008a, B:25:0x00b9, B:31:0x0126, B:36:0x0134, B:38:0x0150, B:39:0x0166, B:50:0x01b3, B:42:0x016f, B:44:0x0193, B:48:0x01ab, B:47:0x01a1, B:26:0x00ce, B:16:0x0098, B:18:0x00a5, B:20:0x00ac), top: B:145:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00ce A[Catch: all -> 0x011a, TryCatch #3 {all -> 0x011a, blocks: (B:10:0x0084, B:12:0x008a, B:25:0x00b9, B:31:0x0126, B:36:0x0134, B:38:0x0150, B:39:0x0166, B:50:0x01b3, B:42:0x016f, B:44:0x0193, B:48:0x01ab, B:47:0x01a1, B:26:0x00ce, B:16:0x0098, B:18:0x00a5, B:20:0x00ac), top: B:145:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x011d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0126 A[Catch: all -> 0x011a, TryCatch #3 {all -> 0x011a, blocks: (B:10:0x0084, B:12:0x008a, B:25:0x00b9, B:31:0x0126, B:36:0x0134, B:38:0x0150, B:39:0x0166, B:50:0x01b3, B:42:0x016f, B:44:0x0193, B:48:0x01ab, B:47:0x01a1, B:26:0x00ce, B:16:0x0098, B:18:0x00a5, B:20:0x00ac), top: B:145:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0131  */
    /* JADX WARN: Code duplicated, block: B:41:0x016b  */
    /* JADX WARN: Code duplicated, block: B:42:0x016f A[Catch: all -> 0x011a, TryCatch #3 {all -> 0x011a, blocks: (B:10:0x0084, B:12:0x008a, B:25:0x00b9, B:31:0x0126, B:36:0x0134, B:38:0x0150, B:39:0x0166, B:50:0x01b3, B:42:0x016f, B:44:0x0193, B:48:0x01ab, B:47:0x01a1, B:26:0x00ce, B:16:0x0098, B:18:0x00a5, B:20:0x00ac), top: B:145:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0193 A[Catch: all -> 0x011a, TryCatch #3 {all -> 0x011a, blocks: (B:10:0x0084, B:12:0x008a, B:25:0x00b9, B:31:0x0126, B:36:0x0134, B:38:0x0150, B:39:0x0166, B:50:0x01b3, B:42:0x016f, B:44:0x0193, B:48:0x01ab, B:47:0x01a1, B:26:0x00ce, B:16:0x0098, B:18:0x00a5, B:20:0x00ac), top: B:145:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x019e  */
    /* JADX WARN: Code duplicated, block: B:47:0x01a1 A[Catch: all -> 0x011a, TryCatch #3 {all -> 0x011a, blocks: (B:10:0x0084, B:12:0x008a, B:25:0x00b9, B:31:0x0126, B:36:0x0134, B:38:0x0150, B:39:0x0166, B:50:0x01b3, B:42:0x016f, B:44:0x0193, B:48:0x01ab, B:47:0x01a1, B:26:0x00ce, B:16:0x0098, B:18:0x00a5, B:20:0x00ac), top: B:145:0x0084 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0360  */
    /* JADX WARN: Code duplicated, block: B:83:0x0363 A[Catch: all -> 0x04b3, TryCatch #1 {all -> 0x04b3, blocks: (B:78:0x0353, B:83:0x0363, B:85:0x037f, B:87:0x03a8, B:91:0x03bc, B:75:0x0320), top: B:141:0x0353 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x037d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x037f A[Catch: all -> 0x04b3, TryCatch #1 {all -> 0x04b3, blocks: (B:78:0x0353, B:83:0x0363, B:85:0x037f, B:87:0x03a8, B:91:0x03bc, B:75:0x0320), top: B:141:0x0353 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x03a8 A[Catch: all -> 0x04b3, TryCatch #1 {all -> 0x04b3, blocks: (B:78:0x0353, B:83:0x0363, B:85:0x037f, B:87:0x03a8, B:91:0x03bc, B:75:0x0320), top: B:141:0x0353 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x03bc A[Catch: all -> 0x04b3, TRY_LEAVE, TryCatch #1 {all -> 0x04b3, blocks: (B:78:0x0353, B:83:0x0363, B:85:0x037f, B:87:0x03a8, B:91:0x03bc, B:75:0x0320), top: B:141:0x0353 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:104:0x0430, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x00ce, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x016f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:83:0x0363, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:85:0x037f, please report this as an issue */
    public static void f(Context context, MediaExtractor mediaExtractor, MediaMuxer mediaMuxer, int i, Integer num, Integer num2, Float f2, i iVar) throws Exception {
        MediaFormat mediaFormat;
        File file;
        MediaExtractor mediaExtractor2;
        boolean z;
        int iDequeueOutputBuffer;
        int i2;
        String str;
        boolean z2;
        long jIntValue;
        float f3;
        boolean z3;
        boolean z4;
        boolean z5;
        String str2;
        int iDequeueOutputBuffer2;
        boolean z6;
        long jIntValue2;
        MediaExtractor mediaExtractor3 = mediaExtractor;
        int iD = com.hw.videoprocessor.f.d(mediaExtractor3, true);
        mediaExtractor3.selectTrack(iD);
        Integer num3 = num == null ? 0 : num;
        mediaExtractor3.seekTo(num3.intValue(), 2);
        MediaFormat trackFormat = mediaExtractor3.getTrackFormat(iD);
        long j = trackFormat.getLong("durationUs");
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(c(trackFormat));
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(trackFormat.getString("mime"));
        mediaCodecCreateDecoderByType.configure(trackFormat, (Surface) null, (MediaCrypto) null, 0);
        mediaCodecCreateDecoderByType.start();
        File file2 = new File(context.getCacheDir(), System.currentTimeMillis() + ".pcm");
        FileChannel channel = new FileOutputStream(file2).getChannel();
        boolean z7 = false;
        boolean z8 = false;
        while (true) {
            mediaFormat = trackFormat;
            if (z7) {
                break;
            }
            if (z8) {
                z3 = z7;
                z4 = z8;
                str2 = "audio decode newFormat = ";
                while (!z3) {
                    iDequeueOutputBuffer2 = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                    if (iDequeueOutputBuffer2 == -1) {
                        break;
                        break;
                    }
                    if (iDequeueOutputBuffer2 == -2) {
                        b.f(str2 + mediaCodecCreateDecoderByType.getOutputFormat(), new Object[0]);
                    } else if (iDequeueOutputBuffer2 < 0) {
                        b.b("unexpected result from audio decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer2, new Object[0]);
                    } else {
                        if (bufferInfo.flags == 4) {
                            z6 = false;
                            z3 = true;
                        } else {
                            ByteBuffer outputBuffer = mediaCodecCreateDecoderByType.getOutputBuffer(iDequeueOutputBuffer2);
                            b.f("audio decode saveFrame " + (bufferInfo.presentationTimeUs / 1000), new Object[0]);
                            channel.write(outputBuffer);
                            if (iVar != null) {
                                float fIntValue = bufferInfo.presentationTimeUs - ((long) num3.intValue());
                                if (num2 == null) {
                                    jIntValue2 = j;
                                } else {
                                    jIntValue2 = num2.intValue() - num3.intValue();
                                }
                                iVar.a((fIntValue / jIntValue2) * 0.5f);
                            }
                            z6 = false;
                        }
                        mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer2, z6);
                    }
                }
                mediaExtractor3 = mediaExtractor;
                file2 = file2;
            } else {
                try {
                    int iDequeueInputBuffer = mediaCodecCreateDecoderByType.dequeueInputBuffer(2500L);
                    if (iDequeueInputBuffer >= 0) {
                        long sampleTime = mediaExtractor.getSampleTime();
                        if (sampleTime == -1) {
                            z3 = z7;
                            z4 = z8;
                        } else {
                            z3 = z7;
                            z4 = z8;
                            if (sampleTime < num3.intValue()) {
                                mediaExtractor.advance();
                            } else {
                                if (num2 == null || sampleTime <= num2.intValue()) {
                                    z5 = false;
                                }
                                if (z5) {
                                    mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                                    str2 = "audio decode newFormat = ";
                                    z4 = true;
                                } else {
                                    bufferInfo.size = mediaExtractor3.readSampleData(byteBufferAllocateDirect, 0);
                                    bufferInfo.presentationTimeUs = sampleTime;
                                    bufferInfo.flags = mediaExtractor.getSampleFlags();
                                    mediaCodecCreateDecoderByType.getInputBuffer(iDequeueInputBuffer).put(byteBufferAllocateDirect);
                                    b.f("audio decode queueInputBuffer " + (bufferInfo.presentationTimeUs / 1000), new Object[0]);
                                    str2 = "audio decode newFormat = ";
                                    mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
                                    mediaExtractor.advance();
                                }
                            }
                        }
                        z5 = true;
                        if (z5) {
                            mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                            str2 = "audio decode newFormat = ";
                            z4 = true;
                        } else {
                            bufferInfo.size = mediaExtractor3.readSampleData(byteBufferAllocateDirect, 0);
                            bufferInfo.presentationTimeUs = sampleTime;
                            bufferInfo.flags = mediaExtractor.getSampleFlags();
                            mediaCodecCreateDecoderByType.getInputBuffer(iDequeueInputBuffer).put(byteBufferAllocateDirect);
                            b.f("audio decode queueInputBuffer " + (bufferInfo.presentationTimeUs / 1000), new Object[0]);
                            str2 = "audio decode newFormat = ";
                            mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
                            mediaExtractor.advance();
                        }
                    } else {
                        z3 = z7;
                        z4 = z8;
                        str2 = "audio decode newFormat = ";
                    }
                    while (!z3) {
                        iDequeueOutputBuffer2 = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                        if (iDequeueOutputBuffer2 == -1) {
                            break;
                        }
                        if (iDequeueOutputBuffer2 == -2) {
                            b.f(str2 + mediaCodecCreateDecoderByType.getOutputFormat(), new Object[0]);
                        } else if (iDequeueOutputBuffer2 < 0) {
                            b.b("unexpected result from audio decoder.dequeueOutputBuffer: " + iDequeueOutputBuffer2, new Object[0]);
                        } else {
                            if (bufferInfo.flags == 4) {
                                z6 = false;
                                z3 = true;
                            } else {
                                ByteBuffer outputBuffer2 = mediaCodecCreateDecoderByType.getOutputBuffer(iDequeueOutputBuffer2);
                                b.f("audio decode saveFrame " + (bufferInfo.presentationTimeUs / 1000), new Object[0]);
                                channel.write(outputBuffer2);
                                if (iVar != null) {
                                    float fIntValue2 = bufferInfo.presentationTimeUs - ((long) num3.intValue());
                                    if (num2 == null) {
                                        jIntValue2 = j;
                                    } else {
                                        jIntValue2 = num2.intValue() - num3.intValue();
                                    }
                                    iVar.a((fIntValue2 / jIntValue2) * 0.5f);
                                }
                                z6 = false;
                            }
                            mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer2, z6);
                        }
                    }
                    mediaExtractor3 = mediaExtractor;
                    file2 = file2;
                } catch (Throwable th) {
                    channel.close();
                    mediaExtractor.release();
                    mediaCodecCreateDecoderByType.release();
                    throw th;
                }
            }
            trackFormat = mediaFormat;
            z7 = z3;
            z8 = z4;
        }
        String str3 = "unexpected result from audio decoder.dequeueOutputBuffer: ";
        File file3 = file2;
        String str4 = "audio decode newFormat = ";
        channel.close();
        mediaExtractor.release();
        mediaCodecCreateDecoderByType.release();
        int integer = mediaFormat.getInteger("sample-rate");
        int integer2 = mediaFormat.getInteger("channel-count");
        File file4 = new File(context.getCacheDir(), file3.getName() + ".wav");
        new f(integer, integer2 == 2 ? 12 : 16, integer2, 2).a(file3.getAbsolutePath(), file4.getAbsolutePath());
        b.f("start process pcm speed", new Object[0]);
        File file5 = new File(context.getCacheDir(), file3.getName() + ".outpcm");
        SoundTouch soundTouch = new SoundTouch();
        soundTouch.b(f2.floatValue());
        if (soundTouch.a(file4.getAbsolutePath(), file5.getAbsolutePath()) < 0) {
            file3.delete();
            file4.delete();
            file5.delete();
            return;
        }
        MediaExtractor mediaExtractor4 = new MediaExtractor();
        mediaExtractor4.setDataSource(file5.getAbsolutePath());
        int iD2 = com.hw.videoprocessor.f.d(mediaExtractor4, true);
        mediaExtractor4.selectTrack(iD2);
        MediaFormat trackFormat2 = mediaExtractor4.getTrackFormat(iD2);
        int iC = c(trackFormat2);
        long j2 = trackFormat2.getLong("durationUs");
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(iC);
        int iB = b(mediaFormat);
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", integer, mediaFormat.getInteger("channel-count"));
        mediaFormatCreateAudioFormat.setInteger("bitrate", iB);
        mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
        mediaFormatCreateAudioFormat.setInteger("max-input-size", iC);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
        mediaCodecCreateEncoderByType.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        mediaCodecCreateEncoderByType.start();
        int i3 = 1024000000 / integer;
        long j3 = -1;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        while (!z9) {
            boolean z12 = z9;
            boolean z13 = z10;
            try {
                int iDequeueInputBuffer2 = mediaCodecCreateEncoderByType.dequeueInputBuffer(2500L);
                String str5 = " size:";
                if (!z13 && iDequeueInputBuffer2 >= 0) {
                    long sampleTime2 = mediaExtractor4.getSampleTime();
                    if (sampleTime2 < 0) {
                        mediaCodecCreateEncoderByType.queueInputBuffer(iDequeueInputBuffer2, 0, 0, 0L, 4);
                        byteBufferAllocateDirect2 = byteBufferAllocateDirect2;
                        file5 = file5;
                        file4 = file4;
                        z = true;
                    } else {
                        int sampleFlags = mediaExtractor4.getSampleFlags();
                        byteBufferAllocateDirect2.clear();
                        int sampleData = mediaExtractor4.readSampleData(byteBufferAllocateDirect2, 0);
                        ByteBuffer inputBuffer = mediaCodecCreateEncoderByType.getInputBuffer(iDequeueInputBuffer2);
                        inputBuffer.clear();
                        inputBuffer.put(byteBufferAllocateDirect2);
                        inputBuffer.position(0);
                        StringBuilder sb = new StringBuilder();
                        sb.append("audio queuePcmBuffer ");
                        sb.append(sampleTime2 / 1000);
                        sb.append(" size:");
                        sb.append(sampleData);
                        b.f(sb.toString(), new Object[0]);
                        mediaCodecCreateEncoderByType.queueInputBuffer(iDequeueInputBuffer2, 0, sampleData, sampleTime2, sampleFlags);
                        mediaExtractor4.advance();
                    }
                    while (true) {
                        try {
                            iDequeueOutputBuffer = mediaCodecCreateEncoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                            if (iDequeueOutputBuffer == -1) {
                                z9 = z12;
                                break;
                            }
                            if (iDequeueOutputBuffer == -2) {
                                b.f(str4 + mediaCodecCreateEncoderByType.getOutputFormat(), new Object[0]);
                            } else {
                                if (iDequeueOutputBuffer < 0) {
                                    b.b(str3 + iDequeueOutputBuffer, new Object[0]);
                                } else {
                                    if (bufferInfo.flags == 4) {
                                        z9 = true;
                                        break;
                                    }
                                    ByteBuffer outputBuffer3 = mediaCodecCreateEncoderByType.getOutputBuffer(iDequeueOutputBuffer);
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("audio writeSampleData ");
                                    file = file3;
                                    try {
                                        sb2.append(bufferInfo.presentationTimeUs);
                                        sb2.append(str5);
                                        sb2.append(bufferInfo.size);
                                        sb2.append(" flags:");
                                        sb2.append(bufferInfo.flags);
                                        b.f(sb2.toString(), new Object[0]);
                                        if (!z11 || j3 == -1) {
                                            i2 = i3;
                                            mediaExtractor2 = mediaExtractor4;
                                            str = str5;
                                        } else {
                                            i2 = i3;
                                            mediaExtractor2 = mediaExtractor4;
                                            str = str5;
                                            if (bufferInfo.presentationTimeUs < ((long) i2) + j3) {
                                                try {
                                                    b.b("audio 时间戳错误，lastAudioFrameTimeUs:" + j3 + " info.presentationTimeUs:" + bufferInfo.presentationTimeUs, new Object[0]);
                                                    z2 = true;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    file.delete();
                                                    file4.delete();
                                                    file5.delete();
                                                    mediaExtractor2.release();
                                                    mediaCodecCreateEncoderByType.release();
                                                    throw th;
                                                }
                                            }
                                            if (z2) {
                                                bufferInfo.presentationTimeUs = ((long) i2) + j3;
                                                b.b("audio 时间戳错误，使用修正的时间戳:" + bufferInfo.presentationTimeUs, new Object[0]);
                                                z2 = false;
                                            }
                                            if (bufferInfo.flags != 2) {
                                                j3 = bufferInfo.presentationTimeUs;
                                            }
                                            mediaMuxer.writeSampleData(i, outputBuffer3, bufferInfo);
                                            if (iVar != null) {
                                                float fIntValue3 = bufferInfo.presentationTimeUs - ((long) num3.intValue());
                                                if (num2 == null) {
                                                    jIntValue = j2;
                                                } else {
                                                    jIntValue = num2.intValue() - num3.intValue();
                                                }
                                                f3 = fIntValue3 / jIntValue;
                                                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                                                    f3 = BitmapDescriptorFactory.HUE_RED;
                                                }
                                                if (f3 > 1.0f) {
                                                    f3 = 1.0f;
                                                }
                                                iVar.a((f3 * 0.5f) + 0.5f);
                                            }
                                            outputBuffer3.clear();
                                            mediaCodecCreateEncoderByType.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                            z11 = z2;
                                            j3 = j3;
                                        }
                                        z2 = z11;
                                        if (z2) {
                                            bufferInfo.presentationTimeUs = ((long) i2) + j3;
                                            b.b("audio 时间戳错误，使用修正的时间戳:" + bufferInfo.presentationTimeUs, new Object[0]);
                                            z2 = false;
                                        }
                                        if (bufferInfo.flags != 2) {
                                            j3 = bufferInfo.presentationTimeUs;
                                        }
                                        mediaMuxer.writeSampleData(i, outputBuffer3, bufferInfo);
                                        if (iVar != null) {
                                            float fIntValue4 = bufferInfo.presentationTimeUs - ((long) num3.intValue());
                                            if (num2 == null) {
                                                jIntValue = j2;
                                            } else {
                                                jIntValue = num2.intValue() - num3.intValue();
                                            }
                                            f3 = fIntValue4 / jIntValue;
                                            if (f3 < BitmapDescriptorFactory.HUE_RED) {
                                                f3 = BitmapDescriptorFactory.HUE_RED;
                                            }
                                            if (f3 > 1.0f) {
                                                f3 = 1.0f;
                                            }
                                            iVar.a((f3 * 0.5f) + 0.5f);
                                        }
                                        outputBuffer3.clear();
                                        mediaCodecCreateEncoderByType.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                        z11 = z2;
                                        j3 = j3;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        mediaExtractor2 = mediaExtractor4;
                                        file.delete();
                                        file4.delete();
                                        file5.delete();
                                        mediaExtractor2.release();
                                        mediaCodecCreateEncoderByType.release();
                                        throw th;
                                    }
                                }
                                mediaExtractor4 = mediaExtractor2;
                                str3 = str3;
                                i3 = i2;
                                bufferInfo = bufferInfo;
                                str4 = str4;
                                file3 = file;
                                str5 = str;
                            }
                            i2 = i3;
                            file = file3;
                            bufferInfo = bufferInfo;
                            mediaExtractor2 = mediaExtractor4;
                            str = str5;
                            mediaExtractor4 = mediaExtractor2;
                            str3 = str3;
                            i3 = i2;
                            bufferInfo = bufferInfo;
                            str4 = str4;
                            file3 = file;
                            str5 = str;
                        } catch (Throwable th4) {
                            th = th4;
                            file = file3;
                            mediaExtractor2 = mediaExtractor4;
                            file.delete();
                            file4.delete();
                            file5.delete();
                            mediaExtractor2.release();
                            mediaCodecCreateEncoderByType.release();
                            throw th;
                        }
                    }
                    i3 = i3;
                    j3 = j3;
                    file4 = file4;
                    file5 = file5;
                    z10 = z;
                    byteBufferAllocateDirect2 = byteBufferAllocateDirect2;
                }
                z11 = z11;
                z = z13;
                while (true) {
                    iDequeueOutputBuffer = mediaCodecCreateEncoderByType.dequeueOutputBuffer(bufferInfo, 2500L);
                    if (iDequeueOutputBuffer == -1) {
                        z9 = z12;
                        break;
                        break;
                    }
                    if (iDequeueOutputBuffer == -2) {
                        b.f(str4 + mediaCodecCreateEncoderByType.getOutputFormat(), new Object[0]);
                    } else {
                        if (iDequeueOutputBuffer < 0) {
                            b.b(str3 + iDequeueOutputBuffer, new Object[0]);
                        } else {
                            if (bufferInfo.flags == 4) {
                                z9 = true;
                                break;
                                break;
                            }
                            ByteBuffer outputBuffer4 = mediaCodecCreateEncoderByType.getOutputBuffer(iDequeueOutputBuffer);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("audio writeSampleData ");
                            file = file3;
                            sb3.append(bufferInfo.presentationTimeUs);
                            sb3.append(str5);
                            sb3.append(bufferInfo.size);
                            sb3.append(" flags:");
                            sb3.append(bufferInfo.flags);
                            b.f(sb3.toString(), new Object[0]);
                            if (z11) {
                                i2 = i3;
                                mediaExtractor2 = mediaExtractor4;
                                str = str5;
                                z2 = z11;
                            } else {
                                i2 = i3;
                                mediaExtractor2 = mediaExtractor4;
                                str = str5;
                                z2 = z11;
                            }
                            if (z2) {
                                bufferInfo.presentationTimeUs = ((long) i2) + j3;
                                b.b("audio 时间戳错误，使用修正的时间戳:" + bufferInfo.presentationTimeUs, new Object[0]);
                                z2 = false;
                            }
                            if (bufferInfo.flags != 2) {
                                j3 = bufferInfo.presentationTimeUs;
                            }
                            mediaMuxer.writeSampleData(i, outputBuffer4, bufferInfo);
                            if (iVar != null) {
                                float fIntValue5 = bufferInfo.presentationTimeUs - ((long) num3.intValue());
                                if (num2 == null) {
                                    jIntValue = j2;
                                } else {
                                    jIntValue = num2.intValue() - num3.intValue();
                                }
                                f3 = fIntValue5 / jIntValue;
                                if (f3 < BitmapDescriptorFactory.HUE_RED) {
                                    f3 = BitmapDescriptorFactory.HUE_RED;
                                }
                                if (f3 > 1.0f) {
                                    f3 = 1.0f;
                                }
                                iVar.a((f3 * 0.5f) + 0.5f);
                            }
                            outputBuffer4.clear();
                            mediaCodecCreateEncoderByType.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            z11 = z2;
                            j3 = j3;
                        }
                        mediaExtractor4 = mediaExtractor2;
                        str3 = str3;
                        i3 = i2;
                        bufferInfo = bufferInfo;
                        str4 = str4;
                        file3 = file;
                        str5 = str;
                    }
                    i2 = i3;
                    file = file3;
                    bufferInfo = bufferInfo;
                    mediaExtractor2 = mediaExtractor4;
                    str = str5;
                    mediaExtractor4 = mediaExtractor2;
                    str3 = str3;
                    i3 = i2;
                    bufferInfo = bufferInfo;
                    str4 = str4;
                    file3 = file;
                    str5 = str;
                }
                i3 = i3;
                j3 = j3;
                file4 = file4;
                file5 = file5;
                z10 = z;
                byteBufferAllocateDirect2 = byteBufferAllocateDirect2;
            } catch (Throwable th5) {
                th = th5;
                file5 = file5;
                file4 = file4;
            }
        }
        file3.delete();
        file4.delete();
        file5.delete();
        mediaExtractor4.release();
        mediaCodecCreateEncoderByType.release();
    }
}

package com.google.android.exoplayer2.extractor.wav;

import android.util.Pair;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import okhttp3.internal.http.StatusLine;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes5.dex */
public final class WavExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = null;
    private static final int TARGET_SAMPLES_PER_SECOND = 10;
    private long dataEndPosition;
    private int dataStartPosition;
    private ExtractorOutput extractorOutput;
    private OutputWriter outputWriter;
    private TrackOutput trackOutput;

    private static final class ImaAdPcmOutputWriter implements OutputWriter {
        private static final int[] INDEX_TABLE = null;
        private static final int[] STEP_TABLE = null;
        private final ParsableByteArray decodedData;
        private final ExtractorOutput extractorOutput;
        private final Format format;
        private final int framesPerBlock;
        private final WavHeader header;
        private final byte[] inputData;
        private long outputFrameCount;
        private int pendingInputBytes;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeFrames;
        private final TrackOutput trackOutput;

        static {
            INDEX_TABLE = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
            STEP_TABLE = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, Imgproc.COLOR_COLORCVT_MAX, 157, l.Receive_Ai_Camera_Frame_Res, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, Videoio.CAP_PROP_XI_GPI_LEVEL, Videoio.CAP_PROP_XI_WB_KG, Videoio.CAP_PROP_XI_CC_MATRIX_33, Videoio.CAP_PROP_XI_TRG_DELAY, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        }

        public ImaAdPcmOutputWriter(ExtractorOutput r5, TrackOutput r6, WavHeader r7) throws ParserException {
            this.extractorOutput = r5;
            this.trackOutput = r6;
            this.header = r7;
            int r8 = Math.max(1, r7.frameRateHz / 10);
            this.targetSampleSizeFrames = r8;
            ParsableByteArray r0 = new ParsableByteArray(r7.extraData);
            r0.readLittleEndianUnsignedShort();
            int r1 = r0.readLittleEndianUnsignedShort();
            this.framesPerBlock = r1;
            int r2 = r7.numChannels;
            int r3 = (((r7.blockSize - (r2 * 4)) * 8) / (r7.bitsPerSample * r2)) + 1;
            if (r1 != r3) goto L6;
            int r9 = Util.ceilDivide(r8, r1);
            this.inputData = new byte[r7.blockSize * r9];
            this.decodedData = new ParsableByteArray(r9 * numOutputFramesToBytes(r1, r2));
            int r10 = ((r7.frameRateHz * r7.blockSize) * 8) / r1;
            this.format = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setAverageBitrate(r10).setPeakBitrate(r10).setMaxInputSize(numOutputFramesToBytes(r8, r2)).setChannelCount(r7.numChannels).setSampleRate(r7.frameRateHz).setPcmEncoding(2).build();
            return;
        L6:
            StringBuilder r11 = new StringBuilder(56);
            r11.append("Expected frames per block: ");
            r11.append(r3);
            r11.append("; got: ");
            r11.append(r1);
            throw new ParserException(r11.toString());
        }

        private void decode(byte[] r5, int r6, ParsableByteArray r7) {
            int r1 = 0;
        L3:
            if (r1 >= r6) goto L9;
            int r2 = 0;
        L6:
            if (r2 >= this.header.numChannels) goto L8;
            decodeBlockForChannel(r5, r1, r2, r7.getData());
            r2 = r2 + 1;
            goto L6
        L8:
            r1 = r1 + 1;
            goto L3
        L9:
            int r8 = numOutputFramesToBytes(this.framesPerBlock * r6);
            r7.setPosition(0);
            r7.setLimit(r8);
        }

        private void decodeBlockForChannel(byte[] r10, int r11, int r12, byte[] r13) {
            WavHeader r0 = this.header;
            int r1 = r0.blockSize;
            int r2 = r0.numChannels;
            int r3 = (r11 * r1) + (r12 * 4);
            int r4 = (r2 * 4) + r3;
            int r5 = (r1 / r2) - 4;
            int r6 = (short) (((r10[r3 + 1] & UnsignedBytes.MAX_VALUE) << 8) | (r10[r3] & UnsignedBytes.MAX_VALUE));
            int r7 = Math.min(r10[r3 + 2] & UnsignedBytes.MAX_VALUE, 88);
            int r8 = STEP_TABLE[r7];
            int r14 = (((r11 * this.framesPerBlock) * r2) + r12) * 2;
            r13[r14] = (byte) (r6 & 255);
            r13[r14 + 1] = (byte) (r6 >> 8);
            int r9 = 0;
        L4:
            if (r9 >= (r5 * 2)) goto L13;
            int r15 = r10[((((r9 / 8) * r2) * 4) + r4) + ((r9 / 2) % 4)] & UnsignedBytes.MAX_VALUE;
            if ((r9 % 2) != 0) goto L8;
            int r16 = r15 & 15;
        L9:
            int r17 = ((((r16 & 7) * 2) + 1) * r8) >> 3;
            if ((r16 & 8) == 0) goto L12;
            r17 = -r17;
        L12:
            r6 = Util.constrainValue(r6 + r17, -32768, 32767);
            r14 = r14 + (r2 * 2);
            r13[r14] = (byte) (r6 & 255);
            r13[r14 + 1] = (byte) (r6 >> 8);
            int r18 = r7 + INDEX_TABLE[r16];
            int[] r19 = STEP_TABLE;
            r7 = Util.constrainValue(r18, 0, r19.length - 1);
            r8 = r19[r7];
            r9 = r9 + 1;
            goto L4
        L8:
            r16 = r15 >> 4;
            goto L9
        }

        private int numOutputBytesToFrames(int r2) {
            return r2 / (this.header.numChannels * 2);
        }

        private int numOutputFramesToBytes(int r2) {
            return numOutputFramesToBytes(r2, this.header.numChannels);
        }

        private static int numOutputFramesToBytes(int r0, int r1) {
            return (r0 * 2) * r1;
        }

        private void writeSampleMetadata(int r12) {
            long r5 = this.startTimeUs + Util.scaleLargeTimestamp(this.outputFrameCount, 1000000, this.header.frameRateHz);
            int r0 = numOutputFramesToBytes(r12);
            this.trackOutput.sampleMetadata(r5, 1, r0, this.pendingOutputBytes - r0, null);
            this.outputFrameCount += (long) r12;
            this.pendingOutputBytes -= r0;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void init(int r10, long r11) {
            this.extractorOutput.seekMap(new WavSeekMap(this.header, this.framesPerBlock, r10, r11));
            this.trackOutput.format(this.format);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void reset(long r2) {
            this.pendingInputBytes = 0;
            this.startTimeUs = r2;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0036 -> B:4:0x001c). Please report as a decompilation issue!!! */
        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public boolean sampleData(ExtractorInput r7, long r8) throws IOException {
            int r0 = Util.ceilDivide(this.targetSampleSizeFrames - numOutputBytesToFrames(this.pendingOutputBytes), this.framesPerBlock) * this.header.blockSize;
            if (r8 != 0) goto L5;
        L4:
            boolean r2 = true;
        L6:
            if (r2 == true) goto L13;
            int r3 = this.pendingInputBytes;
            if (r3 >= r0) goto L13;
            int r4 = r7.read(this.inputData, this.pendingInputBytes, (int) Math.min(r0 - r3, r8));
            if (r4 == (-1)) goto L4;
            this.pendingInputBytes += r4;
        L13:
            int r9 = this.pendingInputBytes / this.header.blockSize;
            if (r9 <= 0) goto L18;
            decode(this.inputData, r9, this.decodedData);
            this.pendingInputBytes -= r9 * this.header.blockSize;
            int r10 = this.decodedData.limit();
            this.trackOutput.sampleData(this.decodedData, r10);
            int r11 = this.pendingOutputBytes + r10;
            this.pendingOutputBytes = r11;
            int r12 = numOutputBytesToFrames(r11);
            int r13 = this.targetSampleSizeFrames;
            if (r12 < r13) goto L18;
            writeSampleMetadata(r13);
        L18:
            if (r2 == false) goto L22;
            int r14 = numOutputBytesToFrames(this.pendingOutputBytes);
            if (r14 <= 0) goto L22;
            writeSampleMetadata(r14);
        L22:
            return r2;
        L5:
            r2 = false;
            goto L6
        }
    }

    private interface OutputWriter {
        void init(int r1, long r2) throws ParserException;

        void reset(long r1);

        boolean sampleData(ExtractorInput r1, long r2) throws IOException;
    }

    private static final class PassthroughOutputWriter implements OutputWriter {
        private final ExtractorOutput extractorOutput;
        private final Format format;
        private final WavHeader header;
        private long outputFrameCount;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeBytes;
        private final TrackOutput trackOutput;

        public PassthroughOutputWriter(ExtractorOutput r2, TrackOutput r3, WavHeader r4, String r5, int r6) throws ParserException {
            this.extractorOutput = r2;
            this.trackOutput = r3;
            this.header = r4;
            int r7 = (r4.numChannels * r4.bitsPerSample) / 8;
            if (r4.blockSize != r7) goto L6;
            int r8 = r4.frameRateHz;
            int r0 = (r8 * r7) * 8;
            int r9 = Math.max(r7, (r8 * r7) / 10);
            this.targetSampleSizeBytes = r9;
            this.format = new Format.Builder().setSampleMimeType(r5).setAverageBitrate(r0).setPeakBitrate(r0).setMaxInputSize(r9).setChannelCount(r4.numChannels).setSampleRate(r4.frameRateHz).setPcmEncoding(r6).build();
            return;
        L6:
            int r10 = r4.blockSize;
            StringBuilder r11 = new StringBuilder(50);
            r11.append("Expected block size: ");
            r11.append(r7);
            r11.append("; got: ");
            r11.append(r10);
            throw new ParserException(r11.toString());
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void init(int r10, long r11) {
            this.extractorOutput.seekMap(new WavSeekMap(this.header, 1, r10, r11));
            this.trackOutput.format(this.format);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void reset(long r1) {
            this.startTimeUs = r1;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public boolean sampleData(ExtractorInput r19, long r20) throws IOException {
            long r1 = r20;
        L4:
            if (r1 <= 0) goto L11;
            int r7 = this.pendingOutputBytes;
            int r8 = this.targetSampleSizeBytes;
            if (r7 >= r8) goto L11;
            int r3 = this.trackOutput.sampleData(r19, (int) Math.min(r8 - r7, r1), true);
            if (r3 == (-1)) goto L9;
            this.pendingOutputBytes += r3;
            r1 = r1 - ((long) r3);
            goto L4
        L9:
            r1 = 0;
        L11:
            WavHeader r2 = this.header;
            int r4 = r2.blockSize;
            int r5 = this.pendingOutputBytes / r4;
            if (r5 <= 0) goto L14;
            long r12 = this.startTimeUs + Util.scaleLargeTimestamp(this.outputFrameCount, 1000000, r2.frameRateHz);
            int r15 = r5 * r4;
            int r6 = this.pendingOutputBytes - r15;
            this.trackOutput.sampleMetadata(r12, 1, r15, r6, null);
            this.outputFrameCount += (long) r5;
            this.pendingOutputBytes = r6;
        L14:
            if (r1 <= 0) goto L25;
            return false;
        L25:
            return true;
        }
    }

    static {
        FACTORY = a.f11860a;
    }

    public WavExtractor() {
        this.dataStartPosition = -1;
        this.dataEndPosition = -1;
    }

    static /* synthetic */ Extractor[] a() {
        return new Extractor[]{new WavExtractor()};
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    private void assertInitialized() {
        Assertions.checkStateNotNull(this.trackOutput);
        Util.castNonNull(this.extractorOutput);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput r3) {
        this.extractorOutput = r3;
        this.trackOutput = r3.track(0, 1);
        r3.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput r7, PositionHolder r8) throws IOException {
        assertInitialized();
        if (this.outputWriter != null) goto L23;
        WavHeader r3 = WavHeaderReader.peek(r7);
        if (r3 == null) goto L21;
        int r9 = r3.formatType;
        if (r9 != 17) goto L10;
        this.outputWriter = new ImaAdPcmOutputWriter(this.extractorOutput, this.trackOutput, r3);
        goto L23
    L10:
        if (r9 != 6) goto L13;
        this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, r3, MimeTypes.AUDIO_ALAW, -1);
        goto L23
    L13:
        if (r9 != 7) goto L15;
        this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, r3, MimeTypes.AUDIO_MLAW, -1);
        goto L23
    L15:
        int r5 = WavUtil.getPcmEncodingForType(r9, r3.bitsPerSample);
        if (r5 == 0) goto L18;
        this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, r3, MimeTypes.AUDIO_RAW, r5);
        goto L23
    L18:
        int r10 = r3.formatType;
        StringBuilder r1 = new StringBuilder(40);
        r1.append("Unsupported WAV format type: ");
        r1.append(r10);
        throw new ParserException(r1.toString());
    L21:
        throw new ParserException("Unsupported or unrecognized wav header.");
    L23:
        if (this.dataStartPosition != (-1)) goto L26;
        Pair<Long, Long> r11 = WavHeaderReader.skipToData(r7);
        this.dataStartPosition = ((Long) r11.first).intValue();
        long r2 = ((Long) r11.second).longValue();
        this.dataEndPosition = r2;
        this.outputWriter.init(this.dataStartPosition, r2);
    L29:
        if (this.dataEndPosition == (-1)) goto L31;
        boolean r4 = true;
    L32:
        Assertions.checkState(r4);
        long r6 = this.dataEndPosition - r7.getPosition();
        if (this.outputWriter.sampleData(r7, r6) == true) goto L37;
        return 0;
    L37:
        return -1;
    L31:
        r4 = false;
        goto L32
    L26:
        if (r7.getPosition() != 0) goto L29;
        r7.skipFully(this.dataStartPosition);
        goto L29
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long r1, long r3) {
        OutputWriter r2 = this.outputWriter;
        if (r2 == null) goto L6;
        r2.reset(r3);
        return;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput r1) throws IOException {
        if (WavHeaderReader.peek(r1) == null) goto L5;
        return true;
    L5:
        return false;
    }
}

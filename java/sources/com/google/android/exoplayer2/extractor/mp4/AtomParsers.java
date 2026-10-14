package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.DolbyVisionConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class AtomParsers {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_clcp = 1668047728;
    private static final int TYPE_mdta = 1835299937;
    private static final int TYPE_meta = 1835365473;
    private static final int TYPE_sbtl = 1935832172;
    private static final int TYPE_soun = 1936684398;
    private static final int TYPE_subt = 1937072756;
    private static final int TYPE_text = 1952807028;
    private static final int TYPE_vide = 1986618469;
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    private interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom, Format format) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (unsignedIntToInt == 0 || unsignedIntToInt % pcmFrameSize != 0) {
                    StringBuilder sb = new StringBuilder(88);
                    sb.append("Audio sample size mismatch. stsd sample size: ");
                    sb.append(pcmFrameSize);
                    sb.append(", stsz sample size: ");
                    sb.append(unsignedIntToInt);
                    Log.w(AtomParsers.TAG, sb.toString());
                    unsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = unsignedIntToInt == 0 ? -1 : unsignedIntToInt;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == -1 ? this.data.readUnsignedIntToInt() : i;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 != 0) {
                return this.currentByte & 15;
            }
            int unsignedByte = this.data.readUnsignedByte();
            this.currentByte = unsignedByte;
            return (unsignedByte & 240) >> 4;
        }
    }

    private static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    private AtomParsers() {
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            Assertions.checkState(i3 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == 1702061171) {
                return position;
            }
            position += i3;
        }
        return -1;
    }

    private static int getTrackTypeForHdlr(int i) {
        if (i == TYPE_soun) {
            return 1;
        }
        if (i == TYPE_vide) {
            return 2;
        }
        if (i == TYPE_text || i == TYPE_sbtl || i == TYPE_subt || i == TYPE_clcp) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static void maybeSkipRemainingMetaAtomHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0164  */
    /* JADX WARN: Code duplicated, block: B:104:0x017c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0181  */
    /* JADX WARN: Code duplicated, block: B:107:0x0191  */
    /* JADX WARN: Code duplicated, block: B:109:0x0196  */
    /* JADX WARN: Code duplicated, block: B:110:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:112:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:113:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:115:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:116:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:118:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:119:0x0223  */
    /* JADX WARN: Code duplicated, block: B:121:0x022b  */
    /* JADX WARN: Code duplicated, block: B:122:0x0255  */
    /* JADX WARN: Code duplicated, block: B:124:0x0258  */
    /* JADX WARN: Code duplicated, block: B:126:0x0261  */
    /* JADX WARN: Code duplicated, block: B:127:0x0263  */
    /* JADX WARN: Code duplicated, block: B:130:0x026a  */
    /* JADX WARN: Code duplicated, block: B:132:0x0278  */
    /* JADX WARN: Code duplicated, block: B:134:0x0280  */
    /* JADX WARN: Code duplicated, block: B:147:0x028e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x028e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0136  */
    /* JADX WARN: Code duplicated, block: B:93:0x0140  */
    /* JADX WARN: Code duplicated, block: B:96:0x014f  */
    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int unsignedShort;
        int iIntValue;
        int unsignedIntToInt;
        DrmInitData drmInitDataCopyWithSchemeType;
        int i6;
        String str2;
        String str3;
        List<byte[]> listOf;
        int i7;
        int i8;
        int i9;
        int iFindEsdsPosition;
        byte[] bArr;
        int i10 = i2;
        int i11 = i3;
        parsableByteArray.setPosition(i10 + 8 + 8);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        boolean z2 = true;
        if (unsignedShort == 0 || unsignedShort == 1) {
            int unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            int unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
            iIntValue = unsignedFixedPoint1616;
            unsignedIntToInt = unsignedShort2;
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            iIntValue = (int) Math.round(parsableByteArray.readDouble());
            unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
        }
        int position = parsableByteArray.getPosition();
        int iIntValue2 = i;
        if (iIntValue2 == 1701733217) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i10, i11);
            if (sampleEntryEncryptionData != null) {
                iIntValue2 = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitData == null ? null : drmInitData.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            } else {
                drmInitDataCopyWithSchemeType = drmInitData;
            }
            parsableByteArray.setPosition(position);
        } else {
            drmInitDataCopyWithSchemeType = drmInitData;
        }
        String str4 = MimeTypes.AUDIO_RAW;
        if (iIntValue2 == 1633889587) {
            str4 = MimeTypes.AUDIO_AC3;
        } else if (iIntValue2 == 1700998451) {
            str4 = MimeTypes.AUDIO_E_AC3;
        } else if (iIntValue2 == 1633889588) {
            str4 = MimeTypes.AUDIO_AC4;
        } else if (iIntValue2 == 1685353315) {
            str4 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue2 == 1685353320 || iIntValue2 == 1685353324) {
            str4 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue2 == 1685353317) {
            str4 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue2 == 1935764850) {
            str4 = MimeTypes.AUDIO_AMR_NB;
        } else {
            if (iIntValue2 != 1935767394) {
                if (iIntValue2 == 1819304813 || iIntValue2 == 1936684916) {
                    i6 = 2;
                } else if (iIntValue2 == 1953984371) {
                    i6 = 268435456;
                } else if (iIntValue2 == 778924082 || iIntValue2 == 778924083) {
                    str4 = MimeTypes.AUDIO_MPEG;
                } else if (iIntValue2 == 1634492771) {
                    str4 = MimeTypes.AUDIO_ALAC;
                } else if (iIntValue2 == 1634492791) {
                    str4 = MimeTypes.AUDIO_ALAW;
                } else if (iIntValue2 == 1970037111) {
                    str4 = MimeTypes.AUDIO_MLAW;
                } else if (iIntValue2 == 1332770163) {
                    str4 = MimeTypes.AUDIO_OPUS;
                } else if (iIntValue2 == 1716281667) {
                    str4 = MimeTypes.AUDIO_FLAC;
                } else {
                    i6 = -1;
                    str4 = null;
                }
                str2 = str4;
                str3 = null;
                listOf = null;
                while (position - i10 < i11) {
                    parsableByteArray.setPosition(position);
                    i7 = parsableByteArray.readInt();
                    if (i7 <= 0) {
                        z2 = false;
                    }
                    Assertions.checkState(z2, "childAtomSize should be positive");
                    i8 = parsableByteArray.readInt();
                    if (i8 != 1702061171) {
                        if (z || i8 != 2002876005) {
                            if (i8 == 1684103987) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i8 == 1684366131) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i8 == 1684103988) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i8 == 1684305011) {
                                stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setChannelCount(unsignedIntToInt).setSampleRate(iIntValue).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                            } else if (i8 == 1682927731) {
                                int i12 = i7 - 8;
                                byte[] bArr2 = opusMagic;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr2, bArr2.length + i12);
                                parsableByteArray.setPosition(position + 8);
                                parsableByteArray.readBytes(bArrCopyOf, bArr2.length, i12);
                                listOf = OpusUtil.buildInitializationData(bArrCopyOf);
                                z2 = true;
                            } else if (i8 == 1684425825) {
                                int i13 = i7 - 12;
                                byte[] bArr3 = new byte[i13 + 4];
                                bArr3[0] = 102;
                                z2 = true;
                                bArr3[1] = 76;
                                bArr3[2] = 97;
                                bArr3[3] = 67;
                                parsableByteArray.setPosition(position + 12);
                                parsableByteArray.readBytes(bArr3, 4, i13);
                                listOf = ImmutableList.of(bArr3);
                            } else {
                                z2 = true;
                                if (i8 == 1634492771) {
                                    int i14 = i7 - 12;
                                    byte[] bArr4 = new byte[i14];
                                    parsableByteArray.setPosition(position + 12);
                                    parsableByteArray.readBytes(bArr4, 0, i14);
                                    Pair<Integer, Integer> alacAudioSpecificConfig = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(bArr4);
                                    iIntValue = ((Integer) alacAudioSpecificConfig.first).intValue();
                                    int iIntValue3 = ((Integer) alacAudioSpecificConfig.second).intValue();
                                    listOf = ImmutableList.of(bArr4);
                                    unsignedIntToInt = iIntValue3;
                                }
                            }
                            z2 = true;
                        } else {
                            i9 = Atom.TYPE_esds;
                            z2 = true;
                        }
                        position += i7;
                        i10 = i2;
                        i11 = i3;
                    } else {
                        z2 = true;
                        i9 = Atom.TYPE_esds;
                    }
                    if (i8 == i9) {
                        iFindEsdsPosition = position;
                    } else {
                        iFindEsdsPosition = findEsdsPosition(parsableByteArray, position, i7);
                    }
                    if (iFindEsdsPosition != -1) {
                        Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindEsdsPosition);
                        str2 = (String) esdsFromParent.first;
                        bArr = (byte[]) esdsFromParent.second;
                        if (bArr == null) {
                            if ("audio/mp4a-latm".equals(str2)) {
                                AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr);
                                iIntValue = audioSpecificConfig.sampleRateHz;
                                unsignedIntToInt = audioSpecificConfig.channelCount;
                                str3 = audioSpecificConfig.codecs;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                    position += i7;
                    i10 = i2;
                    i11 = i3;
                }
                if (stsdData.format == null || str2 == null) {
                }
                stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setCodecs(str3).setChannelCount(unsignedIntToInt).setSampleRate(iIntValue).setPcmEncoding(i6).setInitializationData(listOf).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                return;
            }
            str4 = MimeTypes.AUDIO_AMR_WB;
        }
        i6 = -1;
        str2 = str4;
        str3 = null;
        listOf = null;
        while (position - i10 < i11) {
            parsableByteArray.setPosition(position);
            i7 = parsableByteArray.readInt();
            if (i7 <= 0) {
                z2 = false;
            }
            Assertions.checkState(z2, "childAtomSize should be positive");
            i8 = parsableByteArray.readInt();
            if (i8 != 1702061171) {
                if (z) {
                }
                if (i8 == 1684103987) {
                    parsableByteArray.setPosition(position + 8);
                    stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                } else if (i8 == 1684366131) {
                    parsableByteArray.setPosition(position + 8);
                    stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                } else if (i8 == 1684103988) {
                    parsableByteArray.setPosition(position + 8);
                    stsdData.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                } else {
                    if (i8 == 1684305011) {
                        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setChannelCount(unsignedIntToInt).setSampleRate(iIntValue).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                    } else if (i8 == 1682927731) {
                        int i15 = i7 - 8;
                        byte[] bArr5 = opusMagic;
                        byte[] bArrCopyOf2 = Arrays.copyOf(bArr5, bArr5.length + i15);
                        parsableByteArray.setPosition(position + 8);
                        parsableByteArray.readBytes(bArrCopyOf2, bArr5.length, i15);
                        listOf = OpusUtil.buildInitializationData(bArrCopyOf2);
                        z2 = true;
                    } else if (i8 == 1684425825) {
                        int i16 = i7 - 12;
                        byte[] bArr6 = new byte[i16 + 4];
                        bArr6[0] = 102;
                        z2 = true;
                        bArr6[1] = 76;
                        bArr6[2] = 97;
                        bArr6[3] = 67;
                        parsableByteArray.setPosition(position + 12);
                        parsableByteArray.readBytes(bArr6, 4, i16);
                        listOf = ImmutableList.of(bArr6);
                    } else {
                        z2 = true;
                        if (i8 == 1634492771) {
                            int i17 = i7 - 12;
                            byte[] bArr7 = new byte[i17];
                            parsableByteArray.setPosition(position + 12);
                            parsableByteArray.readBytes(bArr7, 0, i17);
                            Pair<Integer, Integer> alacAudioSpecificConfig2 = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(bArr7);
                            iIntValue = ((Integer) alacAudioSpecificConfig2.first).intValue();
                            int iIntValue4 = ((Integer) alacAudioSpecificConfig2.second).intValue();
                            listOf = ImmutableList.of(bArr7);
                            unsignedIntToInt = iIntValue4;
                        }
                    }
                    position += i7;
                    i10 = i2;
                    i11 = i3;
                }
                z2 = true;
                position += i7;
                i10 = i2;
                i11 = i3;
            } else {
                z2 = true;
                i9 = Atom.TYPE_esds;
            }
            if (i8 == i9) {
                iFindEsdsPosition = position;
            } else {
                iFindEsdsPosition = findEsdsPosition(parsableByteArray, position, i7);
            }
            if (iFindEsdsPosition != -1) {
                Pair<String, byte[]> esdsFromParent2 = parseEsdsFromParent(parsableByteArray, iFindEsdsPosition);
                str2 = (String) esdsFromParent2.first;
                bArr = (byte[]) esdsFromParent2.second;
                if (bArr == null) {
                    if ("audio/mp4a-latm".equals(str2)) {
                        AacUtil.Config audioSpecificConfig2 = AacUtil.parseAudioSpecificConfig(bArr);
                        iIntValue = audioSpecificConfig2.sampleRateHz;
                        unsignedIntToInt = audioSpecificConfig2.channelCount;
                        str3 = audioSpecificConfig2.codecs;
                    }
                    listOf = ImmutableList.of(bArr);
                }
            }
            position += i7;
            i10 = i2;
            i11 = i3;
        }
        if (stsdData.format == null) {
        }
    }

    static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        String string = null;
        Integer numValueOf = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i6 = parsableByteArray.readInt();
            int i7 = parsableByteArray.readInt();
            if (i7 == 1718775137) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i7 == 1935894637) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i7 == 1935894633) {
                i4 = i3;
                i5 = i6;
            }
            i3 += i6;
        }
        if (!C.CENC_TYPE_cenc.equals(string) && !C.CENC_TYPE_cbc1.equals(string) && !C.CENC_TYPE_cens.equals(string) && !C.CENC_TYPE_cbcs.equals(string)) {
            return null;
        }
        Assertions.checkStateNotNull(numValueOf, "frma atom is mandatory");
        Assertions.checkState(i4 != -1, "schi atom is mandatory");
        return Pair.create(numValueOf, (TrackEncryptionBox) Assertions.checkStateNotNull(parseSchiFromParent(parsableByteArray, i4, i5, string), "tenc atom is mandatory"));
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst);
        if (leafAtomOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        StringBuilder sb = new StringBuilder(3);
        sb.append((char) (((unsignedShort >> 10) & 31) + 96));
        sb.append((char) (((unsignedShort >> 5) & 31) + 96));
        sb.append((char) ((unsignedShort & 31) + 96));
        return Pair.create(Long.valueOf(unsignedInt), sb.toString());
    }

    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_hdlr);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_keys);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_ilst);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i2] = parsableByteArray.readString(i3 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int i4 = parsableByteArray2.readInt();
            int i5 = parsableByteArray2.readInt() - 1;
            if (i5 < 0 || i5 >= i) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("Skipped metadata with unknown key index: ");
                sb.append(i5);
                Log.w(TAG, sb.toString());
            } else {
                MdtaMetadataEntry mdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + i4, strArr[i5]);
                if (mdtaMetadataEntryFromIlst != null) {
                    arrayList.add(mdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray2.setPosition(position + i4);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String nullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (nullTerminatedString != null) {
                stsdData.format = new Format.Builder().setId(i3).setSampleMimeType(nullTerminatedString).build();
            }
        }
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, i4 + i3);
            }
            i3 += i4;
        }
        return null;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) {
        Pair<Integer, TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            Assertions.checkState(i3 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == 1936289382 && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i3)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i3;
        }
        return null;
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = unsignedByte & 15;
                    i4 = (unsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new TrackEncryptionBox(z, str, unsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += i6;
        }
    }

    private static Metadata parseSmta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (i2 < 14) {
                    return null;
                }
                parsableByteArray.skipBytes(5);
                int unsignedByte = parsableByteArray.readUnsignedByte();
                if (unsignedByte != 12 && unsignedByte != 13) {
                    return null;
                }
                float f2 = unsignedByte == 12 ? 240.0f : 120.0f;
                parsableByteArray.skipBytes(1);
                return new Metadata(new SmtaMetadataEntry(f2, parsableByteArray.readUnsignedByte()));
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x024a  */
    /* JADX WARN: Code duplicated, block: B:110:0x0252  */
    /* JADX WARN: Code duplicated, block: B:111:0x0255  */
    /* JADX WARN: Code duplicated, block: B:116:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:118:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:136:0x0369  */
    /* JADX WARN: Code duplicated, block: B:140:0x0375  */
    /* JADX WARN: Code duplicated, block: B:150:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:151:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:155:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:157:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:160:0x0407  */
    /* JADX WARN: Code duplicated, block: B:165:0x041e  */
    /* JADX WARN: Code duplicated, block: B:166:0x0420  */
    /* JADX WARN: Code duplicated, block: B:168:0x0427  */
    /* JADX WARN: Code duplicated, block: B:172:0x0445  */
    /* JADX WARN: Code duplicated, block: B:173:0x0447  */
    /* JADX WARN: Code duplicated, block: B:176:0x044c  */
    /* JADX WARN: Code duplicated, block: B:177:0x044f  */
    /* JADX WARN: Code duplicated, block: B:179:0x0453  */
    /* JADX WARN: Code duplicated, block: B:180:0x0456  */
    /* JADX WARN: Code duplicated, block: B:182:0x045a  */
    /* JADX WARN: Code duplicated, block: B:184:0x045d  */
    /* JADX WARN: Code duplicated, block: B:185:0x0460  */
    /* JADX WARN: Code duplicated, block: B:189:0x046c  */
    /* JADX WARN: Code duplicated, block: B:191:0x0478  */
    /* JADX WARN: Code duplicated, block: B:192:0x048e  */
    /* JADX WARN: Code duplicated, block: B:195:0x049a  */
    /* JADX WARN: Code duplicated, block: B:197:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:208:0x043a A[EDGE_INSN: B:208:0x043a->B:170:0x043a BREAK  A[LOOP:2: B:153:0x03d0->B:169:0x0430], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x04d1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x0178 A[EDGE_INSN: B:223:0x0178->B:63:0x0178 BREAK  A[LOOP:7: B:59:0x015b->B:62:0x0163], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x022d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:50:0x0104  */
    /* JADX WARN: Code duplicated, block: B:53:0x0110 A[LOOP:0: B:51:0x010a->B:53:0x0110, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x0135  */
    /* JADX WARN: Code duplicated, block: B:58:0x0155  */
    /* JADX WARN: Code duplicated, block: B:60:0x015d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0163 A[LOOP:7: B:59:0x015b->B:62:0x0163, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x019c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x019e A[ADDED_TO_REGION, LOOP:8: B:67:0x019e->B:69:0x01a2, LOOP_START, PHI: r16 r19 r21
      0x019e: PHI (r16v10 int) = (r16v3 int), (r16v11 int) binds: [B:66:0x019c, B:69:0x01a2] A[DONT_GENERATE, DONT_INLINE]
      0x019e: PHI (r19v5 int) = (r19v1 int), (r19v6 int) binds: [B:66:0x019c, B:69:0x01a2] A[DONT_GENERATE, DONT_INLINE]
      0x019e: PHI (r21v3 int) = (r21v1 int), (r21v5 int) binds: [B:66:0x019c, B:69:0x01a2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:73:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:80:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:92:0x0225 A[DONT_INVERT, LOOP:9: B:92:0x0225->B:96:0x022f, LOOP_START, PHI: r16
      0x0225: PHI (r16v7 int) = (r16v3 int), (r16v8 int) binds: [B:91:0x0223, B:96:0x022f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:93:0x0227  */
    /* JADX WARN: Code duplicated, block: B:96:0x022f A[LOOP:9: B:92:0x0225->B:96:0x022f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:97:0x0235 A[EDGE_INSN: B:97:0x0235->B:98:0x0236 BREAK  A[LOOP:9: B:92:0x0225->B:96:0x022f]] */
    private static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int unsignedIntToInt3;
        int fixedSampleSize;
        boolean z2;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        int unsignedIntToInt4;
        int i;
        int i2;
        int i3;
        int i4;
        int unsignedIntToInt5;
        long j;
        long j2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z3;
        int i10;
        Track track2;
        String str;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int i11;
        int i12;
        long j3;
        int[] iArr2;
        long j4;
        int i13;
        boolean zMoveNext;
        int i14;
        int i15;
        int i16;
        int unsignedIntToInt6;
        int i17;
        int i18;
        long jScaleLargeTimestamp;
        long[] jArr3;
        int i19;
        int[] iArr3;
        long j5;
        long[] jArr4;
        boolean z4;
        int[] iArr4;
        int[] iArr5;
        long[] jArr5;
        int i20;
        boolean z5;
        int i21;
        int i22;
        long[] jArr6;
        long[] jArr7;
        int[] iArr6;
        int i23;
        int i24;
        boolean z6;
        boolean z7;
        long[] jArr8;
        int[] iArr7;
        int[] iArr8;
        long[] jArr9;
        int i25;
        long j6;
        long j7;
        int i26;
        int i27;
        int[] iArr9;
        int[] iArr10;
        long j8;
        boolean z8;
        long[] jArr10;
        int[] iArr11;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType, track.format);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_co64));
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_stsc))).data;
        ParsableByteArray parsableByteArray3 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_stts))).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt7 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt8 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt9 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt2 > 0) {
                unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                parsableByteArray4 = null;
            }
            fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
            String str2 = track.format.sampleMimeType;
            if (fixedSampleSize == -1 && ((MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2)) && unsignedIntToInt7 == 0 && unsignedIntToInt == 0 && unsignedIntToInt2 == 0)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                int i28 = chunkIterator.length;
                jArr10 = new long[i28];
                iArr11 = new int[i28];
                while (chunkIterator.moveNext()) {
                    int i29 = chunkIterator.index;
                    jArr10[i29] = chunkIterator.offset;
                    iArr11[i29] = chunkIterator.numSamples;
                }
                FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr10, iArr11, unsignedIntToInt9);
                long[] jArr11 = resultsRechunk.offsets;
                int[] iArr12 = resultsRechunk.sizes;
                i11 = resultsRechunk.maximumSize;
                long[] jArr12 = resultsRechunk.timestamps;
                int[] iArr13 = resultsRechunk.flags;
                long j9 = resultsRechunk.duration;
                i12 = sampleCount;
                jArr = jArr11;
                iArr = iArr12;
                jArr2 = jArr12;
                iArr2 = iArr13;
                j3 = j9;
                track2 = track;
            } else {
                jArrCopyOf = new long[sampleCount];
                iArrCopyOf = new int[sampleCount];
                jArrCopyOf2 = new long[sampleCount];
                iArrCopyOf2 = new int[sampleCount];
                unsignedIntToInt4 = unsignedIntToInt3;
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
                unsignedIntToInt5 = 0;
                j = 0;
                j2 = 0;
                i5 = unsignedIntToInt;
                i6 = unsignedIntToInt9;
                i7 = unsignedIntToInt8;
                while (true) {
                    if (i < sampleCount) {
                        i8 = i7;
                        i9 = i4;
                        break;
                    }
                    j4 = j2;
                    i13 = i4;
                    zMoveNext = true;
                    while (i13 == 0) {
                        zMoveNext = chunkIterator.moveNext();
                        if (zMoveNext) {
                            break;
                        }
                        int i30 = i7;
                        long j10 = chunkIterator.offset;
                        i13 = chunkIterator.numSamples;
                        j4 = j10;
                        i7 = i30;
                        i6 = i6;
                        sampleCount = sampleCount;
                    }
                    i14 = sampleCount;
                    i8 = i7;
                    i15 = i6;
                    if (!zMoveNext) {
                        Log.w(TAG, "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i);
                        sampleCount = i;
                        i9 = i13;
                        break;
                    }
                    if (parsableByteArray5 != null) {
                        while (unsignedIntToInt5 == 0 && i5 > 0) {
                            unsignedIntToInt5 = parsableByteArray5.readUnsignedIntToInt();
                            i3 = parsableByteArray5.readInt();
                            i5--;
                        }
                        unsignedIntToInt5--;
                    }
                    int i31 = i3;
                    jArrCopyOf[i] = j4;
                    iArrCopyOf[i] = stz2SampleSizeBox.readNextSampleSize();
                    if (iArrCopyOf[i] > i2) {
                        i2 = iArrCopyOf[i];
                    }
                    jArrCopyOf2[i] = j + ((long) i31);
                    if (parsableByteArray4 == null) {
                        i16 = 1;
                    } else {
                        i16 = 0;
                    }
                    iArrCopyOf2[i] = i16;
                    if (i == unsignedIntToInt4) {
                        iArrCopyOf2[i] = 1;
                        unsignedIntToInt2--;
                        if (unsignedIntToInt2 > 0) {
                            unsignedIntToInt4 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray4)).readUnsignedIntToInt() - 1;
                        }
                    }
                    int i32 = unsignedIntToInt4;
                    j += (long) i15;
                    unsignedIntToInt6 = i8 - 1;
                    if (unsignedIntToInt6 == 0 || unsignedIntToInt7 <= 0) {
                        i17 = i15;
                        i18 = unsignedIntToInt7;
                    } else {
                        unsignedIntToInt6 = parsableByteArray3.readUnsignedIntToInt();
                        i17 = parsableByteArray3.readInt();
                        i18 = unsignedIntToInt7 - 1;
                    }
                    int i33 = unsignedIntToInt6;
                    long j11 = j4 + ((long) iArrCopyOf[i]);
                    i4 = i13 - 1;
                    i++;
                    j2 = j11;
                    unsignedIntToInt4 = i32;
                    i6 = i17;
                    sampleCount = i14;
                    i3 = i31;
                    int i34 = i18;
                    i7 = i33;
                    unsignedIntToInt7 = i34;
                }
                long j12 = j + ((long) i3);
                if (parsableByteArray5 != null) {
                    z3 = true;
                    break;
                }
                while (true) {
                    if (i5 > 0) {
                        z3 = true;
                        break;
                    }
                    if (parsableByteArray5.readUnsignedIntToInt() != 0) {
                        z3 = false;
                        break;
                    }
                    parsableByteArray5.readInt();
                    i5--;
                }
                if (unsignedIntToInt2 != 0 && i8 == 0 && i9 == 0 && unsignedIntToInt7 == 0) {
                    i10 = unsignedIntToInt5;
                    if (i10 == 0 && z3) {
                        track2 = track;
                    }
                    jArr = jArrCopyOf;
                    iArr = iArrCopyOf;
                    jArr2 = jArrCopyOf2;
                    i11 = i2;
                    i12 = sampleCount;
                    j3 = j12;
                    iArr2 = iArrCopyOf2;
                } else {
                    i10 = unsignedIntToInt5;
                }
                track2 = track;
                int i35 = track2.id;
                if (z3) {
                    str = "";
                } else {
                    str = ", ctts invalid";
                }
                StringBuilder sb = new StringBuilder(str.length() + 262);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i35);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(unsignedIntToInt2);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i8);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i9);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(unsignedIntToInt7);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(i10);
                sb.append(str);
                Log.w(TAG, sb.toString());
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                jArr2 = jArrCopyOf2;
                i11 = i2;
                i12 = sampleCount;
                j3 = j12;
                iArr2 = iArrCopyOf2;
            }
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(j3, 1000000L, track2.timescale);
            jArr3 = track2.editListDurations;
            if (jArr3 == null) {
                Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
                return new TrackSampleTable(track, jArr, iArr, i11, jArr2, iArr2, jScaleLargeTimestamp);
            }
            if (jArr3.length != 1 && track2.type == 1 && jArr2.length >= 2) {
                long j13 = ((long[]) Assertions.checkNotNull(track2.editListMediaTimes))[0];
                long jScaleLargeTimestamp2 = j13 + Util.scaleLargeTimestamp(track2.editListDurations[0], track2.timescale, track2.movieTimescale);
                i19 = i12;
                if (canApplyEditWithGaplessInfo(jArr2, j3, j13, jScaleLargeTimestamp2)) {
                    long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j13 - jArr2[0], track2.format.sampleRate, track2.timescale);
                    iArr3 = iArr2;
                    j5 = j3;
                    long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j3 - jScaleLargeTimestamp2, track2.format.sampleRate, track2.timescale);
                    if ((jScaleLargeTimestamp3 != 0 || jScaleLargeTimestamp4 != 0) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                        gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                        gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                        Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
                        return new TrackSampleTable(track, jArr, iArr, i11, jArr2, iArr3, Util.scaleLargeTimestamp(track2.editListDurations[0], 1000000L, track2.movieTimescale));
                    }
                }
                jArr4 = track2.editListDurations;
                if (jArr4.length != 1 && jArr4[0] == 0) {
                    long j14 = ((long[]) Assertions.checkNotNull(track2.editListMediaTimes))[0];
                    for (int i36 = 0; i36 < jArr2.length; i36++) {
                        jArr2[i36] = Util.scaleLargeTimestamp(jArr2[i36] - j14, 1000000L, track2.timescale);
                    }
                    return new TrackSampleTable(track, jArr, iArr, i11, jArr2, iArr3, Util.scaleLargeTimestamp(j5 - j14, 1000000L, track2.timescale));
                }
                if (track2.type == 1) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                iArr4 = new int[jArr4.length];
                iArr5 = new int[jArr4.length];
                jArr5 = (long[]) Assertions.checkNotNull(track2.editListMediaTimes);
                i20 = 0;
                z5 = false;
                i21 = 0;
                i22 = 0;
                while (true) {
                    jArr6 = track2.editListDurations;
                    if (i20 >= jArr6.length) {
                        break;
                    }
                    j8 = jArr5[i20];
                    if (j8 != -1) {
                        long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(jArr6[i20], track2.timescale, track2.movieTimescale);
                        iArr4[i20] = Util.binarySearchFloor(jArr2, j8, true, true);
                        iArr5[i20] = Util.binarySearchCeil(jArr2, j8 + jScaleLargeTimestamp5, z4, false);
                        while (iArr4[i20] < iArr5[i20] && (iArr3[iArr4[i20]] & 1) == 0) {
                            iArr4[i20] = iArr4[i20] + 1;
                        }
                        i21 += iArr5[i20] - iArr4[i20];
                        if (i22 != iArr4[i20]) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        z5 = z8 | z5;
                        i22 = iArr5[i20];
                    }
                    i20++;
                    jArr5 = jArr5;
                    i11 = i11;
                    jArr = jArr;
                    iArr = iArr;
                }
                jArr7 = jArr;
                iArr6 = iArr;
                i23 = i11;
                i24 = 0;
                if (i21 != i19) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z5 | z6;
                if (z7) {
                    jArr8 = new long[i21];
                } else {
                    jArr8 = jArr7;
                }
                if (z7) {
                    iArr7 = new int[i21];
                } else {
                    iArr7 = iArr6;
                }
                if (z7) {
                    i23 = 0;
                }
                if (z7) {
                    iArr8 = new int[i21];
                } else {
                    iArr8 = iArr3;
                }
                jArr9 = new long[i21];
                i25 = 0;
                j6 = 0;
                while (i24 < track2.editListDurations.length) {
                    j7 = track2.editListMediaTimes[i24];
                    i26 = iArr4[i24];
                    i27 = iArr5[i24];
                    int[] iArr14 = iArr5;
                    if (z7) {
                        int i37 = i27 - i26;
                        System.arraycopy(jArr7, i26, jArr8, i25, i37);
                        iArr9 = iArr6;
                        System.arraycopy(iArr9, i26, iArr7, i25, i37);
                        iArr10 = iArr3;
                        System.arraycopy(iArr10, i26, iArr8, i25, i37);
                    } else {
                        iArr9 = iArr6;
                        iArr10 = iArr3;
                    }
                    int i38 = i23;
                    while (i26 < i27) {
                        int[] iArr15 = iArr9;
                        int i39 = i24;
                        long[] jArr13 = jArr2;
                        long[] jArr14 = jArr8;
                        long j15 = j6;
                        jArr9[i25] = Util.scaleLargeTimestamp(j6, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(Math.max(0L, jArr2[i26] - j7), 1000000L, track2.timescale);
                        if (!z7 && iArr7[i25] > i38) {
                            i38 = iArr15[i26];
                        }
                        i25++;
                        i26++;
                        i24 = i39;
                        j6 = j15;
                        jArr2 = jArr13;
                        iArr9 = iArr15;
                        jArr8 = jArr14;
                    }
                    int[] iArr16 = iArr9;
                    int i40 = i24;
                    j6 += track2.editListDurations[i40];
                    i24 = i40 + 1;
                    iArr3 = iArr10;
                    jArr2 = jArr2;
                    iArr4 = iArr4;
                    iArr6 = iArr16;
                    jArr8 = jArr8;
                    i23 = i38;
                    iArr5 = iArr14;
                }
                return new TrackSampleTable(track, jArr8, iArr7, i23, jArr9, iArr8, Util.scaleLargeTimestamp(j6, 1000000L, track2.movieTimescale));
            }
            i19 = i12;
            iArr3 = iArr2;
            j5 = j3;
            jArr4 = track2.editListDurations;
            if (jArr4.length != 1) {
            }
            if (track2.type == 1) {
                z4 = true;
            } else {
                z4 = false;
            }
            iArr4 = new int[jArr4.length];
            iArr5 = new int[jArr4.length];
            jArr5 = (long[]) Assertions.checkNotNull(track2.editListMediaTimes);
            i20 = 0;
            z5 = false;
            i21 = 0;
            i22 = 0;
            while (true) {
                jArr6 = track2.editListDurations;
                if (i20 >= jArr6.length) {
                    break;
                    break;
                }
                j8 = jArr5[i20];
                if (j8 != -1) {
                    long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(jArr6[i20], track2.timescale, track2.movieTimescale);
                    iArr4[i20] = Util.binarySearchFloor(jArr2, j8, true, true);
                    iArr5[i20] = Util.binarySearchCeil(jArr2, j8 + jScaleLargeTimestamp6, z4, false);
                    while (iArr4[i20] < iArr5[i20]) {
                        iArr4[i20] = iArr4[i20] + 1;
                    }
                    i21 += iArr5[i20] - iArr4[i20];
                    if (i22 != iArr4[i20]) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z5 = z8 | z5;
                    i22 = iArr5[i20];
                }
                i20++;
                jArr5 = jArr5;
                i11 = i11;
                jArr = jArr;
                iArr = iArr;
            }
            jArr7 = jArr;
            iArr6 = iArr;
            i23 = i11;
            i24 = 0;
            if (i21 != i19) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z5 | z6;
            if (z7) {
                jArr8 = new long[i21];
            } else {
                jArr8 = jArr7;
            }
            if (z7) {
                iArr7 = new int[i21];
            } else {
                iArr7 = iArr6;
            }
            if (z7) {
                i23 = 0;
            }
            if (z7) {
                iArr8 = new int[i21];
            } else {
                iArr8 = iArr3;
            }
            jArr9 = new long[i21];
            i25 = 0;
            j6 = 0;
            while (i24 < track2.editListDurations.length) {
                j7 = track2.editListMediaTimes[i24];
                i26 = iArr4[i24];
                i27 = iArr5[i24];
                int[] iArr17 = iArr5;
                if (z7) {
                    int i310 = i27 - i26;
                    System.arraycopy(jArr7, i26, jArr8, i25, i310);
                    iArr9 = iArr6;
                    System.arraycopy(iArr9, i26, iArr7, i25, i310);
                    iArr10 = iArr3;
                    System.arraycopy(iArr10, i26, iArr8, i25, i310);
                } else {
                    iArr9 = iArr6;
                    iArr10 = iArr3;
                }
                int i311 = i23;
                while (i26 < i27) {
                    int[] iArr18 = iArr9;
                    int i312 = i24;
                    long[] jArr15 = jArr2;
                    long[] jArr16 = jArr8;
                    long j16 = j6;
                    jArr9[i25] = Util.scaleLargeTimestamp(j6, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(Math.max(0L, jArr2[i26] - j7), 1000000L, track2.timescale);
                    if (!z7) {
                    }
                    i25++;
                    i26++;
                    i24 = i312;
                    j6 = j16;
                    jArr2 = jArr15;
                    iArr9 = iArr18;
                    jArr8 = jArr16;
                }
                int[] iArr19 = iArr9;
                int i41 = i24;
                j6 += track2.editListDurations[i41];
                i24 = i41 + 1;
                iArr3 = iArr10;
                jArr2 = jArr2;
                iArr4 = iArr4;
                iArr6 = iArr19;
                jArr8 = jArr8;
                i23 = i311;
                iArr5 = iArr17;
            }
            return new TrackSampleTable(track, jArr8, iArr7, i23, jArr9, iArr8, Util.scaleLargeTimestamp(j6, 1000000L, track2.movieTimescale));
        }
        unsignedIntToInt2 = 0;
        unsignedIntToInt3 = -1;
        fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
        String str3 = track.format.sampleMimeType;
        if (fixedSampleSize == -1) {
            z2 = false;
        } else {
            z2 = false;
        }
        if (z2) {
            int i210 = chunkIterator.length;
            jArr10 = new long[i210];
            iArr11 = new int[i210];
            while (chunkIterator.moveNext()) {
                int i211 = chunkIterator.index;
                jArr10[i211] = chunkIterator.offset;
                iArr11[i211] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results resultsRechunk2 = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr10, iArr11, unsignedIntToInt9);
            long[] jArr17 = resultsRechunk2.offsets;
            int[] iArr110 = resultsRechunk2.sizes;
            i11 = resultsRechunk2.maximumSize;
            long[] jArr18 = resultsRechunk2.timestamps;
            int[] iArr111 = resultsRechunk2.flags;
            long j17 = resultsRechunk2.duration;
            i12 = sampleCount;
            jArr = jArr17;
            iArr = iArr110;
            jArr2 = jArr18;
            iArr2 = iArr111;
            j3 = j17;
            track2 = track;
        } else {
            jArrCopyOf = new long[sampleCount];
            iArrCopyOf = new int[sampleCount];
            jArrCopyOf2 = new long[sampleCount];
            iArrCopyOf2 = new int[sampleCount];
            unsignedIntToInt4 = unsignedIntToInt3;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            unsignedIntToInt5 = 0;
            j = 0;
            j2 = 0;
            i5 = unsignedIntToInt;
            i6 = unsignedIntToInt9;
            i7 = unsignedIntToInt8;
            while (true) {
                if (i < sampleCount) {
                    i8 = i7;
                    i9 = i4;
                    break;
                }
                j4 = j2;
                i13 = i4;
                zMoveNext = true;
                while (i13 == 0) {
                    zMoveNext = chunkIterator.moveNext();
                    if (zMoveNext) {
                        break;
                        break;
                    }
                    int i313 = i7;
                    long j18 = chunkIterator.offset;
                    i13 = chunkIterator.numSamples;
                    j4 = j18;
                    i7 = i313;
                    i6 = i6;
                    sampleCount = sampleCount;
                }
                i14 = sampleCount;
                i8 = i7;
                i15 = i6;
                if (!zMoveNext) {
                    Log.w(TAG, "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i);
                    sampleCount = i;
                    i9 = i13;
                    break;
                }
                if (parsableByteArray5 != null) {
                    while (unsignedIntToInt5 == 0) {
                        unsignedIntToInt5 = parsableByteArray5.readUnsignedIntToInt();
                        i3 = parsableByteArray5.readInt();
                        i5--;
                    }
                    unsignedIntToInt5--;
                }
                int i314 = i3;
                jArrCopyOf[i] = j4;
                iArrCopyOf[i] = stz2SampleSizeBox.readNextSampleSize();
                if (iArrCopyOf[i] > i2) {
                    i2 = iArrCopyOf[i];
                }
                jArrCopyOf2[i] = j + ((long) i314);
                if (parsableByteArray4 == null) {
                    i16 = 1;
                } else {
                    i16 = 0;
                }
                iArrCopyOf2[i] = i16;
                if (i == unsignedIntToInt4) {
                    iArrCopyOf2[i] = 1;
                    unsignedIntToInt2--;
                    if (unsignedIntToInt2 > 0) {
                        unsignedIntToInt4 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray4)).readUnsignedIntToInt() - 1;
                    }
                }
                int i315 = unsignedIntToInt4;
                j += (long) i15;
                unsignedIntToInt6 = i8 - 1;
                if (unsignedIntToInt6 == 0) {
                    i17 = i15;
                    i18 = unsignedIntToInt7;
                } else {
                    i17 = i15;
                    i18 = unsignedIntToInt7;
                }
                int i316 = unsignedIntToInt6;
                long j19 = j4 + ((long) iArrCopyOf[i]);
                i4 = i13 - 1;
                i++;
                j2 = j19;
                unsignedIntToInt4 = i315;
                i6 = i17;
                sampleCount = i14;
                i3 = i314;
                int i317 = i18;
                i7 = i316;
                unsignedIntToInt7 = i317;
            }
            long j110 = j + ((long) i3);
            if (parsableByteArray5 != null) {
                z3 = true;
                break;
            }
            while (true) {
                if (i5 > 0) {
                    z3 = true;
                    break;
                }
                if (parsableByteArray5.readUnsignedIntToInt() != 0) {
                    z3 = false;
                    break;
                }
                parsableByteArray5.readInt();
                i5--;
            }
            if (unsignedIntToInt2 != 0) {
                i10 = unsignedIntToInt5;
                track2 = track;
                int i318 = track2.id;
                if (z3) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                StringBuilder sb2 = new StringBuilder(str.length() + 262);
                sb2.append("Inconsistent stbl box for track ");
                sb2.append(i318);
                sb2.append(": remainingSynchronizationSamples ");
                sb2.append(unsignedIntToInt2);
                sb2.append(", remainingSamplesAtTimestampDelta ");
                sb2.append(i8);
                sb2.append(", remainingSamplesInChunk ");
                sb2.append(i9);
                sb2.append(", remainingTimestampDeltaChanges ");
                sb2.append(unsignedIntToInt7);
                sb2.append(", remainingSamplesAtTimestampOffset ");
                sb2.append(i10);
                sb2.append(str);
                Log.w(TAG, sb2.toString());
            } else {
                i10 = unsignedIntToInt5;
                track2 = track;
                int i319 = track2.id;
                if (z3) {
                    str = ", ctts invalid";
                } else {
                    str = "";
                }
                StringBuilder sb3 = new StringBuilder(str.length() + 262);
                sb3.append("Inconsistent stbl box for track ");
                sb3.append(i319);
                sb3.append(": remainingSynchronizationSamples ");
                sb3.append(unsignedIntToInt2);
                sb3.append(", remainingSamplesAtTimestampDelta ");
                sb3.append(i8);
                sb3.append(", remainingSamplesInChunk ");
                sb3.append(i9);
                sb3.append(", remainingTimestampDeltaChanges ");
                sb3.append(unsignedIntToInt7);
                sb3.append(", remainingSamplesAtTimestampOffset ");
                sb3.append(i10);
                sb3.append(str);
                Log.w(TAG, sb3.toString());
            }
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            jArr2 = jArrCopyOf2;
            i11 = i2;
            i12 = sampleCount;
            j3 = j110;
            iArr2 = iArrCopyOf2;
        }
        jScaleLargeTimestamp = Util.scaleLargeTimestamp(j3, 1000000L, track2.timescale);
        jArr3 = track2.editListDurations;
        if (jArr3 == null) {
            Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
            return new TrackSampleTable(track, jArr, iArr, i11, jArr2, iArr2, jScaleLargeTimestamp);
        }
        if (jArr3.length != 1) {
            i19 = i12;
            iArr3 = iArr2;
            j5 = j3;
        } else {
            i19 = i12;
            iArr3 = iArr2;
            j5 = j3;
        }
        jArr4 = track2.editListDurations;
        if (jArr4.length != 1) {
        }
        if (track2.type == 1) {
            z4 = true;
        } else {
            z4 = false;
        }
        iArr4 = new int[jArr4.length];
        iArr5 = new int[jArr4.length];
        jArr5 = (long[]) Assertions.checkNotNull(track2.editListMediaTimes);
        i20 = 0;
        z5 = false;
        i21 = 0;
        i22 = 0;
        while (true) {
            jArr6 = track2.editListDurations;
            if (i20 >= jArr6.length) {
                break;
                break;
            }
            j8 = jArr5[i20];
            if (j8 != -1) {
                long jScaleLargeTimestamp7 = Util.scaleLargeTimestamp(jArr6[i20], track2.timescale, track2.movieTimescale);
                iArr4[i20] = Util.binarySearchFloor(jArr2, j8, true, true);
                iArr5[i20] = Util.binarySearchCeil(jArr2, j8 + jScaleLargeTimestamp7, z4, false);
                while (iArr4[i20] < iArr5[i20]) {
                    iArr4[i20] = iArr4[i20] + 1;
                }
                i21 += iArr5[i20] - iArr4[i20];
                if (i22 != iArr4[i20]) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z5 = z8 | z5;
                i22 = iArr5[i20];
            }
            i20++;
            jArr5 = jArr5;
            i11 = i11;
            jArr = jArr;
            iArr = iArr;
        }
        jArr7 = jArr;
        iArr6 = iArr;
        i23 = i11;
        i24 = 0;
        if (i21 != i19) {
            z6 = true;
        } else {
            z6 = false;
        }
        z7 = z5 | z6;
        if (z7) {
            jArr8 = new long[i21];
        } else {
            jArr8 = jArr7;
        }
        if (z7) {
            iArr7 = new int[i21];
        } else {
            iArr7 = iArr6;
        }
        if (z7) {
            i23 = 0;
        }
        if (z7) {
            iArr8 = new int[i21];
        } else {
            iArr8 = iArr3;
        }
        jArr9 = new long[i21];
        i25 = 0;
        j6 = 0;
        while (i24 < track2.editListDurations.length) {
            j7 = track2.editListMediaTimes[i24];
            i26 = iArr4[i24];
            i27 = iArr5[i24];
            int[] iArr112 = iArr5;
            if (z7) {
                int i3110 = i27 - i26;
                System.arraycopy(jArr7, i26, jArr8, i25, i3110);
                iArr9 = iArr6;
                System.arraycopy(iArr9, i26, iArr7, i25, i3110);
                iArr10 = iArr3;
                System.arraycopy(iArr10, i26, iArr8, i25, i3110);
            } else {
                iArr9 = iArr6;
                iArr10 = iArr3;
            }
            int i3111 = i23;
            while (i26 < i27) {
                int[] iArr113 = iArr9;
                int i3112 = i24;
                long[] jArr19 = jArr2;
                long[] jArr110 = jArr8;
                long j111 = j6;
                jArr9[i25] = Util.scaleLargeTimestamp(j6, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(Math.max(0L, jArr2[i26] - j7), 1000000L, track2.timescale);
                if (!z7) {
                }
                i25++;
                i26++;
                i24 = i3112;
                j6 = j111;
                jArr2 = jArr19;
                iArr9 = iArr113;
                jArr8 = jArr110;
            }
            int[] iArr114 = iArr9;
            int i42 = i24;
            j6 += track2.editListDurations[i42];
            i24 = i42 + 1;
            iArr3 = iArr10;
            jArr2 = jArr2;
            iArr4 = iArr4;
            iArr6 = iArr114;
            jArr8 = jArr8;
            i23 = i3111;
            iArr5 = iArr112;
        }
        return new TrackSampleTable(track, jArr8, iArr7, i23, jArr9, iArr8, Util.scaleLargeTimestamp(j6, 1000000L, track2.movieTimescale));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        int i3;
        parsableByteArray.setPosition(12);
        int i4 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            int position = parsableByteArray.getPosition();
            int i6 = parsableByteArray.readInt();
            Assertions.checkState(i6 > 0, "childAtomSize should be positive");
            int i7 = parsableByteArray.readInt();
            if (i7 == 1635148593 || i7 == 1635148595 || i7 == 1701733238 || i7 == 1831958048 || i7 == 1836070006 || i7 == 1752589105 || i7 == 1751479857 || i7 == 1932670515 || i7 == 1987063864 || i7 == 1987063865 || i7 == 1635135537 || i7 == 1685479798 || i7 == 1685479729 || i7 == 1685481573 || i7 == 1685481521) {
                i3 = position;
                parseVideoSampleEntry(parsableByteArray, i7, i3, i6, i, i2, drmInitData, stsdData, i5);
            } else if (i7 == 1836069985 || i7 == 1701733217 || i7 == 1633889587 || i7 == 1700998451 || i7 == 1633889588 || i7 == 1685353315 || i7 == 1685353317 || i7 == 1685353320 || i7 == 1685353324 || i7 == 1935764850 || i7 == 1935767394 || i7 == 1819304813 || i7 == 1936684916 || i7 == 1953984371 || i7 == 778924082 || i7 == 778924083 || i7 == 1634492771 || i7 == 1634492791 || i7 == 1970037111 || i7 == 1332770163 || i7 == 1716281667) {
                i3 = position;
                parseAudioSampleEntry(parsableByteArray, i7, position, i6, i, str, z, drmInitData, stsdData, i5);
            } else {
                if (i7 == 1414810956 || i7 == 1954034535 || i7 == 2004251764 || i7 == 1937010800 || i7 == 1664495672) {
                    parseTextSampleEntry(parsableByteArray, i7, position, i6, i, str, stsdData);
                } else if (i7 == 1835365492) {
                    parseMetaDataSampleEntry(parsableByteArray, i7, position, i, stsdData);
                } else if (i7 == 1667329389) {
                    stsdData.format = new Format.Builder().setId(i).setSampleMimeType(MimeTypes.APPLICATION_CAMERA_MOTION).build();
                }
                i3 = position;
            }
            parsableByteArray.setPosition(i3 + i6);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 8 + 8);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = (i3 - 8) - 8;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableListOf = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new IllegalStateException();
                }
                stsdData.requiredSampleTransformation = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableListOf).build();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        boolean z;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = fullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= i2) {
                z = true;
                break;
            }
            if (parsableByteArray.getData()[position + i4] != -1) {
                z = false;
                break;
            }
            i4++;
        }
        long j = C.TIME_UNSET;
        if (z) {
            parsableByteArray.skipBytes(i2);
        } else {
            long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (unsignedInt != 0) {
                j = unsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && i7 == -65536 && i8 == 0) {
            i3 = 90;
        } else if (i5 == 0 && i6 == -65536 && i7 == 65536 && i8 == 0) {
            i3 = 270;
        } else if (i5 == -65536 && i6 == 0 && i7 == 0 && i8 == -65536) {
            i3 = 180;
        }
        return new TkhdData(i, j, i3);
    }

    private static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType;
        Pair<long[], long[]> edts;
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.checkNotNull(containerAtom.getContainerAtomOfType(Atom.TYPE_mdia));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(Atom.TYPE_hdlr))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd))).data);
        long jScaleLargeTimestamp = C.TIME_UNSET;
        long j2 = j == C.TIME_UNSET ? tkhd.duration : j;
        long mvhd = parseMvhd(leafAtom.data);
        if (j2 != C.TIME_UNSET) {
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(j2, 1000000L, mvhd);
        }
        long j3 = jScaleLargeTimestamp;
        Atom.ContainerAtom containerAtom3 = (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(Atom.TYPE_minf))).getContainerAtomOfType(Atom.TYPE_stbl));
        Pair<Long, String> mdhd = parseMdhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(Atom.TYPE_mdhd))).data);
        StsdData stsd = parseStsd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom3.getLeafAtomOfType(Atom.TYPE_stsd))).data, tkhd.id, tkhd.rotationDegrees, (String) mdhd.second, drmInitData, z2);
        if (z || (containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_edts)) == null || (edts = parseEdts(containerAtomOfType)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        return new Track(tkhd.id, trackTypeForHdlr, ((Long) mdhd.first).longValue(), mvhd, j3, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static List<TrackSampleTable> parseTraks(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, long j, DrmInitData drmInitData, boolean z, boolean z2, Function<Track, Track> function) throws ParserException {
        Track trackApply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (trackApply = function.apply(parseTrak(containerAtom2, (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(trackApply, (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia))).getContainerAtomOfType(Atom.TYPE_minf))).getContainerAtomOfType(Atom.TYPE_stbl)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static Pair<Metadata, Metadata> parseUdta(Atom.LeafAtom leafAtom) {
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        Metadata udtaMeta = null;
        Metadata smta = null;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            int i2 = parsableByteArray.readInt();
            if (i2 == 1835365473) {
                parsableByteArray.setPosition(position);
                udtaMeta = parseUdtaMeta(parsableByteArray, position + i);
            } else if (i2 == 1936553057) {
                parsableByteArray.setPosition(position);
                smta = parseSmta(parsableByteArray, position + i);
            }
            parsableByteArray.setPosition(position + i);
        }
        return Pair.create(udtaMeta, smta);
    }

    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaAtomHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i2);
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        DrmInitData drmInitData2;
        List<byte[]> list;
        String str;
        List<byte[]> list2;
        String str2;
        String str3;
        int i7 = i2;
        int i8 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i7 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        String str4 = null;
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i7, i8);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        List<byte[]> listOf = null;
        String str5 = iIntValue == 1831958048 ? "video/mpeg" : null;
        int i9 = -1;
        float paspFromParent = 1.0f;
        boolean z = false;
        byte[] projFromParent = null;
        while (true) {
            if (position - i7 >= i8) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                list = listOf;
                break;
            }
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            drmInitData2 = drmInitDataCopyWithSchemeType;
            int i10 = parsableByteArray.readInt();
            if (i10 == 0) {
                list = listOf;
                if (parsableByteArray.getPosition() - i7 == i8) {
                    break;
                }
            } else {
                list = listOf;
            }
            Assertions.checkState(i10 > 0, "childAtomSize should be positive");
            int i11 = parsableByteArray.readInt();
            if (i11 == 1635148611) {
                Assertions.checkState(str5 == null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                list2 = avcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthAspectRatio;
                }
                str2 = avcConfig.codecs;
                str3 = "video/avc";
            } else {
                if (i11 == 1752589123) {
                    Assertions.checkState(str5 == null);
                    parsableByteArray.setPosition(position2 + 8);
                    HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                    list2 = hevcConfig.initializationData;
                    stsdData.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    str2 = hevcConfig.codecs;
                    str3 = MimeTypes.VIDEO_H265;
                } else {
                    if (i11 == 1685480259 || i11 == 1685485123) {
                        DolbyVisionConfig dolbyVisionConfig = DolbyVisionConfig.parse(parsableByteArray);
                        if (dolbyVisionConfig != null) {
                            str4 = dolbyVisionConfig.codecs;
                            str5 = MimeTypes.VIDEO_DOLBY_VISION;
                        }
                    } else {
                        if (i11 == 1987076931) {
                            Assertions.checkState(str5 == null);
                            str = iIntValue == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                        } else if (i11 == 1635135811) {
                            Assertions.checkState(str5 == null);
                            str = MimeTypes.VIDEO_AV1;
                        } else if (i11 == 1681012275) {
                            Assertions.checkState(str5 == null);
                            str = MimeTypes.VIDEO_H263;
                        } else if (i11 == 1702061171) {
                            Assertions.checkState(str5 == null);
                            Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                            String str6 = (String) esdsFromParent.first;
                            byte[] bArr = (byte[]) esdsFromParent.second;
                            listOf = bArr != null ? ImmutableList.of(bArr) : list;
                            str5 = str6;
                        } else if (i11 == 1885434736) {
                            listOf = list;
                            paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                            z = true;
                        } else if (i11 == 1937126244) {
                            listOf = list;
                            projFromParent = parseProjFromParent(parsableByteArray, position2, i10);
                        } else if (i11 == 1936995172) {
                            int unsignedByte = parsableByteArray.readUnsignedByte();
                            parsableByteArray.skipBytes(3);
                            if (unsignedByte == 0) {
                                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                                if (unsignedByte2 == 0) {
                                    listOf = list;
                                    i9 = 0;
                                } else if (unsignedByte2 == 1) {
                                    listOf = list;
                                    i9 = 1;
                                } else if (unsignedByte2 == 2) {
                                    listOf = list;
                                    i9 = 2;
                                } else if (unsignedByte2 == 3) {
                                    listOf = list;
                                    i9 = 3;
                                }
                            }
                        }
                        listOf = list;
                        str5 = str;
                    }
                    listOf = list;
                }
                position += i10;
                i7 = i2;
                i8 = i3;
                drmInitDataCopyWithSchemeType = drmInitData2;
            }
            listOf = list2;
            str5 = str3;
            str4 = str2;
            position += i10;
            i7 = i2;
            i8 = i3;
            drmInitDataCopyWithSchemeType = drmInitData2;
        }
        if (str5 == null) {
            return;
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str5).setCodecs(str4).setWidth(unsignedShort).setHeight(unsignedShort2).setPixelWidthHeightRatio(paspFromParent).setRotationDegrees(i5).setProjectionData(projFromParent).setStereoMode(i9).setInitializationData(list).setDrmInitData(drmInitData2).build();
    }
}

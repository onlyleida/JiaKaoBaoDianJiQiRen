package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class Code128Reader extends OneDReader {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    static final int[][] CODE_PATTERNS = null;
    private static final int CODE_SHIFT = 98;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final float MAX_AVG_VARIANCE = 0.25f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7f;

    static {
        CODE_PATTERNS = new int[][]{new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};
    }

    public Code128Reader() {
    }

    private static int decodeCode(BitArray r3, int[] r4, int r5) throws NotFoundException {
        OneDReader.recordPattern(r3, r5, r4);
        float r6 = 0.25f;
        int r7 = -1;
        int r0 = 0;
    L3:
        int[][] r1 = CODE_PATTERNS;
        if (r0 >= r1.length) goto L9;
        float r2 = OneDReader.patternMatchVariance(r4, r1[r0], 0.7f);
        if (r2 >= r6) goto L8;
        r7 = r0;
        r6 = r2;
    L8:
        r0 = r0 + 1;
        goto L3
    L9:
        if (r7 < 0) goto L12;
        return r7;
    L12:
        throw NotFoundException.getNotFoundInstance();
    }

    private static int[] findStartPattern(BitArray r14) throws NotFoundException {
        int r0 = r14.getSize();
        int r2 = r14.getNextSet(0);
        int[] r3 = new int[6];
        int r4 = r2;
        boolean r5 = false;
        int r6 = 0;
    L3:
        if (r2 >= r0) goto L27;
        if ((r14.get(r2) ^ r5) == false) goto L8;
        r3[r6] = r3[r6] + 1;
    L25:
        r2 = r2 + 1;
        goto L3
    L8:
        if (r6 != 5) goto L23;
        float r9 = 0.25f;
        int r10 = 103;
        int r11 = -1;
    L11:
        if (r10 > 105) goto L17;
        float r12 = OneDReader.patternMatchVariance(r3, CODE_PATTERNS[r10], 0.7f);
        if (r12 >= r9) goto L15;
        r11 = r10;
        r9 = r12;
    L15:
        r10 = r10 + 1;
        goto L11
    L17:
        if (r11 >= 0) goto L19;
    L22:
        r4 = r4 + (r3[0] + r3[1]);
        System.arraycopy(r3, 2, r3, 0, 4);
        r3[4] = 0;
        r3[5] = 0;
        r6 = r6 - 1;
    L24:
        r3[r6] = 1;
        r5 = !r5;
        goto L25
    L19:
        if (r14.isRange(Math.max(0, r4 - ((r2 - r4) / 2)), r4, false) == false) goto L22;
        return new int[]{r4, r2, r11};
    L23:
        r6 = r6 + 1;
        goto L24
    L27:
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int r25, BitArray r26, Map<DecodeHintType, ?> r27) throws NotFoundException, FormatException, ChecksumException {
        boolean r3 = false;
        if (r27 != null) goto L5;
    L7:
        boolean r1 = false;
    L8:
        int[] r4 = findStartPattern(r26);
        int r6 = r4[2];
        ArrayList r7 = new ArrayList(20);
        r7.add(Byte.valueOf((byte) r6));
        switch(r6) {
            case 103: goto L14;
            case 104: goto L13;
            case 105: goto L12;
            default: goto L11;
        };
    L12:
        char r12 = 'c';
    L15:
        StringBuilder r13 = new StringBuilder(20);
        int r15 = 6;
        int[] r2 = new int[6];
        boolean r9 = false;
        boolean r16 = false;
        boolean r17 = true;
        boolean r18 = false;
        int r19 = 0;
        int r20 = 0;
        int r21 = 0;
        char r23 = r12;
        int r14 = r4[0];
        int r8 = r4[1];
        char r110 = r23;
    L16:
        if (r16 == true) goto L116;
        int r111 = decodeCode(r26, r2, r8);
        r7.add(Byte.valueOf((byte) r111));
        if (r111 == 106) goto L20;
        r17 = true;
    L20:
        if (r111 == 106) goto L22;
        r20 = r20 + 1;
        r6 = r6 + (r20 * r111);
    L22:
        int r22 = r8;
        int r11 = 0;
    L23:
        if (r11 >= r15) goto L25;
        r22 = r22 + r2[r11];
        r11 = r11 + 1;
        goto L23
    L25:
        switch(r111) {
            case 103: goto L30;
            case 104: goto L30;
            case 105: goto L30;
            default: goto L27;
        };
    L27:
        switch(r110) {
            case 99: goto L89;
            case 100: goto L59;
            case 101: goto L32;
            default: goto L109;
        };
    L59:
        if (r111 >= 96) goto L64;
        if (r9 != r3) goto L62;
        r13.append((char) (r111 + 32));
    L63:
        boolean r5 = false;
        r9 = false;
    L111:
        if (r18 == false) goto L115;
        if (r110 != 'e') goto L114;
        r110 = 'd';
        goto L115
    L114:
        r110 = 'e';
    L115:
        r18 = r5;
        r15 = 6;
        r14 = r8;
        r8 = r22;
        r21 = r19;
        r19 = r111;
        goto L16
    L62:
        r13.append((char) ((r111 + 32) + 128));
        goto L63
    L64:
        if (r111 == 106) goto L66;
        r17 = false;
    L66:
        if (r111 == 106) goto L85;
        switch(r111) {
            case 96: goto L86;
            case 97: goto L86;
            case 98: goto L83;
            case 99: goto L82;
            case 100: goto L75;
            case 101: goto L74;
            case 102: goto L69;
            default: goto L86;
        };
    L69:
        if (r1 == false) goto L86;
        if (r13.length() != 0) goto L73;
        r13.append("]C1");
        goto L86
    L73:
        r13.append(29);
        goto L86
    L74:
        r5 = false;
    L105:
        r110 = 'e';
        goto L111
    L75:
        if (r3 == true) goto L78;
        if (r9 == false) goto L78;
    L77:
        r3 = true;
    L78:
        if (r3 == false) goto L81;
        if (r9 == false) goto L81;
    L80:
        r3 = false;
    L81:
        r5 = false;
        r9 = true;
    L82:
        r5 = false;
        r110 = 'c';
        goto L111
    L83:
        r5 = true;
    L86:
        r5 = false;
    L85:
        r16 = true;
    L109:
        r5 = false;
        goto L111
    L32:
        if (r111 >= 64) goto L36;
        if (r9 != r3) goto L35;
        r13.append((char) (r111 + 32));
        goto L63
    L35:
        r13.append((char) ((r111 + 32) + 128));
        goto L63
    L36:
        if (r111 >= 96) goto L40;
        if (r9 != r3) goto L39;
        r13.append((char) (r111 - 64));
        goto L63
    L39:
        r13.append((char) (r111 + 64));
        goto L63
    L40:
        if (r111 == 106) goto L42;
        r17 = false;
    L42:
        if (r111 == 106) goto L85;
        switch(r111) {
            case 96: goto L86;
            case 97: goto L86;
            case 98: goto L57;
            case 99: goto L82;
            case 100: goto L56;
            case 101: goto L50;
            case 102: goto L45;
            default: goto L86;
        };
    L45:
        if (r1 == false) goto L86;
        if (r13.length() != 0) goto L49;
        r13.append("]C1");
        goto L86
    L49:
        r13.append(29);
        goto L86
    L50:
        if (r3 == true) goto L53;
        if (r9 == true) goto L77;
    L53:
        if (r3 == false) goto L81;
        if (r9 == false) goto L81;
    L56:
        r5 = false;
    L107:
        r110 = 'd';
        goto L111
    L57:
        r5 = true;
        goto L107
    L89:
        if (r111 < 100) goto L91;
        if (r111 == 106) goto L96;
        r17 = false;
    L96:
        if (r111 == 106) goto L108;
        switch(r111) {
            case 100: goto L106;
            case 101: goto L104;
            case 102: goto L99;
            default: goto L109;
        };
    L99:
        if (r1 == false) goto L109;
        if (r13.length() != 0) goto L103;
        r13.append("]C1");
        goto L109
    L103:
        r13.append(29);
        goto L109
    L104:
        r5 = false;
        goto L105
    L106:
        r5 = false;
        goto L107
    L108:
        r5 = false;
        r16 = true;
        goto L111
    L91:
        if (r111 >= 10) goto L93;
        r13.append('0');
    L93:
        r13.append(r111);
        goto L109
    L30:
        throw FormatException.getFormatInstance();
    L116:
        int r10 = r8 - r14;
        int r24 = r26.getNextUnset(r8);
        if (r26.isRange(r24, Math.min(r26.getSize(), ((r24 - r14) / 2) + r24), false) == false) goto L138;
        int r28 = r21;
        if (((r6 - (r20 * r28)) % 103) != r28) goto L136;
        int r0 = r13.length();
        if (r0 == 0) goto L134;
        if (r0 <= 0) goto L128;
        if (r17 == false) goto L128;
        if (r110 != 'c') goto L127;
        r13.delete(r0 - 2, r0);
        goto L128
    L127:
        r13.delete(r0 - 1, r0);
    L128:
        float r29 = (r4[1] + r4[0]) / 2.0f;
        float r30 = r14 + (r10 / 2.0f);
        int r31 = r7.size();
        byte[] r32 = new byte[r31];
        int r33 = 0;
    L129:
        if (r33 >= r31) goto L131;
        r32[r33] = ((Byte) r7.get(r33)).byteValue();
        r33 = r33 + 1;
        goto L129
    L131:
        float r34 = r25;
        return new Result(r13.toString(), r32, new ResultPoint[]{new ResultPoint(r29, r34), new ResultPoint(r30, r34)}, BarcodeFormat.CODE_128);
    L134:
        throw NotFoundException.getNotFoundInstance();
    L136:
        throw ChecksumException.getChecksumInstance();
    L138:
        throw NotFoundException.getNotFoundInstance();
    L13:
        r12 = 'd';
        goto L15
    L14:
        r12 = 'e';
        goto L15
    L11:
        throw FormatException.getFormatInstance();
    L5:
        if (r27.containsKey(DecodeHintType.ASSUME_GS1) == false) goto L7;
        r1 = true;
        goto L8
    }
}

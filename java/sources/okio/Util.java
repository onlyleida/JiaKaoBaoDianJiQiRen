package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: okio.-Util, reason: invalid class name */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u000b\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\b\u001a\u00020\n*\u00020\nH\u0000¢\u0006\u0004\b\b\u0010\u000b\u001a\u0013\u0010\b\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\b\u0010\f\u001a\u001c\u0010\u000f\u001a\u00020\n*\u00020\r2\u0006\u0010\u000e\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001c\u0010\u0011\u001a\u00020\n*\u00020\r2\u0006\u0010\u000e\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0011\u0010\u0010\u001a\u001c\u0010\u0012\u001a\u00020\n*\u00020\r2\u0006\u0010\u000e\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0012\u0010\u0010\u001a\u001c\u0010\u0012\u001a\u00020\u0000*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0000H\u0080\f¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001c\u0010\u0012\u001a\u00020\u0000*\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0000H\u0080\f¢\u0006\u0004\b\u0012\u0010\u0014\u001a \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\nH\u0080\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0000H\u0080\b¢\u0006\u0004\b\u0017\u0010\u0014\u001a7\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"", "size", "offset", "byteCount", "Lkotlin/v;", "checkOffsetAndCount", "(JJJ)V", "", "reverseBytes", "(S)S", "", "(I)I", "(J)J", "", "other", "shr", "(BI)I", "shl", "and", "(BJ)J", "(IJ)J", "a", "b", "minOf", "(JI)J", "", "aOffset", "bOffset", "", "arrayRangeEquals", "([BI[BII)Z", "jvm"}, k = 2, mv = {1, 1, 15})
public final class Util {
    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final long and(byte b, long j) {
        return ((long) b) & j;
    }

    public static final long and(int i, long j) {
        return ((long) i) & j;
    }

    public static final boolean arrayRangeEquals(byte[] a2, int i, byte[] b, int i2, int i3) {
        r.f(a2, "a");
        r.f(b, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a2[i4 + i] != b[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final long minOf(long j, int i) {
        return Math.min(j, i);
    }

    public static final int reverseBytes(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final long reverseBytes(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final short reverseBytes(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    public static final int shl(byte b, int i) {
        return b << i;
    }

    public static final int shr(byte b, int i) {
        return b >> i;
    }

    public static final long minOf(int i, long j) {
        return Math.min(i, j);
    }
}

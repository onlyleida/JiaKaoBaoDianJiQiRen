package okio;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0011\u001a'\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0080\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a8\u0010\u0013\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a8\u0010\u0016\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u0016\u0010\u0017\u001a8\u0010\u0019\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u0019\u0010\u0017\u001a8\u0010\u001a\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a8\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u001c\u0010\u001b\u001a8\u0010\u001d\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\b¢\u0006\u0004\b\u001d\u0010\u001b\"\u0016\u0010\u001e\u001a\u00020\u00188\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f\"\u0016\u0010 \u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b \u0010!\"\u0016\u0010\"\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\"\u0010!\"\u0016\u0010#\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b#\u0010!\"\u0016\u0010$\u001a\u00020\f8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b$\u0010%\"\u0016\u0010&\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b&\u0010!\"\u0016\u0010'\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b'\u0010!\"\u0016\u0010(\u001a\u00020\u00018\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b(\u0010!¨\u0006)"}, d2 = {"", "", "beginIndex", "endIndex", "", "size", "(Ljava/lang/String;II)J", "utf8Size", "codePoint", "", "isIsoControl", "(I)Z", "", "byte", "isUtf8Continuation", "(B)Z", "Lkotlin/Function1;", "Lkotlin/v;", "yield", "processUtf8Bytes", "(Ljava/lang/String;IILkotlin/jvm/b/l;)V", "", "processUtf8CodePoints", "([BIILkotlin/jvm/b/l;)V", "", "processUtf16Chars", "process2Utf8Bytes", "([BIILkotlin/jvm/b/l;)I", "process3Utf8Bytes", "process4Utf8Bytes", "REPLACEMENT_CHARACTER", "C", "MASK_2BYTES", "I", "HIGH_SURROGATE_HEADER", "REPLACEMENT_CODE_POINT", "REPLACEMENT_BYTE", "B", "LOG_SURROGATE_HEADER", "MASK_3BYTES", "MASK_4BYTES", "jvm"}, k = 2, mv = {1, 1, 15})
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i) {
        return (i >= 0 && 31 >= i) || (127 <= i && 159 >= i);
    }

    public static final boolean isUtf8Continuation(byte b) {
        return (b & 192) == 128;
    }

    public static final int process2Utf8Bytes(byte[] receiver, int i, int i2, Function1<? super Integer, v> yield) {
        r.f(receiver, "$receiver");
        r.f(yield, "yield");
        int i3 = i + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b = receiver[i];
        byte b2 = receiver[i3];
        if (!((b2 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 1;
        }
        int i4 = (b2 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b << 6);
        if (i4 < 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i4));
        return 2;
    }

    public static final int process3Utf8Bytes(byte[] receiver, int i, int i2, Function1<? super Integer, v> yield) {
        r.f(receiver, "$receiver");
        r.f(yield, "yield");
        int i3 = i + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(numValueOf);
            int i4 = i + 1;
            if (i2 > i4) {
                if ((receiver[i4] & 192) == 128) {
                    return 2;
                }
            }
            return 1;
        }
        byte b = receiver[i];
        byte b2 = receiver[i + 1];
        if (!((b2 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b3 = receiver[i3];
        if (!((b3 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 2;
        }
        int i5 = ((b3 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b2 << 6)) ^ (b << Ascii.FF);
        if (i5 < 2048) {
            yield.invoke(numValueOf);
            return 3;
        }
        if (55296 <= i5 && 57343 >= i5) {
            yield.invoke(numValueOf);
            return 3;
        }
        yield.invoke(Integer.valueOf(i5));
        return 3;
    }

    public static final int process4Utf8Bytes(byte[] receiver, int i, int i2, Function1<? super Integer, v> yield) {
        r.f(receiver, "$receiver");
        r.f(yield, "yield");
        int i3 = i + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            yield.invoke(numValueOf);
            int i4 = i + 1;
            if (i2 > i4) {
                if ((receiver[i4] & 192) == 128) {
                    int i5 = i + 2;
                    if (i2 > i5) {
                        if ((receiver[i5] & 192) == 128) {
                            return 3;
                        }
                    }
                    return 2;
                }
            }
            return 1;
        }
        byte b = receiver[i];
        byte b2 = receiver[i + 1];
        if (!((b2 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b3 = receiver[i + 2];
        if (!((b3 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 2;
        }
        byte b4 = receiver[i3];
        if (!((b4 & 192) == 128)) {
            yield.invoke(numValueOf);
            return 3;
        }
        int i6 = (((b4 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b3 << 6)) ^ (b2 << Ascii.FF)) ^ (b << Ascii.DC2);
        if (i6 > 1114111) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i6 && 57343 >= i6) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (i6 < 65536) {
            yield.invoke(numValueOf);
            return 4;
        }
        yield.invoke(Integer.valueOf(i6));
        return 4;
    }

    public static final void processUtf16Chars(byte[] receiver, int i, int i2, Function1<? super Character, v> yield) {
        int i3;
        r.f(receiver, "$receiver");
        r.f(yield, "yield");
        int i4 = i;
        while (i4 < i2) {
            byte b = receiver[i4];
            if (b >= 0) {
                yield.invoke(Character.valueOf((char) b));
                i4++;
                while (i4 < i2 && receiver[i4] >= 0) {
                    yield.invoke(Character.valueOf((char) receiver[i4]));
                    i4++;
                }
            } else {
                if ((b >> 5) == -2) {
                    int i5 = i4 + 1;
                    if (i2 > i5) {
                        byte b2 = receiver[i4];
                        byte b3 = receiver[i5];
                        if ((b3 & 192) == 128) {
                            int i6 = (b3 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b2 << 6);
                            yield.invoke(Character.valueOf(i6 < 128 ? (char) REPLACEMENT_CODE_POINT : (char) i6));
                            i3 = 2;
                            i4 += i3;
                        }
                    }
                    yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    i3 = 1;
                    i4 += i3;
                } else if ((b >> 4) == -2) {
                    int i7 = i4 + 2;
                    if (i2 <= i7) {
                        yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        int i8 = i4 + 1;
                        if (i2 > i8) {
                            if ((receiver[i8] & 192) == 128) {
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b4 = receiver[i4];
                        byte b5 = receiver[i4 + 1];
                        if ((b5 & 192) == 128) {
                            byte b6 = receiver[i7];
                            if ((b6 & 192) == 128) {
                                int i9 = ((b6 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b5 << 6)) ^ (b4 << Ascii.FF);
                                yield.invoke(Character.valueOf((i9 >= 2048 && (55296 > i9 || 57343 < i9)) ? (char) i9 : (char) REPLACEMENT_CODE_POINT));
                                i3 = 3;
                            } else {
                                yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            i3 = 1;
                        }
                    }
                    i4 += i3;
                } else if ((b >> 3) == -2) {
                    int i10 = i4 + 3;
                    if (i2 <= i10) {
                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                        int i11 = i4 + 1;
                        if (i2 > i11) {
                            if ((receiver[i11] & 192) == 128) {
                                int i12 = i4 + 2;
                                if (i2 > i12) {
                                    if ((receiver[i12] & 192) == 128) {
                                        i3 = 3;
                                    }
                                }
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b7 = receiver[i4];
                        byte b8 = receiver[i4 + 1];
                        if ((b8 & 192) == 128) {
                            byte b9 = receiver[i4 + 2];
                            if ((b9 & 192) == 128) {
                                byte b10 = receiver[i10];
                                if ((b10 & 192) == 128) {
                                    int i13 = (((b10 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b9 << 6)) ^ (b8 << Ascii.FF)) ^ (b7 << Ascii.DC2);
                                    if (i13 <= 1114111 && ((55296 > i13 || 57343 < i13) && i13 >= 65536 && i13 != 65533)) {
                                        yield.invoke(Character.valueOf((char) ((i13 >>> 10) + HIGH_SURROGATE_HEADER)));
                                        yield.invoke(Character.valueOf((char) ((i13 & 1023) + LOG_SURROGATE_HEADER)));
                                    } else {
                                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                    }
                                    i3 = 4;
                                } else {
                                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                    i3 = 3;
                                }
                            } else {
                                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            i3 = 1;
                        }
                    }
                    i4 += i3;
                } else {
                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                    i4++;
                }
            }
        }
    }

    public static final void processUtf8Bytes(String receiver, int i, int i2, Function1<? super Byte, v> yield) {
        int i3;
        char cCharAt;
        r.f(receiver, "$receiver");
        r.f(yield, "yield");
        while (i < i2) {
            char cCharAt2 = receiver.charAt(i);
            if (cCharAt2 < 128) {
                yield.invoke(Byte.valueOf((byte) cCharAt2));
                i++;
                while (i < i2 && receiver.charAt(i) < 128) {
                    yield.invoke(Byte.valueOf((byte) receiver.charAt(i)));
                    i++;
                }
            } else {
                if (cCharAt2 < 2048) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (55296 > cCharAt2 || 57343 < cCharAt2) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> '\f') | 224)));
                    yield.invoke(Byte.valueOf((byte) (((cCharAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (cCharAt2 > 56319 || i2 <= (i3 = i + 1) || 56320 > (cCharAt = receiver.charAt(i3)) || 57343 < cCharAt) {
                    yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int iCharAt = ((cCharAt2 << '\n') + receiver.charAt(i3)) - 56613888;
                    yield.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | 240)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                    i += 2;
                }
                i++;
            }
        }
    }

    public static final void processUtf8CodePoints(byte[] receiver, int i, int i2, Function1<? super Integer, v> yield) {
        int i3;
        r.f(receiver, "$receiver");
        r.f(yield, "yield");
        int i4 = i;
        while (i4 < i2) {
            byte b = receiver[i4];
            if (b >= 0) {
                yield.invoke(Integer.valueOf(b));
                i4++;
                while (i4 < i2 && receiver[i4] >= 0) {
                    yield.invoke(Integer.valueOf(receiver[i4]));
                    i4++;
                }
            } else {
                if ((b >> 5) == -2) {
                    int i5 = i4 + 1;
                    if (i2 > i5) {
                        byte b2 = receiver[i4];
                        byte b3 = receiver[i5];
                        if ((b3 & 192) == 128) {
                            int i6 = (b3 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b2 << 6);
                            yield.invoke(i6 < 128 ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i6));
                            i3 = 2;
                            i4 += i3;
                        }
                    }
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i3 = 1;
                    i4 += i3;
                } else if ((b >> 4) == -2) {
                    int i7 = i4 + 2;
                    if (i2 <= i7) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        int i8 = i4 + 1;
                        if (i2 > i8) {
                            if ((receiver[i8] & 192) == 128) {
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b4 = receiver[i4];
                        byte b5 = receiver[i4 + 1];
                        if ((b5 & 192) == 128) {
                            byte b6 = receiver[i7];
                            if ((b6 & 192) == 128) {
                                int i9 = ((b6 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b5 << 6)) ^ (b4 << Ascii.FF);
                                yield.invoke((i9 >= 2048 && (55296 > i9 || 57343 < i9)) ? Integer.valueOf(i9) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                i3 = 3;
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            i3 = 1;
                        }
                    }
                    i4 += i3;
                } else if ((b >> 3) == -2) {
                    int i10 = i4 + 3;
                    if (i2 <= i10) {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        int i11 = i4 + 1;
                        if (i2 > i11) {
                            if ((receiver[i11] & 192) == 128) {
                                int i12 = i4 + 2;
                                if (i2 > i12) {
                                    if ((receiver[i12] & 192) == 128) {
                                        i3 = 3;
                                    }
                                }
                                i3 = 2;
                            }
                        }
                        i3 = 1;
                    } else {
                        byte b7 = receiver[i4];
                        byte b8 = receiver[i4 + 1];
                        if ((b8 & 192) == 128) {
                            byte b9 = receiver[i4 + 2];
                            if ((b9 & 192) == 128) {
                                byte b10 = receiver[i10];
                                if ((b10 & 192) == 128) {
                                    int i13 = (((b10 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b9 << 6)) ^ (b8 << Ascii.FF)) ^ (b7 << Ascii.DC2);
                                    yield.invoke((i13 <= 1114111 && (55296 > i13 || 57343 < i13) && i13 >= 65536) ? Integer.valueOf(i13) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                    i3 = 4;
                                } else {
                                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                    i3 = 3;
                                }
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                i3 = 2;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            i3 = 1;
                        }
                    }
                    i4 += i3;
                } else {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    i4++;
                }
            }
        }
    }

    public static final long size(String str) {
        return size$default(str, 0, 0, 3, null);
    }

    public static final long size(String str, int i) {
        return size$default(str, i, 0, 2, null);
    }

    public static final long size(String receiver, int i, int i2) {
        int i3;
        r.f(receiver, "$receiver");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= receiver.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + receiver.length()).toString());
        }
        long j = 0;
        while (i < i2) {
            char cCharAt = receiver.charAt(i);
            if (cCharAt < 128) {
                j++;
            } else {
                if (cCharAt < 2048) {
                    i3 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i3 = 3;
                } else {
                    int i4 = i + 1;
                    char cCharAt2 = i4 < i2 ? receiver.charAt(i4) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j++;
                        i = i4;
                    } else {
                        j += (long) 4;
                        i += 2;
                    }
                }
                j += (long) i3;
            }
            i++;
        }
        return j;
    }

    public static /* bridge */ /* synthetic */ long size$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return size(str, i, i2);
    }
}

package okio.internal;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import okio.Base64;
import okio.ByteString;
import okio.Platform;
import okio.Util;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0010\f\n\u0002\b\f\n\u0002\u0010\u0019\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0004\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u0013\u0010\u0006\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0006\u0010\u0003\u001a\u0013\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u0013\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\t\u0010\b\u001a#\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001b\u0010\u0011\u001a\u00020\u0010*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0013\u0010\u0013\u001a\u00020\n*\u00020\u0000H\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0013\u0010\u0016\u001a\u00020\u0015*\u00020\u0000H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u0015*\u00020\u0000H\u0000¢\u0006\u0004\b\u0018\u0010\u0017\u001a3\u0010\u001e\u001a\u00020\u001d*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a3\u0010\u001e\u001a\u00020\u001d*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001e\u0010 \u001a\u001b\u0010\"\u001a\u00020\u001d*\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\"\u0010#\u001a\u001b\u0010\"\u001a\u00020\u001d*\u00020\u00002\u0006\u0010!\u001a\u00020\u0015H\u0000¢\u0006\u0004\b\"\u0010$\u001a\u001b\u0010&\u001a\u00020\u001d*\u00020\u00002\u0006\u0010%\u001a\u00020\u0000H\u0000¢\u0006\u0004\b&\u0010#\u001a\u001b\u0010&\u001a\u00020\u001d*\u00020\u00002\u0006\u0010%\u001a\u00020\u0015H\u0000¢\u0006\u0004\b&\u0010$\u001a#\u0010(\u001a\u00020\n*\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\nH\u0000¢\u0006\u0004\b(\u0010)\u001a\u001d\u0010+\u001a\u00020\u001d*\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010*H\u0000¢\u0006\u0004\b+\u0010,\u001a\u0013\u0010-\u001a\u00020\n*\u00020\u0000H\u0000¢\u0006\u0004\b-\u0010\u0014\u001a\u001b\u0010.\u001a\u00020\n*\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0000H\u0000¢\u0006\u0004\b.\u0010/\u001a\u0017\u00101\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0015H\u0000¢\u0006\u0004\b1\u00102\u001a\u0013\u00103\u001a\u00020\u0000*\u00020\u0001H\u0000¢\u0006\u0004\b3\u00104\u001a\u0015\u00105\u001a\u0004\u0018\u00010\u0000*\u00020\u0001H\u0000¢\u0006\u0004\b5\u00104\u001a\u0013\u00106\u001a\u00020\u0000*\u00020\u0001H\u0000¢\u0006\u0004\b6\u00104\u001a\u0017\u00109\u001a\u00020\n2\u0006\u00108\u001a\u000207H\u0002¢\u0006\u0004\b9\u0010:\u001a\u0013\u0010;\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b;\u0010\u0003\u001a\u001f\u0010>\u001a\u00020\n2\u0006\u0010<\u001a\u00020\u00152\u0006\u0010=\u001a\u00020\nH\u0002¢\u0006\u0004\b>\u0010?\"\u001c\u0010@\u001a\u00020\u00008\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010F¨\u0006G"}, d2 = {"Lokio/ByteString;", "", "commonUtf8", "(Lokio/ByteString;)Ljava/lang/String;", "commonBase64", "commonBase64Url", "commonHex", "commonToAsciiLowercase", "(Lokio/ByteString;)Lokio/ByteString;", "commonToAsciiUppercase", "", "beginIndex", "endIndex", "commonSubstring", "(Lokio/ByteString;II)Lokio/ByteString;", "pos", "", "commonGetByte", "(Lokio/ByteString;I)B", "commonGetSize", "(Lokio/ByteString;)I", "", "commonToByteArray", "(Lokio/ByteString;)[B", "commonInternalArray", "offset", "other", "otherOffset", "byteCount", "", "commonRangeEquals", "(Lokio/ByteString;ILokio/ByteString;II)Z", "(Lokio/ByteString;I[BII)Z", "prefix", "commonStartsWith", "(Lokio/ByteString;Lokio/ByteString;)Z", "(Lokio/ByteString;[B)Z", "suffix", "commonEndsWith", "fromIndex", "commonIndexOf", "(Lokio/ByteString;[BI)I", "", "commonEquals", "(Lokio/ByteString;Ljava/lang/Object;)Z", "commonHashCode", "commonCompareTo", "(Lokio/ByteString;Lokio/ByteString;)I", "data", "commonOf", "([B)Lokio/ByteString;", "commonEncodeUtf8", "(Ljava/lang/String;)Lokio/ByteString;", "commonDecodeBase64", "commonDecodeHex", "", "c", "decodeHexDigit", "(C)I", "commonToString", "s", "codePointCount", "codePointIndexToCharIndex", "([BI)I", "COMMON_EMPTY", "Lokio/ByteString;", "getCOMMON_EMPTY", "()Lokio/ByteString;", "", "HEX_DIGITS", "[C", "jvm"}, k = 2, mv = {1, 1, 15})
public final class ByteStringKt {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final ByteString COMMON_EMPTY = ByteString.INSTANCE.of(new byte[0]);

    /* JADX WARN: Code duplicated, block: B:138:0x012d  */
    /* JADX WARN: Code duplicated, block: B:141:0x0133  */
    /* JADX WARN: Code duplicated, block: B:143:0x0137  */
    /* JADX WARN: Code duplicated, block: B:144:0x0139  */
    /* JADX WARN: Code duplicated, block: B:209:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:212:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:214:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:215:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:228:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:235:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x01c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0066 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x006b  */
    /* JADX WARN: Code duplicated, block: B:46:0x006d  */
    /* JADX WARN: Code duplicated, block: B:81:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:86:0x00bc  */
    private static final int codePointIndexToCharIndex(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = bArr.length;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < length) {
            byte b = bArr[i7];
            if (b >= 0) {
                int i10 = i9 + 1;
                if (i9 == i) {
                    return i8;
                }
                if (b != 10 && b != 13) {
                    if (!((b >= 0 && 31 >= b) || (127 <= b && 159 >= b))) {
                    }
                    return -1;
                }
                if (b == 65533) {
                    return -1;
                }
                i8 += b < 65536 ? 1 : 2;
                i7++;
                while (true) {
                    i9 = i10;
                    if (i7 >= length || bArr[i7] < 0) {
                        break;
                    }
                    int i11 = i7 + 1;
                    byte b2 = bArr[i7];
                    i10 = i9 + 1;
                    if (i9 == i) {
                        return i8;
                    }
                    if (b2 != 10 && b2 != 13) {
                        if (!((b2 >= 0 && 31 >= b2) || (127 <= b2 && 159 >= b2))) {
                            if (b2 == 65533) {
                                if (b2 < 65536) {
                                    i2 = 1;
                                } else {
                                    i2 = 2;
                                }
                                i8 += i2;
                                i7 = i11;
                            }
                        }
                    } else if (b2 == 65533) {
                        if (b2 < 65536) {
                            i2 = 1;
                        } else {
                            i2 = 2;
                        }
                        i8 += i2;
                        i7 = i11;
                    }
                    return -1;
                }
            }
            if ((b >> 5) == -2) {
                int i12 = i7 + 1;
                if (length <= i12) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                byte b3 = bArr[i7];
                byte b4 = bArr[i12];
                if (!((b4 & 192) == 128)) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                int i13 = (b4 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b3 << 6);
                if (i13 < 128) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                i3 = i9 + 1;
                if (i9 == i) {
                    return i8;
                }
                if (i13 != 10 && i13 != 13) {
                    if (!((i13 >= 0 && 31 >= i13) || (127 <= i13 && 159 >= i13))) {
                        if (i13 == 65533) {
                            if (i13 < 65536) {
                                i6 = 1;
                            } else {
                                i6 = 2;
                            }
                            i8 += i6;
                            i7 += 2;
                        }
                    }
                } else if (i13 == 65533) {
                    if (i13 < 65536) {
                        i6 = 1;
                    } else {
                        i6 = 2;
                    }
                    i8 += i6;
                    i7 += 2;
                }
                return -1;
            }
            if ((b >> 4) == -2) {
                int i14 = i7 + 2;
                if (length <= i14) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                byte b5 = bArr[i7];
                byte b6 = bArr[i7 + 1];
                if (!((b6 & 192) == 128)) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                byte b7 = bArr[i14];
                if (!((b7 & 192) == 128)) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                int i15 = ((b7 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b6 << 6)) ^ (b5 << Ascii.FF);
                if (i15 < 2048) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                if (55296 <= i15 && 57343 >= i15) {
                    if (i9 == i) {
                        return i8;
                    }
                    return -1;
                }
                i3 = i9 + 1;
                if (i9 == i) {
                    return i8;
                }
                if (i15 != 10 && i15 != 13) {
                    if (!((i15 >= 0 && 31 >= i15) || (127 <= i15 && 159 >= i15))) {
                        if (i15 == 65533) {
                            if (i15 < 65536) {
                                i5 = 1;
                            } else {
                                i5 = 2;
                            }
                            i8 += i5;
                            i7 += 3;
                        }
                    }
                } else if (i15 == 65533) {
                    if (i15 < 65536) {
                        i5 = 1;
                    } else {
                        i5 = 2;
                    }
                    i8 += i5;
                    i7 += 3;
                }
                return -1;
            }
            if ((b >> 3) != -2) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            int i16 = i7 + 3;
            if (length <= i16) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            byte b8 = bArr[i7];
            byte b9 = bArr[i7 + 1];
            if (!((b9 & 192) == 128)) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            byte b10 = bArr[i7 + 2];
            if (!((b10 & 192) == 128)) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            byte b11 = bArr[i16];
            if (!((b11 & 192) == 128)) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            int i17 = (((b11 ^ UnsignedBytes.MAX_POWER_OF_TWO) ^ (b10 << 6)) ^ (b9 << Ascii.FF)) ^ (b8 << Ascii.DC2);
            if (i17 > 1114111) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            if (55296 <= i17 && 57343 >= i17) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            if (i17 < 65536) {
                if (i9 == i) {
                    return i8;
                }
                return -1;
            }
            i3 = i9 + 1;
            if (i9 == i) {
                return i8;
            }
            if (i17 != 10 && i17 != 13) {
                if (!((i17 >= 0 && 31 >= i17) || (127 <= i17 && 159 >= i17))) {
                    if (i17 == 65533) {
                        if (i17 < 65536) {
                            i4 = 1;
                        } else {
                            i4 = 2;
                        }
                        i8 += i4;
                        i7 += 4;
                    }
                }
            } else if (i17 == 65533) {
                if (i17 < 65536) {
                    i4 = 1;
                } else {
                    i4 = 2;
                }
                i8 += i4;
                i7 += 4;
            }
            return -1;
            i9 = i3;
        }
        return i8;
    }

    public static final String commonBase64(ByteString receiver) {
        r.f(receiver, "$receiver");
        return Base64.encodeBase64$default(receiver.getData(), null, 1, null);
    }

    public static final String commonBase64Url(ByteString receiver) {
        r.f(receiver, "$receiver");
        return Base64.encodeBase64(receiver.getData(), Base64.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(ByteString receiver, ByteString other) {
        r.f(receiver, "$receiver");
        r.f(other, "other");
        int size = receiver.size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            int i2 = receiver.getByte(i) & UnsignedBytes.MAX_VALUE;
            int i3 = other.getByte(i) & UnsignedBytes.MAX_VALUE;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final ByteString commonDecodeBase64(String receiver) {
        r.f(receiver, "$receiver");
        byte[] bArrDecodeBase64ToArray = Base64.decodeBase64ToArray(receiver);
        if (bArrDecodeBase64ToArray != null) {
            return new ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    public static final ByteString commonDecodeHex(String receiver) {
        r.f(receiver, "$receiver");
        if (!(receiver.length() % 2 == 0)) {
            throw new IllegalArgumentException(("Unexpected hex string: " + receiver).toString());
        }
        int length = receiver.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((decodeHexDigit(receiver.charAt(i2)) << 4) + decodeHexDigit(receiver.charAt(i2 + 1)));
        }
        return new ByteString(bArr);
    }

    public static final ByteString commonEncodeUtf8(String receiver) {
        r.f(receiver, "$receiver");
        ByteString byteString = new ByteString(Platform.asUtf8ToByteArray(receiver));
        byteString.setUtf8$jvm(receiver);
        return byteString;
    }

    public static final boolean commonEndsWith(ByteString receiver, ByteString suffix) {
        r.f(receiver, "$receiver");
        r.f(suffix, "suffix");
        return receiver.rangeEquals(receiver.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final boolean commonEquals(ByteString receiver, Object obj) {
        r.f(receiver, "$receiver");
        if (obj == receiver) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == receiver.getData().length && byteString.rangeEquals(0, receiver.getData(), 0, receiver.getData().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(ByteString receiver, int i) {
        r.f(receiver, "$receiver");
        return receiver.getData()[i];
    }

    public static final int commonGetSize(ByteString receiver) {
        r.f(receiver, "$receiver");
        return receiver.getData().length;
    }

    public static final int commonHashCode(ByteString receiver) {
        r.f(receiver, "$receiver");
        int hashCode$jvm = receiver.getHashCode();
        if (hashCode$jvm != 0) {
            return hashCode$jvm;
        }
        receiver.setHashCode$jvm(Arrays.hashCode(receiver.getData()));
        return receiver.getHashCode();
    }

    public static final String commonHex(ByteString receiver) {
        r.f(receiver, "$receiver");
        char[] cArr = new char[receiver.getData().length * 2];
        int i = 0;
        for (byte b : receiver.getData()) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & Ascii.SI];
        }
        return new String(cArr);
    }

    public static final int commonIndexOf(ByteString receiver, byte[] other, int i) {
        r.f(receiver, "$receiver");
        r.f(other, "other");
        int length = receiver.getData().length - other.length;
        int iMax = Math.max(i, 0);
        if (iMax > length) {
            return -1;
        }
        while (!Util.arrayRangeEquals(receiver.getData(), iMax, other, 0, other.length)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    public static final byte[] commonInternalArray(ByteString receiver) {
        r.f(receiver, "$receiver");
        return receiver.getData();
    }

    public static final ByteString commonOf(byte[] data) {
        r.f(data, "data");
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        r.b(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return new ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(ByteString receiver, int i, ByteString other, int i2, int i3) {
        r.f(receiver, "$receiver");
        r.f(other, "other");
        return other.rangeEquals(i2, receiver.getData(), i, i3);
    }

    public static final boolean commonStartsWith(ByteString receiver, ByteString prefix) {
        r.f(receiver, "$receiver");
        r.f(prefix, "prefix");
        return receiver.rangeEquals(0, prefix, 0, prefix.size());
    }

    public static final ByteString commonSubstring(ByteString receiver, int i, int i2) {
        r.f(receiver, "$receiver");
        if (!(i >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        if (!(i2 <= receiver.getData().length)) {
            throw new IllegalArgumentException(("endIndex > length(" + receiver.getData().length + ')').toString());
        }
        int i3 = i2 - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        if (i == 0 && i2 == receiver.getData().length) {
            return receiver;
        }
        byte[] bArr = new byte[i3];
        Platform.arraycopy(receiver.getData(), i, bArr, 0, i3);
        return new ByteString(bArr);
    }

    public static final ByteString commonToAsciiLowercase(ByteString receiver) {
        byte b;
        r.f(receiver, "$receiver");
        for (int i = 0; i < receiver.getData().length; i++) {
            byte b2 = receiver.getData()[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] data$jvm = receiver.getData();
                byte[] bArrCopyOf = Arrays.copyOf(data$jvm, data$jvm.length);
                r.b(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return receiver;
    }

    public static final ByteString commonToAsciiUppercase(ByteString receiver) {
        byte b;
        r.f(receiver, "$receiver");
        for (int i = 0; i < receiver.getData().length; i++) {
            byte b2 = receiver.getData()[i];
            byte b3 = (byte) 97;
            if (b2 >= b3 && b2 <= (b = (byte) 122)) {
                byte[] data$jvm = receiver.getData();
                byte[] bArrCopyOf = Arrays.copyOf(data$jvm, data$jvm.length);
                r.b(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return receiver;
    }

    public static final byte[] commonToByteArray(ByteString receiver) {
        r.f(receiver, "$receiver");
        byte[] data$jvm = receiver.getData();
        byte[] bArrCopyOf = Arrays.copyOf(data$jvm, data$jvm.length);
        r.b(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return bArrCopyOf;
    }

    public static final String commonToString(ByteString receiver) {
        r.f(receiver, "$receiver");
        if (receiver.getData().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(receiver.getData(), 64);
        if (iCodePointIndexToCharIndex == -1) {
            if (receiver.getData().length <= 64) {
                return "[hex=" + receiver.hex() + ']';
            }
            return "[size=" + receiver.getData().length + " hex=" + commonSubstring(receiver, 0, 64).hex() + "…]";
        }
        String strUtf8 = receiver.utf8();
        if (strUtf8 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
        r.b(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        String strX = t.x(t.x(t.x(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
        if (iCodePointIndexToCharIndex >= strUtf8.length()) {
            return "[text=" + strX + ']';
        }
        return "[size=" + receiver.getData().length + " text=" + strX + "…]";
    }

    public static final String commonUtf8(ByteString receiver) {
        r.f(receiver, "$receiver");
        String utf8$jvm = receiver.getUtf8();
        if (utf8$jvm != null) {
            return utf8$jvm;
        }
        String utf8String = Platform.toUtf8String(receiver.getData());
        receiver.setUtf8$jvm(utf8String);
        return utf8String;
    }

    private static final int decodeHexDigit(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c);
            }
        }
        return (c - c2) + 10;
    }

    public static final ByteString getCOMMON_EMPTY() {
        return COMMON_EMPTY;
    }

    public static final boolean commonEndsWith(ByteString receiver, byte[] suffix) {
        r.f(receiver, "$receiver");
        r.f(suffix, "suffix");
        return receiver.rangeEquals(receiver.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final boolean commonRangeEquals(ByteString receiver, int i, byte[] other, int i2, int i3) {
        r.f(receiver, "$receiver");
        r.f(other, "other");
        return i >= 0 && i <= receiver.getData().length - i3 && i2 >= 0 && i2 <= other.length - i3 && Util.arrayRangeEquals(receiver.getData(), i, other, i2, i3);
    }

    public static final boolean commonStartsWith(ByteString receiver, byte[] prefix) {
        r.f(receiver, "$receiver");
        r.f(prefix, "prefix");
        return receiver.rangeEquals(0, prefix, 0, prefix.length);
    }
}

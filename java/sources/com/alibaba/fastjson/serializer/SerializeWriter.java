package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.google.common.primitives.UnsignedBytes;
import com.mobile.auth.BuildConfig;
import com.tencent.bugly.Bugly;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SerializeWriter extends Writer {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
    private static final ThreadLocal<byte[]> bytesBufLocal = new ThreadLocal<>();
    static final int nonDirectFeautres = (((((((((SerializerFeature.UseSingleQuotes.mask | 0) | SerializerFeature.BrowserSecure.mask) | SerializerFeature.BrowserCompatible.mask) | SerializerFeature.PrettyFormat.mask) | SerializerFeature.WriteEnumUsingToString.mask) | SerializerFeature.WriteNonStringValueAsString.mask) | SerializerFeature.WriteSlashAsSpecial.mask) | SerializerFeature.IgnoreErrorGetter.mask) | SerializerFeature.WriteClassName.mask) | SerializerFeature.NotWriteDefaultValue.mask;
    protected boolean beanToArray;
    protected char[] buf;
    protected int count;
    protected boolean disableCircularReferenceDetect;
    protected int features;
    protected char keySeperator;
    protected int maxBufSize;
    protected boolean notWriteDefaultValue;
    protected boolean quoteFieldNames;
    protected boolean sortField;
    protected boolean useSingleQuotes;
    protected boolean writeDirect;
    protected boolean writeEnumUsingName;
    protected boolean writeEnumUsingToString;
    protected boolean writeNonStringValueAsString;
    private final Writer writer;

    public SerializeWriter() {
        this((Writer) null);
    }

    private int encodeToUTF8(OutputStream outputStream) throws IOException {
        int i = (int) (((double) this.count) * 3.0d);
        ThreadLocal<byte[]> threadLocal = bytesBufLocal;
        byte[] bArr = threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        int iEncodeUTF8 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr);
        outputStream.write(bArr, 0, iEncodeUTF8);
        return iEncodeUTF8;
    }

    private byte[] encodeToUTF8Bytes() {
        int i = (int) (((double) this.count) * 3.0d);
        ThreadLocal<byte[]> threadLocal = bytesBufLocal;
        byte[] bArr = threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        int iEncodeUTF8 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr);
        byte[] bArr2 = new byte[iEncodeUTF8];
        System.arraycopy(bArr, 0, bArr2, 0, iEncodeUTF8);
        return bArr2;
    }

    static boolean isSpecial(char c, int i) {
        if (c == ' ') {
            return false;
        }
        if (c == '/') {
            return (SerializerFeature.WriteSlashAsSpecial.mask & i) != 0;
        }
        if (c <= '#' || c == '\\') {
            return c <= 31 || c == '\\' || c == '\"';
        }
        return false;
    }

    private void writeEnumFieldValue(char c, String str, String str2) {
        if (this.useSingleQuotes) {
            writeFieldValue(c, str, str2);
        } else {
            writeFieldValueStringWithDoubleQuote(c, str, str2);
        }
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(String str) {
        byte[] bArr = IOUtils.specicalFlags_singleQuotes;
        int length = str.length();
        boolean z = true;
        int i = this.count + length + 1;
        int i2 = 0;
        if (i > this.buf.length) {
            if (this.writer != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i3 = 0;
                while (true) {
                    if (i3 < length) {
                        char cCharAt = str.charAt(i3);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    write(39);
                }
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        write(cCharAt2);
                    } else {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt2]);
                    }
                    i2++;
                }
                if (z) {
                    write(39);
                }
                write(58);
                return;
            }
            expandCapacity(i);
        }
        if (length == 0) {
            int i4 = this.count;
            if (i4 + 3 > this.buf.length) {
                expandCapacity(i4 + 3);
            }
            char[] cArr = this.buf;
            int i5 = this.count;
            int i6 = i5 + 1;
            this.count = i6;
            cArr[i5] = '\'';
            int i7 = i6 + 1;
            this.count = i7;
            cArr[i6] = '\'';
            this.count = i7 + 1;
            cArr[i7] = ':';
            return;
        }
        int i8 = this.count;
        int i9 = i8 + length;
        str.getChars(0, length, this.buf, i8);
        this.count = i;
        int i10 = i8;
        boolean z2 = false;
        while (i10 < i9) {
            char[] cArr2 = this.buf;
            char c = cArr2[i10];
            if (c < bArr.length && bArr[c] != 0) {
                if (z2) {
                    i++;
                    if (i > cArr2.length) {
                        expandCapacity(i);
                    }
                    this.count = i;
                    char[] cArr3 = this.buf;
                    int i11 = i10 + 1;
                    System.arraycopy(cArr3, i11, cArr3, i10 + 2, i9 - i10);
                    char[] cArr4 = this.buf;
                    cArr4[i10] = '\\';
                    cArr4[i11] = IOUtils.replaceChars[c];
                    i9++;
                    i10 = i11;
                } else {
                    i += 3;
                    if (i > cArr2.length) {
                        expandCapacity(i);
                    }
                    this.count = i;
                    char[] cArr5 = this.buf;
                    int i12 = i10 + 1;
                    System.arraycopy(cArr5, i12, cArr5, i10 + 3, (i9 - i10) - 1);
                    char[] cArr6 = this.buf;
                    System.arraycopy(cArr6, i2, cArr6, 1, i10);
                    char[] cArr7 = this.buf;
                    cArr7[i8] = '\'';
                    cArr7[i12] = '\\';
                    int i13 = i12 + 1;
                    cArr7[i13] = IOUtils.replaceChars[c];
                    i9 += 2;
                    cArr7[this.count - 2] = '\'';
                    i10 = i13;
                    z2 = true;
                }
            }
            i10++;
            i2 = 0;
        }
        this.buf[i - 1] = ':';
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        char[] cArr = this.buf;
        if (cArr.length <= 65536) {
            bufLocal.set(cArr);
        }
        this.buf = null;
    }

    protected void computeFeatures() {
        int i = this.features;
        boolean z = true;
        boolean z2 = (SerializerFeature.QuoteFieldNames.mask & i) != 0;
        this.quoteFieldNames = z2;
        boolean z3 = (SerializerFeature.UseSingleQuotes.mask & i) != 0;
        this.useSingleQuotes = z3;
        this.sortField = (SerializerFeature.SortField.mask & i) != 0;
        this.disableCircularReferenceDetect = (SerializerFeature.DisableCircularReferenceDetect.mask & i) != 0;
        boolean z4 = (SerializerFeature.BeanToArray.mask & i) != 0;
        this.beanToArray = z4;
        this.writeNonStringValueAsString = (SerializerFeature.WriteNonStringValueAsString.mask & i) != 0;
        this.notWriteDefaultValue = (SerializerFeature.NotWriteDefaultValue.mask & i) != 0;
        boolean z5 = (SerializerFeature.WriteEnumUsingName.mask & i) != 0;
        this.writeEnumUsingName = z5;
        this.writeEnumUsingToString = (SerializerFeature.WriteEnumUsingToString.mask & i) != 0;
        if (!z2 || (i & nonDirectFeautres) != 0 || (!z4 && !z5)) {
            z = false;
        }
        this.writeDirect = z;
        this.keySeperator = z3 ? '\'' : '\"';
    }

    public void config(SerializerFeature serializerFeature, boolean z) {
        if (z) {
            int mask = this.features | serializerFeature.getMask();
            this.features = mask;
            SerializerFeature serializerFeature2 = SerializerFeature.WriteEnumUsingToString;
            if (serializerFeature == serializerFeature2) {
                this.features = (~SerializerFeature.WriteEnumUsingName.getMask()) & mask;
            } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                this.features = (~serializerFeature2.getMask()) & mask;
            }
        } else {
            this.features = (~serializerFeature.getMask()) & this.features;
        }
        computeFeatures();
    }

    public void expandCapacity(int i) {
        int i2 = this.maxBufSize;
        if (i2 != -1 && i >= i2) {
            throw new JSONException("serialize exceeded MAX_OUTPUT_LENGTH=" + this.maxBufSize + ", minimumCapacity=" + i);
        }
        char[] cArr = this.buf;
        int length = ((cArr.length * 3) / 2) + 1;
        if (length >= i) {
            i = length;
        }
        char[] cArr2 = new char[i];
        System.arraycopy(cArr, 0, cArr2, 0, this.count);
        this.buf = cArr2;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        Writer writer = this.writer;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.buf, 0, this.count);
            this.writer.flush();
            this.count = 0;
        } catch (IOException e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public int getBufferLength() {
        return this.buf.length;
    }

    public int getMaxBufSize() {
        return this.maxBufSize;
    }

    public boolean isEnabled(SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.features) != 0;
    }

    public boolean isNotWriteDefaultValue() {
        return this.notWriteDefaultValue;
    }

    public boolean isSortField() {
        return this.sortField;
    }

    public void setMaxBufSize(int i) {
        if (i >= this.buf.length) {
            this.maxBufSize = i;
            return;
        }
        throw new JSONException("must > " + this.buf.length);
    }

    public int size() {
        return this.count;
    }

    public byte[] toBytes(String str) {
        return toBytes((str == null || "UTF-8".equals(str)) ? UTF8 : Charset.forName(str));
    }

    public char[] toCharArray() {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int i = this.count;
        char[] cArr = new char[i];
        System.arraycopy(this.buf, 0, cArr, 0, i);
        return cArr;
    }

    public char[] toCharArrayForSpringWebSocket() {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int i = this.count;
        char[] cArr = new char[i - 2];
        System.arraycopy(this.buf, 1, cArr, 0, i - 2);
        return cArr;
    }

    public String toString() {
        return new String(this.buf, 0, this.count);
    }

    @Override // java.io.Writer
    public void write(int i) {
        int i2 = 1;
        int i3 = this.count + 1;
        if (i3 <= this.buf.length) {
            i2 = i3;
        } else if (this.writer == null) {
            expandCapacity(i3);
            i2 = i3;
        } else {
            flush();
        }
        this.buf[this.count] = (char) i;
        this.count = i2;
    }

    public void writeByteArray(byte[] bArr) {
        if (isEnabled(SerializerFeature.WriteClassName.mask)) {
            writeHex(bArr);
            return;
        }
        int length = bArr.length;
        boolean z = this.useSingleQuotes;
        char c = z ? '\'' : '\"';
        if (length == 0) {
            write(z ? "''" : "\"\"");
            return;
        }
        char[] cArr = IOUtils.CA;
        int i = (length / 3) * 3;
        int i2 = length - 1;
        int i3 = this.count;
        int i4 = (((i2 / 3) + 1) << 2) + i3 + 2;
        if (i4 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                int i5 = 0;
                while (i5 < i) {
                    int i6 = i5 + 1;
                    int i7 = i6 + 1;
                    int i8 = ((bArr[i5] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i6] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i7] & UnsignedBytes.MAX_VALUE);
                    write(cArr[(i8 >>> 18) & 63]);
                    write(cArr[(i8 >>> 12) & 63]);
                    write(cArr[(i8 >>> 6) & 63]);
                    write(cArr[i8 & 63]);
                    i5 = i7 + 1;
                }
                int i9 = length - i;
                if (i9 > 0) {
                    int i10 = ((bArr[i] & UnsignedBytes.MAX_VALUE) << 10) | (i9 == 2 ? (bArr[i2] & UnsignedBytes.MAX_VALUE) << 2 : 0);
                    write(cArr[i10 >> 12]);
                    write(cArr[(i10 >>> 6) & 63]);
                    write(i9 == 2 ? cArr[i10 & 63] : '=');
                    write(61);
                }
                write(c);
                return;
            }
            expandCapacity(i4);
        }
        this.count = i4;
        int i11 = i3 + 1;
        this.buf[i3] = c;
        int i12 = 0;
        while (i12 < i) {
            int i13 = i12 + 1;
            int i14 = i13 + 1;
            int i15 = ((bArr[i12] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i13] & UnsignedBytes.MAX_VALUE) << 8);
            int i16 = i14 + 1;
            int i17 = i15 | (bArr[i14] & UnsignedBytes.MAX_VALUE);
            char[] cArr2 = this.buf;
            int i18 = i11 + 1;
            cArr2[i11] = cArr[(i17 >>> 18) & 63];
            int i19 = i18 + 1;
            cArr2[i18] = cArr[(i17 >>> 12) & 63];
            int i20 = i19 + 1;
            cArr2[i19] = cArr[(i17 >>> 6) & 63];
            i11 = i20 + 1;
            cArr2[i20] = cArr[i17 & 63];
            i12 = i16;
        }
        int i21 = length - i;
        if (i21 > 0) {
            int i22 = ((bArr[i] & UnsignedBytes.MAX_VALUE) << 10) | (i21 == 2 ? (bArr[i2] & UnsignedBytes.MAX_VALUE) << 2 : 0);
            char[] cArr3 = this.buf;
            cArr3[i4 - 5] = cArr[i22 >> 12];
            cArr3[i4 - 4] = cArr[(i22 >>> 6) & 63];
            cArr3[i4 - 3] = i21 == 2 ? cArr[i22 & 63] : '=';
            cArr3[i4 - 2] = '=';
        }
        this.buf[i4 - 1] = c;
    }

    public void writeDouble(double d2, boolean z) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            writeNull();
            return;
        }
        String string = Double.toString(d2);
        if (isEnabled(SerializerFeature.WriteNullNumberAsZero) && string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        write(string);
        if (z && isEnabled(SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    public void writeEnum(Enum<?> r3) {
        if (r3 == null) {
            writeNull();
            return;
        }
        String string = null;
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            string = r3.name();
        } else if (this.writeEnumUsingToString) {
            string = r3.toString();
        }
        if (string == null) {
            writeInt(r3.ordinal());
            return;
        }
        int i = isEnabled(SerializerFeature.UseSingleQuotes) ? 39 : 34;
        write(i);
        write(string);
        write(i);
    }

    public void writeFieldName(String str) {
        writeFieldName(str, false);
    }

    public void writeFieldNameDirect(String str) {
        int length = str.length();
        int i = this.count + length + 3;
        if (i > this.buf.length) {
            expandCapacity(i);
        }
        int i2 = this.count;
        char[] cArr = this.buf;
        cArr[i2] = '\"';
        str.getChars(0, length, cArr, i2 + 1);
        this.count = i;
        char[] cArr2 = this.buf;
        cArr2[i - 2] = '\"';
        cArr2[i - 1] = ':';
    }

    public void writeFieldValue(char c, String str, char c2) {
        write(c);
        writeFieldName(str);
        if (c2 == 0) {
            writeString("\u0000");
        } else {
            writeString(Character.toString(c2));
        }
    }

    public void writeFieldValueStringWithDoubleQuote(char c, String str, String str2) {
        int length = str.length();
        int i = this.count;
        int length2 = str2.length();
        int i2 = i + length + length2 + 6;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(i2);
        }
        char[] cArr = this.buf;
        int i3 = this.count;
        cArr[i3] = c;
        int i4 = i3 + 2;
        int i5 = i4 + length;
        cArr[i3 + 1] = '\"';
        str.getChars(0, length, cArr, i4);
        this.count = i2;
        char[] cArr2 = this.buf;
        cArr2[i5] = '\"';
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        cArr2[i6] = ':';
        cArr2[i7] = '\"';
        str2.getChars(0, length2, cArr2, i7 + 1);
        this.buf[this.count - 1] = '\"';
    }

    public void writeFieldValueStringWithDoubleQuoteCheck(char c, String str, String str2) {
        int length;
        int i;
        int i2;
        int length2 = str.length();
        int i3 = this.count;
        if (str2 == null) {
            i = i3 + length2 + 8;
            length = 4;
        } else {
            length = str2.length();
            i = i3 + length2 + length + 6;
        }
        int i4 = 0;
        if (i > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(i);
        }
        char[] cArr = this.buf;
        int i5 = this.count;
        cArr[i5] = c;
        int i6 = i5 + 2;
        int i7 = i6 + length2;
        cArr[i5 + 1] = '\"';
        str.getChars(0, length2, cArr, i6);
        this.count = i;
        char[] cArr2 = this.buf;
        cArr2[i7] = '\"';
        int i8 = i7 + 1;
        int i9 = i8 + 1;
        cArr2[i8] = ':';
        if (str2 == null) {
            int i10 = i9 + 1;
            cArr2[i9] = 'n';
            int i11 = i10 + 1;
            cArr2[i10] = 'u';
            cArr2[i11] = 'l';
            cArr2[i11 + 1] = 'l';
            return;
        }
        int i12 = i9 + 1;
        cArr2[i9] = '\"';
        int i13 = i12 + length;
        str2.getChars(0, length, cArr2, i12);
        char c2 = 0;
        int i14 = -1;
        int i15 = -1;
        for (int i16 = i12; i16 < i13; i16++) {
            char c3 = this.buf[i16];
            if (c3 >= ']') {
                if (c3 >= 127 && (c3 == 8232 || c3 == 8233 || c3 < 160)) {
                    if (i14 == -1) {
                        i14 = i16;
                    }
                    i4++;
                    i += 4;
                    c2 = c3;
                    i15 = i16;
                }
            } else if (isSpecial(c3, this.features)) {
                i4++;
                byte[] bArr = IOUtils.specicalFlags_doubleQuotes;
                if (c3 < bArr.length && bArr[c3] == 4) {
                    i += 4;
                }
                c2 = c3;
                if (i14 == -1) {
                    i14 = i16;
                    i15 = i14;
                } else {
                    i15 = i16;
                }
            }
        }
        if (i4 > 0) {
            int i17 = i + i4;
            if (i17 > this.buf.length) {
                expandCapacity(i17);
            }
            this.count = i17;
            if (i4 == 1) {
                if (c2 == 8232) {
                    int i18 = i15 + 1;
                    char[] cArr3 = this.buf;
                    System.arraycopy(cArr3, i18, cArr3, i15 + 6, (i13 - i15) - 1);
                    char[] cArr4 = this.buf;
                    cArr4[i15] = '\\';
                    cArr4[i18] = 'u';
                    int i19 = i18 + 1;
                    cArr4[i19] = '2';
                    int i20 = i19 + 1;
                    cArr4[i20] = '0';
                    int i21 = i20 + 1;
                    cArr4[i21] = '2';
                    cArr4[i21 + 1] = '8';
                } else if (c2 == 8233) {
                    int i22 = i15 + 1;
                    char[] cArr5 = this.buf;
                    System.arraycopy(cArr5, i22, cArr5, i15 + 6, (i13 - i15) - 1);
                    char[] cArr6 = this.buf;
                    cArr6[i15] = '\\';
                    cArr6[i22] = 'u';
                    int i23 = i22 + 1;
                    cArr6[i23] = '2';
                    int i24 = i23 + 1;
                    cArr6[i24] = '0';
                    int i25 = i24 + 1;
                    cArr6[i25] = '2';
                    cArr6[i25 + 1] = '9';
                } else {
                    byte[] bArr2 = IOUtils.specicalFlags_doubleQuotes;
                    if (c2 >= bArr2.length || bArr2[c2] != 4) {
                        int i26 = i15 + 1;
                        char[] cArr7 = this.buf;
                        System.arraycopy(cArr7, i26, cArr7, i15 + 2, (i13 - i15) - 1);
                        char[] cArr8 = this.buf;
                        cArr8[i15] = '\\';
                        cArr8[i26] = IOUtils.replaceChars[c2];
                    } else {
                        int i27 = i15 + 1;
                        char[] cArr9 = this.buf;
                        System.arraycopy(cArr9, i27, cArr9, i15 + 6, (i13 - i15) - 1);
                        char[] cArr10 = this.buf;
                        cArr10[i15] = '\\';
                        int i28 = i27 + 1;
                        cArr10[i27] = 'u';
                        int i29 = i28 + 1;
                        char[] cArr11 = IOUtils.DIGITS;
                        cArr10[i28] = cArr11[(c2 >>> '\f') & 15];
                        int i30 = i29 + 1;
                        cArr10[i29] = cArr11[(c2 >>> '\b') & 15];
                        cArr10[i30] = cArr11[(c2 >>> 4) & 15];
                        cArr10[i30 + 1] = cArr11[c2 & 15];
                    }
                }
            } else if (i4 > 1) {
                for (int i31 = i14 - i12; i31 < str2.length(); i31++) {
                    char cCharAt = str2.charAt(i31);
                    byte[] bArr3 = IOUtils.specicalFlags_doubleQuotes;
                    if ((cCharAt >= bArr3.length || bArr3[cCharAt] == 0) && !(cCharAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt == 8232 || cCharAt == 8233) {
                            char[] cArr12 = this.buf;
                            int i32 = i14 + 1;
                            cArr12[i14] = '\\';
                            int i33 = i32 + 1;
                            cArr12[i32] = 'u';
                            int i34 = i33 + 1;
                            char[] cArr13 = IOUtils.DIGITS;
                            cArr12[i33] = cArr13[(cCharAt >>> '\f') & 15];
                            int i35 = i34 + 1;
                            cArr12[i34] = cArr13[(cCharAt >>> '\b') & 15];
                            int i36 = i35 + 1;
                            cArr12[i35] = cArr13[(cCharAt >>> 4) & 15];
                            cArr12[i36] = cArr13[cCharAt & 15];
                            i14 = i36 + 1;
                        } else {
                            this.buf[i14] = cCharAt;
                            i14++;
                        }
                    } else {
                        char[] cArr14 = this.buf;
                        int i37 = i14 + 1;
                        cArr14[i14] = '\\';
                        if (bArr3[cCharAt] == 4) {
                            int i38 = i37 + 1;
                            cArr14[i37] = 'u';
                            int i39 = i38 + 1;
                            char[] cArr15 = IOUtils.DIGITS;
                            cArr14[i38] = cArr15[(cCharAt >>> '\f') & 15];
                            int i40 = i39 + 1;
                            cArr14[i39] = cArr15[(cCharAt >>> '\b') & 15];
                            int i41 = i40 + 1;
                            cArr14[i40] = cArr15[(cCharAt >>> 4) & 15];
                            i2 = i41 + 1;
                            cArr14[i41] = cArr15[cCharAt & 15];
                        } else {
                            i2 = i37 + 1;
                            cArr14[i37] = IOUtils.replaceChars[cCharAt];
                        }
                        i14 = i2;
                    }
                }
            }
        }
        this.buf[this.count - 1] = '\"';
    }

    public void writeFloat(float f2, boolean z) {
        if (Float.isNaN(f2) || Float.isInfinite(f2)) {
            writeNull();
            return;
        }
        String string = Float.toString(f2);
        if (isEnabled(SerializerFeature.WriteNullNumberAsZero) && string.endsWith(".0")) {
            string = string.substring(0, string.length() - 2);
        }
        write(string);
        if (z && isEnabled(SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    public void writeHex(byte[] bArr) {
        int i = 2;
        int length = this.count + (bArr.length * 2) + 3;
        int i2 = 0;
        if (length > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[bArr.length + 3];
                cArr[0] = 'x';
                cArr[1] = '\'';
                while (i2 < bArr.length) {
                    int i3 = bArr[i2] & UnsignedBytes.MAX_VALUE;
                    int i4 = i3 >> 4;
                    int i5 = i3 & 15;
                    int i6 = i + 1;
                    cArr[i] = (char) (i4 + (i4 < 10 ? 48 : 55));
                    i = i6 + 1;
                    cArr[i6] = (char) (i5 + (i5 < 10 ? 48 : 55));
                    i2++;
                }
                cArr[i] = '\'';
                try {
                    this.writer.write(cArr);
                    return;
                } catch (IOException e2) {
                    throw new JSONException("writeBytes error.", e2);
                }
            }
            expandCapacity(length);
        }
        char[] cArr2 = this.buf;
        int i7 = this.count;
        int i8 = i7 + 1;
        this.count = i8;
        cArr2[i7] = 'x';
        this.count = i8 + 1;
        cArr2[i8] = '\'';
        while (i2 < bArr.length) {
            int i9 = bArr[i2] & UnsignedBytes.MAX_VALUE;
            int i10 = i9 >> 4;
            int i11 = i9 & 15;
            char[] cArr3 = this.buf;
            int i12 = this.count;
            int i13 = i12 + 1;
            this.count = i13;
            cArr3[i12] = (char) (i10 + (i10 < 10 ? 48 : 55));
            this.count = i13 + 1;
            cArr3[i13] = (char) (i11 + (i11 < 10 ? 48 : 55));
            i2++;
        }
        char[] cArr4 = this.buf;
        int i14 = this.count;
        this.count = i14 + 1;
        cArr4[i14] = '\'';
    }

    public void writeInt(int i) {
        if (i == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iStringSize = i < 0 ? IOUtils.stringSize(-i) + 1 : IOUtils.stringSize(i);
        int i2 = this.count + iStringSize;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                IOUtils.getChars(i, iStringSize, cArr);
                write(cArr, 0, iStringSize);
                return;
            }
            expandCapacity(i2);
        }
        IOUtils.getChars(i, i2, this.buf);
        this.count = i2;
    }

    public void writeLong(long j) {
        boolean z = isEnabled(SerializerFeature.BrowserCompatible) && !isEnabled(SerializerFeature.WriteClassName) && (j > 9007199254740991L || j < -9007199254740991L);
        if (j == Long.MIN_VALUE) {
            if (z) {
                write("\"-9223372036854775808\"");
                return;
            } else {
                write("-9223372036854775808");
                return;
            }
        }
        int iStringSize = j < 0 ? IOUtils.stringSize(-j) + 1 : IOUtils.stringSize(j);
        int i = this.count + iStringSize;
        if (z) {
            i += 2;
        }
        if (i > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                IOUtils.getChars(j, iStringSize, cArr);
                if (!z) {
                    write(cArr, 0, iStringSize);
                    return;
                }
                write(34);
                write(cArr, 0, iStringSize);
                write(34);
                return;
            }
            expandCapacity(i);
        }
        if (z) {
            char[] cArr2 = this.buf;
            cArr2[this.count] = '\"';
            int i2 = i - 1;
            IOUtils.getChars(j, i2, cArr2);
            this.buf[i2] = '\"';
        } else {
            IOUtils.getChars(j, i, this.buf);
        }
        this.count = i;
    }

    public void writeNull() {
        write(BuildConfig.COMMON_MODULE_COMMIT_ID);
    }

    public void writeString(String str, char c) {
        if (!this.useSingleQuotes) {
            writeStringWithDoubleQuote(str, c);
        } else {
            writeStringWithSingleQuote(str);
            write(c);
        }
    }

    /* JADX WARN: Code duplicated, block: B:238:0x0412 A[PHI: r4 r5
      0x0412: PHI (r4v26 int) = (r4v25 int), (r4v30 int) binds: [B:237:0x0410, B:234:0x0409] A[DONT_GENERATE, DONT_INLINE]
      0x0412: PHI (r5v27 int) = (r5v26 int), (r5v31 int) binds: [B:237:0x0410, B:234:0x0409] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:239:0x0416 A[PHI: r4 r5 r10
      0x0416: PHI (r4v29 int) = (r4v25 int), (r4v30 int), (r4v32 int) binds: [B:237:0x0410, B:234:0x0409, B:226:0x03ee] A[DONT_GENERATE, DONT_INLINE]
      0x0416: PHI (r5v30 int) = (r5v26 int), (r5v31 int), (r5v32 int) binds: [B:237:0x0410, B:234:0x0409, B:226:0x03ee] A[DONT_GENERATE, DONT_INLINE]
      0x0416: PHI (r10v16 int) = (r10v2 int), (r10v2 int), (r10v17 int) binds: [B:237:0x0410, B:234:0x0409, B:226:0x03ee] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:75:0x0177  */
    public void writeStringWithDoubleQuote(String str, char c) {
        int i;
        if (str == null) {
            writeNull();
            if (c != 0) {
                write(c);
                return;
            }
            return;
        }
        int length = str.length();
        int i2 = this.count + length + 2;
        if (c != 0) {
            i2++;
        }
        char c2 = '<';
        char c3 = 'a';
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write(34);
                int i3 = 0;
                while (i3 < str.length()) {
                    char cCharAt = str.charAt(i3);
                    if (isEnabled(SerializerFeature.BrowserSecure)) {
                        if (cCharAt == c2) {
                            write("&lt;");
                        } else if (cCharAt == '>') {
                            write("&gt;");
                        } else if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ',' || cCharAt == '.' || cCharAt == '_'))) {
                            write(92);
                            write(117);
                            char[] cArr = IOUtils.DIGITS;
                            write(cArr[(cCharAt >>> '\f') & 15]);
                            write(cArr[(cCharAt >>> '\b') & 15]);
                            write(cArr[(cCharAt >>> 4) & 15]);
                            write(cArr[cCharAt & 15]);
                        } else {
                            write(cCharAt);
                        }
                    } else if (!isEnabled(SerializerFeature.BrowserCompatible)) {
                        byte[] bArr = IOUtils.specicalFlags_doubleQuotes;
                        if ((cCharAt >= bArr.length || bArr[cCharAt] == 0) && !(cCharAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                            write(cCharAt);
                        } else {
                            write(92);
                            if (bArr[cCharAt] == 4) {
                                write(117);
                                char[] cArr2 = IOUtils.DIGITS;
                                write(cArr2[(cCharAt >>> '\f') & 15]);
                                write(cArr2[(cCharAt >>> '\b') & 15]);
                                write(cArr2[(cCharAt >>> 4) & 15]);
                                write(cArr2[cCharAt & 15]);
                            } else {
                                write(IOUtils.replaceChars[cCharAt]);
                            }
                        }
                    } else if (cCharAt == '\b' || cCharAt == '\f' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t' || cCharAt == '\"' || cCharAt == '/' || cCharAt == '\\') {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt]);
                    } else if (cCharAt < ' ') {
                        write(92);
                        write(117);
                        write(48);
                        write(48);
                        char[] cArr3 = IOUtils.ASCII_CHARS;
                        int i4 = cCharAt * 2;
                        write(cArr3[i4]);
                        write(cArr3[i4 + 1]);
                    } else if (cCharAt >= 127) {
                        write(92);
                        write(117);
                        char[] cArr4 = IOUtils.DIGITS;
                        write(cArr4[(cCharAt >>> '\f') & 15]);
                        write(cArr4[(cCharAt >>> '\b') & 15]);
                        write(cArr4[(cCharAt >>> 4) & 15]);
                        write(cArr4[cCharAt & 15]);
                    } else {
                        write(cCharAt);
                    }
                    i3++;
                    c2 = '<';
                }
                write(34);
                if (c != 0) {
                    write(c);
                    return;
                }
                return;
            }
            expandCapacity(i2);
        }
        int i5 = this.count;
        int i6 = i5 + 1;
        int i7 = i6 + length;
        char[] cArr5 = this.buf;
        cArr5[i5] = '\"';
        int i8 = 0;
        str.getChars(0, length, cArr5, i6);
        this.count = i2;
        int i9 = -1;
        if (isEnabled(SerializerFeature.BrowserSecure)) {
            for (int i10 = i6; i10 < i7; i10++) {
                char c4 = this.buf[i10];
                if ((c4 < '0' || c4 > '9') && ((c4 < 'a' || c4 > 'z') && ((c4 < 'A' || c4 > 'Z') && c4 != ',' && c4 != '.' && c4 != '_'))) {
                    i2 = (c4 == '<' || c4 == '>') ? i2 + 3 : i2 + 5;
                    i9 = i10;
                }
            }
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            this.count = i2;
            while (i9 >= i6) {
                char[] cArr6 = this.buf;
                char c5 = cArr6[i9];
                if ((c5 < '0' || c5 > '9') && ((c5 < c3 || c5 > 'z') && ((c5 < 'A' || c5 > 'Z') && c5 != ',' && c5 != '.' && c5 != '_'))) {
                    if (c5 == '<') {
                        int i11 = i9 + 1;
                        System.arraycopy(cArr6, i11, cArr6, i9 + 4, (i7 - i9) - 1);
                        char[] cArr7 = this.buf;
                        cArr7[i9] = '&';
                        cArr7[i11] = 'l';
                        cArr7[i9 + 2] = 't';
                        cArr7[i9 + 3] = ';';
                    } else if (c5 == '>') {
                        int i12 = i9 + 1;
                        System.arraycopy(cArr6, i12, cArr6, i9 + 4, (i7 - i9) - 1);
                        char[] cArr8 = this.buf;
                        cArr8[i9] = '&';
                        cArr8[i12] = 'g';
                        cArr8[i9 + 2] = 't';
                        cArr8[i9 + 3] = ';';
                    } else {
                        int i13 = i9 + 1;
                        System.arraycopy(cArr6, i13, cArr6, i9 + 6, (i7 - i9) - 1);
                        char[] cArr9 = this.buf;
                        cArr9[i9] = '\\';
                        cArr9[i13] = 'u';
                        char[] cArr10 = IOUtils.DIGITS;
                        cArr9[i9 + 2] = cArr10[(c5 >>> '\f') & 15];
                        cArr9[i9 + 3] = cArr10[(c5 >>> '\b') & 15];
                        cArr9[i9 + 4] = cArr10[(c5 >>> 4) & 15];
                        cArr9[i9 + 5] = cArr10[c5 & 15];
                        i7 += 5;
                    }
                    i7 += 3;
                }
                i9--;
                c3 = 'a';
            }
            if (c == 0) {
                this.buf[this.count - 1] = '\"';
                return;
            }
            char[] cArr11 = this.buf;
            int i14 = this.count;
            cArr11[i14 - 2] = '\"';
            cArr11[i14 - 1] = c;
            return;
        }
        if (isEnabled(SerializerFeature.BrowserCompatible)) {
            for (int i15 = i6; i15 < i7; i15++) {
                char c6 = this.buf[i15];
                if (c6 == '\"' || c6 == '/' || c6 == '\\' || c6 == '\b' || c6 == '\f' || c6 == '\n' || c6 == '\r' || c6 == '\t') {
                    i2++;
                } else {
                    if (c6 < ' ' || c6 >= 127) {
                        i2 += 5;
                    }
                }
                i9 = i15;
            }
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            this.count = i2;
            while (i9 >= i6) {
                char[] cArr12 = this.buf;
                char c7 = cArr12[i9];
                if (c7 == '\b' || c7 == '\f' || c7 == '\n' || c7 == '\r' || c7 == '\t') {
                    int i16 = i9 + 1;
                    System.arraycopy(cArr12, i16, cArr12, i9 + 2, (i7 - i9) - 1);
                    char[] cArr13 = this.buf;
                    cArr13[i9] = '\\';
                    cArr13[i16] = IOUtils.replaceChars[c7];
                } else {
                    if (c7 == '\"' || c7 == '/' || c7 == '\\') {
                        int i17 = i9 + 1;
                        System.arraycopy(cArr12, i17, cArr12, i9 + 2, (i7 - i9) - 1);
                        char[] cArr14 = this.buf;
                        cArr14[i9] = '\\';
                        cArr14[i17] = c7;
                    } else {
                        if (c7 < ' ') {
                            int i18 = i9 + 1;
                            System.arraycopy(cArr12, i18, cArr12, i9 + 6, (i7 - i9) - 1);
                            char[] cArr15 = this.buf;
                            cArr15[i9] = '\\';
                            cArr15[i18] = 'u';
                            cArr15[i9 + 2] = '0';
                            cArr15[i9 + 3] = '0';
                            char[] cArr16 = IOUtils.ASCII_CHARS;
                            int i19 = c7 * 2;
                            cArr15[i9 + 4] = cArr16[i19];
                            cArr15[i9 + 5] = cArr16[i19 + 1];
                        } else if (c7 >= 127) {
                            int i20 = i9 + 1;
                            System.arraycopy(cArr12, i20, cArr12, i9 + 6, (i7 - i9) - 1);
                            char[] cArr17 = this.buf;
                            cArr17[i9] = '\\';
                            cArr17[i20] = 'u';
                            char[] cArr18 = IOUtils.DIGITS;
                            cArr17[i9 + 2] = cArr18[(c7 >>> '\f') & 15];
                            cArr17[i9 + 3] = cArr18[(c7 >>> '\b') & 15];
                            cArr17[i9 + 4] = cArr18[(c7 >>> 4) & 15];
                            cArr17[i9 + 5] = cArr18[c7 & 15];
                        }
                        i7 += 5;
                    }
                    i9--;
                }
                i7++;
                i9--;
            }
            if (c == 0) {
                this.buf[this.count - 1] = '\"';
                return;
            }
            char[] cArr19 = this.buf;
            int i21 = this.count;
            cArr19[i21 - 2] = '\"';
            cArr19[i21 - 1] = c;
            return;
        }
        char c8 = 0;
        int i22 = -1;
        int i23 = -1;
        for (int i24 = i6; i24 < i7; i24++) {
            char c9 = this.buf[i24];
            if (c9 == 8232 || c9 == 8233) {
                i8++;
                i2 += 4;
                if (i22 == -1) {
                    i22 = i24;
                    i23 = i22;
                } else {
                    i23 = i24;
                }
                c8 = c9;
            } else if (c9 >= ']') {
                if (c9 >= 127 && c9 < 160) {
                    if (i22 == -1) {
                        i22 = i24;
                    }
                    i8++;
                    i2 += 4;
                    i23 = i24;
                    c8 = c9;
                }
            } else if (isSpecial(c9, this.features)) {
                i8++;
                byte[] bArr2 = IOUtils.specicalFlags_doubleQuotes;
                if (c9 < bArr2.length && bArr2[c9] == 4) {
                    i2 += 4;
                }
                if (i22 == -1) {
                    i22 = i24;
                    i23 = i22;
                } else {
                    i23 = i24;
                }
                c8 = c9;
            }
        }
        if (i8 > 0) {
            int i25 = i2 + i8;
            if (i25 > this.buf.length) {
                expandCapacity(i25);
            }
            this.count = i25;
            if (i8 == 1) {
                if (c8 == 8232) {
                    int i26 = i23 + 1;
                    char[] cArr20 = this.buf;
                    System.arraycopy(cArr20, i26, cArr20, i23 + 6, (i7 - i23) - 1);
                    char[] cArr21 = this.buf;
                    cArr21[i23] = '\\';
                    cArr21[i26] = 'u';
                    int i27 = i26 + 1;
                    cArr21[i27] = '2';
                    int i28 = i27 + 1;
                    cArr21[i28] = '0';
                    int i29 = i28 + 1;
                    cArr21[i29] = '2';
                    cArr21[i29 + 1] = '8';
                } else if (c8 == 8233) {
                    int i30 = i23 + 1;
                    char[] cArr22 = this.buf;
                    System.arraycopy(cArr22, i30, cArr22, i23 + 6, (i7 - i23) - 1);
                    char[] cArr23 = this.buf;
                    cArr23[i23] = '\\';
                    cArr23[i30] = 'u';
                    int i31 = i30 + 1;
                    cArr23[i31] = '2';
                    int i32 = i31 + 1;
                    cArr23[i32] = '0';
                    int i33 = i32 + 1;
                    cArr23[i33] = '2';
                    cArr23[i33 + 1] = '9';
                } else {
                    byte[] bArr3 = IOUtils.specicalFlags_doubleQuotes;
                    if (c8 >= bArr3.length || bArr3[c8] != 4) {
                        int i34 = i23 + 1;
                        char[] cArr24 = this.buf;
                        System.arraycopy(cArr24, i34, cArr24, i23 + 2, (i7 - i23) - 1);
                        char[] cArr25 = this.buf;
                        cArr25[i23] = '\\';
                        cArr25[i34] = IOUtils.replaceChars[c8];
                    } else {
                        int i35 = i23 + 1;
                        char[] cArr26 = this.buf;
                        System.arraycopy(cArr26, i35, cArr26, i23 + 6, (i7 - i23) - 1);
                        char[] cArr27 = this.buf;
                        cArr27[i23] = '\\';
                        int i36 = i35 + 1;
                        cArr27[i35] = 'u';
                        int i37 = i36 + 1;
                        char[] cArr28 = IOUtils.DIGITS;
                        cArr27[i36] = cArr28[(c8 >>> '\f') & 15];
                        int i38 = i37 + 1;
                        cArr27[i37] = cArr28[(c8 >>> '\b') & 15];
                        cArr27[i38] = cArr28[(c8 >>> 4) & 15];
                        cArr27[i38 + 1] = cArr28[c8 & 15];
                    }
                }
            } else if (i8 > 1) {
                for (int i39 = i22 - i6; i39 < str.length(); i39++) {
                    char cCharAt2 = str.charAt(i39);
                    byte[] bArr4 = IOUtils.specicalFlags_doubleQuotes;
                    if ((cCharAt2 < bArr4.length && bArr4[cCharAt2] != 0) || (cCharAt2 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        char[] cArr29 = this.buf;
                        int i40 = i22 + 1;
                        cArr29[i22] = '\\';
                        if (bArr4[cCharAt2] == 4) {
                            int i41 = i40 + 1;
                            cArr29[i40] = 'u';
                            int i42 = i41 + 1;
                            char[] cArr30 = IOUtils.DIGITS;
                            cArr29[i41] = cArr30[(cCharAt2 >>> '\f') & 15];
                            int i43 = i42 + 1;
                            cArr29[i42] = cArr30[(cCharAt2 >>> '\b') & 15];
                            int i44 = i43 + 1;
                            cArr29[i43] = cArr30[(cCharAt2 >>> 4) & 15];
                            i = i44 + 1;
                            cArr29[i44] = cArr30[cCharAt2 & 15];
                        } else {
                            i = i40 + 1;
                            cArr29[i40] = IOUtils.replaceChars[cCharAt2];
                        }
                        i22 = i;
                    } else if (cCharAt2 == 8232 || cCharAt2 == 8233) {
                        char[] cArr31 = this.buf;
                        int i45 = i22 + 1;
                        cArr31[i22] = '\\';
                        int i46 = i45 + 1;
                        cArr31[i45] = 'u';
                        int i47 = i46 + 1;
                        char[] cArr32 = IOUtils.DIGITS;
                        cArr31[i46] = cArr32[(cCharAt2 >>> '\f') & 15];
                        int i48 = i47 + 1;
                        cArr31[i47] = cArr32[(cCharAt2 >>> '\b') & 15];
                        int i49 = i48 + 1;
                        cArr31[i48] = cArr32[(cCharAt2 >>> 4) & 15];
                        i22 = i49 + 1;
                        cArr31[i49] = cArr32[cCharAt2 & 15];
                    } else {
                        this.buf[i22] = cCharAt2;
                        i22++;
                    }
                }
            }
        }
        if (c == 0) {
            this.buf[this.count - 1] = '\"';
            return;
        }
        char[] cArr33 = this.buf;
        int i50 = this.count;
        cArr33[i50 - 2] = '\"';
        cArr33[i50 - 1] = c;
    }

    protected void writeStringWithSingleQuote(String str) {
        int i = 0;
        if (str == null) {
            int i2 = this.count + 4;
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            BuildConfig.COMMON_MODULE_COMMIT_ID.getChars(0, 4, this.buf, this.count);
            this.count = i2;
            return;
        }
        int length = str.length();
        int i3 = this.count + length + 2;
        if (i3 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i < str.length()) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt]);
                    } else {
                        write(cCharAt);
                    }
                    i++;
                }
                write(39);
                return;
            }
            expandCapacity(i3);
        }
        int i4 = this.count;
        int i5 = i4 + 1;
        int i6 = i5 + length;
        char[] cArr = this.buf;
        cArr[i4] = '\'';
        str.getChars(0, length, cArr, i5);
        this.count = i3;
        int i7 = -1;
        char c = 0;
        for (int i8 = i5; i8 < i6; i8++) {
            char c2 = this.buf[i8];
            if (c2 <= '\r' || c2 == '\\' || c2 == '\'' || (c2 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                i++;
                i7 = i8;
                c = c2;
            }
        }
        int i9 = i3 + i;
        if (i9 > this.buf.length) {
            expandCapacity(i9);
        }
        this.count = i9;
        if (i == 1) {
            char[] cArr2 = this.buf;
            int i10 = i7 + 1;
            System.arraycopy(cArr2, i10, cArr2, i7 + 2, (i6 - i7) - 1);
            char[] cArr3 = this.buf;
            cArr3[i7] = '\\';
            cArr3[i10] = IOUtils.replaceChars[c];
        } else if (i > 1) {
            char[] cArr4 = this.buf;
            int i11 = i7 + 1;
            System.arraycopy(cArr4, i11, cArr4, i7 + 2, (i6 - i7) - 1);
            char[] cArr5 = this.buf;
            cArr5[i7] = '\\';
            cArr5[i11] = IOUtils.replaceChars[c];
            int i12 = i6 + 1;
            for (int i13 = i11 - 2; i13 >= i5; i13--) {
                char c3 = this.buf[i13];
                if (c3 <= '\r' || c3 == '\\' || c3 == '\'' || (c3 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.buf;
                    int i14 = i13 + 1;
                    System.arraycopy(cArr6, i14, cArr6, i13 + 2, (i12 - i13) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[i13] = '\\';
                    cArr7[i14] = IOUtils.replaceChars[c3];
                    i12++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeTo(Writer writer) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        writer.write(this.buf, 0, this.count);
    }

    public int writeToEx(OutputStream outputStream, Charset charset) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charset == UTF8) {
            return encodeToUTF8(outputStream);
        }
        byte[] bytes = new String(this.buf, 0, this.count).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }

    public SerializeWriter(Writer writer) {
        this(writer, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
    }

    public boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    public void writeFieldName(String str, boolean z) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.useSingleQuotes) {
            if (!this.quoteFieldNames) {
                writeKeyWithSingleQuoteIfHasSpecial(str);
                return;
            } else {
                writeStringWithSingleQuote(str);
                write(58);
                return;
            }
        }
        if (this.quoteFieldNames) {
            writeStringWithDoubleQuote(str, ':');
            return;
        }
        boolean z2 = true;
        boolean z3 = str.length() == 0;
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                z2 = z3;
                break;
            } else if (isSpecial(str.charAt(i), 0)) {
                break;
            } else {
                i++;
            }
        }
        if (z2) {
            writeStringWithDoubleQuote(str, ':');
        } else {
            write(str);
            write(58);
        }
    }

    public void writeNull(SerializerFeature serializerFeature) {
        writeNull(0, serializerFeature.mask);
    }

    public SerializeWriter(SerializerFeature... serializerFeatureArr) {
        this((Writer) null, serializerFeatureArr);
    }

    public void writeNull(int i, int i2) {
        if ((i & i2) == 0 && (this.features & i2) == 0) {
            writeNull();
            return;
        }
        if (i2 == SerializerFeature.WriteNullListAsEmpty.mask) {
            write("[]");
            return;
        }
        if (i2 == SerializerFeature.WriteNullStringAsEmpty.mask) {
            writeString("");
            return;
        }
        if (i2 == SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write(Bugly.SDK_IS_DEV);
        } else if (i2 == SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            writeNull();
        }
    }

    public SerializeWriter(Writer writer, SerializerFeature... serializerFeatureArr) {
        this(writer, 0, serializerFeatureArr);
    }

    public byte[] toBytes(Charset charset) {
        if (this.writer == null) {
            if (charset == UTF8) {
                return encodeToUTF8Bytes();
            }
            return new String(this.buf, 0, this.count).getBytes(charset);
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public void writeTo(OutputStream outputStream, String str) throws IOException {
        writeTo(outputStream, Charset.forName(str));
    }

    public SerializeWriter(Writer writer, int i, SerializerFeature... serializerFeatureArr) {
        this.maxBufSize = -1;
        this.writer = writer;
        ThreadLocal<char[]> threadLocal = bufLocal;
        char[] cArr = threadLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        } else {
            this.buf = new char[2048];
        }
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            i |= serializerFeature.getMask();
        }
        this.features = i;
        computeFeatures();
    }

    public void writeFieldValue(char c, String str, boolean z) {
        if (!this.quoteFieldNames) {
            write(c);
            writeFieldName(str);
            write(z);
            return;
        }
        int i = z ? 4 : 5;
        int length = str.length();
        int i2 = this.count + length + 4 + i;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write(c);
                writeString(str);
                write(58);
                write(z);
                return;
            }
            expandCapacity(i2);
        }
        int i3 = this.count;
        this.count = i2;
        char[] cArr = this.buf;
        cArr[i3] = c;
        int i4 = i3 + length + 1;
        cArr[i3 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i3 + 2);
        this.buf[i4 + 1] = this.keySeperator;
        if (z) {
            System.arraycopy(":true".toCharArray(), 0, this.buf, i4 + 2, 5);
        } else {
            System.arraycopy(":false".toCharArray(), 0, this.buf, i4 + 2, 6);
        }
    }

    public void writeString(String str) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
        } else {
            writeStringWithDoubleQuote(str, (char) 0);
        }
    }

    public void writeTo(OutputStream outputStream, Charset charset) throws IOException {
        writeToEx(outputStream, charset);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(CharSequence charSequence) {
        String string = charSequence == null ? BuildConfig.COMMON_MODULE_COMMIT_ID : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        int i3;
        if (i < 0 || i > cArr.length || i2 < 0 || (i3 = i + i2) > cArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.count + i2;
        if (i4 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i4);
            } else {
                do {
                    char[] cArr2 = this.buf;
                    int length = cArr2.length;
                    int i5 = this.count;
                    int i6 = length - i5;
                    System.arraycopy(cArr, i, cArr2, i5, i6);
                    this.count = this.buf.length;
                    flush();
                    i2 -= i6;
                    i += i6;
                } while (i2 > this.buf.length);
                i4 = i2;
            }
        }
        System.arraycopy(cArr, i, this.buf, this.count, i2);
        this.count = i4;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = BuildConfig.COMMON_MODULE_COMMIT_ID;
        }
        String string = charSequence.subSequence(i, i2).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(char c) {
        write(c);
        return this;
    }

    public SerializeWriter(int i) {
        this((Writer) null, i);
    }

    public SerializeWriter(Writer writer, int i) {
        this.maxBufSize = -1;
        this.writer = writer;
        if (i > 0) {
            this.buf = new char[i];
            return;
        }
        throw new IllegalArgumentException("Negative initial size: " + i);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        int i3;
        int i4 = this.count + i2;
        if (i4 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i4);
            } else {
                while (true) {
                    char[] cArr = this.buf;
                    int length = cArr.length;
                    int i5 = this.count;
                    int i6 = length - i5;
                    i3 = i + i6;
                    str.getChars(i, i3, cArr, i5);
                    this.count = this.buf.length;
                    flush();
                    i2 -= i6;
                    if (i2 <= this.buf.length) {
                        break;
                    } else {
                        i = i3;
                    }
                }
                i4 = i2;
                i = i3;
            }
        }
        str.getChars(i, i2 + i, this.buf, this.count);
        this.count = i4;
    }

    public void writeFieldValue(char c, String str, int i) {
        if (i != Integer.MIN_VALUE && this.quoteFieldNames) {
            int iStringSize = i < 0 ? IOUtils.stringSize(-i) + 1 : IOUtils.stringSize(i);
            int length = str.length();
            int i2 = this.count + length + 4 + iStringSize;
            if (i2 > this.buf.length) {
                if (this.writer != null) {
                    write(c);
                    writeFieldName(str);
                    writeInt(i);
                    return;
                }
                expandCapacity(i2);
            }
            int i3 = this.count;
            this.count = i2;
            char[] cArr = this.buf;
            cArr[i3] = c;
            int i4 = i3 + length + 1;
            cArr[i3 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i3 + 2);
            char[] cArr2 = this.buf;
            cArr2[i4 + 1] = this.keySeperator;
            cArr2[i4 + 2] = ':';
            IOUtils.getChars(i, this.count, cArr2);
            return;
        }
        write(c);
        writeFieldName(str);
        writeInt(i);
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str == null) {
            writeNull();
        } else {
            write(str, 0, str.length());
        }
    }

    public void write(List<String> list) {
        boolean z;
        int i;
        if (list.isEmpty()) {
            write("[]");
            return;
        }
        int i2 = this.count;
        int size = list.size();
        int i3 = i2;
        int i4 = 0;
        while (i4 < size) {
            String str = list.get(i4);
            if (str == null) {
                z = true;
            } else {
                int length = str.length();
                z = false;
                for (int i5 = 0; i5 < length; i5++) {
                    char cCharAt = str.charAt(i5);
                    z = cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\\';
                    if (z) {
                        break;
                    }
                }
            }
            if (z) {
                this.count = i2;
                write(91);
                for (int i6 = 0; i6 < list.size(); i6++) {
                    String str2 = list.get(i6);
                    if (i6 != 0) {
                        write(44);
                    }
                    if (str2 == null) {
                        write(BuildConfig.COMMON_MODULE_COMMIT_ID);
                    } else {
                        writeStringWithDoubleQuote(str2, (char) 0);
                    }
                }
                write(93);
                return;
            }
            int length2 = str.length() + i3 + 3;
            if (i4 == list.size() - 1) {
                length2++;
            }
            if (length2 > this.buf.length) {
                this.count = i3;
                expandCapacity(length2);
            }
            if (i4 == 0) {
                i = i3 + 1;
                this.buf[i3] = '[';
            } else {
                i = i3 + 1;
                this.buf[i3] = ',';
            }
            int i7 = i + 1;
            this.buf[i] = '\"';
            str.getChars(0, str.length(), this.buf, i7);
            int length3 = i7 + str.length();
            this.buf[length3] = '\"';
            i4++;
            i3 = length3 + 1;
        }
        this.buf[i3] = ']';
        this.count = i3 + 1;
    }

    public void writeFieldValue(char c, String str, long j) {
        if (j != Long.MIN_VALUE && this.quoteFieldNames) {
            int iStringSize = j < 0 ? IOUtils.stringSize(-j) + 1 : IOUtils.stringSize(j);
            int length = str.length();
            int i = this.count + length + 4 + iStringSize;
            if (i > this.buf.length) {
                if (this.writer != null) {
                    write(c);
                    writeFieldName(str);
                    writeLong(j);
                    return;
                }
                expandCapacity(i);
            }
            int i2 = this.count;
            this.count = i;
            char[] cArr = this.buf;
            cArr[i2] = c;
            int i3 = i2 + length + 1;
            cArr[i2 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i2 + 2);
            char[] cArr2 = this.buf;
            cArr2[i3 + 1] = this.keySeperator;
            cArr2[i3 + 2] = ':';
            IOUtils.getChars(j, this.count, cArr2);
            return;
        }
        write(c);
        writeFieldName(str);
        writeLong(j);
    }

    public void write(boolean z) {
        if (z) {
            write("true");
        } else {
            write(Bugly.SDK_IS_DEV);
        }
    }

    public void writeFieldValue(char c, String str, float f2) {
        write(c);
        writeFieldName(str);
        writeFloat(f2, false);
    }

    public void writeFieldValue(char c, String str, double d2) {
        write(c);
        writeFieldName(str);
        writeDouble(d2, false);
    }

    public void writeFieldValue(char c, String str, String str2) {
        if (this.quoteFieldNames) {
            if (this.useSingleQuotes) {
                write(c);
                writeFieldName(str);
                if (str2 == null) {
                    writeNull();
                    return;
                } else {
                    writeString(str2);
                    return;
                }
            }
            if (isEnabled(SerializerFeature.BrowserSecure)) {
                write(c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            } else {
                if (isEnabled(SerializerFeature.BrowserCompatible)) {
                    write(c);
                    writeStringWithDoubleQuote(str, ':');
                    writeStringWithDoubleQuote(str2, (char) 0);
                    return;
                }
                writeFieldValueStringWithDoubleQuoteCheck(c, str, str2);
                return;
            }
        }
        write(c);
        writeFieldName(str);
        if (str2 == null) {
            writeNull();
        } else {
            writeString(str2);
        }
    }

    public void writeFieldValue(char c, String str, Enum<?> r4) {
        if (r4 == null) {
            write(c);
            writeFieldName(str);
            writeNull();
        } else if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            writeEnumFieldValue(c, str, r4.name());
        } else if (this.writeEnumUsingToString) {
            writeEnumFieldValue(c, str, r4.toString());
        } else {
            writeFieldValue(c, str, r4.ordinal());
        }
    }

    public void writeFieldValue(char c, String str, BigDecimal bigDecimal) {
        write(c);
        writeFieldName(str);
        if (bigDecimal == null) {
            writeNull();
        } else {
            write(bigDecimal.toString());
        }
    }
}

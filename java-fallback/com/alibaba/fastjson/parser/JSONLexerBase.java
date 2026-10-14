package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.C;
import com.mobile.auth.BuildConfig;
import com.serenegiant.usb.UVCCamera;
import com.tencent.bugly.Bugly;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JSONLexerBase implements JSONLexer, Closeable {
    protected static final int INT_MULTMIN_RADIX_TEN = -214748364;
    protected static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    private static final ThreadLocal<char[]> SBUF_LOCAL = null;
    protected static final int[] digits = null;
    protected static final char[] typeFieldName = null;
    protected int bp;
    protected Calendar calendar;
    protected char ch;
    protected int eofPos;
    protected int features;
    protected boolean hasSpecial;
    protected Locale locale;
    public int matchStat;
    protected int np;
    protected int pos;
    protected char[] sbuf;
    protected int sp;
    protected String stringDefaultValue;
    protected TimeZone timeZone;
    protected int token;

    static {
        SBUF_LOCAL = new ThreadLocal();
        typeFieldName = ("\"" + JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
        digits = new int[103];
        int r0 = 48;
    L4:
        if (r0 > 57) goto L6;
        digits[r0] = r0 - 48;
        r0 = r0 + 1;
        goto L4
    L6:
        int r1 = 97;
    L8:
        if (r1 > 102) goto L10;
        digits[r1] = (r1 - 97) + 10;
        r1 = r1 + 1;
        goto L8
    L10:
        int r2 = 65;
    L12:
        if (r2 > 70) goto L14;
        digits[r2] = (r2 - 65) + 10;
        r2 = r2 + 1;
        goto L12
    }

    public JSONLexerBase(int r3) {
        this.calendar = null;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.matchStat = 0;
        this.stringDefaultValue = null;
        this.features = r3;
        if ((r3 & Feature.InitStringFieldAsEmpty.mask) == 0) goto L5;
        this.stringDefaultValue = "";
    L5:
        char[] r4 = SBUF_LOCAL.get();
        this.sbuf = r4;
        if (r4 != null) goto L9;
        this.sbuf = new char[512];
        return;
    }

    public static boolean isWhitespace(char r1) {
        if (r1 > ' ') goto L16;
        if (r1 != ' ') goto L6;
    L15:
        return true;
    L6:
        if (r1 == '\n') goto L15;
        if (r1 == '\r') goto L15;
        if (r1 == '\t') goto L15;
        if (r1 == '\f') goto L15;
        if (r1 == '\b') goto L15;
    L16:
        return false;
    }

    public static String readString(char[] r12, int r13) {
        char[] r0 = new char[r13];
        int r2 = 0;
        int r3 = 0;
    L3:
        if (r2 >= r13) goto L52;
        char r4 = r12[r2];
        if (r4 == '\\') goto L7;
        r0[r3] = r4;
        r3 = r3 + 1;
    L50:
        r2 = r2 + 1;
        goto L3
    L7:
        r2 = r2 + 1;
        char r5 = r12[r2];
        if (r5 != '\"') goto L10;
        int r6 = r3 + 1;
        r0[r3] = '\"';
    L49:
        r3 = r6;
        goto L50
    L10:
        if (r5 != '\'') goto L12;
        r6 = r3 + 1;
        r0[r3] = '\'';
        goto L49
    L12:
        if (r5 == 'F') goto L46;
        if (r5 != '\\') goto L15;
        r6 = r3 + 1;
        r0[r3] = '\\';
        goto L49
    L15:
        if (r5 != 'b') goto L17;
        r6 = r3 + 1;
        r0[r3] = '\b';
        goto L49
    L17:
        if (r5 == 'f') goto L46;
        if (r5 != 'n') goto L21;
        r6 = r3 + 1;
        r0[r3] = '\n';
        goto L49
    L21:
        if (r5 != 'r') goto L23;
        r6 = r3 + 1;
        r0[r3] = '\r';
        goto L49
    L23:
        if (r5 != 'x') goto L25;
        r6 = r3 + 1;
        int[] r7 = digits;
        int r8 = r2 + 1;
        int r9 = r7[r12[r8]] * 16;
        r2 = r8 + 1;
        r0[r3] = (char) (r9 + r7[r12[r2]]);
        goto L49
    L25:
        switch(r5) {
            case 47: goto L40;
            case 48: goto L39;
            case 49: goto L38;
            case 50: goto L37;
            case 51: goto L36;
            case 52: goto L35;
            case 53: goto L34;
            case 54: goto L33;
            case 55: goto L32;
            default: goto L26;
        };
    L26:
        switch(r5) {
            case 116: goto L31;
            case 117: goto L30;
            case 118: goto L29;
            default: goto L28;
        };
    L29:
        r6 = r3 + 1;
        r0[r3] = 11;
        goto L49
    L30:
        r6 = r3 + 1;
        int r10 = r2 + 1;
        int r11 = r10 + 1;
        int r14 = r11 + 1;
        r2 = r14 + 1;
        r0[r3] = (char) Integer.parseInt(new String(new char[]{r12[r10], r12[r11], r12[r14], r12[r2]}), 16);
        goto L49
    L31:
        r6 = r3 + 1;
        r0[r3] = '\t';
        goto L49
    L28:
        throw new JSONException("unclosed.str.lit");
    L32:
        r6 = r3 + 1;
        r0[r3] = 7;
        goto L49
    L33:
        r6 = r3 + 1;
        r0[r3] = 6;
        goto L49
    L34:
        r6 = r3 + 1;
        r0[r3] = 5;
        goto L49
    L35:
        r6 = r3 + 1;
        r0[r3] = 4;
        goto L49
    L36:
        r6 = r3 + 1;
        r0[r3] = 3;
        goto L49
    L37:
        r6 = r3 + 1;
        r0[r3] = 2;
        goto L49
    L38:
        r6 = r3 + 1;
        r0[r3] = 1;
        goto L49
    L39:
        r6 = r3 + 1;
        r0[r3] = 0;
        goto L49
    L40:
        r6 = r3 + 1;
        r0[r3] = '/';
    L46:
        r6 = r3 + 1;
        r0[r3] = '\f';
        goto L49
    L52:
        return new String(r0, 0, r3);
    }

    private void scanStringSingleQuote() {
        this.np = this.bp;
        this.hasSpecial = false;
    L3:
        char r1 = next();
        if (r1 == '\'') goto L5;
        if (r1 == 26) goto L10;
        if (r1 == '\\') goto L17;
        if (this.hasSpecial == false) goto L65;
        int r2 = this.sp;
        char[] r3 = this.sbuf;
        if (r2 == r3.length) goto L68;
        this.sp = r2 + 1;
        r3[r2] = r1;
        goto L3
    L68:
        putChar(r1);
        goto L3
    L65:
        this.sp++;
        goto L3
    L17:
        if (this.hasSpecial == true) goto L22;
        this.hasSpecial = true;
        int r4 = this.sp;
        char[] r7 = this.sbuf;
        if (r4 <= r7.length) goto L21;
        char[] r5 = new char[r4 * 2];
        System.arraycopy(r7, 0, r5, 0, r7.length);
        this.sbuf = r5;
    L21:
        copyTo(this.np + 1, this.sp, this.sbuf);
    L22:
        char r6 = next();
        if (r6 != '\"') goto L24;
        putChar('\"');
        goto L3
    L24:
        if (r6 != '\'') goto L26;
        putChar('\'');
        goto L3
    L26:
        if (r6 == 'F') goto L60;
        if (r6 != '\\') goto L29;
        putChar('\\');
        goto L3
    L29:
        if (r6 != 'b') goto L31;
        putChar('\b');
        goto L3
    L31:
        if (r6 == 'f') goto L60;
        if (r6 != 'n') goto L35;
        putChar('\n');
        goto L3
    L35:
        if (r6 != 'r') goto L37;
        putChar('\r');
        goto L3
    L37:
        if (r6 != 'x') goto L39;
        int[] r8 = digits;
        putChar((char) ((r8[next()] * 16) + r8[next()]));
        goto L3
    L39:
        switch(r6) {
            case 47: goto L54;
            case 48: goto L53;
            case 49: goto L52;
            case 50: goto L51;
            case 51: goto L50;
            case 52: goto L49;
            case 53: goto L48;
            case 54: goto L47;
            case 55: goto L46;
            default: goto L40;
        };
    L46:
        putChar(7);
        goto L3
    L47:
        putChar(6);
        goto L3
    L48:
        putChar(5);
        goto L3
    L49:
        putChar(4);
        goto L3
    L50:
        putChar(3);
        goto L3
    L51:
        putChar(2);
        goto L3
    L52:
        putChar(1);
        goto L3
    L53:
        putChar(0);
        goto L3
    L54:
        putChar('/');
        goto L3
    L40:
        switch(r6) {
            case 116: goto L45;
            case 117: goto L44;
            case 118: goto L43;
            default: goto L41;
        };
    L41:
        this.ch = r6;
        throw new JSONException("unclosed single-quote string");
    L44:
        putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
        goto L3
    L45:
        putChar('\t');
        goto L3
    L43:
        putChar(11);
    L60:
        putChar('\f');
        goto L3
    L10:
        if (isEOF() == true) goto L13;
        putChar(JSONLexer.EOI);
        goto L3
    L13:
        throw new JSONException("unclosed single-quote string");
    L5:
        this.token = 4;
        next();
    }

    public abstract String addSymbol(int r1, int r2, int r3, SymbolTable r4);

    protected abstract void arrayCopy(int r1, char[] r2, int r3, int r4);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    protected abstract boolean charArrayCompare(char[] r1);

    public abstract char charAt(int r1);

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] r0 = this.sbuf;
        if (r0.length > 8192) goto L5;
        SBUF_LOCAL.set(r0);
    L5:
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(Feature r2, boolean r3) {
        int r4 = Feature.config(this.features, r2, r3);
        this.features = r4;
        if ((r4 & Feature.InitStringFieldAsEmpty.mask) == 0) goto L6;
        this.stringDefaultValue = "";
        return;
    }

    protected abstract void copyTo(int r1, int r2, char[] r3);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number decimalValue(boolean r3) {
        char r0 = charAt((this.np + this.sp) - 1);
        if (r0 != 'F') goto L9;
        return Float.valueOf(Float.parseFloat(numberString()));
    L9:
        if (r0 == 'D') goto L11;
        if (r3 == false) goto L16;
        return decimalValue();
    L16:
        return Double.valueOf(doubleValue());
    L11:
        return Double.valueOf(Double.parseDouble(numberString()));
    L6:
        e = move-exception;
        throw new JSONException(e.getMessage() + ", " + info());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract BigDecimal decimalValue();

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() {
        String r0 = numberString();
        float r1 = Float.parseFloat(r0);
        if (r1 != BitmapDescriptorFactory.HUE_RED) goto L5;
    L6:
        char r2 = r0.charAt(0);
        if (r2 > '0') goto L9;
    L13:
        return r1;
    L9:
        if (r2 > '9') goto L13;
        throw new JSONException("float overflow : " + r0);
    L5:
        if (r1 != Float.POSITIVE_INFINITY) goto L13;
        goto L6
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.ch;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public abstract int indexOf(char r1, int r2);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        return "";
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int r1 = 0;
        if (this.np != (-1)) goto L5;
        this.np = 0;
    L5:
        int r0 = this.np;
        int r2 = this.sp + r0;
        if (charAt(r0) != '-') goto L8;
        int r3 = Integer.MIN_VALUE;
        r0 = r0 + 1;
        boolean r4 = true;
    L10:
        if (r0 >= r2) goto L12;
        r1 = -(charAt(r0) - '0');
        r0 = r0 + 1;
    L12:
        if (r0 >= r2) goto L30;
        int r8 = r0 + 1;
        char r5 = charAt(r0);
        if (r5 == 'L') goto L29;
        if (r5 == 'S') goto L29;
        if (r5 == 'B') goto L29;
        int r6 = r5 - '0';
        if (r1 < (-214748364)) goto L28;
        int r7 = r1 * 10;
        if (r7 < (r3 + r6)) goto L26;
        r1 = r7 - r6;
        r0 = r8;
        goto L12
    L26:
        throw new NumberFormatException(numberString());
    L28:
        throw new NumberFormatException(numberString());
    L29:
        r0 = r8;
    L30:
        if (r4 == false) goto L37;
        if (r0 <= (this.np + 1)) goto L35;
        return r1;
    L35:
        throw new NumberFormatException(numberString());
    L37:
        return -r1;
    L8:
        r3 = UVCCamera.PU_BRIGHTNESS;
        r4 = false;
        goto L10
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number integerValue() throws NumberFormatException {
        boolean r2 = false;
        if (this.np != (-1)) goto L5;
        this.np = 0;
    L5:
        int r1 = this.np;
        int r3 = this.sp + r1;
        char r4 = ' ';
        char r5 = charAt(r3 - 1);
        if (r5 == 'B') goto L12;
        if (r5 == 'L') goto L11;
        if (r5 != 'S') goto L14;
        r3 = r3 - 1;
        r4 = 'S';
    L14:
        if (charAt(this.np) != '-') goto L16;
        long r11 = Long.MIN_VALUE;
        r1 = r1 + 1;
        r2 = true;
    L17:
        long r13 = MULTMIN_RADIX_TEN;
        if (r1 >= r3) goto L20;
        long r8 = -(charAt(r1) - '0');
        r1 = r1 + 1;
    L21:
        if (r1 >= r3) goto L31;
        int r6 = r1 + 1;
        int r7 = charAt(r1) - '0';
        if (r8 < r13) goto L25;
        long r9 = r8 * 10;
        long r14 = r7;
        if (r9 < (r11 + r14)) goto L29;
        r8 = r9 - r14;
        r1 = r6;
        r13 = MULTMIN_RADIX_TEN;
        goto L21
    L29:
        return new BigInteger(numberString());
    L25:
        return new BigInteger(numberString());
    L31:
        if (r2 == true) goto L33;
        long r10 = -r8;
        if (r10 > 2147483647L) goto L63;
        if (r4 == 'L') goto L63;
        if (r4 != 'S') goto L57;
        return Short.valueOf((short) r10);
    L57:
        if (r4 != 'B') goto L61;
        return Byte.valueOf((byte) r10);
    L61:
        return Integer.valueOf((int) r10);
    L63:
        return Long.valueOf(r10);
    L33:
        if (r1 <= (this.np + 1)) goto L49;
        if (r8 < (-2147483648L)) goto L47;
        if (r4 == 'L') goto L47;
        if (r4 != 'S') goto L41;
        return Short.valueOf((short) r8);
    L41:
        if (r4 != 'B') goto L45;
        return Byte.valueOf((byte) r8);
    L45:
        return Integer.valueOf((int) r8);
    L47:
        return Long.valueOf(r8);
    L49:
        throw new NumberFormatException(numberString());
    L20:
        r8 = 0;
        goto L21
    L16:
        r11 = C.TIME_UNSET;
        goto L17
    L11:
        r3 = r3 - 1;
        r4 = 'L';
        goto L14
    L12:
        r3 = r3 - 1;
        r4 = 'B';
        goto L14
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int r1 = 0;
    L3:
        char r2 = charAt(r1);
        if (r2 == 26) goto L5;
        if (isWhitespace(r2) == false) goto L9;
        r1 = r1 + 1;
        goto L3
    L9:
        return false;
    L5:
        this.token = 20;
        return true;
    }

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(Feature r1) {
        return isEnabled(r1.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        if (this.sp == 4) goto L6;
        return false;
    L6:
        if (charAt(this.np + 1) == '$') goto L8;
        return false;
    L8:
        if (charAt(this.np + 2) == 'r') goto L10;
        return false;
    L10:
        if (charAt(this.np + 3) == 'e') goto L12;
        return false;
    L12:
        if (charAt(this.np + 4) != 'f') goto L18;
        return true;
    L18:
        return false;
    }

    protected void lexError(String r1, Object... r2) {
        this.token = 1;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005c -> B:12:0x0032). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final long longValue() throws NumberFormatException {
        boolean r1 = false;
        if (this.np != (-1)) goto L5;
        this.np = 0;
    L5:
        int r0 = this.np;
        int r2 = this.sp + r0;
        if (charAt(r0) != '-') goto L8;
        long r3 = Long.MIN_VALUE;
        r0 = r0 + 1;
        r1 = true;
    L10:
        if (r0 >= r2) goto L13;
        int r8 = r0 + 1;
        long r9 = -(charAt(r0) - '0');
    L12:
        r0 = r8;
    L14:
        if (r0 >= r2) goto L32;
        r8 = r0 + 1;
        char r4 = charAt(r0);
        if (r4 != 'L') goto L18;
    L31:
        r0 = r8;
        goto L32
    L18:
        if (r4 == 'S') goto L31;
        if (r4 == 'B') goto L31;
        int r5 = r4 - '0';
        if (r9 < MULTMIN_RADIX_TEN) goto L30;
        long r10 = r9 * 10;
        long r11 = r5;
        if (r10 < (r3 + r11)) goto L28;
        r9 = r10 - r11;
        goto L12
    L28:
        throw new NumberFormatException(numberString());
    L30:
        throw new NumberFormatException(numberString());
    L32:
        if (r1 == false) goto L39;
        if (r0 <= (this.np + 1)) goto L37;
        return r9;
    L37:
        throw new NumberFormatException(numberString());
    L39:
        return -r9;
    L13:
        r9 = 0;
        goto L14
    L8:
        r3 = C.TIME_UNSET;
        goto L10
    }

    public final boolean matchField(char[] r4) {
        if (charArrayCompare(r4) == true) goto L6;
        return false;
    L6:
        int r0 = this.bp + r4.length;
        this.bp = r0;
        char r5 = charAt(r0);
        this.ch = r5;
        if (r5 != '{') goto L10;
        next();
        this.token = 12;
    L22:
        return true;
    L10:
        if (r5 != '[') goto L13;
        next();
        this.token = 14;
        goto L22
    L13:
        if (r5 == 'S') goto L15;
    L21:
        nextToken();
        goto L22
    L15:
        if (charAt(this.bp + 1) != 'e') goto L21;
        if (charAt(this.bp + 2) != 't') goto L21;
        if (charAt(this.bp + 3) != '[') goto L21;
        int r6 = this.bp + 3;
        this.bp = r6;
        this.ch = charAt(r6);
        this.token = 21;
        goto L22
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public Collection<String> newCollectionByType(Class<?> r3) {
        if (r3.isAssignableFrom(HashSet.class) == false) goto L7;
        return new HashSet();
    L7:
        if (r3.isAssignableFrom(ArrayList.class) == true) goto L9;
        return (Collection) r3.newInstance();
    L12:
        e = move-exception;
        throw new JSONException(e.getMessage(), e);
    L9:
        return new ArrayList();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    public final void nextIdent() {
    L3:
        if (isWhitespace(this.ch) == false) goto L5;
        next();
        goto L3
    L5:
        char r0 = this.ch;
        if (r0 != '_') goto L8;
    L11:
        scanIdent();
        return;
    L8:
        if (Character.isLetter(r0) == true) goto L11;
        nextToken();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() {
        this.sp = 0;
    L3:
        this.pos = this.bp;
        char r1 = this.ch;
        if (r1 == '/') goto L5;
        if (r1 == '\"') goto L8;
        if (r1 == ',') goto L12;
        if (r1 < '0') goto L21;
        if (r1 > '9') goto L21;
        scanNumber();
        return;
    L21:
        if (r1 == '-') goto L22;
        switch(r1) {
            case 8: goto L66;
            case 9: goto L66;
            case 10: goto L66;
            case 12: goto L66;
            case 13: goto L66;
            case 32: goto L66;
            case 39: goto L61;
            case 40: goto L58;
            case 41: goto L56;
            case 43: goto L54;
            case 46: goto L52;
            case 58: goto L50;
            case 59: goto L48;
            case 78: goto L46;
            case 83: goto L46;
            case 84: goto L46;
            case 91: goto L44;
            case 93: goto L42;
            case 102: goto L40;
            case 110: goto L38;
            case 116: goto L36;
            case 117: goto L46;
            case 120: goto L34;
            case 123: goto L32;
            case 125: goto L30;
            default: goto L26;
        };
    L30:
        next();
        this.token = 13;
        return;
    L32:
        next();
        this.token = 12;
        return;
    L34:
        scanHex();
        return;
    L36:
        scanTrue();
        return;
    L38:
        scanNullOrNew();
        return;
    L40:
        scanFalse();
        return;
    L42:
        next();
        this.token = 15;
        return;
    L44:
        next();
        this.token = 14;
        return;
    L46:
        scanIdent();
        return;
    L48:
        next();
        this.token = 24;
        return;
    L50:
        next();
        this.token = 17;
        return;
    L52:
        next();
        this.token = 25;
        return;
    L54:
        next();
        scanNumber();
        return;
    L56:
        next();
        this.token = 11;
        return;
    L58:
        next();
        this.token = 10;
        return;
    L61:
        if (isEnabled(Feature.AllowSingleQuotes) == false) goto L65;
        scanStringSingleQuote();
        return;
    L65:
        throw new JSONException("Feature.AllowSingleQuotes is false");
    L66:
        next();
        goto L3
    L26:
        if (isEOF() == true) goto L28;
        char r2 = this.ch;
        if (r2 > 31) goto L72;
    L76:
        next();
        goto L3
    L72:
        if (r2 == 127) goto L76;
        lexError("illegal.char", new Object[]{String.valueOf(r2)});
        next();
        return;
    L28:
        if (this.token == 20) goto L68;
        this.token = 20;
        int r0 = this.eofPos;
        this.bp = r0;
        this.pos = r0;
        return;
    L68:
        throw new JSONException("EOF error");
    L22:
        scanNumber();
        return;
    L12:
        next();
        this.token = 16;
        return;
    L8:
        scanString();
        return;
    L5:
        skipComment();
        goto L3
    }

    public final void nextTokenWithChar(char r4) {
        this.sp = 0;
    L3:
        char r0 = this.ch;
        if (r0 == r4) goto L5;
        if (r0 == ' ') goto L22;
        if (r0 == '\n') goto L22;
        if (r0 == '\r') goto L22;
        if (r0 == '\t') goto L22;
        if (r0 == '\f') goto L22;
        if (r0 == '\b') goto L22;
        throw new JSONException("not match " + r4 + " - " + this.ch + ", info : " + info());
    L22:
        next();
        goto L3
    L5:
        next();
        nextToken();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    protected final void putChar(char r5) {
        int r0 = this.sp;
        char[] r1 = this.sbuf;
        if (r0 != r1.length) goto L5;
        char[] r2 = new char[r1.length * 2];
        System.arraycopy(r1, 0, r2, 0, r1.length);
        this.sbuf = r2;
    L5:
        char[] r3 = this.sbuf;
        int r4 = this.sp;
        this.sp = r4 + 1;
        r3[r4] = r5;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.sp = 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean scanBoolean(char r10) {
        boolean r0 = false;
        this.matchStat = 0;
        char r1 = charAt(this.bp + 0);
        int r3 = 5;
        if (r1 != 't') goto L14;
        if (charAt(this.bp + 1) == 'r') goto L7;
    L11:
        this.matchStat = -1;
        return false;
    L7:
        if (charAt((this.bp + 1) + 1) != 'u') goto L11;
        if (charAt((this.bp + 1) + 2) != 'e') goto L11;
        r1 = charAt(this.bp + 4);
        r0 = true;
    L34:
        if (r1 == r10) goto L35;
        if (isWhitespace(r1) == false) goto L40;
        r1 = charAt(this.bp + r3);
        r3 = r3 + 1;
        goto L34
    L40:
        this.matchStat = -1;
        return r0;
    L35:
        int r11 = this.bp + r3;
        this.bp = r11;
        this.ch = charAt(r11);
        this.matchStat = 3;
        return r0;
    L14:
        if (r1 != 'f') goto L27;
        if (charAt(this.bp + 1) == 'a') goto L18;
    L24:
        this.matchStat = -1;
        return false;
    L18:
        if (charAt((this.bp + 1) + 1) != 'l') goto L24;
        if (charAt((this.bp + 1) + 2) != 's') goto L24;
        if (charAt((this.bp + 1) + 3) != 'e') goto L24;
        r1 = charAt(this.bp + 5);
        r3 = 6;
        goto L34
    L27:
        if (r1 != '1') goto L31;
        r1 = charAt(this.bp + 1);
        r0 = true;
    L29:
        r3 = 2;
        goto L34
    L31:
        if (r1 != '0') goto L33;
        r1 = charAt(this.bp + 1);
        goto L29
    L33:
        r3 = 1;
        goto L34
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final double scanDouble(char r10) {
        this.matchStat = 0;
        char r0 = charAt(this.bp + 0);
        if (r0 >= '0') goto L5;
    L28:
        this.matchStat = -1;
        return 0.0d;
    L5:
        if (r0 > '9') goto L28;
        int r6 = 1;
    L7:
        int r8 = r6 + 1;
        char r7 = charAt(this.bp + r6);
        if (r7 < '0') goto L12;
        if (r7 > '9') goto L12;
        r6 = r8;
    L12:
        if (r7 != '.') goto L22;
        int r9 = r8 + 1;
        char r11 = charAt(this.bp + r8);
        if (r11 < '0') goto L20;
        if (r11 > '9') goto L20;
    L16:
        r8 = r9 + 1;
        r7 = charAt(this.bp + r9);
        if (r7 < '0') goto L22;
        if (r7 > '9') goto L22;
        r9 = r8;
    L20:
        this.matchStat = -1;
        return 0.0d;
    L22:
        int r1 = this.bp;
        double r2 = Double.parseDouble(subString(r1, ((r1 + r8) - r1) - 1));
        if (r7 != r10) goto L26;
        int r12 = this.bp + r8;
        this.bp = r12;
        this.ch = charAt(r12);
        this.matchStat = 3;
        this.token = 16;
        return r2;
    L26:
        this.matchStat = -1;
        return r2;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Enum<?> scanEnum(Class<?> r1, SymbolTable r2, char r3) {
        String r4 = scanSymbolWithSeperator(r2, r3);
        if (r4 != null) goto L7;
        return null;
    L7:
        return Enum.valueOf(r1, r4);
    }

    public final void scanFalse() {
        if (this.ch != 'f') goto L50;
        next();
        if (this.ch != 'a') goto L48;
        next();
        if (this.ch != 'l') goto L46;
        next();
        if (this.ch != 's') goto L44;
        next();
        if (this.ch != 'e') goto L42;
        next();
        char r0 = this.ch;
        if (r0 != ' ') goto L15;
    L39:
        this.token = 7;
        return;
    L15:
        if (r0 == ',') goto L39;
        if (r0 == '}') goto L39;
        if (r0 == ']') goto L39;
        if (r0 == '\n') goto L39;
        if (r0 == '\r') goto L39;
        if (r0 == '\t') goto L39;
        if (r0 == 26) goto L39;
        if (r0 == '\f') goto L39;
        if (r0 == '\b') goto L39;
        if (r0 == ':') goto L39;
        if (r0 == '/') goto L39;
        throw new JSONException("scan false error");
    L42:
        throw new JSONException("error parse false");
    L44:
        throw new JSONException("error parse false");
    L46:
        throw new JSONException("error parse false");
    L48:
        throw new JSONException("error parse false");
    L50:
        throw new JSONException("error parse false");
    }

    public boolean scanFieldBoolean(char[] r10) {
        this.matchStat = 0;
        if (charArrayCompare(r10) == true) goto L6;
        this.matchStat = -2;
        return false;
    L6:
        int r11 = r10.length;
        int r2 = r11 + 1;
        char r12 = charAt(this.bp + r11);
        if (r12 != 't') goto L22;
        int r1 = r2 + 1;
        if (charAt(this.bp + r2) == 'r') goto L12;
        this.matchStat = -1;
        return false;
    L12:
        int r3 = r1 + 1;
        if (charAt(this.bp + r1) == 'u') goto L16;
        this.matchStat = -1;
        return false;
    L16:
        int r4 = r3 + 1;
        if (charAt(this.bp + r3) == 'e') goto L20;
        this.matchStat = -1;
        return false;
    L20:
        boolean r13 = true;
    L40:
        int r5 = r4 + 1;
        char r6 = charAt(this.bp + r4);
        if (r6 != ',') goto L45;
        int r0 = this.bp + r5;
        this.bp = r0;
        this.ch = charAt(r0);
        this.matchStat = 3;
        this.token = 16;
        return r13;
    L45:
        if (r6 != '}') goto L61;
        int r8 = r5 + 1;
        char r7 = charAt(this.bp + r5);
        if (r7 != ',') goto L50;
        this.token = 16;
        int r9 = this.bp + r8;
        this.bp = r9;
        this.ch = charAt(r9);
    L57:
        this.matchStat = 4;
        return r13;
    L50:
        if (r7 != ']') goto L52;
        this.token = 15;
        int r14 = this.bp + r8;
        this.bp = r14;
        this.ch = charAt(r14);
        goto L57
    L52:
        if (r7 != '}') goto L55;
        this.token = 13;
        int r15 = this.bp + r8;
        this.bp = r15;
        this.ch = charAt(r15);
        goto L57
    L55:
        if (r7 != 26) goto L59;
        this.token = 20;
        this.bp += r8 - 1;
        this.ch = JSONLexer.EOI;
        goto L57
    L59:
        this.matchStat = -1;
        return false;
    L61:
        this.matchStat = -1;
        return false;
    L22:
        if (r12 != 'f') goto L63;
        int r16 = r2 + 1;
        if (charAt(this.bp + r2) == 'a') goto L27;
        this.matchStat = -1;
        return false;
    L27:
        int r17 = r16 + 1;
        if (charAt(this.bp + r16) == 'l') goto L31;
        this.matchStat = -1;
        return false;
    L31:
        int r18 = r17 + 1;
        if (charAt(this.bp + r17) == 's') goto L35;
        this.matchStat = -1;
        return false;
    L35:
        int r19 = r18 + 1;
        if (charAt(this.bp + r18) == 'e') goto L39;
        this.matchStat = -1;
        return false;
    L39:
        r4 = r19;
        r13 = false;
        goto L40
    L63:
        this.matchStat = -1;
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x007d -> B:34:0x006e). Please report as a decompilation issue!!! */
    public final double scanFieldDouble(char[] r11) {
        this.matchStat = 0;
        if (charArrayCompare(r11) == true) goto L6;
        this.matchStat = -2;
        return 0.0d;
    L6:
        int r0 = r11.length;
        int r4 = r0 + 1;
        char r1 = charAt(this.bp + r0);
        if (r1 >= '0') goto L9;
    L62:
        this.matchStat = -1;
        return 0.0d;
    L9:
        if (r1 > '9') goto L62;
    L10:
        int r7 = r4 + 1;
        char r2 = charAt(this.bp + r4);
        if (r2 < '0') goto L15;
        if (r2 > '9') goto L15;
        r4 = r7;
    L15:
        if (r2 != '.') goto L26;
        int r5 = r7 + 1;
        char r3 = charAt(this.bp + r7);
        if (r3 < '0') goto L23;
        if (r3 > '9') goto L23;
    L19:
        r7 = r5 + 1;
        r2 = charAt(this.bp + r5);
        if (r2 < '0') goto L26;
        if (r2 > '9') goto L26;
        r5 = r7;
    L23:
        this.matchStat = -1;
        return 0.0d;
    L26:
        if (r2 != 'e') goto L28;
    L29:
        int r6 = r7 + 1;
        r2 = charAt(this.bp + r7);
        if (r2 != '+') goto L32;
    L35:
        r7 = r6 + 1;
        r2 = charAt(this.bp + r6);
    L36:
        if (r2 < '0') goto L39;
        if (r2 > '9') goto L39;
        r6 = r7 + 1;
        r2 = charAt(this.bp + r7);
    L34:
        r7 = r6;
    L39:
        int r8 = this.bp;
        int r12 = r11.length + r8;
        double r9 = Double.parseDouble(subString(r12, ((r8 + r7) - r12) - 1));
        if (r2 != ',') goto L44;
        int r10 = this.bp + r7;
        this.bp = r10;
        this.ch = charAt(r10);
        this.matchStat = 3;
        this.token = 16;
        return r9;
    L44:
        if (r2 != '}') goto L60;
        int r13 = r7 + 1;
        char r14 = charAt(this.bp + r7);
        if (r14 != ',') goto L49;
        this.token = 16;
        int r15 = this.bp + r13;
        this.bp = r15;
        this.ch = charAt(r15);
    L56:
        this.matchStat = 4;
        return r9;
    L49:
        if (r14 != ']') goto L51;
        this.token = 15;
        int r16 = this.bp + r13;
        this.bp = r16;
        this.ch = charAt(r16);
        goto L56
    L51:
        if (r14 != '}') goto L54;
        this.token = 13;
        int r17 = this.bp + r13;
        this.bp = r17;
        this.ch = charAt(r17);
        goto L56
    L54:
        if (r14 != 26) goto L58;
        this.token = 20;
        this.bp += r13 - 1;
        this.ch = JSONLexer.EOI;
        goto L56
    L58:
        this.matchStat = -1;
        return 0.0d;
    L60:
        this.matchStat = -1;
        return 0.0d;
    L32:
        if (r2 != '-') goto L34;
    L28:
        if (r2 != 'E') goto L39;
        goto L29
    }

    public final float scanFieldFloat(char[] r9) {
        this.matchStat = 0;
        if (charArrayCompare(r9) == true) goto L6;
        this.matchStat = -2;
        return BitmapDescriptorFactory.HUE_RED;
    L6:
        int r0 = r9.length;
        int r3 = r0 + 1;
        char r1 = charAt(this.bp + r0);
        if (r1 >= '0') goto L9;
    L48:
        this.matchStat = -1;
        return BitmapDescriptorFactory.HUE_RED;
    L9:
        if (r1 > '9') goto L48;
    L10:
        int r6 = r3 + 1;
        char r2 = charAt(this.bp + r3);
        if (r2 < '0') goto L15;
        if (r2 > '9') goto L15;
        r3 = r6;
    L15:
        if (r2 != '.') goto L25;
        int r4 = r6 + 1;
        char r5 = charAt(this.bp + r6);
        if (r5 < '0') goto L23;
        if (r5 > '9') goto L23;
    L19:
        r6 = r4 + 1;
        r2 = charAt(this.bp + r4);
        if (r2 < '0') goto L25;
        if (r2 > '9') goto L25;
        r4 = r6;
    L23:
        this.matchStat = -1;
        return BitmapDescriptorFactory.HUE_RED;
    L25:
        int r7 = this.bp;
        int r10 = r9.length + r7;
        float r11 = Float.parseFloat(subString(r10, ((r7 + r6) - r10) - 1));
        if (r2 != ',') goto L30;
        int r8 = this.bp + r6;
        this.bp = r8;
        this.ch = charAt(r8);
        this.matchStat = 3;
        this.token = 16;
        return r11;
    L30:
        if (r2 != '}') goto L46;
        int r12 = r6 + 1;
        char r13 = charAt(this.bp + r6);
        if (r13 != ',') goto L35;
        this.token = 16;
        int r14 = this.bp + r12;
        this.bp = r14;
        this.ch = charAt(r14);
    L42:
        this.matchStat = 4;
        return r11;
    L35:
        if (r13 != ']') goto L37;
        this.token = 15;
        int r15 = this.bp + r12;
        this.bp = r15;
        this.ch = charAt(r15);
        goto L42
    L37:
        if (r13 != '}') goto L40;
        this.token = 13;
        int r16 = this.bp + r12;
        this.bp = r16;
        this.ch = charAt(r16);
        goto L42
    L40:
        if (r13 != 26) goto L44;
        this.bp += r12 - 1;
        this.token = 20;
        this.ch = JSONLexer.EOI;
        goto L42
    L44:
        this.matchStat = -1;
        return BitmapDescriptorFactory.HUE_RED;
    L46:
        this.matchStat = -1;
        return BitmapDescriptorFactory.HUE_RED;
    }

    public final float[] scanFieldFloatArray(char[] r20) {
        this.matchStat = 0;
        float[] r4 = null;
        if (charArrayCompare(r20) == true) goto L6;
        this.matchStat = -2;
        return null;
    L6:
        int r2 = r20.length;
        int r6 = r2 + 1;
        if (charAt(this.bp + r2) == '[') goto L10;
        this.matchStat = -2;
        return null;
    L10:
        int r3 = r6 + 1;
        char r5 = charAt(this.bp + r6);
        float[] r7 = new float[16];
        int r8 = 0;
    L11:
        int r9 = this.bp;
        int r10 = (r9 + r3) - 1;
        if (r5 != '-') goto L14;
        boolean r12 = true;
    L15:
        if (r12 == false) goto L18;
        int r11 = r3 + 1;
        char r13 = charAt(r9 + r3);
        r3 = r11;
        r5 = r13;
    L18:
        if (r5 < '0') goto L103;
        if (r5 > '9') goto L103;
        int r14 = r5 - '0';
    L22:
        int r16 = r3 + 1;
        char r15 = charAt(this.bp + r3);
        if (r15 < '0') goto L27;
        if (r15 > '9') goto L27;
        r14 = (r14 * 10) + (r15 - '0');
        r3 = r16;
    L27:
        if (r15 != '.') goto L29;
        boolean r17 = true;
    L31:
        if (r17 == false) goto L43;
        int r18 = r16 + 1;
        char r19 = charAt(this.bp + r16);
        if (r19 < '0') goto L41;
        if (r19 > '9') goto L41;
        r14 = (r14 * 10) + (r19 - '0');
        int r21 = 10;
    L36:
        r16 = r18 + 1;
        char r1 = charAt(this.bp + r18);
        if (r1 < '0') goto L40;
        if (r1 > '9') goto L40;
        r14 = (r14 * 10) + (r1 - '0');
        r21 = r21 * 10;
        r18 = r16;
    L40:
        int r110 = r21;
        r15 = r1;
        int r22 = r110;
    L45:
        if (r15 != 'e') goto L47;
    L50:
        boolean r111 = true;
    L51:
        if (r111 == false) goto L62;
        int r112 = r16 + 1;
        r15 = charAt(this.bp + r16);
        if (r15 == '+') goto L57;
        if (r15 == '-') goto L57;
        r16 = r112;
    L59:
        if (r15 < '0') goto L62;
        if (r15 > '9') goto L62;
        int r23 = r16 + 1;
        r15 = charAt(this.bp + r16);
        r16 = r23;
    L57:
        int r24 = r112 + 1;
        r15 = charAt(this.bp + r112);
        r16 = r24;
    L62:
        int r25 = ((this.bp + r16) - r10) - 1;
        if (r111 == true) goto L68;
        if (r25 >= 10) goto L68;
        float r26 = r14 / r22;
        if (r12 == false) goto L70;
        r26 = -r26;
    L70:
        if (r8 < r7.length) goto L72;
        float[] r27 = new float[(r7.length * 3) / 2];
        System.arraycopy(r7, 0, r27, 0, r8);
        r7 = r27;
    L72:
        int r28 = r8 + 1;
        r7[r8] = r26;
        if (r15 != ',') goto L76;
        r3 = r16 + 1;
        r5 = charAt(this.bp + r16);
        float[] r29 = null;
    L102:
        r4 = r29;
        r8 = r28;
        goto L11
    L76:
        if (r15 == ']') goto L77;
        r29 = null;
        r5 = r15;
        r3 = r16;
        goto L102
    L77:
        int r30 = r16 + 1;
        char r31 = charAt(this.bp + r16);
        if (r28 == r7.length) goto L80;
        float[] r32 = new float[r28];
        System.arraycopy(r7, 0, r32, 0, r28);
        r7 = r32;
    L80:
        if (r31 != ',') goto L84;
        this.bp += r30 - 1;
        next();
        this.matchStat = 3;
        this.token = 16;
        return r7;
    L84:
        if (r31 != '}') goto L99;
        int r33 = r30 + 1;
        char r34 = charAt(this.bp + r30);
        if (r34 != ',') goto L88;
        this.token = 16;
        this.bp += r33 - 1;
        next();
    L95:
        this.matchStat = 4;
        return r7;
    L88:
        if (r34 != ']') goto L90;
        this.token = 15;
        this.bp += r33 - 1;
        next();
        goto L95
    L90:
        if (r34 != '}') goto L93;
        this.token = 13;
        this.bp += r33 - 1;
        next();
        goto L95
    L93:
        if (r34 != 26) goto L97;
        this.bp += r33 - 1;
        this.token = 20;
        this.ch = JSONLexer.EOI;
        goto L95
    L97:
        this.matchStat = -1;
        return null;
    L99:
        this.matchStat = -1;
        return null;
    L68:
        r26 = Float.parseFloat(subString(r10, r25));
        goto L70
    L47:
        if (r15 == 'E') goto L50;
        r111 = false;
    L41:
        this.matchStat = -1;
        return r4;
    L43:
        r22 = 1;
        goto L45
    L29:
        r17 = false;
    L103:
        float[] r35 = r4;
        this.matchStat = -1;
        return r35;
    L14:
        r12 = false;
        goto L15
    }

    public final float[][] scanFieldFloatArray2(char[] r20) {
        this.matchStat = 0;
        float[][] r4 = null;
        if (charArrayCompare(r20) == true) goto L6;
        this.matchStat = -2;
        return null;
    L6:
        int r2 = r20.length;
        int r6 = r2 + 1;
        char r5 = '[';
        if (charAt(this.bp + r2) == '[') goto L10;
        this.matchStat = -2;
        return null;
    L10:
        int r3 = r6 + 1;
        char r7 = charAt(this.bp + r6);
        int r8 = 16;
        float[][] r9 = new float[16][];
        int r10 = 0;
    L12:
        if (r7 != r5) goto L12;
        int r11 = r3 + 1;
        char r12 = charAt(this.bp + r3);
        float[] r13 = new float[r8];
        int r14 = 0;
    L14:
        int r15 = this.bp;
        int r16 = (r15 + r11) - 1;
        if (r12 != '-') goto L17;
        boolean r17 = true;
    L18:
        if (r17 == false) goto L21;
        int r18 = r11 + 1;
        char r19 = charAt(r15 + r11);
        r11 = r18;
        r12 = r19;
    L21:
        if (r12 < '0') goto L117;
        if (r12 > '9') goto L117;
        int r21 = r12 - '0';
    L25:
        int r110 = r11 + 1;
        char r1 = charAt(this.bp + r11);
        if (r1 < '0') goto L30;
        if (r1 > '9') goto L30;
        r21 = (r21 * 10) + (r1 - '0');
        r11 = r110;
    L30:
        if (r1 != '.') goto L42;
        int r22 = r110 + 1;
        char r23 = charAt(this.bp + r110);
        if (r23 < '0') goto L40;
        if (r23 > '9') goto L40;
        r21 = (r21 * 10) + (r23 - '0');
        int r24 = 10;
    L35:
        r110 = r22 + 1;
        char r25 = charAt(this.bp + r22);
        if (r25 < '0') goto L39;
        if (r25 > '9') goto L39;
        r21 = (r21 * 10) + (r25 - '0');
        r24 = r24 * 10;
        r22 = r110;
    L39:
        int r26 = r24;
        r1 = r25;
    L44:
        if (r1 != 'e') goto L46;
    L49:
        boolean r111 = true;
    L50:
        if (r111 == false) goto L61;
        int r112 = r110 + 1;
        r1 = charAt(this.bp + r110);
        if (r1 == '+') goto L56;
        if (r1 == '-') goto L56;
        r110 = r112;
    L58:
        if (r1 < '0') goto L61;
        if (r1 > '9') goto L61;
        int r27 = r110 + 1;
        r1 = charAt(this.bp + r110);
        r110 = r27;
    L56:
        int r28 = r112 + 1;
        r1 = charAt(this.bp + r112);
        r110 = r28;
    L61:
        int r29 = ((this.bp + r110) - r16) - 1;
        if (r111 == false) goto L64;
    L68:
        float r30 = Float.parseFloat(subString(r16, r29));
    L70:
        if (r14 < r13.length) goto L72;
        float[] r31 = new float[(r13.length * 3) / 2];
        System.arraycopy(r13, 0, r31, 0, r14);
        r13 = r31;
    L72:
        int r32 = r14 + 1;
        r13[r14] = r30;
        if (r1 != ',') goto L76;
        r11 = r110 + 1;
        float[][] r33 = null;
        r12 = charAt(this.bp + r110);
    L116:
        r14 = r32;
        r4 = r33;
        goto L14
    L76:
        if (r1 == ']') goto L77;
        r33 = null;
        r12 = r1;
        r11 = r110;
        goto L116
    L77:
        int r34 = r110 + 1;
        char r35 = charAt(this.bp + r110);
        if (r32 == r13.length) goto L80;
        float[] r113 = new float[r32];
        int r114 = 0;
        System.arraycopy(r13, 0, r113, 0, r32);
        r13 = r113;
    L82:
        if (r10 < r9.length) goto L84;
        r9 = new float[(r9.length * 3) / 2][];
        System.arraycopy(r13, r114, r9, r114, r32);
    L84:
        int r36 = r10 + 1;
        r9[r10] = r13;
        if (r35 != ',') goto L87;
        r3 = r34 + 1;
        float[][] r37 = null;
        r7 = charAt(this.bp + r34);
    L114:
        r10 = r36;
        r4 = r37;
        r5 = '[';
        r8 = 16;
        goto L12
    L87:
        if (r35 == ']') goto L88;
        r37 = null;
        r7 = r35;
        r3 = r34;
        goto L114
    L88:
        int r38 = r34 + 1;
        char r39 = charAt(this.bp + r34);
        if (r36 == r9.length) goto L91;
        float[][] r40 = new float[r36][];
        System.arraycopy(r9, 0, r40, 0, r36);
        r9 = r40;
    L91:
        if (r39 != ',') goto L95;
        this.bp += r38 - 1;
        next();
        this.matchStat = 3;
        this.token = 16;
        return r9;
    L95:
        if (r39 != '}') goto L111;
        int r41 = r38 + 1;
        char r42 = charAt(this.bp + r38);
        if (r42 != ',') goto L100;
        this.token = 16;
        this.bp += r41 - 1;
        next();
    L107:
        this.matchStat = 4;
        return r9;
    L100:
        if (r42 != ']') goto L102;
        this.token = 15;
        this.bp += r41 - 1;
        next();
        goto L107
    L102:
        if (r42 != '}') goto L105;
        this.token = 13;
        this.bp += r41 - 1;
        next();
        goto L107
    L105:
        if (r42 != 26) goto L109;
        this.bp += r41 - 1;
        this.token = 20;
        this.ch = JSONLexer.EOI;
        goto L107
    L109:
        this.matchStat = -1;
        return null;
    L111:
        this.matchStat = -1;
        return null;
    L80:
        r114 = 0;
        goto L82
    L64:
        if (r29 >= 10) goto L68;
        r30 = r21 / r26;
        if (r17 == false) goto L70;
        r30 = -r30;
        goto L70
    L46:
        if (r1 == 'E') goto L49;
        r111 = false;
    L40:
        this.matchStat = -1;
        return r4;
    L42:
        r26 = 1;
    L117:
        float[][] r43 = r4;
        this.matchStat = -1;
        return r43;
    L17:
        r17 = false;
        goto L18
    }

    public int scanFieldInt(char[] r11) {
        this.matchStat = 0;
        if (charArrayCompare(r11) == true) goto L6;
        this.matchStat = -2;
        return 0;
    L6:
        int r1 = r11.length;
        int r3 = r1 + 1;
        char r2 = charAt(this.bp + r1);
        if (r2 != '-') goto L9;
        boolean r4 = true;
    L10:
        if (r4 == false) goto L13;
        r2 = charAt(this.bp + r3);
        r3 = r3 + 1;
    L13:
        if (r2 >= '0') goto L15;
    L63:
        this.matchStat = -1;
        return 0;
    L15:
        if (r2 > '9') goto L63;
        int r5 = r2 - '0';
    L17:
        int r9 = r3 + 1;
        char r6 = charAt(this.bp + r3);
        if (r6 < '0') goto L22;
        if (r6 > '9') goto L22;
        r5 = (r5 * 10) + (r6 - '0');
        r3 = r9;
    L22:
        if (r6 != '.') goto L25;
        this.matchStat = -1;
        return 0;
    L25:
        if (r5 < 0) goto L29;
        if (r9 > (r11.length + 14)) goto L29;
    L35:
        if (r6 != ',') goto L41;
        int r0 = this.bp + r9;
        this.bp = r0;
        this.ch = charAt(r0);
        this.matchStat = 3;
        this.token = 16;
        if (r4 == true) goto L39;
        return r5;
    L39:
        return -r5;
    L41:
        if (r6 != '}') goto L59;
        int r8 = r9 + 1;
        char r7 = charAt(this.bp + r9);
        if (r7 != ',') goto L46;
        this.token = 16;
        int r12 = this.bp + r8;
        this.bp = r12;
        this.ch = charAt(r12);
    L53:
        this.matchStat = 4;
        if (r4 == true) goto L56;
        return r5;
    L56:
        return -r5;
    L46:
        if (r7 != ']') goto L48;
        this.token = 15;
        int r13 = this.bp + r8;
        this.bp = r13;
        this.ch = charAt(r13);
        goto L53
    L48:
        if (r7 != '}') goto L51;
        this.token = 13;
        int r14 = this.bp + r8;
        this.bp = r14;
        this.ch = charAt(r14);
        goto L53
    L51:
        if (r7 != 26) goto L57;
        this.token = 20;
        this.bp += r8 - 1;
        this.ch = JSONLexer.EOI;
        goto L53
    L57:
        this.matchStat = -1;
        return 0;
    L59:
        this.matchStat = -1;
        return 0;
    L29:
        if (r5 == Integer.MIN_VALUE) goto L31;
    L61:
        this.matchStat = -1;
        return 0;
    L31:
        if (r9 != 17) goto L61;
        if (r4 == true) goto L35;
    L9:
        r4 = false;
        goto L10
    }

    public final int[] scanFieldIntArray(char[] r18) {
        this.matchStat = 0;
        int[] r4 = null;
        if (charArrayCompare(r18) == true) goto L6;
        this.matchStat = -2;
        return null;
    L6:
        int r2 = r18.length;
        int r6 = r2 + 1;
        if (charAt(this.bp + r2) == '[') goto L10;
        this.matchStat = -2;
        return null;
    L10:
        int r3 = r6 + 1;
        char r5 = charAt(this.bp + r6);
        int[] r7 = new int[16];
        if (r5 != ']') goto L13;
        int r12 = r3 + 1;
        char r8 = charAt(this.bp + r3);
        int r9 = 0;
    L39:
        if (r9 == r7.length) goto L41;
        int[] r10 = new int[r9];
        System.arraycopy(r7, 0, r10, 0, r9);
        r7 = r10;
    L41:
        if (r8 != ',') goto L45;
        this.bp += r12 - 1;
        next();
        this.matchStat = 3;
        this.token = 16;
        return r7;
    L45:
        if (r8 != '}') goto L60;
        int r11 = r12 + 1;
        char r13 = charAt(this.bp + r12);
        if (r13 != ',') goto L49;
        this.token = 16;
        this.bp += r11 - 1;
        next();
    L56:
        this.matchStat = 4;
        return r7;
    L49:
        if (r13 != ']') goto L51;
        this.token = 15;
        this.bp += r11 - 1;
        next();
        goto L56
    L51:
        if (r13 != '}') goto L54;
        this.token = 13;
        this.bp += r11 - 1;
        next();
        goto L56
    L54:
        if (r13 != 26) goto L58;
        this.bp += r11 - 1;
        this.token = 20;
        this.ch = JSONLexer.EOI;
        goto L56
    L58:
        this.matchStat = -1;
        return null;
    L60:
        this.matchStat = -1;
        return null;
    L13:
        int r14 = 0;
    L15:
        if (r5 != '-') goto L17;
        r5 = charAt(this.bp + r3);
        r3 = r3 + 1;
        boolean r15 = true;
    L19:
        if (r5 < '0') goto L63;
        if (r5 > '9') goto L63;
        int r16 = r5 - '0';
    L23:
        int r17 = r3 + 1;
        char r19 = charAt(this.bp + r3);
        if (r19 < '0') goto L28;
        if (r19 > '9') goto L28;
        r16 = (r16 * 10) + (r19 - '0');
        r3 = r17;
    L28:
        if (r14 < r7.length) goto L30;
        int[] r20 = new int[(r7.length * 3) / 2];
        System.arraycopy(r7, 0, r20, 0, r14);
        r7 = r20;
    L30:
        r9 = r14 + 1;
        if (r15 == false) goto L33;
        r16 = -r16;
    L33:
        r7[r14] = r16;
        if (r19 != ',') goto L36;
        char r21 = charAt(this.bp + r17);
        r17 = r17 + 1;
        r19 = r21;
    L62:
        r14 = r9;
        r4 = null;
        r5 = r19;
        r3 = r17;
        goto L15
    L36:
        if (r19 != ']') goto L62;
        r12 = r17 + 1;
        r8 = charAt(this.bp + r17);
    L63:
        int[] r22 = r4;
        this.matchStat = -1;
        return r22;
    L17:
        r15 = false;
        goto L19
    }

    public long scanFieldLong(char[] r14) {
        boolean r0 = false;
        this.matchStat = 0;
        if (charArrayCompare(r14) == true) goto L6;
        this.matchStat = -2;
        return 0;
    L6:
        int r15 = r14.length;
        int r4 = r15 + 1;
        char r16 = charAt(this.bp + r15);
        if (r16 != '-') goto L10;
        r16 = charAt(this.bp + r4);
        r4 = r4 + 1;
        r0 = true;
    L10:
        if (r16 >= '0') goto L12;
    L56:
        this.matchStat = -1;
        return 0;
    L12:
        if (r16 > '9') goto L56;
        long r8 = r16 - '0';
    L14:
        int r10 = r4 + 1;
        char r17 = charAt(this.bp + r4);
        if (r17 < '0') goto L19;
        if (r17 > '9') goto L19;
        r8 = (r8 * 10) + ((long) (r17 - '0'));
        r4 = r10;
    L19:
        if (r17 != '.') goto L23;
        this.matchStat = -1;
        return 0;
    L23:
        if (r8 >= 0) goto L25;
    L54:
        this.matchStat = -1;
        return 0;
    L25:
        if (r10 > 21) goto L54;
        if (r17 != ',') goto L34;
        int r18 = this.bp + r10;
        this.bp = r18;
        this.ch = charAt(r18);
        this.matchStat = 3;
        this.token = 16;
        if (r0 == true) goto L32;
        return r8;
    L32:
        return -r8;
    L34:
        if (r17 != '}') goto L52;
        int r11 = r10 + 1;
        char r19 = charAt(this.bp + r10);
        if (r19 != ',') goto L39;
        this.token = 16;
        int r110 = this.bp + r11;
        this.bp = r110;
        this.ch = charAt(r110);
    L46:
        this.matchStat = 4;
        if (r0 == true) goto L49;
        return r8;
    L49:
        return -r8;
    L39:
        if (r19 != ']') goto L41;
        this.token = 15;
        int r111 = this.bp + r11;
        this.bp = r111;
        this.ch = charAt(r111);
        goto L46
    L41:
        if (r19 != '}') goto L44;
        this.token = 13;
        int r112 = this.bp + r11;
        this.bp = r112;
        this.ch = charAt(r112);
        goto L46
    L44:
        if (r19 != 26) goto L50;
        this.token = 20;
        this.bp += r11 - 1;
        this.ch = JSONLexer.EOI;
        goto L46
    L50:
        this.matchStat = -1;
        return 0;
    L52:
        this.matchStat = -1;
        return 0;
    }

    public String scanFieldString(char[] r10) {
        this.matchStat = 0;
        if (charArrayCompare(r10) == true) goto L6;
        this.matchStat = -2;
        return stringDefaultValue();
    L6:
        int r1 = r10.length;
        int r3 = r1 + 1;
        if (charAt(this.bp + r1) == '\"') goto L10;
        this.matchStat = -1;
        return stringDefaultValue();
    L10:
        int r2 = indexOf('\"', (this.bp + r10.length) + 1);
        if (r2 == (-1)) goto L47;
        int r5 = (this.bp + r10.length) + 1;
        String r6 = subString(r5, r2 - r5);
        if (r6.indexOf(92) == (-1)) goto L23;
    L14:
        int r7 = r2 - 1;
        int r8 = 0;
    L15:
        if (r7 < 0) goto L20;
        if (charAt(r7) != '\\') goto L20;
        r8 = r8 + 1;
        r7 = r7 - 1;
    L20:
        if ((r8 % 2) == 0) goto L21;
        r2 = indexOf('\"', r2 + 1);
        goto L14
    L21:
        int r0 = this.bp;
        int r4 = r2 - ((r10.length + r0) + 1);
        r6 = readString(sub_chars((r0 + r10.length) + 1, r4), r4);
    L23:
        int r9 = this.bp;
        int r11 = r3 + ((r2 - ((r10.length + r9) + 1)) + 1);
        int r12 = r11 + 1;
        char r13 = charAt(r9 + r11);
        if (r13 != ',') goto L28;
        int r14 = this.bp + r12;
        this.bp = r14;
        this.ch = charAt(r14);
        this.matchStat = 3;
        return r6;
    L28:
        if (r13 != '}') goto L44;
        int r15 = r12 + 1;
        char r16 = charAt(this.bp + r12);
        if (r16 != ',') goto L33;
        this.token = 16;
        int r17 = this.bp + r15;
        this.bp = r17;
        this.ch = charAt(r17);
    L40:
        this.matchStat = 4;
        return r6;
    L33:
        if (r16 != ']') goto L35;
        this.token = 15;
        int r18 = this.bp + r15;
        this.bp = r18;
        this.ch = charAt(r18);
        goto L40
    L35:
        if (r16 != '}') goto L38;
        this.token = 13;
        int r19 = this.bp + r15;
        this.bp = r19;
        this.ch = charAt(r19);
        goto L40
    L38:
        if (r16 != 26) goto L42;
        this.token = 20;
        this.bp += r15 - 1;
        this.ch = JSONLexer.EOI;
        goto L40
    L42:
        this.matchStat = -1;
        return stringDefaultValue();
    L44:
        this.matchStat = -1;
        return stringDefaultValue();
    L47:
        throw new JSONException("unclosed str");
    }

    public Collection<String> scanFieldStringArray(char[] r12, Class<?> r13) {
        this.matchStat = 0;
        if (charArrayCompare(r12) == true) goto L6;
        this.matchStat = -2;
        return null;
    L6:
        Collection<String> r14 = newCollectionByType(r13);
        int r15 = r12.length;
        int r3 = r15 + 1;
        if (charAt(this.bp + r15) == '[') goto L10;
        this.matchStat = -1;
        return null;
    L10:
        int r1 = r3 + 1;
        char r16 = charAt(this.bp + r3);
    L12:
        if (r16 != '\"') goto L30;
        int r17 = indexOf('\"', this.bp + r1);
        if (r17 == (-1)) goto L28;
        int r7 = this.bp + r1;
        String r8 = subString(r7, r17 - r7);
        if (r8.indexOf(92) == (-1)) goto L26;
    L17:
        int r9 = r17 - 1;
        int r10 = 0;
    L18:
        if (r9 < 0) goto L23;
        if (charAt(r9) != '\\') goto L23;
        r10 = r10 + 1;
        r9 = r9 - 1;
    L23:
        if ((r10 % 2) == 0) goto L24;
        r17 = indexOf('\"', r17 + 1);
        goto L17
    L24:
        int r6 = this.bp;
        int r11 = r17 - (r6 + r1);
        r8 = readString(sub_chars(r6 + r1, r11), r11);
    L26:
        int r18 = this.bp;
        int r2 = r1 + ((r17 - (r18 + r1)) + 1);
        int r19 = r2 + 1;
        char r4 = charAt(r18 + r2);
        r14.add(r8);
    L38:
        if (r4 != ',') goto L40;
        int r5 = r19 + 1;
        r16 = charAt(this.bp + r19);
        r1 = r5;
        goto L12
    L40:
        if (r4 != ']') goto L42;
        int r20 = r19 + 1;
        char r110 = charAt(this.bp + r19);
    L48:
        if (r110 != ',') goto L52;
        int r111 = this.bp + r20;
        this.bp = r111;
        this.ch = charAt(r111);
        this.matchStat = 3;
        return r14;
    L52:
        if (r110 != '}') goto L67;
        int r21 = r20 + 1;
        char r112 = charAt(this.bp + r20);
        if (r112 != ',') goto L56;
        this.token = 16;
        int r113 = this.bp + r21;
        this.bp = r113;
        this.ch = charAt(r113);
    L63:
        this.matchStat = 4;
        return r14;
    L56:
        if (r112 != ']') goto L58;
        this.token = 15;
        int r114 = this.bp + r21;
        this.bp = r114;
        this.ch = charAt(r114);
        goto L63
    L58:
        if (r112 != '}') goto L61;
        this.token = 13;
        int r115 = this.bp + r21;
        this.bp = r115;
        this.ch = charAt(r115);
        goto L63
    L61:
        if (r112 != 26) goto L65;
        this.bp += r21 - 1;
        this.token = 20;
        this.ch = JSONLexer.EOI;
        goto L63
    L65:
        this.matchStat = -1;
        return null;
    L67:
        this.matchStat = -1;
        return null;
    L42:
        this.matchStat = -1;
        return null;
    L28:
        throw new JSONException("unclosed str");
    L30:
        if (r16 != 'n') goto L44;
        if (charAt(this.bp + r1) != 'u') goto L44;
        if (charAt((this.bp + r1) + 1) != 'l') goto L44;
        if (charAt((this.bp + r1) + 2) != 'l') goto L44;
        int r22 = r1 + 3;
        int r23 = r22 + 1;
        r4 = charAt(this.bp + r22);
        r14.add(null);
        r19 = r23;
    L44:
        if (r16 != ']') goto L70;
        if (r14.size() != 0) goto L70;
        r110 = charAt(this.bp + r1);
        r20 = r1 + 1;
    L70:
        throw new JSONException("illega str");
    }

    public long scanFieldSymbol(char[] r11) {
        this.matchStat = 0;
        if (charArrayCompare(r11) == true) goto L6;
        this.matchStat = -2;
        return 0;
    L6:
        int r12 = r11.length;
        int r3 = r12 + 1;
        if (charAt(this.bp + r12) == '\"') goto L10;
        this.matchStat = -1;
        return 0;
    L10:
        long r5 = -2128831035;
    L11:
        int r7 = r3 + 1;
        char r13 = charAt(this.bp + r3);
        if (r13 == '\"') goto L13;
        r5 = (r5 ^ ((long) r13)) * 16777619;
        if (r13 == '\\') goto L38;
        r3 = r7;
        goto L11
    L38:
        this.matchStat = -1;
        return 0;
    L13:
        int r0 = r7 + 1;
        char r14 = charAt(this.bp + r7);
        if (r14 != ',') goto L18;
        int r15 = this.bp + r0;
        this.bp = r15;
        this.ch = charAt(r15);
        this.matchStat = 3;
        return r5;
    L18:
        if (r14 != '}') goto L34;
        int r8 = r0 + 1;
        char r16 = charAt(this.bp + r0);
        if (r16 != ',') goto L23;
        this.token = 16;
        int r17 = this.bp + r8;
        this.bp = r17;
        this.ch = charAt(r17);
    L30:
        this.matchStat = 4;
        return r5;
    L23:
        if (r16 != ']') goto L25;
        this.token = 15;
        int r18 = this.bp + r8;
        this.bp = r18;
        this.ch = charAt(r18);
        goto L30
    L25:
        if (r16 != '}') goto L28;
        this.token = 13;
        int r19 = this.bp + r8;
        this.bp = r19;
        this.ch = charAt(r19);
        goto L30
    L28:
        if (r16 != 26) goto L32;
        this.token = 20;
        this.bp += r8 - 1;
        this.ch = JSONLexer.EOI;
        goto L30
    L32:
        this.matchStat = -1;
        return 0;
    L34:
        this.matchStat = -1;
        return 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final float scanFloat(char r9) {
        this.matchStat = 0;
        char r0 = charAt(this.bp + 0);
        if (r0 >= '0') goto L5;
    L28:
        this.matchStat = -1;
        return BitmapDescriptorFactory.HUE_RED;
    L5:
        if (r0 > '9') goto L28;
        int r5 = 1;
    L7:
        int r7 = r5 + 1;
        char r6 = charAt(this.bp + r5);
        if (r6 < '0') goto L12;
        if (r6 > '9') goto L12;
        r5 = r7;
    L12:
        if (r6 != '.') goto L22;
        int r8 = r7 + 1;
        char r10 = charAt(this.bp + r7);
        if (r10 < '0') goto L20;
        if (r10 > '9') goto L20;
    L16:
        r7 = r8 + 1;
        r6 = charAt(this.bp + r8);
        if (r6 < '0') goto L22;
        if (r6 > '9') goto L22;
        r8 = r7;
    L20:
        this.matchStat = -1;
        return BitmapDescriptorFactory.HUE_RED;
    L22:
        int r1 = this.bp;
        float r2 = Float.parseFloat(subString(r1, ((r1 + r7) - r1) - 1));
        if (r6 != r9) goto L26;
        int r11 = this.bp + r7;
        this.bp = r11;
        this.ch = charAt(r11);
        this.matchStat = 3;
        this.token = 16;
        return r2;
    L26:
        this.matchStat = -1;
        return r2;
    }

    public final void scanHex() {
        if (this.ch != 'x') goto L24;
        next();
        if (this.ch != '\'') goto L22;
        this.np = this.bp;
        next();
    L7:
        char r0 = next();
        if (r0 < '0') goto L12;
        if (r0 > '9') goto L12;
    L15:
        this.sp++;
    L12:
        if (r0 < 'A') goto L16;
        if (r0 <= 'F') goto L15;
    L16:
        if (r0 != '\'') goto L20;
        this.sp++;
        next();
        this.token = 26;
        return;
    L20:
        throw new JSONException("illegal state. " + r0);
    L22:
        throw new JSONException("illegal state. " + this.ch);
    L24:
        throw new JSONException("illegal state. " + this.ch);
    }

    public final void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
    L3:
        this.sp++;
        next();
        if (Character.isLetterOrDigit(this.ch) == true) goto L3;
        String r0 = stringVal();
        if (BuildConfig.COMMON_MODULE_COMMIT_ID.equalsIgnoreCase(r0) == false) goto L10;
        this.token = 8;
        return;
    L10:
        if ("new".equals(r0) == false) goto L13;
        this.token = 9;
        return;
    L13:
        if ("true".equals(r0) == false) goto L16;
        this.token = 6;
        return;
    L16:
        if (Bugly.SDK_IS_DEV.equals(r0) == false) goto L19;
        this.token = 7;
        return;
    L19:
        if ("undefined".equals(r0) == false) goto L22;
        this.token = 23;
        return;
    L22:
        if ("Set".equals(r0) == false) goto L25;
        this.token = 21;
        return;
    L25:
        if ("TreeSet".equals(r0) == false) goto L27;
        this.token = 22;
        return;
    L27:
        this.token = 18;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int scanInt(char r10) {
        this.matchStat = 0;
        char r1 = charAt(this.bp + 0);
        int r2 = 1;
        if (r1 != '-') goto L5;
        boolean r3 = true;
    L6:
        if (r3 == false) goto L9;
        r1 = charAt(this.bp + 1);
        r2 = 2;
    L9:
        if (r1 >= '0') goto L11;
    L36:
        this.matchStat = -1;
        return 0;
    L11:
        if (r1 > '9') goto L36;
        int r4 = r1 - '0';
    L13:
        int r8 = r2 + 1;
        char r5 = charAt(this.bp + r2);
        if (r5 < '0') goto L18;
        if (r5 > '9') goto L18;
        r4 = (r4 * 10) + (r5 - '0');
        r2 = r8;
    L18:
        if (r5 != '.') goto L21;
        this.matchStat = -1;
        return 0;
    L21:
        if (r4 >= 0) goto L24;
        this.matchStat = -1;
        return 0;
    L24:
        if (r5 == r10) goto L25;
        if (isWhitespace(r5) == false) goto L32;
        char r0 = charAt(this.bp + r8);
        r8 = r8 + 1;
        r5 = r0;
        goto L24
    L32:
        this.matchStat = -1;
        if (r3 == true) goto L35;
        return r4;
    L35:
        return -r4;
    L25:
        int r11 = this.bp + r8;
        this.bp = r11;
        this.ch = charAt(r11);
        this.matchStat = 3;
        this.token = 16;
        if (r3 == true) goto L28;
        return r4;
    L28:
        return -r4;
    L5:
        r3 = false;
        goto L6
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char r14) {
        boolean r0 = false;
        this.matchStat = 0;
        char r1 = charAt(this.bp + 0);
        int r2 = 1;
        if (r1 != '-') goto L5;
        r0 = true;
    L5:
        if (r0 == false) goto L8;
        r1 = charAt(this.bp + 1);
        r2 = 2;
    L8:
        if (r1 >= '0') goto L10;
    L34:
        this.matchStat = -1;
        return 0;
    L10:
        if (r1 > '9') goto L34;
        long r8 = r1 - '0';
    L12:
        int r10 = r2 + 1;
        char r3 = charAt(this.bp + r2);
        if (r3 < '0') goto L17;
        if (r3 > '9') goto L17;
        r8 = (r8 * 10) + ((long) (r3 - '0'));
        r2 = r10;
    L17:
        if (r3 != '.') goto L21;
        this.matchStat = -1;
        return 0;
    L21:
        if (r8 >= 0) goto L24;
        this.matchStat = -1;
        return 0;
    L24:
        if (r3 == r14) goto L25;
        if (isWhitespace(r3) == false) goto L32;
        r3 = charAt(this.bp + r10);
        r10 = r10 + 1;
        goto L24
    L32:
        this.matchStat = -1;
        return r8;
    L25:
        int r15 = this.bp + r10;
        this.bp = r15;
        this.ch = charAt(r15);
        this.matchStat = 3;
        this.token = 16;
        if (r0 == true) goto L28;
        return r8;
    L28:
        return -r8;
    }

    public final void scanNullOrNew() {
        if (this.ch != 'n') goto L55;
        next();
        char r0 = this.ch;
        if (r0 != 'u') goto L31;
        next();
        if (this.ch != 'l') goto L29;
        next();
        if (this.ch != 'l') goto L27;
        next();
        char r1 = this.ch;
        if (r1 == ' ') goto L24;
        if (r1 == ',') goto L24;
        if (r1 == '}') goto L24;
        if (r1 == ']') goto L24;
        if (r1 == '\n') goto L24;
        if (r1 == '\r') goto L24;
        if (r1 == '\t') goto L24;
        if (r1 == 26) goto L24;
        if (r1 == '\f') goto L24;
        if (r1 == '\b') goto L24;
        throw new JSONException("scan null error");
    L24:
        this.token = 8;
        return;
    L27:
        throw new JSONException("error parse null");
    L29:
        throw new JSONException("error parse null");
    L31:
        if (r0 != 'e') goto L53;
        next();
        if (this.ch != 'w') goto L51;
        next();
        char r2 = this.ch;
        if (r2 == ' ') goto L48;
        if (r2 == ',') goto L48;
        if (r2 == '}') goto L48;
        if (r2 == ']') goto L48;
        if (r2 == '\n') goto L48;
        if (r2 == '\r') goto L48;
        if (r2 == '\t') goto L48;
        if (r2 == 26) goto L48;
        if (r2 == '\f') goto L48;
        if (r2 == '\b') goto L48;
        throw new JSONException("scan new error");
    L48:
        this.token = 9;
        return;
    L51:
        throw new JSONException("error parse new");
    L53:
        throw new JSONException("error parse new");
    L55:
        throw new JSONException("error parse null or new");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanNumber() {
        this.np = this.bp;
        boolean r2 = true;
        if (this.ch != '-') goto L5;
        this.sp++;
        next();
    L5:
        char r0 = this.ch;
        if (r0 < '0') goto L9;
        if (r0 > '9') goto L9;
        this.sp++;
        next();
    L9:
        boolean r5 = false;
        if (r0 != '.') goto L17;
        this.sp++;
        next();
    L12:
        char r1 = this.ch;
        if (r1 < '0') goto L16;
        if (r1 > '9') goto L16;
        this.sp++;
        next();
    L16:
        r5 = true;
    L17:
        char r3 = this.ch;
        if (r3 != 'L') goto L21;
        this.sp++;
        next();
    L37:
        r2 = r5;
    L49:
        if (r2 == false) goto L51;
        this.token = 3;
        return;
    L51:
        this.token = 2;
        return;
    L21:
        if (r3 != 'S') goto L24;
        this.sp++;
        next();
        goto L37
    L24:
        if (r3 != 'B') goto L27;
        this.sp++;
        next();
        goto L37
    L27:
        if (r3 != 'F') goto L30;
        this.sp++;
        next();
        goto L49
    L30:
        if (r3 != 'D') goto L33;
        this.sp++;
        next();
        goto L49
    L33:
        if (r3 != 'e') goto L35;
    L38:
        this.sp++;
        next();
        char r4 = this.ch;
        if (r4 == '+') goto L41;
        if (r4 == '-') goto L41;
    L42:
        char r6 = this.ch;
        if (r6 < '0') goto L46;
        if (r6 > '9') goto L46;
        this.sp++;
        next();
    L46:
        if (r6 == 'D') goto L48;
        if (r6 != 'F') goto L49;
    L48:
        this.sp++;
        next();
    L41:
        this.sp++;
        next();
        goto L42
    L35:
        if (r3 != 'E') goto L37;
        goto L37
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanString() {
        this.np = this.bp;
        this.hasSpecial = false;
    L3:
        char r1 = next();
        if (r1 == '\"') goto L5;
        if (r1 == 26) goto L10;
        if (r1 == '\\') goto L17;
        if (this.hasSpecial == false) goto L70;
        int r2 = this.sp;
        char[] r3 = this.sbuf;
        if (r2 == r3.length) goto L73;
        this.sp = r2 + 1;
        r3[r2] = r1;
        goto L3
    L73:
        putChar(r1);
        goto L3
    L70:
        this.sp++;
        goto L3
    L17:
        if (this.hasSpecial == true) goto L26;
        this.hasSpecial = true;
        int r4 = this.sp;
        char[] r8 = this.sbuf;
        if (r4 < r8.length) goto L25;
        int r9 = r8.length * 2;
        if (r4 > r9) goto L24;
        r4 = r9;
    L24:
        char[] r5 = new char[r4];
        System.arraycopy(r8, 0, r5, 0, r8.length);
        this.sbuf = r5;
    L25:
        copyTo(this.np + 1, this.sp, this.sbuf);
    L26:
        char r6 = next();
        if (r6 != '\"') goto L29;
        putChar('\"');
        goto L3
    L29:
        if (r6 != '\'') goto L31;
        putChar('\'');
        goto L3
    L31:
        if (r6 == 'F') goto L65;
        if (r6 != '\\') goto L34;
        putChar('\\');
        goto L3
    L34:
        if (r6 != 'b') goto L36;
        putChar('\b');
        goto L3
    L36:
        if (r6 == 'f') goto L65;
        if (r6 != 'n') goto L40;
        putChar('\n');
        goto L3
    L40:
        if (r6 != 'r') goto L42;
        putChar('\r');
        goto L3
    L42:
        if (r6 != 'x') goto L44;
        char r7 = next();
        char r10 = next();
        int[] r11 = digits;
        putChar((char) ((r11[r7] * 16) + r11[r10]));
        goto L3
    L44:
        switch(r6) {
            case 47: goto L59;
            case 48: goto L58;
            case 49: goto L57;
            case 50: goto L56;
            case 51: goto L55;
            case 52: goto L54;
            case 53: goto L53;
            case 54: goto L52;
            case 55: goto L51;
            default: goto L45;
        };
    L51:
        putChar(7);
        goto L3
    L52:
        putChar(6);
        goto L3
    L53:
        putChar(5);
        goto L3
    L54:
        putChar(4);
        goto L3
    L55:
        putChar(3);
        goto L3
    L56:
        putChar(2);
        goto L3
    L57:
        putChar(1);
        goto L3
    L58:
        putChar(0);
        goto L3
    L59:
        putChar('/');
        goto L3
    L45:
        switch(r6) {
            case 116: goto L50;
            case 117: goto L49;
            case 118: goto L48;
            default: goto L46;
        };
    L46:
        this.ch = r6;
        throw new JSONException("unclosed string : " + r6);
    L49:
        putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
        goto L3
    L50:
        putChar('\t');
        goto L3
    L48:
        putChar(11);
    L65:
        putChar('\f');
        goto L3
    L10:
        if (isEOF() == true) goto L13;
        putChar(JSONLexer.EOI);
        goto L3
    L13:
        throw new JSONException("unclosed string : " + r1);
    L5:
        this.token = 4;
        this.ch = next();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void scanStringArray(Collection<String> r17, char r18) {
        this.matchStat = 0;
        char r4 = charAt(this.bp + 0);
        char r5 = 'u';
        char r6 = 'n';
        if (r4 != 'n') goto L15;
        if (charAt(this.bp + 1) != 'u') goto L15;
        if (charAt((this.bp + 1) + 1) != 'l') goto L15;
        if (charAt((this.bp + 1) + 2) != 'l') goto L15;
        if (charAt((this.bp + 1) + 3) != r18) goto L15;
        int r1 = this.bp + 5;
        this.bp = r1;
        this.ch = charAt(r1);
        this.matchStat = 5;
        return;
    L15:
        if (r4 == '[') goto L18;
        this.matchStat = -1;
        return;
    L18:
        char r7 = charAt(this.bp + 1);
        int r10 = 2;
    L20:
        if (r7 == r6) goto L22;
    L28:
        if (r7 != ']') goto L33;
        if (r17.size() != 0) goto L33;
        int r3 = r10 + 1;
        char r2 = charAt(this.bp + r10);
    L55:
        if (r2 != r18) goto L58;
        int r8 = this.bp + r3;
        this.bp = r8;
        this.ch = charAt(r8);
        this.matchStat = 3;
        return;
    L58:
        this.matchStat = -1;
        return;
    L33:
        if (r7 != '\"') goto L34;
        int r9 = this.bp + r10;
        int r14 = indexOf('\"', r9);
        if (r14 == (-1)) goto L63;
        String r11 = subString(this.bp + r10, r14 - r9);
        if (r11.indexOf(92) == (-1)) goto L49;
    L40:
        int r12 = r14 - 1;
        int r13 = 0;
    L41:
        if (r12 < 0) goto L46;
        if (charAt(r12) != '\\') goto L46;
        r13 = r13 + 1;
        r12 = r12 - 1;
    L46:
        if ((r13 % 2) == 0) goto L47;
        r14 = indexOf('\"', r14 + 1);
        goto L40
    L47:
        int r15 = r14 - r9;
        r11 = readString(sub_chars(this.bp + r10, r15), r15);
    L49:
        int r16 = this.bp;
        int r19 = r10 + ((r14 - (r16 + r10)) + 1);
        int r110 = r19 + 1;
        char r20 = charAt(r16 + r19);
        r17.add(r11);
    L51:
        if (r20 != ',') goto L53;
        r10 = r110 + 1;
        r7 = charAt(this.bp + r110);
        r5 = 'u';
        r6 = 'n';
        goto L20
    L53:
        if (r20 != ']') goto L60;
        r3 = r110 + 1;
        r2 = charAt(this.bp + r110);
        goto L55
    L60:
        this.matchStat = -1;
        return;
    L63:
        throw new JSONException("unclosed str");
    L34:
        this.matchStat = -1;
        return;
    L22:
        if (charAt(this.bp + r10) != r5) goto L28;
        if (charAt((this.bp + r10) + 1) != 'l') goto L28;
        if (charAt((this.bp + r10) + 2) != 'l') goto L28;
        int r111 = r10 + 3;
        r110 = r111 + 1;
        r20 = charAt(this.bp + r111);
        r17.add(null);
        goto L51
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable r5) {
        skipWhitespace();
        char r0 = this.ch;
        if (r0 != '\"') goto L7;
        return scanSymbol(r5, '\"');
    L7:
        if (r0 != '\'') goto L15;
        if (isEnabled(Feature.AllowSingleQuotes) == false) goto L13;
        return scanSymbol(r5, '\'');
    L13:
        throw new JSONException("syntax error");
    L15:
        if (r0 != '}') goto L19;
        next();
        this.token = 13;
        return null;
    L19:
        if (r0 != ',') goto L23;
        next();
        this.token = 16;
        return null;
    L23:
        if (r0 != 26) goto L27;
        this.token = 20;
        return null;
    L27:
        if (isEnabled(Feature.AllowUnQuotedFieldNames) == false) goto L31;
        return scanSymbolUnQuoted(r5);
    L31:
        throw new JSONException("syntax error");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbolUnQuoted(SymbolTable r6) {
        boolean r1 = false;
        if (this.token == 1) goto L5;
    L9:
        boolean[] r0 = IOUtils.firstIdentifierFlags;
        int r3 = this.ch;
        if (r3 < r0.length) goto L12;
    L13:
        r1 = true;
    L14:
        if (r1 == false) goto L41;
        boolean[] r2 = IOUtils.identifierFlags;
        this.np = this.bp;
        this.sp = 1;
    L16:
        char r4 = next();
        if (r4 >= r2.length) goto L39;
        if (r2[r4] == true) goto L39;
        this.ch = charAt(this.bp);
        this.token = 18;
        if (this.sp == 4) goto L23;
    L34:
        if (r6 != null) goto L38;
        return subString(this.np, this.sp);
    L38:
        return addSymbol(this.np, this.sp, r3, r6);
    L23:
        if (r3 != 3392903) goto L34;
        if (charAt(this.np) != 'n') goto L34;
        if (charAt(this.np + 1) != 'u') goto L34;
        if (charAt(this.np + 2) != 'l') goto L34;
        if (charAt(this.np + 3) != 'l') goto L34;
        return null;
    L39:
        r3 = (r3 * 31) + r4;
        this.sp++;
        goto L16
    L41:
        throw new JSONException("illegal identifier : " + this.ch + info());
    L12:
        if (r0[r3] == false) goto L14;
    L5:
        if (this.pos != 0) goto L9;
        if (this.bp != 1) goto L9;
        this.bp = 0;
        goto L9
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanSymbolWithSeperator(SymbolTable r10, char r11) {
        int r0 = 0;
        this.matchStat = 0;
        char r1 = charAt(this.bp + 0);
        if (r1 != 'n') goto L19;
        if (charAt(this.bp + 1) == 'u') goto L7;
    L16:
        this.matchStat = -1;
        return null;
    L7:
        if (charAt((this.bp + 1) + 1) != 'l') goto L16;
        if (charAt((this.bp + 1) + 2) != 'l') goto L16;
        if (charAt(this.bp + 4) != r11) goto L14;
        int r12 = this.bp + 5;
        this.bp = r12;
        this.ch = charAt(r12);
        this.matchStat = 3;
        return null;
    L14:
        this.matchStat = -1;
        return null;
    L19:
        if (r1 == '\"') goto L22;
        this.matchStat = -1;
        return null;
    L22:
        int r2 = 1;
    L23:
        int r8 = r2 + 1;
        char r3 = charAt(this.bp + r2);
        if (r3 == '\"') goto L25;
        r0 = (r0 * 31) + r3;
        if (r3 == '\\') goto L36;
        r2 = r8;
        goto L23
    L36:
        this.matchStat = -1;
        return null;
    L25:
        int r4 = this.bp;
        int r5 = (r4 + 0) + 1;
        String r13 = addSymbol(r5, ((r4 + r8) - r5) - 1, r0, r10);
        int r6 = r8 + 1;
        char r7 = charAt(this.bp + r8);
    L26:
        if (r7 == r11) goto L27;
        if (isWhitespace(r7) == false) goto L32;
        r7 = charAt(this.bp + r6);
        r6 = r6 + 1;
        goto L26
    L32:
        this.matchStat = -1;
        return r13;
    L27:
        int r14 = this.bp + r6;
        this.bp = r14;
        this.ch = charAt(r14);
        this.matchStat = 3;
        return r13;
    }

    public final void scanTrue() {
        if (this.ch != 't') goto L46;
        next();
        if (this.ch != 'r') goto L44;
        next();
        if (this.ch != 'u') goto L42;
        next();
        if (this.ch != 'e') goto L40;
        next();
        char r0 = this.ch;
        if (r0 != ' ') goto L13;
    L37:
        this.token = 6;
        return;
    L13:
        if (r0 == ',') goto L37;
        if (r0 == '}') goto L37;
        if (r0 == ']') goto L37;
        if (r0 == '\n') goto L37;
        if (r0 == '\r') goto L37;
        if (r0 == '\t') goto L37;
        if (r0 == 26) goto L37;
        if (r0 == '\f') goto L37;
        if (r0 == '\b') goto L37;
        if (r0 == ':') goto L37;
        if (r0 == '/') goto L37;
        throw new JSONException("scan true error");
    L40:
        throw new JSONException("error parse true");
    L42:
        throw new JSONException("error parse true");
    L44:
        throw new JSONException("error parse true");
    L46:
        throw new JSONException("error parse true");
    }

    public final int scanType(String r7) {
        int r0 = 0;
        this.matchStat = 0;
        char[] r1 = typeFieldName;
        if (charArrayCompare(r1) == true) goto L6;
        return -2;
    L6:
        int r2 = this.bp + r1.length;
        int r3 = r7.length();
    L8:
        if (r0 >= r3) goto L13;
        if (r7.charAt(r0) != charAt(r2 + r0)) goto L11;
        r0 = r0 + 1;
        goto L8
    L11:
        return -1;
    L13:
        int r4 = r2 + r3;
        if (charAt(r4) == '\"') goto L16;
        return -1;
    L16:
        int r5 = r4 + 1;
        char r8 = charAt(r5);
        this.ch = r8;
        if (r8 != ',') goto L21;
        int r6 = r5 + 1;
        this.ch = charAt(r6);
        this.bp = r6;
        this.token = 16;
        return 3;
    L21:
        if (r8 != '}') goto L35;
        r5 = r5 + 1;
        char r9 = charAt(r5);
        this.ch = r9;
        if (r9 != ',') goto L26;
        this.token = 16;
        r5 = r5 + 1;
        this.ch = charAt(r5);
    L33:
        this.matchStat = 4;
        goto L35
    L26:
        if (r9 != ']') goto L28;
        this.token = 15;
        r5 = r5 + 1;
        this.ch = charAt(r5);
        goto L33
    L28:
        if (r9 != '}') goto L31;
        this.token = 13;
        r5 = r5 + 1;
        this.ch = charAt(r5);
        goto L33
    L31:
        if (r9 != 26) goto L34;
        this.token = 20;
        goto L33
    L34:
        return -1;
    L35:
        this.bp = r5;
        return this.matchStat;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(Locale r1) {
        this.locale = r1;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(TimeZone r1) {
        this.timeZone = r1;
    }

    public void setToken(int r1) {
        this.token = r1;
    }

    protected void skipComment() {
        next();
        char r0 = this.ch;
        if (r0 != '/') goto L11;
    L4:
        next();
        char r1 = this.ch;
        if (r1 == '\n') goto L6;
        if (r1 != 26) goto L4;
        return;
    L6:
        next();
        return;
    L11:
        if (r0 != '*') goto L23;
        next();
    L13:
        char r2 = this.ch;
        if (r2 == 26) goto L21;
        if (r2 == '*') goto L16;
        next();
        goto L13
    L16:
        next();
        if (this.ch != '/') goto L13;
        next();
        return;
    L21:
        return;
    L23:
        throw new JSONException("invalid comment");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
    L2:
        char r0 = this.ch;
        if (r0 > '/') goto L20;
        if (r0 == ' ') goto L19;
        if (r0 == '\r') goto L19;
        if (r0 == '\n') goto L19;
        if (r0 == '\t') goto L19;
        if (r0 == '\f') goto L19;
        if (r0 == '\b') goto L19;
        if (r0 != '/') goto L33;
        skipComment();
        goto L2
    L33:
        return;
    L19:
        next();
        goto L2
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String stringVal();

    public abstract String subString(int r1, int r2);

    protected abstract char[] sub_chars(int r1, int r2);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int r2) {
        if ((r2 & this.features) == 0) goto L5;
        return true;
    L5:
        return false;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int r1) {
        nextTokenWithChar(':');
    }

    public final boolean isEnabled(int r2, int r3) {
        if ((this.features & r3) == 0) goto L5;
    L8:
        return true;
    L5:
        if ((r2 & r3) != 0) goto L8;
        return false;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable r14, char r15) {
        this.np = this.bp;
        this.sp = 0;
        boolean r1 = false;
        int r2 = 0;
    L3:
        char r3 = next();
        if (r3 == r15) goto L5;
        if (r3 == 26) goto L79;
        if (r3 == '\\') goto L20;
        r2 = (r2 * 31) + r3;
        if (r1 == false) goto L73;
        int r4 = this.sp;
        char[] r5 = this.sbuf;
        if (r4 == r5.length) goto L76;
        this.sp = r4 + 1;
        r5[r4] = r3;
        goto L3
    L76:
        putChar(r3);
        goto L3
    L73:
        this.sp++;
        goto L3
    L20:
        if (r1 == true) goto L29;
        int r6 = this.sp;
        char[] r7 = this.sbuf;
        if (r6 < r7.length) goto L28;
        int r8 = r7.length * 2;
        if (r6 > r8) goto L27;
        r6 = r8;
    L27:
        char[] r9 = new char[r6];
        System.arraycopy(r7, 0, r9, 0, r7.length);
        this.sbuf = r9;
    L28:
        arrayCopy(this.np + 1, this.sbuf, 0, this.sp);
        r1 = true;
    L29:
        char r10 = next();
        if (r10 != '\"') goto L32;
        r2 = (r2 * 31) + 34;
        putChar('\"');
        goto L3
    L32:
        if (r10 != '\'') goto L34;
        r2 = (r2 * 31) + 39;
        putChar('\'');
        goto L3
    L34:
        if (r10 == 'F') goto L68;
        if (r10 != '\\') goto L37;
        r2 = (r2 * 31) + 92;
        putChar('\\');
        goto L3
    L37:
        if (r10 != 'b') goto L39;
        r2 = (r2 * 31) + 8;
        putChar('\b');
        goto L3
    L39:
        if (r10 == 'f') goto L68;
        if (r10 != 'n') goto L43;
        r2 = (r2 * 31) + 10;
        putChar('\n');
        goto L3
    L43:
        if (r10 != 'r') goto L45;
        r2 = (r2 * 31) + 13;
        putChar('\r');
        goto L3
    L45:
        if (r10 != 'x') goto L47;
        char r11 = next();
        this.ch = r11;
        char r12 = next();
        this.ch = r12;
        int[] r13 = digits;
        char r16 = (char) ((r13[r11] * 16) + r13[r12]);
        r2 = (r2 * 31) + r16;
        putChar(r16);
        goto L3
    L47:
        switch(r10) {
            case 47: goto L62;
            case 48: goto L61;
            case 49: goto L60;
            case 50: goto L59;
            case 51: goto L58;
            case 52: goto L57;
            case 53: goto L56;
            case 54: goto L55;
            case 55: goto L54;
            default: goto L48;
        };
    L54:
        r2 = (r2 * 31) + r10;
        putChar(7);
        goto L3
    L55:
        r2 = (r2 * 31) + r10;
        putChar(6);
        goto L3
    L56:
        r2 = (r2 * 31) + r10;
        putChar(5);
        goto L3
    L57:
        r2 = (r2 * 31) + r10;
        putChar(4);
        goto L3
    L58:
        r2 = (r2 * 31) + r10;
        putChar(3);
        goto L3
    L59:
        r2 = (r2 * 31) + r10;
        putChar(2);
        goto L3
    L60:
        r2 = (r2 * 31) + r10;
        putChar(1);
        goto L3
    L61:
        r2 = (r2 * 31) + r10;
        putChar(0);
        goto L3
    L62:
        r2 = (r2 * 31) + 47;
        putChar('/');
        goto L3
    L48:
        switch(r10) {
            case 116: goto L53;
            case 117: goto L52;
            case 118: goto L51;
            default: goto L49;
        };
    L49:
        this.ch = r10;
        throw new JSONException("unclosed.str.lit");
    L52:
        int r17 = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
        r2 = (r2 * 31) + r17;
        putChar((char) r17);
        goto L3
    L53:
        r2 = (r2 * 31) + 9;
        putChar('\t');
        goto L3
    L51:
        r2 = (r2 * 31) + 11;
        putChar(11);
    L68:
        r2 = (r2 * 31) + 12;
        putChar('\f');
        goto L3
    L79:
        throw new JSONException("unclosed.str");
    L5:
        this.token = 4;
        if (r1 == true) goto L12;
        int r18 = this.np;
        if (r18 != (-1)) goto L10;
        int r19 = 0;
    L11:
        String r110 = addSymbol(r19, this.sp, r2, r14);
    L13:
        this.sp = 0;
        next();
        return r110;
    L10:
        r19 = r18 + 1;
        goto L11
    L12:
        r110 = r14.addSymbol(this.sbuf, 0, this.sp, r2);
        goto L13
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken(int r10) {
        this.sp = 0;
    L4:
        if (r10 != 2) goto L6;
        char r0 = this.ch;
        if (r0 < '0') goto L72;
        if (r0 > '9') goto L72;
        this.pos = this.bp;
        scanNumber();
        return;
    L72:
        if (r0 == '\"') goto L73;
        if (r0 == '[') goto L76;
        if (r0 == '{') goto L79;
    L81:
        char r1 = this.ch;
        if (r1 == ' ') goto L94;
        if (r1 == '\n') goto L94;
        if (r1 == '\r') goto L94;
        if (r1 == '\t') goto L94;
        if (r1 == '\f') goto L94;
        if (r1 == '\b') goto L94;
        nextToken();
        return;
    L94:
        next();
        goto L4
    L79:
        this.token = 12;
        next();
        return;
    L76:
        this.token = 14;
        next();
        return;
    L73:
        this.pos = this.bp;
        scanString();
        return;
    L6:
        if (r10 == 4) goto L53;
        if (r10 != 12) goto L9;
        char r2 = this.ch;
        if (r2 == '{') goto L48;
        if (r2 != '[') goto L81;
        this.token = 14;
        next();
        return;
    L48:
        this.token = 12;
        next();
        return;
    L9:
        if (r10 == 18) goto L44;
        if (r10 == 20) goto L41;
        switch(r10) {
            case 14: goto L33;
            case 15: goto L30;
            case 16: goto L15;
            default: goto L81;
        };
    L15:
        char r5 = this.ch;
        if (r5 == ',') goto L17;
        if (r5 == '}') goto L21;
        if (r5 == ']') goto L24;
        if (r5 != 26) goto L81;
        this.token = 20;
        return;
    L24:
        this.token = 15;
        next();
        return;
    L21:
        this.token = 13;
        next();
        return;
    L17:
        this.token = 16;
        next();
        return;
    L33:
        char r3 = this.ch;
        if (r3 == '[') goto L35;
        if (r3 != '{') goto L81;
        this.token = 12;
        next();
        return;
    L35:
        this.token = 14;
        next();
        return;
    L30:
        if (this.ch != ']') goto L41;
        this.token = 15;
        next();
        return;
    L41:
        if (this.ch != 26) goto L81;
        this.token = 20;
        return;
    L44:
        nextIdent();
        return;
    L53:
        char r4 = this.ch;
        if (r4 == '\"') goto L55;
        if (r4 < '0') goto L61;
        if (r4 > '9') goto L61;
        this.pos = this.bp;
        scanNumber();
        return;
    L61:
        if (r4 == '[') goto L62;
        if (r4 != '{') goto L81;
        this.token = 12;
        next();
        return;
    L62:
        this.token = 14;
        next();
        return;
    L55:
        this.pos = this.bp;
        scanString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanString(char r12) {
        this.matchStat = 0;
        char r1 = charAt(this.bp + 0);
        if (r1 != 'n') goto L19;
        if (charAt(this.bp + 1) == 'u') goto L7;
    L16:
        this.matchStat = -1;
        return null;
    L7:
        if (charAt((this.bp + 1) + 1) != 'l') goto L16;
        if (charAt((this.bp + 1) + 2) != 'l') goto L16;
        if (charAt(this.bp + 4) != r12) goto L14;
        int r13 = this.bp + 5;
        this.bp = r13;
        this.ch = charAt(r13);
        this.matchStat = 3;
        return null;
    L14:
        this.matchStat = -1;
        return null;
    L19:
        if (r1 == '\"') goto L22;
        this.matchStat = -1;
        return stringDefaultValue();
    L22:
        int r2 = this.bp + 1;
        int r6 = indexOf('\"', r2);
        if (r6 == (-1)) goto L42;
        String r7 = subString(this.bp + 1, r6 - r2);
        if (r7.indexOf(92) == (-1)) goto L35;
    L26:
        int r8 = r6 - 1;
        int r9 = 0;
    L27:
        if (r8 < 0) goto L32;
        if (charAt(r8) != '\\') goto L32;
        r9 = r9 + 1;
        r8 = r8 - 1;
    L32:
        if ((r9 % 2) == 0) goto L33;
        r6 = indexOf('\"', r6 + 1);
        goto L26
    L33:
        int r0 = r6 - r2;
        r7 = readString(sub_chars(this.bp + 1, r0), r0);
    L35:
        int r3 = this.bp;
        int r4 = 1 + ((r6 - (r3 + 1)) + 1);
        int r5 = r4 + 1;
        if (charAt(r3 + r4) != r12) goto L39;
        int r14 = this.bp + r5;
        this.bp = r14;
        this.ch = charAt(r14);
        this.matchStat = 3;
        return r7;
    L39:
        this.matchStat = -1;
        return r7;
    L42:
        throw new JSONException("unclosed str");
    }
}

package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public final class JSONScanner extends JSONLexerBase {
    private final int len;
    private final String text;

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    static boolean charArrayCompare(String str, int i, char[] cArr) {
        int length = cArr.length;
        if (length + i > str.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (cArr[i2] != str.charAt(i + i2)) {
                return false;
            }
        }
        return true;
    }

    static boolean checkDate(char c, char c2, char c3, char c4, char c5, char c6, int i, int i2) {
        if ((c == '1' || c == '2') && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            if (c5 == '0') {
                if (c6 < '1' || c6 > '9') {
                    return false;
                }
            } else if (c5 != '1' || (c6 != '0' && c6 != '1' && c6 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c, char c2, char c3, char c4, char c5, char c6) {
        if (c == '0') {
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        } else {
            if (c != '1') {
                if (c == '2' && c2 >= '0' && c2 <= '4') {
                }
                return false;
            }
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        }
        if (c3 < '0' || c3 > '5') {
            if (c3 != '6' || c4 != '0') {
                return false;
            }
        } else if (c4 < '0' || c4 > '9') {
            return false;
        }
        if (c5 < '0' || c5 > '5') {
            return c5 == '6' && c6 == '0';
        }
        return c6 >= '0' && c6 <= '9';
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        calendar.set(1, ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(2, (((c5 - '0') * 10) + (c6 - '0')) - 1);
        this.calendar.set(5, ((c7 - '0') * 10) + (c8 - '0'));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i, int i2, int i3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        this.text.getChars(i, i3 + i, cArr, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return IOUtils.decodeBase64(this.text, this.np + 1, this.sp);
        }
        int i = this.np + 1;
        int i2 = this.sp;
        if (i2 % 2 != 0) {
            throw new JSONException("illegal state. " + i2);
        }
        int i3 = i2 / 2;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 2) + i;
            char cCharAt = this.text.charAt(i5);
            char cCharAt2 = this.text.charAt(i5 + 1);
            char c = '0';
            int i6 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 > '9') {
                c = '7';
            }
            bArr[i4] = (byte) ((i6 << 4) | (cCharAt2 - c));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) {
        return i >= this.len ? JSONLexer.EOI : this.text.charAt(i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void copyTo(int i, int i2, char[] cArr) {
        this.text.getChars(i, i2 + i, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        int i2 = this.np;
        char[] cArr = this.sbuf;
        if (i < cArr.length) {
            this.text.getChars(i2, i2 + i, cArr, 0);
            return new BigDecimal(this.sbuf, 0, i);
        }
        char[] cArr2 = new char[i];
        this.text.getChars(i2, i + i2, cArr2, 0);
        return new BigDecimal(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int i) {
        return this.text.indexOf(c, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        StringBuilder sb = new StringBuilder();
        sb.append("pos ");
        sb.append(this.bp);
        sb.append(", json : ");
        sb.append(this.text.length() < 65536 ? this.text : this.text.substring(0, 65536));
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        int i = this.bp;
        int i2 = this.len;
        if (i != i2) {
            return this.ch == 26 && i + 1 == i2;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Collection<String> newCollectionByType(Class<?> cls) {
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i = this.bp + 1;
        this.bp = i;
        char cCharAt = i >= this.len ? JSONLexer.EOI : this.text.charAt(i);
        this.ch = cCharAt;
        return cCharAt;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        return subString(this.np, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean scanFieldBoolean(char[] cArr) {
        char cCharAt;
        boolean z;
        this.matchStat = 0;
        if (!charArrayCompare(this.text, this.bp, cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.bp + cArr.length;
        int i = length + 1;
        char cCharAt2 = charAt(length);
        if (cCharAt2 == 't') {
            int i2 = i + 1;
            if (charAt(i) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i3 = i2 + 1;
            if (charAt(i2) != 'u') {
                this.matchStat = -1;
                return false;
            }
            int i4 = i3 + 1;
            if (charAt(i3) != 'e') {
                this.matchStat = -1;
                return false;
            }
            this.bp = i4;
            cCharAt = charAt(i4);
            z = true;
        } else {
            if (cCharAt2 != 'f') {
                this.matchStat = -1;
                return false;
            }
            int i5 = i + 1;
            if (charAt(i) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i6 = i5 + 1;
            if (charAt(i5) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i7 = i6 + 1;
            if (charAt(i6) != 's') {
                this.matchStat = -1;
                return false;
            }
            int i8 = i7 + 1;
            if (charAt(i7) != 'e') {
                this.matchStat = -1;
                return false;
            }
            this.bp = i8;
            cCharAt = charAt(i8);
            z = false;
        }
        while (cCharAt != ',') {
            if (cCharAt == '}') {
                int i9 = this.bp + 1;
                this.bp = i9;
                char cCharAt3 = charAt(i9);
                while (cCharAt3 != ',') {
                    if (cCharAt3 == ']') {
                        this.token = 15;
                        int i10 = this.bp + 1;
                        this.bp = i10;
                        this.ch = charAt(i10);
                    } else if (cCharAt3 == '}') {
                        this.token = 13;
                        int i11 = this.bp + 1;
                        this.bp = i11;
                        this.ch = charAt(i11);
                    } else if (cCharAt3 == 26) {
                        this.token = 20;
                    } else {
                        if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                            this.matchStat = -1;
                            return false;
                        }
                        int i12 = this.bp + 1;
                        this.bp = i12;
                        cCharAt3 = charAt(i12);
                    }
                    this.matchStat = 4;
                    return z;
                }
                this.token = 16;
                int i13 = this.bp + 1;
                this.bp = i13;
                this.ch = charAt(i13);
                this.matchStat = 4;
                return z;
            }
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return false;
            }
            int i14 = this.bp + 1;
            this.bp = i14;
            cCharAt = charAt(i14);
        }
        int i15 = this.bp + 1;
        this.bp = i15;
        this.ch = charAt(i15);
        this.matchStat = 3;
        this.token = 16;
        return z;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int scanFieldInt(char[] cArr) {
        boolean z;
        int i;
        char cCharAt;
        this.matchStat = 0;
        int i2 = this.bp;
        char c = this.ch;
        if (!charArrayCompare(this.text, i2, cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = this.bp + cArr.length;
        int i3 = length + 1;
        char cCharAt2 = charAt(length);
        if (cCharAt2 == '-') {
            z = true;
            cCharAt2 = charAt(i3);
            i3++;
        } else {
            z = false;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i4 = cCharAt2 - '0';
        while (true) {
            i = i3 + 1;
            cCharAt = charAt(i3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i4 = (i4 * 10) + (cCharAt - '0');
            i3 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if (i4 < 0) {
            this.matchStat = -1;
            return 0;
        }
        while (cCharAt != ',' && cCharAt != '}') {
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return 0;
            }
            char cCharAt3 = charAt(i);
            i++;
            cCharAt = cCharAt3;
        }
        int i5 = i - 1;
        this.bp = i5;
        if (cCharAt == ',') {
            int i6 = i5 + 1;
            this.bp = i6;
            this.ch = charAt(i6);
            this.matchStat = 3;
            this.token = 16;
            return z ? -i4 : i4;
        }
        if (cCharAt == '}') {
            this.bp = i5;
            int i7 = i5 + 1;
            this.bp = i7;
            char cCharAt4 = charAt(i7);
            while (true) {
                if (cCharAt4 == ',') {
                    this.token = 16;
                    int i8 = this.bp + 1;
                    this.bp = i8;
                    this.ch = charAt(i8);
                    break;
                }
                if (cCharAt4 == ']') {
                    this.token = 15;
                    int i9 = this.bp + 1;
                    this.bp = i9;
                    this.ch = charAt(i9);
                    break;
                }
                if (cCharAt4 == '}') {
                    this.token = 13;
                    int i10 = this.bp + 1;
                    this.bp = i10;
                    this.ch = charAt(i10);
                    break;
                }
                if (cCharAt4 == 26) {
                    this.token = 20;
                    break;
                }
                if (!JSONLexerBase.isWhitespace(cCharAt4)) {
                    this.bp = i2;
                    this.ch = c;
                    this.matchStat = -1;
                    return 0;
                }
                int i11 = this.bp + 1;
                this.bp = i11;
                cCharAt4 = charAt(i11);
            }
            this.matchStat = 4;
        }
        return z ? -i4 : i4;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldLong(char[] cArr) {
        int i;
        char cCharAt;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.bp;
        char c = this.ch;
        if (!charArrayCompare(this.text, i2, cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = this.bp + cArr.length;
        int i3 = length + 1;
        char cCharAt2 = charAt(length);
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(i3);
            i3++;
            z = true;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.bp = i2;
            this.ch = c;
            this.matchStat = -1;
            return 0L;
        }
        long j = cCharAt2 - '0';
        while (true) {
            i = i3 + 1;
            cCharAt = charAt(i3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j = (j * 10) + ((long) (cCharAt - '0'));
            i3 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (cCharAt == ',' || cCharAt == '}') {
            this.bp = i - 1;
        }
        if (j < 0) {
            this.bp = i2;
            this.ch = c;
            this.matchStat = -1;
            return 0L;
        }
        while (cCharAt != ',') {
            if (cCharAt == '}') {
                int i4 = this.bp + 1;
                this.bp = i4;
                char cCharAt3 = charAt(i4);
                while (true) {
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int i5 = this.bp + 1;
                        this.bp = i5;
                        this.ch = charAt(i5);
                        break;
                    }
                    if (cCharAt3 == ']') {
                        this.token = 15;
                        int i6 = this.bp + 1;
                        this.bp = i6;
                        this.ch = charAt(i6);
                        break;
                    }
                    if (cCharAt3 == '}') {
                        this.token = 13;
                        int i7 = this.bp + 1;
                        this.bp = i7;
                        this.ch = charAt(i7);
                        break;
                    }
                    if (cCharAt3 == 26) {
                        this.token = 20;
                        break;
                    }
                    if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                        this.bp = i2;
                        this.ch = c;
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i8 = this.bp + 1;
                    this.bp = i8;
                    cCharAt3 = charAt(i8);
                }
                this.matchStat = 4;
                return z ? -j : j;
            }
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return 0L;
            }
            this.bp = i;
            int i9 = i + 1;
            char cCharAt4 = charAt(i);
            i = i9;
            cCharAt = cCharAt4;
        }
        int i10 = this.bp + 1;
        this.bp = i10;
        this.ch = charAt(i10);
        this.matchStat = 3;
        this.token = 16;
        return z ? -j : j;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int i = this.bp;
        char c = this.ch;
        if (!charArrayCompare(this.text, i, cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = this.bp + cArr.length;
        int i2 = length + 1;
        if (charAt(length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int iIndexOf = indexOf('\"', i2);
        if (iIndexOf == -1) {
            throw new JSONException("unclosed str");
        }
        String strSubString = subString(i2, iIndexOf - i2);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i3 = 0;
                for (int i4 = iIndexOf - 1; i4 >= 0 && charAt(i4) == '\\'; i4--) {
                    i3++;
                }
                if (i3 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i5 = this.bp;
            int length2 = iIndexOf - ((cArr.length + i5) + 1);
            strSubString = JSONLexerBase.readString(sub_chars(i5 + cArr.length + 1, length2), length2);
        }
        char cCharAt = charAt(iIndexOf + 1);
        while (cCharAt != ',' && cCharAt != '}') {
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            iIndexOf++;
            cCharAt = charAt(iIndexOf + 1);
        }
        int i6 = iIndexOf + 1;
        this.bp = i6;
        this.ch = cCharAt;
        if (cCharAt == ',') {
            int i7 = i6 + 1;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 3;
            return strSubString;
        }
        int i8 = i6 + 1;
        this.bp = i8;
        char cCharAt2 = charAt(i8);
        if (cCharAt2 == ',') {
            this.token = 16;
            int i9 = this.bp + 1;
            this.bp = i9;
            this.ch = charAt(i9);
        } else if (cCharAt2 == ']') {
            this.token = 15;
            int i10 = this.bp + 1;
            this.bp = i10;
            this.ch = charAt(i10);
        } else if (cCharAt2 == '}') {
            this.token = 13;
            int i11 = this.bp + 1;
            this.bp = i11;
            this.ch = charAt(i11);
        } else {
            if (cCharAt2 != 26) {
                this.bp = i;
                this.ch = c;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return strSubString;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Collection<String> scanFieldStringArray(char[] cArr, Class<?> cls) {
        char cCharAt;
        int i;
        int i2;
        char cCharAt2;
        this.matchStat = 0;
        if (!charArrayCompare(this.text, this.bp, cArr)) {
            this.matchStat = -2;
            return null;
        }
        Collection<String> collectionNewCollectionByType = newCollectionByType(cls);
        int length = this.bp + cArr.length;
        int i3 = length + 1;
        if (charAt(length) == '[') {
            int i4 = i3 + 1;
            char cCharAt3 = charAt(i3);
            while (true) {
                if (cCharAt3 == '\"') {
                    int iIndexOf = indexOf('\"', i4);
                    if (iIndexOf == -1) {
                        throw new JSONException("unclosed str");
                    }
                    String strSubString = subString(i4, iIndexOf - i4);
                    if (strSubString.indexOf(92) != -1) {
                        while (true) {
                            int i5 = 0;
                            for (int i6 = iIndexOf - 1; i6 >= 0 && charAt(i6) == '\\'; i6--) {
                                i5++;
                            }
                            if (i5 % 2 == 0) {
                                break;
                            }
                            iIndexOf = indexOf('\"', iIndexOf + 1);
                        }
                        int i7 = iIndexOf - i4;
                        strSubString = JSONLexerBase.readString(sub_chars(i4, i7), i7);
                    }
                    int i8 = iIndexOf + 1;
                    i2 = i8 + 1;
                    cCharAt2 = charAt(i8);
                    collectionNewCollectionByType.add(strSubString);
                } else {
                    if (cCharAt3 != 'n' || !this.text.startsWith("ull", i4)) {
                        if (cCharAt3 != ']' || collectionNewCollectionByType.size() != 0) {
                            this.matchStat = -1;
                            return null;
                        }
                        i = i4 + 1;
                        cCharAt = charAt(i4);
                        break;
                    }
                    int i9 = i4 + 3;
                    i2 = i9 + 1;
                    cCharAt2 = charAt(i9);
                    collectionNewCollectionByType.add(null);
                }
                if (cCharAt2 != ',') {
                    if (cCharAt2 != ']') {
                        this.matchStat = -1;
                        return null;
                    }
                    i = i2 + 1;
                    cCharAt = charAt(i2);
                    while (JSONLexerBase.isWhitespace(cCharAt)) {
                        cCharAt = charAt(i);
                        i++;
                    }
                    break;
                }
                i4 = i2 + 1;
                cCharAt3 = charAt(i2);
            }
        } else {
            if (!this.text.startsWith("ull", i3)) {
                this.matchStat = -1;
                return null;
            }
            int i10 = i3 + 3;
            collectionNewCollectionByType = null;
            cCharAt = charAt(i10);
            i = i10 + 1;
        }
        this.bp = i;
        if (cCharAt == ',') {
            this.ch = charAt(i);
            this.matchStat = 3;
            return collectionNewCollectionByType;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return null;
        }
        char cCharAt4 = charAt(i);
        while (cCharAt4 != ',') {
            if (cCharAt4 == ']') {
                this.token = 15;
                int i11 = this.bp + 1;
                this.bp = i11;
                this.ch = charAt(i11);
            } else if (cCharAt4 == '}') {
                this.token = 13;
                int i12 = this.bp + 1;
                this.bp = i12;
                this.ch = charAt(i12);
            } else if (cCharAt4 == 26) {
                this.token = 20;
                this.ch = cCharAt4;
            } else {
                boolean z = false;
                while (JSONLexerBase.isWhitespace(cCharAt4)) {
                    int i13 = i + 1;
                    char cCharAt5 = charAt(i);
                    this.bp = i13;
                    z = true;
                    cCharAt4 = cCharAt5;
                    i = i13;
                }
                if (!z) {
                    this.matchStat = -1;
                    return null;
                }
            }
            this.matchStat = 4;
            return collectionNewCollectionByType;
        }
        this.token = 16;
        int i14 = this.bp + 1;
        this.bp = i14;
        this.ch = charAt(i14);
        this.matchStat = 4;
        return collectionNewCollectionByType;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(this.text, this.bp, cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = this.bp + cArr.length;
        int i = length + 1;
        if (charAt(length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = -2128831035;
        while (true) {
            int i2 = i + 1;
            char cCharAt = charAt(i);
            if (cCharAt == '\"') {
                this.bp = i2;
                char cCharAt2 = charAt(i2);
                this.ch = cCharAt2;
                while (cCharAt2 != ',') {
                    if (cCharAt2 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int i3 = this.bp + 1;
                            this.bp = i3;
                            this.ch = charAt(i3);
                        } else if (current == ']') {
                            this.token = 15;
                            int i4 = this.bp + 1;
                            this.bp = i4;
                            this.ch = charAt(i4);
                        } else if (current == '}') {
                            this.token = 13;
                            int i5 = this.bp + 1;
                            this.bp = i5;
                            this.ch = charAt(i5);
                        } else {
                            if (current != 26) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            this.token = 20;
                        }
                        this.matchStat = 4;
                        return j;
                    }
                    if (!JSONLexerBase.isWhitespace(cCharAt2)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i6 = this.bp + 1;
                    this.bp = i6;
                    cCharAt2 = charAt(i6);
                }
                int i7 = this.bp + 1;
                this.bp = i7;
                this.ch = charAt(i7);
                this.matchStat = 3;
                return j;
            }
            if (i2 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ ((long) cCharAt)) * 16777619;
            i = i2;
        }
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final int scanInt(char c) {
        int i;
        char cCharAt;
        this.matchStat = 0;
        int i2 = this.bp;
        int i3 = i2 + 1;
        char cCharAt2 = charAt(i2);
        boolean z = cCharAt2 == '-';
        if (z) {
            int i4 = i3 + 1;
            char cCharAt3 = charAt(i3);
            i3 = i4;
            cCharAt2 = cCharAt3;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i5 = cCharAt2 - '0';
        while (true) {
            i = i3 + 1;
            cCharAt = charAt(i3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i5 = (i5 * 10) + (cCharAt - '0');
            i3 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if (i5 < 0) {
            this.matchStat = -1;
            return 0;
        }
        while (cCharAt != c) {
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return z ? -i5 : i5;
            }
            cCharAt = charAt(i);
            i++;
        }
        this.bp = i;
        this.ch = charAt(i);
        this.matchStat = 3;
        this.token = 16;
        return z ? -i5 : i5;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int i;
        char cCharAt;
        this.matchStat = 0;
        int i2 = this.bp;
        int i3 = i2 + 1;
        char cCharAt2 = charAt(i2);
        boolean z = cCharAt2 == '-';
        if (z) {
            int i4 = i3 + 1;
            char cCharAt3 = charAt(i3);
            i3 = i4;
            cCharAt2 = cCharAt3;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j = cCharAt2 - '0';
        while (true) {
            i = i3 + 1;
            cCharAt = charAt(i3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j = (j * 10) + ((long) (cCharAt - '0'));
            i3 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (j < 0) {
            this.matchStat = -1;
            return 0L;
        }
        while (cCharAt != c) {
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return j;
            }
            cCharAt = charAt(i);
            i++;
        }
        this.bp = i;
        this.ch = charAt(i);
        this.matchStat = 3;
        this.token = 16;
        return z ? -j : j;
    }

    protected void setTime(char c, char c2, char c3, char c4, char c5, char c6) {
        this.calendar.set(11, ((c - '0') * 10) + (c2 - '0'));
        this.calendar.set(12, ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(13, ((c5 - '0') * 10) + (c6 - '0'));
    }

    protected void setTimeZone(char c, char c2, char c3) {
        int i = (((c2 - '0') * 10) + (c3 - '0')) * 3600 * 1000;
        if (c == '-') {
            i = -i;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i) {
            String[] availableIDs = TimeZone.getAvailableIDs(i);
            if (availableIDs.length > 0) {
                this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        return !this.hasSpecial ? subString(this.np + 1, this.sp) : new String(this.sbuf, 0, this.sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i, int i2) {
        if (!ASMUtils.IS_ANDROID) {
            return this.text.substring(i, i2 + i);
        }
        char[] cArr = this.sbuf;
        if (i2 < cArr.length) {
            this.text.getChars(i, i + i2, cArr, 0);
            return new String(this.sbuf, 0, i2);
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return new String(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i, int i2) {
        if (ASMUtils.IS_ANDROID) {
            char[] cArr = this.sbuf;
            if (i2 < cArr.length) {
                this.text.getChars(i, i2 + i, cArr, 0);
                return this.sbuf;
            }
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return cArr2;
    }

    public JSONScanner(String str, int i) {
        super(i);
        this.text = str;
        this.len = str.length();
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        char cCharAt;
        int i6;
        char cCharAt2;
        int i7;
        int i8;
        char cCharAt3;
        char cCharAt4;
        int i9 = this.len;
        int i10 = this.bp;
        int i11 = i9 - i10;
        if (!z && i11 > 13) {
            char cCharAt5 = charAt(i10);
            char cCharAt6 = charAt(this.bp + 1);
            char cCharAt7 = charAt(this.bp + 2);
            char cCharAt8 = charAt(this.bp + 3);
            char cCharAt9 = charAt(this.bp + 4);
            char cCharAt10 = charAt(this.bp + 5);
            char cCharAt11 = charAt((this.bp + i11) - 1);
            char cCharAt12 = charAt((this.bp + i11) - 2);
            if (cCharAt5 == '/' && cCharAt6 == 'D' && cCharAt7 == 'a' && cCharAt8 == 't' && cCharAt9 == 'e' && cCharAt10 == '(' && cCharAt11 == '/' && cCharAt12 == ')') {
                int i12 = -1;
                for (int i13 = 6; i13 < i11; i13++) {
                    char cCharAt13 = charAt(this.bp + i13);
                    if (cCharAt13 != '+') {
                        if (cCharAt13 < '0' || cCharAt13 > '9') {
                            break;
                        }
                    } else {
                        i12 = i13;
                    }
                }
                if (i12 == -1) {
                    return false;
                }
                int i14 = this.bp + 6;
                long j = Long.parseLong(subString(i14, i12 - i14));
                Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
                this.calendar = calendar;
                calendar.setTimeInMillis(j);
                this.token = 5;
                return true;
            }
        }
        if (i11 == 8 || i11 == 14 || (i11 == 17 && charAt(this.bp + 6) != '-')) {
            int i15 = 0;
            if (z) {
                return false;
            }
            char cCharAt14 = charAt(this.bp);
            char cCharAt15 = charAt(this.bp + 1);
            char cCharAt16 = charAt(this.bp + 2);
            char cCharAt17 = charAt(this.bp + 3);
            char cCharAt18 = charAt(this.bp + 4);
            char cCharAt19 = charAt(this.bp + 5);
            char cCharAt20 = charAt(this.bp + 6);
            char cCharAt21 = charAt(this.bp + 7);
            if (!checkDate(cCharAt14, cCharAt15, cCharAt16, cCharAt17, cCharAt18, cCharAt19, cCharAt20, cCharAt21)) {
                return false;
            }
            setCalendar(cCharAt14, cCharAt15, cCharAt16, cCharAt17, cCharAt18, cCharAt19, cCharAt20, cCharAt21);
            if (i11 != 8) {
                char cCharAt22 = charAt(this.bp + 8);
                char cCharAt23 = charAt(this.bp + 9);
                char cCharAt24 = charAt(this.bp + 10);
                char cCharAt25 = charAt(this.bp + 11);
                char cCharAt26 = charAt(this.bp + 12);
                char cCharAt27 = charAt(this.bp + 13);
                if (!checkTime(cCharAt22, cCharAt23, cCharAt24, cCharAt25, cCharAt26, cCharAt27)) {
                    return false;
                }
                if (i11 == 17) {
                    char cCharAt28 = charAt(this.bp + 14);
                    char cCharAt29 = charAt(this.bp + 15);
                    char cCharAt30 = charAt(this.bp + 16);
                    if (cCharAt28 < '0' || cCharAt28 > '9' || cCharAt29 < '0' || cCharAt29 > '9' || cCharAt30 < '0' || cCharAt30 > '9') {
                        return false;
                    }
                    i4 = ((cCharAt28 - '0') * 100) + ((cCharAt29 - '0') * 10) + (cCharAt30 - '0');
                } else {
                    i4 = 0;
                }
                i = ((cCharAt24 - '0') * 10) + (cCharAt25 - '0');
                i2 = ((cCharAt26 - '0') * 10) + (cCharAt27 - '0');
                i15 = i4;
                i3 = ((cCharAt22 - '0') * 10) + (cCharAt23 - '0');
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
            }
            this.calendar.set(11, i3);
            this.calendar.set(12, i);
            this.calendar.set(13, i2);
            this.calendar.set(14, i15);
            this.token = 5;
            return true;
        }
        if (i11 < 9) {
            return false;
        }
        char cCharAt31 = charAt(this.bp);
        char cCharAt32 = charAt(this.bp + 1);
        char cCharAt33 = charAt(this.bp + 2);
        char cCharAt34 = charAt(this.bp + 3);
        char cCharAt35 = charAt(this.bp + 4);
        char cCharAt36 = charAt(this.bp + 5);
        char cCharAt37 = charAt(this.bp + 6);
        char cCharAt38 = charAt(this.bp + 7);
        char cCharAt39 = charAt(this.bp + 8);
        char cCharAt40 = charAt(this.bp + 9);
        if ((cCharAt35 == '-' && cCharAt38 == '-') || (cCharAt35 == '/' && cCharAt38 == '/')) {
            cCharAt38 = cCharAt40;
            c = cCharAt36;
            cCharAt36 = cCharAt37;
            i5 = 10;
        } else if (cCharAt35 == '-' && cCharAt37 == '-') {
            if (cCharAt39 == ' ') {
                c = '0';
                i5 = 8;
                cCharAt39 = '0';
            } else {
                c = '0';
                i5 = 9;
                cCharAt39 = cCharAt38;
                cCharAt38 = cCharAt39;
            }
        } else if ((cCharAt33 == '.' && cCharAt36 == '.') || (cCharAt33 == '-' && cCharAt36 == '-')) {
            cCharAt36 = cCharAt35;
            cCharAt33 = cCharAt39;
            cCharAt39 = cCharAt31;
            cCharAt31 = cCharAt37;
            i5 = 10;
            cCharAt38 = cCharAt32;
            cCharAt32 = cCharAt38;
            cCharAt34 = cCharAt40;
            c = cCharAt34;
        } else {
            if (cCharAt35 != 24180 && cCharAt35 != 45380) {
                return false;
            }
            if (cCharAt38 != 26376 && cCharAt38 != 50900) {
                if (cCharAt37 != 26376 && cCharAt37 != 50900) {
                    return false;
                }
                if (cCharAt39 == 26085 || cCharAt39 == 51068) {
                    c = '0';
                } else {
                    if (cCharAt40 != 26085 && cCharAt40 != 51068) {
                        return false;
                    }
                    c = '0';
                    i5 = 10;
                    cCharAt39 = cCharAt38;
                    cCharAt38 = cCharAt39;
                }
            } else if (cCharAt40 == 26085 || cCharAt40 == 51068) {
                c = cCharAt36;
                cCharAt36 = cCharAt37;
                cCharAt38 = cCharAt39;
            } else {
                if (charAt(this.bp + 10) != 26085 && charAt(this.bp + 10) != 51068) {
                    return false;
                }
                cCharAt38 = cCharAt40;
                c = cCharAt36;
                cCharAt36 = cCharAt37;
                i5 = 11;
            }
            i5 = 10;
            cCharAt39 = '0';
        }
        if (!checkDate(cCharAt31, cCharAt32, cCharAt33, cCharAt34, c, cCharAt36, cCharAt39, cCharAt38)) {
            return false;
        }
        setCalendar(cCharAt31, cCharAt32, cCharAt33, cCharAt34, c, cCharAt36, cCharAt39, cCharAt38);
        char cCharAt41 = charAt(this.bp + i5);
        if (cCharAt41 != 'T' && (cCharAt41 != ' ' || z)) {
            if (cCharAt41 == '\"' || cCharAt41 == 26 || cCharAt41 == 26085 || cCharAt41 == 51068) {
                this.calendar.set(11, 0);
                this.calendar.set(12, 0);
                this.calendar.set(13, 0);
                this.calendar.set(14, 0);
                int i16 = this.bp + i5;
                this.bp = i16;
                this.ch = charAt(i16);
                this.token = 5;
                return true;
            }
            if ((cCharAt41 != '+' && cCharAt41 != '-') || this.len != i5 + 6 || charAt(this.bp + i5 + 3) != ':' || charAt(this.bp + i5 + 4) != '0' || charAt(this.bp + i5 + 5) != '0') {
                return false;
            }
            setTime('0', '0', '0', '0', '0', '0');
            this.calendar.set(14, 0);
            setTimeZone(cCharAt41, charAt(this.bp + i5 + 1), charAt(this.bp + i5 + 2));
            return true;
        }
        int i17 = i5 + 9;
        if (i11 < i17 || charAt(this.bp + i5 + 3) != ':' || charAt(this.bp + i5 + 6) != ':') {
            return false;
        }
        char cCharAt42 = charAt(this.bp + i5 + 1);
        char cCharAt43 = charAt(this.bp + i5 + 2);
        char cCharAt44 = charAt(this.bp + i5 + 4);
        char cCharAt45 = charAt(this.bp + i5 + 5);
        char cCharAt46 = charAt(this.bp + i5 + 7);
        char cCharAt47 = charAt(this.bp + i5 + 8);
        if (!checkTime(cCharAt42, cCharAt43, cCharAt44, cCharAt45, cCharAt46, cCharAt47)) {
            return false;
        }
        setTime(cCharAt42, cCharAt43, cCharAt44, cCharAt45, cCharAt46, cCharAt47);
        char cCharAt48 = charAt(this.bp + i5 + 9);
        if (cCharAt48 != '.') {
            this.calendar.set(14, 0);
            int i18 = this.bp + i17;
            this.bp = i18;
            this.ch = charAt(i18);
            this.token = 5;
            if (cCharAt48 == 'Z' && this.calendar.getTimeZone().getRawOffset() != 0) {
                String[] availableIDs = TimeZone.getAvailableIDs(0);
                if (availableIDs.length > 0) {
                    this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
                }
            }
            return true;
        }
        int i19 = i5 + 11;
        if (i11 >= i19 && (cCharAt = charAt(this.bp + i5 + 10)) >= '0' && cCharAt <= '9') {
            int i20 = cCharAt - '0';
            if (i11 <= i19 || (cCharAt4 = charAt(this.bp + i5 + 11)) < '0' || cCharAt4 > '9') {
                i6 = 1;
            } else {
                i20 = (i20 * 10) + (cCharAt4 - '0');
                i6 = 2;
            }
            if (i6 == 2 && (cCharAt3 = charAt(this.bp + i5 + 12)) >= '0' && cCharAt3 <= '9') {
                i20 = (i20 * 10) + (cCharAt3 - '0');
                i6 = 3;
            }
            this.calendar.set(14, i20);
            char cCharAt49 = charAt(this.bp + i5 + 10 + i6);
            if (cCharAt49 == '+' || cCharAt49 == '-') {
                char cCharAt50 = charAt(this.bp + i5 + 10 + i6 + 1);
                if (cCharAt50 >= '0' && cCharAt50 <= '1' && (cCharAt2 = charAt(this.bp + i5 + 10 + i6 + 2)) >= '0' && cCharAt2 <= '9') {
                    char cCharAt51 = charAt(this.bp + i5 + 10 + i6 + 3);
                    if (cCharAt51 == ':') {
                        if (charAt(this.bp + i5 + 10 + i6 + 4) != '0' || charAt(this.bp + i5 + 10 + i6 + 5) != '0') {
                            return false;
                        }
                        i7 = 6;
                    } else if (cCharAt51 != '0') {
                        i7 = 3;
                    } else {
                        if (charAt(this.bp + i5 + 10 + i6 + 4) != '0') {
                            return false;
                        }
                        i7 = 5;
                    }
                    setTimeZone(cCharAt49, cCharAt50, cCharAt2);
                    i8 = i7;
                }
            } else if (cCharAt49 == 'Z') {
                if (this.calendar.getTimeZone().getRawOffset() != 0) {
                    String[] availableIDs2 = TimeZone.getAvailableIDs(0);
                    if (availableIDs2.length > 0) {
                        this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs2[0]));
                    }
                }
                i8 = 1;
            } else {
                i8 = 0;
            }
            int i21 = i5 + 10 + i6 + i8;
            char cCharAt52 = charAt(this.bp + i21);
            if (cCharAt52 != 26 && cCharAt52 != '\"') {
                return false;
            }
            int i22 = this.bp + i21;
            this.bp = i22;
            this.ch = charAt(i22);
            this.token = 5;
            return true;
        }
        return false;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.bp, cArr);
    }

    public JSONScanner(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i, int i2) {
        this(new String(cArr, 0, i), i2);
    }
}

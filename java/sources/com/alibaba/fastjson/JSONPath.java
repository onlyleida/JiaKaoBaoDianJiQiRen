package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.FieldSerializer;
import com.alibaba.fastjson.serializer.JavaBeanSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.bugly.Bugly;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes5.dex */
public class JSONPath implements JSONAware {
    private static int CACHE_SIZE = 1024;
    private static ConcurrentMap<String, JSONPath> pathCache = new ConcurrentHashMap(128, 0.75f, 1);
    private ParserConfig parserConfig;
    private final String path;
    private Segement[] segments;
    private SerializeConfig serializeConfig;

    static class ArrayAccessSegement implements Segement {
        private final int index;

        public ArrayAccessSegement(int i) {
            this.index = i;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.getArrayItem(obj2, this.index);
        }

        public boolean remove(JSONPath jSONPath, Object obj) {
            return jSONPath.removeArrayItem(jSONPath, obj, this.index);
        }

        public boolean setValue(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.setArrayItem(jSONPath, obj, this.index, obj2);
        }
    }

    static class DoubleOpSegement implements Filter {
        private final Operator op;
        private final String propertyName;
        private final double value;

        public DoubleOpSegement(String str, double d2, Operator operator) {
            this.propertyName = str;
            this.value = d2;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null || !(propertyValue instanceof Number)) {
                return false;
            }
            double dDoubleValue = ((Number) propertyValue).doubleValue();
            Operator operator = this.op;
            if (operator == Operator.EQ) {
                return dDoubleValue == this.value;
            }
            if (operator == Operator.NE) {
                return dDoubleValue != this.value;
            }
            if (operator == Operator.GE) {
                return dDoubleValue >= this.value;
            }
            if (operator == Operator.GT) {
                return dDoubleValue > this.value;
            }
            if (operator == Operator.LE) {
                return dDoubleValue <= this.value;
            }
            return operator == Operator.LT && dDoubleValue < this.value;
        }
    }

    interface Filter {
        boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3);
    }

    public static class FilterSegement implements Segement {
        private final Filter filter;

        public FilterSegement(Filter filter) {
            this.filter = filter;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            if (!(obj2 instanceof Iterable)) {
                if (this.filter.apply(jSONPath, obj, obj2, obj2)) {
                    return obj2;
                }
                return null;
            }
            for (Object obj3 : (Iterable) obj2) {
                if (this.filter.apply(jSONPath, obj, obj2, obj3)) {
                    jSONArray.add(obj3);
                }
            }
            return jSONArray;
        }
    }

    static class IntBetweenSegement implements Filter {
        private final long endValue;
        private final boolean not;
        private final String propertyName;
        private final long startValue;

        public IntBetweenSegement(String str, long j, long j2, boolean z) {
            this.propertyName = str;
            this.startValue = j;
            this.endValue = j2;
            this.not = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null) {
                return false;
            }
            if (propertyValue instanceof Number) {
                long jLongValue = ((Number) propertyValue).longValue();
                if (jLongValue >= this.startValue && jLongValue <= this.endValue) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    static class IntInSegement implements Filter {
        private final boolean not;
        private final String propertyName;
        private final long[] values;

        public IntInSegement(String str, long[] jArr, boolean z) {
            this.propertyName = str;
            this.values = jArr;
            this.not = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null) {
                return false;
            }
            if (propertyValue instanceof Number) {
                long jLongValue = ((Number) propertyValue).longValue();
                for (long j : this.values) {
                    if (j == jLongValue) {
                        return !this.not;
                    }
                }
            }
            return this.not;
        }
    }

    static class IntObjInSegement implements Filter {
        private final boolean not;
        private final String propertyName;
        private final Long[] values;

        public IntObjInSegement(String str, Long[] lArr, boolean z) {
            this.propertyName = str;
            this.values = lArr;
            this.not = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int i = 0;
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null) {
                Long[] lArr = this.values;
                int length = lArr.length;
                while (i < length) {
                    if (lArr[i] == null) {
                        return !this.not;
                    }
                    i++;
                }
                return this.not;
            }
            if (propertyValue instanceof Number) {
                long jLongValue = ((Number) propertyValue).longValue();
                Long[] lArr2 = this.values;
                int length2 = lArr2.length;
                while (i < length2) {
                    Long l = lArr2[i];
                    if (l != null && l.longValue() == jLongValue) {
                        return !this.not;
                    }
                    i++;
                }
            }
            return this.not;
        }
    }

    static class IntOpSegement implements Filter {
        private final Operator op;
        private final String propertyName;
        private final long value;

        public IntOpSegement(String str, long j, Operator operator) {
            this.propertyName = str;
            this.value = j;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null || !(propertyValue instanceof Number)) {
                return false;
            }
            long jLongValue = ((Number) propertyValue).longValue();
            Operator operator = this.op;
            if (operator == Operator.EQ) {
                return jLongValue == this.value;
            }
            if (operator == Operator.NE) {
                return jLongValue != this.value;
            }
            if (operator == Operator.GE) {
                return jLongValue >= this.value;
            }
            if (operator == Operator.GT) {
                return jLongValue > this.value;
            }
            if (operator == Operator.LE) {
                return jLongValue <= this.value;
            }
            return operator == Operator.LT && jLongValue < this.value;
        }
    }

    static class JSONPathParser {
        private char ch;
        private int level;
        private final String path;
        private int pos;

        public JSONPathParser(String str) {
            this.path = str;
            next();
        }

        static boolean isDigitFirst(char c) {
            return c == '-' || c == '+' || (c >= '0' && c <= '9');
        }

        void accept(char c) {
            if (this.ch == c) {
                if (isEOF()) {
                    return;
                }
                next();
            } else {
                throw new JSONPathException("expect '" + c + ", but '" + this.ch + "'");
            }
        }

        Segement buildArraySegement(String str) {
            int length = str.length();
            int i = 0;
            char cCharAt = str.charAt(0);
            int i2 = length - 1;
            char cCharAt2 = str.charAt(i2);
            int iIndexOf = str.indexOf(44);
            if (str.length() > 2 && cCharAt == '\'' && cCharAt2 == '\'') {
                if (iIndexOf == -1) {
                    return new PropertySegement(str.substring(1, i2), false);
                }
                String[] strArrSplit = str.split(",");
                String[] strArr = new String[strArrSplit.length];
                while (i < strArrSplit.length) {
                    String str2 = strArrSplit[i];
                    strArr[i] = str2.substring(1, str2.length() - 1);
                    i++;
                }
                return new MultiPropertySegement(strArr);
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                if (!TypeUtils.isNumber(str)) {
                    return new PropertySegement(str, false);
                }
                try {
                    return new ArrayAccessSegement(Integer.parseInt(str));
                } catch (NumberFormatException unused) {
                    return new PropertySegement(str, false);
                }
            }
            if (iIndexOf != -1) {
                String[] strArrSplit2 = str.split(",");
                int[] iArr = new int[strArrSplit2.length];
                while (i < strArrSplit2.length) {
                    iArr[i] = Integer.parseInt(strArrSplit2[i]);
                    i++;
                }
                return new MultiIndexSegement(iArr);
            }
            if (iIndexOf2 == -1) {
                throw new UnsupportedOperationException();
            }
            String[] strArrSplit3 = str.split(":");
            int length2 = strArrSplit3.length;
            int[] iArr2 = new int[length2];
            for (int i3 = 0; i3 < strArrSplit3.length; i3++) {
                String str3 = strArrSplit3[i3];
                if (str3.length() != 0) {
                    iArr2[i3] = Integer.parseInt(str3);
                } else {
                    if (i3 != 0) {
                        throw new UnsupportedOperationException();
                    }
                    iArr2[i3] = 0;
                }
            }
            int i4 = iArr2[0];
            int i5 = length2 > 1 ? iArr2[1] : -1;
            int i6 = length2 == 3 ? iArr2[2] : 1;
            if (i5 < 0 || i5 >= i4) {
                if (i6 > 0) {
                    return new RangeSegement(i4, i5, i6);
                }
                throw new UnsupportedOperationException("step must greater than zero : " + i6);
            }
            throw new UnsupportedOperationException("end must greater than or equals start. start " + i4 + ",  end " + i5);
        }

        public Segement[] explain() {
            String str = this.path;
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException();
            }
            Segement[] segementArr = new Segement[8];
            while (true) {
                Segement segement = readSegement();
                if (segement == null) {
                    break;
                }
                int i = this.level;
                if (i == segementArr.length) {
                    Segement[] segementArr2 = new Segement[(i * 3) / 2];
                    System.arraycopy(segementArr, 0, segementArr2, 0, i);
                    segementArr = segementArr2;
                }
                int i2 = this.level;
                this.level = i2 + 1;
                segementArr[i2] = segement;
            }
            int i3 = this.level;
            if (i3 == segementArr.length) {
                return segementArr;
            }
            Segement[] segementArr3 = new Segement[i3];
            System.arraycopy(segementArr, 0, segementArr3, 0, i3);
            return segementArr3;
        }

        boolean isEOF() {
            return this.pos >= this.path.length();
        }

        void next() {
            String str = this.path;
            int i = this.pos;
            this.pos = i + 1;
            this.ch = str.charAt(i);
        }

        Segement parseArrayAccess(boolean z) {
            boolean z2;
            String[] strArr;
            String str;
            String str2;
            char c;
            int i;
            char c2;
            Boolean bool = Boolean.FALSE;
            Boolean bool2 = Boolean.TRUE;
            if (z) {
                accept('[');
            }
            int i2 = 0;
            if (this.ch == '?') {
                next();
                accept('(');
                if (this.ch == '@') {
                    next();
                    accept('.');
                }
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 && !IOUtils.firstIdentifier(this.ch)) {
                int i3 = this.pos - 1;
                while (true) {
                    char c3 = this.ch;
                    if (c3 == ']' || c3 == '/' || isEOF() || !((c2 = this.ch) != '.' || z2 || z2)) {
                        break;
                    }
                    if (c2 == '\\') {
                        next();
                    }
                    next();
                }
                if (z || (c = this.ch) == '/' || c == '.') {
                    int i4 = this.pos;
                    i = i4 - 1;
                } else {
                    i = this.pos;
                }
                String strSubstring = this.path.substring(i3, i);
                if (strSubstring.indexOf("\\.") != -1) {
                    return new PropertySegement(strSubstring.replaceAll("\\\\\\.", "\\."), false);
                }
                Segement segementBuildArraySegement = buildArraySegement(strSubstring);
                if (z && !isEOF()) {
                    accept(']');
                }
                return segementBuildArraySegement;
            }
            String name = readName();
            skipWhitespace();
            if (z2 && this.ch == ')') {
                next();
                if (z) {
                    accept(']');
                }
                return new FilterSegement(new NotNullSegement(name));
            }
            if (z && this.ch == ']') {
                next();
                return new FilterSegement(new NotNullSegement(name));
            }
            Operator op = readOp();
            skipWhitespace();
            if (op == Operator.BETWEEN || op == Operator.NOT_BETWEEN) {
                boolean z3 = op == Operator.NOT_BETWEEN;
                Object value = readValue();
                if (!"and".equalsIgnoreCase(readName())) {
                    throw new JSONPathException(this.path);
                }
                Object value2 = readValue();
                if (value == null || value2 == null) {
                    throw new JSONPathException(this.path);
                }
                if (JSONPath.isInt(value.getClass()) && JSONPath.isInt(value2.getClass())) {
                    return new FilterSegement(new IntBetweenSegement(name, ((Number) value).longValue(), ((Number) value2).longValue(), z3));
                }
                throw new JSONPathException(this.path);
            }
            if (op == Operator.IN || op == Operator.NOT_IN) {
                boolean z4 = op == Operator.NOT_IN;
                accept('(');
                JSONArray jSONArray = new JSONArray();
                jSONArray.add(readValue());
                while (true) {
                    skipWhitespace();
                    if (this.ch != ',') {
                        break;
                    }
                    next();
                    jSONArray.add(readValue());
                }
                accept(')');
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                boolean z5 = true;
                boolean z6 = true;
                boolean z7 = true;
                for (Object obj : jSONArray) {
                    if (obj != null) {
                        Class<?> cls = obj.getClass();
                        if (z5 && cls != Byte.class && cls != Short.class && cls != Integer.class && cls != Long.class) {
                            z5 = false;
                            z7 = false;
                        }
                        if (z6 && cls != String.class) {
                            z6 = false;
                        }
                    } else if (z5) {
                        z5 = false;
                    }
                }
                if (jSONArray.size() == 1 && jSONArray.get(0) == null) {
                    return z4 ? new FilterSegement(new NotNullSegement(name)) : new FilterSegement(new NullSegement(name));
                }
                if (z5) {
                    if (jSONArray.size() == 1) {
                        return new FilterSegement(new IntOpSegement(name, ((Number) jSONArray.get(0)).longValue(), z4 ? Operator.NE : Operator.EQ));
                    }
                    int size = jSONArray.size();
                    long[] jArr = new long[size];
                    while (i2 < size) {
                        jArr[i2] = ((Number) jSONArray.get(i2)).longValue();
                        i2++;
                    }
                    return new FilterSegement(new IntInSegement(name, jArr, z4));
                }
                if (z6) {
                    if (jSONArray.size() == 1) {
                        return new FilterSegement(new StringOpSegement(name, (String) jSONArray.get(0), z4 ? Operator.NE : Operator.EQ));
                    }
                    String[] strArr2 = new String[jSONArray.size()];
                    jSONArray.toArray(strArr2);
                    return new FilterSegement(new StringInSegement(name, strArr2, z4));
                }
                if (!z7) {
                    throw new UnsupportedOperationException();
                }
                int size2 = jSONArray.size();
                Long[] lArr = new Long[size2];
                while (i2 < size2) {
                    Number number = (Number) jSONArray.get(i2);
                    if (number != null) {
                        lArr[i2] = Long.valueOf(number.longValue());
                    }
                    i2++;
                }
                return new FilterSegement(new IntObjInSegement(name, lArr, z4));
            }
            char c4 = this.ch;
            if (c4 != '\'' && c4 != '\"') {
                if (isDigitFirst(c4)) {
                    long longValue = readLongValue();
                    double doubleValue = this.ch == '.' ? readDoubleValue(longValue) : 0.0d;
                    if (z2) {
                        accept(')');
                    }
                    if (z) {
                        accept(']');
                    }
                    return doubleValue == 0.0d ? new FilterSegement(new IntOpSegement(name, longValue, op)) : new FilterSegement(new DoubleOpSegement(name, doubleValue, op));
                }
                char c5 = this.ch;
                if (c5 == 'n') {
                    if (BuildConfig.COMMON_MODULE_COMMIT_ID.equals(readName())) {
                        if (z2) {
                            accept(')');
                        }
                        accept(']');
                        if (op == Operator.EQ) {
                            return new FilterSegement(new NullSegement(name));
                        }
                        if (op == Operator.NE) {
                            return new FilterSegement(new NotNullSegement(name));
                        }
                        throw new UnsupportedOperationException();
                    }
                } else if (c5 == 't') {
                    if ("true".equals(readName())) {
                        if (z2) {
                            accept(')');
                        }
                        accept(']');
                        if (op == Operator.EQ) {
                            return new FilterSegement(new ValueSegment(name, bool2, true));
                        }
                        if (op == Operator.NE) {
                            return new FilterSegement(new ValueSegment(name, bool2, false));
                        }
                        throw new UnsupportedOperationException();
                    }
                } else if (c5 == 'f' && Bugly.SDK_IS_DEV.equals(readName())) {
                    if (z2) {
                        accept(')');
                    }
                    accept(']');
                    if (op == Operator.EQ) {
                        return new FilterSegement(new ValueSegment(name, bool, true));
                    }
                    if (op == Operator.NE) {
                        return new FilterSegement(new ValueSegment(name, bool, false));
                    }
                    throw new UnsupportedOperationException();
                }
                throw new UnsupportedOperationException();
            }
            String string = readString();
            if (z2) {
                accept(')');
            }
            if (z) {
                accept(']');
            }
            if (op == Operator.RLIKE) {
                return new FilterSegement(new RlikeSegement(name, string, false));
            }
            if (op == Operator.NOT_RLIKE) {
                return new FilterSegement(new RlikeSegement(name, string, true));
            }
            if (op == Operator.LIKE || op == Operator.NOT_LIKE) {
                while (string.indexOf("%%") != -1) {
                    string = string.replaceAll("%%", "%");
                }
                boolean z8 = op == Operator.NOT_LIKE;
                int iIndexOf = string.indexOf(37);
                if (iIndexOf != -1) {
                    String[] strArrSplit = string.split("%");
                    String str3 = null;
                    if (iIndexOf == 0) {
                        if (string.charAt(string.length() - 1) == '%') {
                            int length = strArrSplit.length - 1;
                            String[] strArr3 = new String[length];
                            System.arraycopy(strArrSplit, 1, strArr3, 0, length);
                            strArr = strArr3;
                            str = null;
                        } else {
                            String str4 = strArrSplit[strArrSplit.length - 1];
                            if (strArrSplit.length > 2) {
                                int length2 = strArrSplit.length - 2;
                                String[] strArr4 = new String[length2];
                                System.arraycopy(strArrSplit, 1, strArr4, 0, length2);
                                strArr = strArr4;
                                str = str4;
                            } else {
                                str = str4;
                                strArr = null;
                            }
                        }
                    } else if (string.charAt(string.length() - 1) == '%') {
                        strArr = strArrSplit;
                        str = null;
                    } else {
                        if (strArrSplit.length == 1) {
                            str2 = strArrSplit[0];
                            str = null;
                            strArr = null;
                        } else if (strArrSplit.length == 2) {
                            str2 = strArrSplit[0];
                            str = strArrSplit[1];
                            strArr = null;
                        } else {
                            String str5 = strArrSplit[0];
                            String str6 = strArrSplit[strArrSplit.length - 1];
                            int length3 = strArrSplit.length - 2;
                            String[] strArr5 = new String[length3];
                            System.arraycopy(strArrSplit, 1, strArr5, 0, length3);
                            str3 = str5;
                            strArr = strArr5;
                            str = str6;
                        }
                        str3 = str2;
                    }
                    return new FilterSegement(new MatchSegement(name, str3, str, strArr, z8));
                }
                op = op == Operator.LIKE ? Operator.EQ : Operator.NE;
            }
            return new FilterSegement(new StringOpSegement(name, string, op));
        }

        protected double readDoubleValue(long j) {
            int i = this.pos - 1;
            next();
            while (true) {
                char c = this.ch;
                if (c < '0' || c > '9') {
                    break;
                }
                next();
            }
            return Double.parseDouble(this.path.substring(i, this.pos - 1)) + j;
        }

        protected long readLongValue() {
            int i = this.pos - 1;
            char c = this.ch;
            if (c == '+' || c == '-') {
                next();
            }
            while (true) {
                char c2 = this.ch;
                if (c2 < '0' || c2 > '9') {
                    break;
                }
                next();
            }
            return Long.parseLong(this.path.substring(i, this.pos - 1));
        }

        String readName() {
            skipWhitespace();
            char c = this.ch;
            if (c != '\\' && !IOUtils.firstIdentifier(c)) {
                throw new JSONPathException("illeal jsonpath syntax. " + this.path);
            }
            StringBuilder sb = new StringBuilder();
            while (!isEOF()) {
                char c2 = this.ch;
                if (c2 == '\\') {
                    next();
                    sb.append(this.ch);
                    if (isEOF()) {
                        break;
                    }
                    next();
                } else {
                    if (!IOUtils.isIdent(c2)) {
                        break;
                    }
                    sb.append(this.ch);
                    next();
                }
            }
            if (isEOF() && IOUtils.isIdent(this.ch)) {
                sb.append(this.ch);
            }
            return sb.toString();
        }

        protected Operator readOp() {
            Operator operator;
            char c = this.ch;
            if (c == '=') {
                next();
                operator = Operator.EQ;
            } else if (c == '!') {
                next();
                accept('=');
                operator = Operator.NE;
            } else if (c == '<') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = Operator.LE;
                } else {
                    operator = Operator.LT;
                }
            } else if (c == '>') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = Operator.GE;
                } else {
                    operator = Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            String name = readName();
            if (!"not".equalsIgnoreCase(name)) {
                if ("like".equalsIgnoreCase(name)) {
                    return Operator.LIKE;
                }
                if ("rlike".equalsIgnoreCase(name)) {
                    return Operator.RLIKE;
                }
                if ("in".equalsIgnoreCase(name)) {
                    return Operator.IN;
                }
                if ("between".equalsIgnoreCase(name)) {
                    return Operator.BETWEEN;
                }
                throw new UnsupportedOperationException();
            }
            skipWhitespace();
            String name2 = readName();
            if ("like".equalsIgnoreCase(name2)) {
                return Operator.NOT_LIKE;
            }
            if ("rlike".equalsIgnoreCase(name2)) {
                return Operator.NOT_RLIKE;
            }
            if ("in".equalsIgnoreCase(name2)) {
                return Operator.NOT_IN;
            }
            if ("between".equalsIgnoreCase(name2)) {
                return Operator.NOT_BETWEEN;
            }
            throw new UnsupportedOperationException();
        }

        Segement readSegement() {
            boolean z = true;
            if (this.level == 0 && this.path.length() == 1) {
                if (isDigitFirst(this.ch)) {
                    return new ArrayAccessSegement(this.ch - '0');
                }
                char c = this.ch;
                if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
                    return new PropertySegement(Character.toString(c), false);
                }
            }
            while (!isEOF()) {
                skipWhitespace();
                char c2 = this.ch;
                if (c2 != '$') {
                    if (c2 != '.' && c2 != '/') {
                        if (c2 == '[') {
                            return parseArrayAccess(true);
                        }
                        if (this.level == 0) {
                            return new PropertySegement(readName(), false);
                        }
                        throw new UnsupportedOperationException();
                    }
                    next();
                    if (c2 == '.' && this.ch == '.') {
                        next();
                    } else {
                        z = false;
                    }
                    char c3 = this.ch;
                    if (c3 == '*') {
                        if (!isEOF()) {
                            next();
                        }
                        return WildCardSegement.instance;
                    }
                    if (isDigitFirst(c3)) {
                        return parseArrayAccess(false);
                    }
                    String name = readName();
                    if (this.ch != '(') {
                        return new PropertySegement(name, z);
                    }
                    next();
                    if (this.ch != ')') {
                        throw new UnsupportedOperationException();
                    }
                    if (!isEOF()) {
                        next();
                    }
                    if ("size".equals(name)) {
                        return SizeSegement.instance;
                    }
                    throw new UnsupportedOperationException();
                }
                next();
            }
            return null;
        }

        String readString() {
            char c = this.ch;
            next();
            int i = this.pos - 1;
            while (this.ch != c && !isEOF()) {
                next();
            }
            String strSubstring = this.path.substring(i, isEOF() ? this.pos : this.pos - 1);
            accept(c);
            return strSubstring;
        }

        protected Object readValue() {
            skipWhitespace();
            if (isDigitFirst(this.ch)) {
                return Long.valueOf(readLongValue());
            }
            char c = this.ch;
            if (c == '\"' || c == '\'') {
                return readString();
            }
            if (c != 'n') {
                throw new UnsupportedOperationException();
            }
            if (BuildConfig.COMMON_MODULE_COMMIT_ID.equals(readName())) {
                return null;
            }
            throw new JSONPathException(this.path);
        }

        public final void skipWhitespace() {
            while (true) {
                char c = this.ch;
                if (c > ' ') {
                    return;
                }
                if (c != ' ' && c != '\r' && c != '\n' && c != '\t' && c != '\f' && c != '\b') {
                    return;
                } else {
                    next();
                }
            }
        }
    }

    static class MatchSegement implements Filter {
        private final String[] containsValues;
        private final String endsWithValue;
        private final int minLength;
        private final boolean not;
        private final String propertyName;
        private final String startsWithValue;

        public MatchSegement(String str, String str2, String str3, String[] strArr, boolean z) {
            this.propertyName = str;
            this.startsWithValue = str2;
            this.endsWithValue = str3;
            this.containsValues = strArr;
            this.not = z;
            int length = str2 != null ? str2.length() + 0 : 0;
            length = str3 != null ? length + str3.length() : length;
            if (strArr != null) {
                for (String str4 : strArr) {
                    length += str4.length();
                }
            }
            this.minLength = length;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int length;
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null) {
                return false;
            }
            String string = propertyValue.toString();
            if (string.length() < this.minLength) {
                return this.not;
            }
            String str = this.startsWithValue;
            if (str == null) {
                length = 0;
            } else {
                if (!string.startsWith(str)) {
                    return this.not;
                }
                length = this.startsWithValue.length() + 0;
            }
            String[] strArr = this.containsValues;
            if (strArr != null) {
                for (String str2 : strArr) {
                    int iIndexOf = string.indexOf(str2, length);
                    if (iIndexOf == -1) {
                        return this.not;
                    }
                    length = iIndexOf + str2.length();
                }
            }
            String str3 = this.endsWithValue;
            return (str3 == null || string.endsWith(str3)) ? !this.not : this.not;
        }
    }

    static class MultiIndexSegement implements Segement {
        private final int[] indexes;

        public MultiIndexSegement(int[] iArr) {
            this.indexes = iArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.indexes.length);
            int i = 0;
            while (true) {
                int[] iArr = this.indexes;
                if (i >= iArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.getArrayItem(obj2, iArr[i]));
                i++;
            }
        }
    }

    static class MultiPropertySegement implements Segement {
        private final String[] propertyNames;

        public MultiPropertySegement(String[] strArr) {
            this.propertyNames = strArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.propertyNames.length);
            for (String str : this.propertyNames) {
                arrayList.add(jSONPath.getPropertyValue(obj2, str, true));
            }
            return arrayList;
        }
    }

    static class NotNullSegement implements Filter {
        private final String propertyName;

        public NotNullSegement(String str) {
            this.propertyName = str;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.getPropertyValue(obj3, this.propertyName, false) != null;
        }
    }

    static class NullSegement implements Filter {
        private final String propertyName;

        public NullSegement(String str) {
            this.propertyName = str;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.getPropertyValue(obj3, this.propertyName, false) == null;
        }
    }

    enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN
    }

    static class PropertySegement implements Segement {
        private final boolean deep;
        private final String propertyName;

        public PropertySegement(String str, boolean z) {
            this.propertyName = str;
            this.deep = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            if (!this.deep) {
                return jSONPath.getPropertyValue(obj2, this.propertyName, true);
            }
            ArrayList arrayList = new ArrayList();
            jSONPath.deepScan(obj2, this.propertyName, arrayList);
            return arrayList;
        }

        public boolean remove(JSONPath jSONPath, Object obj) {
            return jSONPath.removePropertyValue(obj, this.propertyName);
        }

        public void setValue(JSONPath jSONPath, Object obj, Object obj2) {
            if (this.deep) {
                jSONPath.deepSet(obj, this.propertyName, obj2);
            } else {
                jSONPath.setPropertyValue(obj, this.propertyName, obj2);
            }
        }
    }

    static class RangeSegement implements Segement {
        private final int end;
        private final int start;
        private final int step;

        public RangeSegement(int i, int i2, int i3) {
            this.start = i;
            this.end = i2;
            this.step = i3;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            int iIntValue = SizeSegement.instance.eval(jSONPath, obj, obj2).intValue();
            int i = this.start;
            if (i < 0) {
                i += iIntValue;
            }
            int i2 = this.end;
            if (i2 < 0) {
                i2 += iIntValue;
            }
            int i3 = ((i2 - i) / this.step) + 1;
            if (i3 == -1) {
                return null;
            }
            ArrayList arrayList = new ArrayList(i3);
            while (i <= i2 && i < iIntValue) {
                arrayList.add(jSONPath.getArrayItem(obj2, i));
                i += this.step;
            }
            return arrayList;
        }
    }

    static class RlikeSegement implements Filter {
        private final boolean not;
        private final Pattern pattern;
        private final String propertyName;

        public RlikeSegement(String str, String str2, boolean z) {
            this.propertyName = str;
            this.pattern = Pattern.compile(str2);
            this.not = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            if (propertyValue == null) {
                return false;
            }
            boolean zMatches = this.pattern.matcher(propertyValue.toString()).matches();
            return this.not ? !zMatches : zMatches;
        }
    }

    interface Segement {
        Object eval(JSONPath jSONPath, Object obj, Object obj2);
    }

    static class SizeSegement implements Segement {
        public static final SizeSegement instance = new SizeSegement();

        SizeSegement() {
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Integer eval(JSONPath jSONPath, Object obj, Object obj2) {
            return Integer.valueOf(jSONPath.evalSize(obj2));
        }
    }

    static class StringInSegement implements Filter {
        private final boolean not;
        private final String propertyName;
        private final String[] values;

        public StringInSegement(String str, String[] strArr, boolean z) {
            this.propertyName = str;
            this.values = strArr;
            this.not = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            for (String str : this.values) {
                if (str == propertyValue) {
                    return !this.not;
                }
                if (str != null && str.equals(propertyValue)) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    static class StringOpSegement implements Filter {
        private final Operator op;
        private final String propertyName;
        private final String value;

        public StringOpSegement(String str, String str2, Operator operator) {
            this.propertyName = str;
            this.value = str2;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, false);
            Operator operator = this.op;
            if (operator == Operator.EQ) {
                return this.value.equals(propertyValue);
            }
            if (operator == Operator.NE) {
                return !this.value.equals(propertyValue);
            }
            if (propertyValue == null) {
                return false;
            }
            int iCompareTo = this.value.compareTo(propertyValue.toString());
            Operator operator2 = this.op;
            if (operator2 == Operator.GE) {
                return iCompareTo <= 0;
            }
            if (operator2 == Operator.GT) {
                return iCompareTo < 0;
            }
            if (operator2 == Operator.LE) {
                return iCompareTo >= 0;
            }
            return operator2 == Operator.LT && iCompareTo > 0;
        }
    }

    static class ValueSegment implements Filter {
        private boolean eq;
        private final String propertyName;
        private final Object value;

        public ValueSegment(String str, Object obj, boolean z) {
            this.eq = true;
            if (obj == null) {
                throw new IllegalArgumentException("value is null");
            }
            this.propertyName = str;
            this.value = obj;
            this.eq = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            boolean zEquals = this.value.equals(jSONPath.getPropertyValue(obj3, this.propertyName, false));
            return !this.eq ? !zEquals : zEquals;
        }
    }

    static class WildCardSegement implements Segement {
        public static WildCardSegement instance = new WildCardSegement();

        WildCardSegement() {
        }

        @Override // com.alibaba.fastjson.JSONPath.Segement
        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.getPropertyValues(obj2);
        }
    }

    public JSONPath(String str) {
        this(str, SerializeConfig.getGlobalInstance(), ParserConfig.getGlobalInstance());
    }

    public static JSONPath compile(String str) {
        if (str == null) {
            throw new JSONPathException("jsonpath can not be null");
        }
        JSONPath jSONPath = pathCache.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        JSONPath jSONPath2 = new JSONPath(str);
        if (pathCache.size() >= CACHE_SIZE) {
            return jSONPath2;
        }
        pathCache.putIfAbsent(str, jSONPath2);
        return pathCache.get(str);
    }

    static boolean eq(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj.getClass() == obj2.getClass()) {
            return obj.equals(obj2);
        }
        if (!(obj instanceof Number)) {
            return obj.equals(obj2);
        }
        if (obj2 instanceof Number) {
            return eqNotNull((Number) obj, (Number) obj2);
        }
        return false;
    }

    static boolean eqNotNull(Number number, Number number2) {
        Class<?> cls = number.getClass();
        boolean zIsInt = isInt(cls);
        Class<?> cls2 = number2.getClass();
        boolean zIsInt2 = isInt(cls2);
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            if (zIsInt2) {
                return bigDecimal.equals(BigDecimal.valueOf(number2.longValue()));
            }
        }
        if (zIsInt) {
            if (zIsInt2) {
                return number.longValue() == number2.longValue();
            }
            if (number2 instanceof BigInteger) {
                return BigInteger.valueOf(number.longValue()).equals((BigInteger) number);
            }
        }
        if (zIsInt2 && (number instanceof BigInteger)) {
            return ((BigInteger) number).equals(BigInteger.valueOf(number2.longValue()));
        }
        boolean zIsDouble = isDouble(cls);
        boolean zIsDouble2 = isDouble(cls2);
        return ((zIsDouble && zIsDouble2) || ((zIsDouble && zIsInt2) || (zIsDouble2 && zIsInt))) && number.doubleValue() == number2.doubleValue();
    }

    protected static boolean isDouble(Class<?> cls) {
        return cls == Float.class || cls == Double.class;
    }

    protected static boolean isInt(Class<?> cls) {
        return cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class;
    }

    public static Map<String, Object> paths(Object obj) {
        return paths(obj, SerializeConfig.globalInstance);
    }

    public static Object read(String str, String str2) {
        return compile(str2).eval(JSON.parse(str));
    }

    public void arrayAdd(Object obj, Object... objArr) {
        if (objArr == null || objArr.length == 0 || obj == null) {
            return;
        }
        init();
        Object obj2 = null;
        int i = 0;
        Object objEval = obj;
        int i2 = 0;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i2 >= segementArr.length) {
                break;
            }
            if (i2 == segementArr.length - 1) {
                obj2 = objEval;
            }
            objEval = segementArr[i2].eval(this, obj, objEval);
            i2++;
        }
        if (objEval == null) {
            throw new JSONPathException("value not found in path " + this.path);
        }
        if (objEval instanceof Collection) {
            Collection collection = (Collection) objEval;
            int length = objArr.length;
            while (i < length) {
                collection.add(objArr[i]);
                i++;
            }
            return;
        }
        Class<?> cls = objEval.getClass();
        if (!cls.isArray()) {
            throw new JSONException("unsupported array put operation. " + cls);
        }
        int length2 = Array.getLength(objEval);
        Object objNewInstance = Array.newInstance(cls.getComponentType(), objArr.length + length2);
        System.arraycopy(objEval, 0, objNewInstance, 0, length2);
        while (i < objArr.length) {
            Array.set(objNewInstance, length2 + i, objArr[i]);
            i++;
        }
        Segement[] segementArr2 = this.segments;
        Segement segement = segementArr2[segementArr2.length - 1];
        if (segement instanceof PropertySegement) {
            ((PropertySegement) segement).setValue(this, obj2, objNewInstance);
        } else {
            if (!(segement instanceof ArrayAccessSegement)) {
                throw new UnsupportedOperationException();
            }
            ((ArrayAccessSegement) segement).setValue(this, obj2, objNewInstance);
        }
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        init();
        Object objEval = obj;
        int i = 0;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                return true;
            }
            objEval = segementArr[i].eval(this, obj, objEval);
            if (objEval == null) {
                return false;
            }
            i++;
        }
    }

    public boolean containsValue(Object obj, Object obj2) {
        Object objEval = eval(obj);
        if (objEval == obj2) {
            return true;
        }
        if (objEval == null) {
            return false;
        }
        if (!(objEval instanceof Iterable)) {
            return eq(objEval, obj2);
        }
        Iterator it = ((Iterable) objEval).iterator();
        while (it.hasNext()) {
            if (eq(it.next(), obj2)) {
                return true;
            }
        }
        return false;
    }

    protected void deepScan(Object obj, String str, List<Object> list) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey(str)) {
                list.add(map.get(str));
                return;
            }
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                deepScan(it.next(), str, list);
            }
            return;
        }
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            if (obj instanceof List) {
                List list2 = (List) obj;
                for (int i = 0; i < list2.size(); i++) {
                    deepScan(list2.get(i), str, list);
                }
                return;
            }
            return;
        }
        try {
            FieldSerializer fieldSerializer = javaBeanSerializer.getFieldSerializer(str);
            if (fieldSerializer == null) {
                Iterator<Object> it2 = javaBeanSerializer.getFieldValues(obj).iterator();
                while (it2.hasNext()) {
                    deepScan(it2.next(), str, list);
                }
                return;
            }
            try {
                try {
                    list.add(fieldSerializer.getPropertyValueDirect(obj));
                } catch (InvocationTargetException e2) {
                    throw new JSONException("getFieldValue error." + str, e2);
                }
            } catch (IllegalAccessException e3) {
                throw new JSONException("getFieldValue error." + str, e3);
            }
        } catch (Exception e4) {
            throw new JSONPathException("jsonpath error, path " + this.path + ", segement " + str, e4);
        }
    }

    protected void deepSet(Object obj, String str, Object obj2) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.containsKey(str)) {
                map.get(str);
                map.put(str, obj2);
                return;
            } else {
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    deepSet(it.next(), str, obj2);
                }
                return;
            }
        }
        Class<?> cls = obj.getClass();
        JavaBeanDeserializer javaBeanDeserializer = getJavaBeanDeserializer(cls);
        if (javaBeanDeserializer == null) {
            if (obj instanceof List) {
                List list = (List) obj;
                for (int i = 0; i < list.size(); i++) {
                    deepSet(list.get(i), str, obj2);
                }
                return;
            }
            return;
        }
        try {
            FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
            if (fieldDeserializer != null) {
                fieldDeserializer.setValue(obj, obj2);
                return;
            }
            Iterator<Object> it2 = getJavaBeanSerializer(cls).getObjectFieldValues(obj).iterator();
            while (it2.hasNext()) {
                deepSet(it2.next(), str, obj2);
            }
        } catch (Exception e2) {
            throw new JSONPathException("jsonpath error, path " + this.path + ", segement " + str, e2);
        }
    }

    public Object eval(Object obj) {
        if (obj == null) {
            return null;
        }
        init();
        int i = 0;
        Object objEval = obj;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                return objEval;
            }
            objEval = segementArr[i].eval(this, obj, objEval);
            i++;
        }
    }

    int evalSize(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj);
        }
        if (obj instanceof Map) {
            int i = 0;
            Iterator it = ((Map) obj).values().iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    i++;
                }
            }
            return i;
        }
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            return -1;
        }
        try {
            return javaBeanSerializer.getSize(obj);
        } catch (Exception e2) {
            throw new JSONPathException("evalSize error : " + this.path, e2);
        }
    }

    protected Object getArrayItem(Object obj, int i) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (i >= 0) {
                if (i < list.size()) {
                    return list.get(i);
                }
                return null;
            }
            if (Math.abs(i) <= list.size()) {
                return list.get(list.size() + i);
            }
            return null;
        }
        if (!obj.getClass().isArray()) {
            if (!(obj instanceof Map)) {
                throw new UnsupportedOperationException();
            }
            Map map = (Map) obj;
            Object obj2 = map.get(Integer.valueOf(i));
            return obj2 == null ? map.get(Integer.toString(i)) : obj2;
        }
        int length = Array.getLength(obj);
        if (i >= 0) {
            if (i < length) {
                return Array.get(obj, i);
            }
            return null;
        }
        if (Math.abs(i) <= length) {
            return Array.get(obj, length + i);
        }
        return null;
    }

    protected JavaBeanDeserializer getJavaBeanDeserializer(Class<?> cls) {
        ObjectDeserializer deserializer = this.parserConfig.getDeserializer(cls);
        if (deserializer instanceof JavaBeanDeserializer) {
            return (JavaBeanDeserializer) deserializer;
        }
        return null;
    }

    protected JavaBeanSerializer getJavaBeanSerializer(Class<?> cls) {
        ObjectSerializer objectWriter = this.serializeConfig.getObjectWriter(cls);
        if (objectWriter instanceof JavaBeanSerializer) {
            return (JavaBeanSerializer) objectWriter;
        }
        return null;
    }

    public String getPath() {
        return this.path;
    }

    protected Object getPropertyValue(Object obj, String str, boolean z) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get(str);
            return (obj2 == null && "size".equals(str)) ? Integer.valueOf(map.size()) : obj2;
        }
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer != null) {
            try {
                return javaBeanSerializer.getFieldValue(obj, str);
            } catch (Exception e2) {
                throw new JSONPathException("jsonpath error, path " + this.path + ", segement " + str, e2);
            }
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if ("size".equals(str)) {
                return Integer.valueOf(list.size());
            }
            JSONArray jSONArray = new JSONArray(list.size());
            for (int i = 0; i < list.size(); i++) {
                Object propertyValue = getPropertyValue(list.get(i), str, z);
                if (propertyValue instanceof Collection) {
                    jSONArray.addAll((Collection) propertyValue);
                } else {
                    jSONArray.add(propertyValue);
                }
            }
            return jSONArray;
        }
        if (obj instanceof Enum) {
            Enum r7 = (Enum) obj;
            if (Constant.PROTOCOL_WEBVIEW_NAME.equals(str)) {
                return r7.name();
            }
            if ("ordinal".equals(str)) {
                return Integer.valueOf(r7.ordinal());
            }
        }
        if (obj instanceof Calendar) {
            Calendar calendar = (Calendar) obj;
            if ("year".equals(str)) {
                return Integer.valueOf(calendar.get(1));
            }
            if ("month".equals(str)) {
                return Integer.valueOf(calendar.get(2));
            }
            if ("day".equals(str)) {
                return Integer.valueOf(calendar.get(5));
            }
            if ("hour".equals(str)) {
                return Integer.valueOf(calendar.get(11));
            }
            if ("minute".equals(str)) {
                return Integer.valueOf(calendar.get(12));
            }
            if ("second".equals(str)) {
                return Integer.valueOf(calendar.get(13));
            }
        }
        throw new JSONPathException("jsonpath error, path " + this.path + ", segement " + str);
    }

    protected Collection<Object> getPropertyValues(Object obj) {
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            if (obj instanceof Map) {
                return ((Map) obj).values();
            }
            throw new UnsupportedOperationException();
        }
        try {
            return javaBeanSerializer.getFieldValues(obj);
        } catch (Exception e2) {
            throw new JSONPathException("jsonpath error, path " + this.path, e2);
        }
    }

    protected void init() {
        if (this.segments != null) {
            return;
        }
        if (Marker.ANY_MARKER.equals(this.path)) {
            this.segments = new Segement[]{WildCardSegement.instance};
        } else {
            this.segments = new JSONPathParser(this.path).explain();
        }
    }

    public boolean remove(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        init();
        Object obj2 = null;
        Object objEval = obj;
        int i = 0;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                break;
            }
            if (i == segementArr.length - 1) {
                obj2 = objEval;
                break;
            }
            objEval = segementArr[i].eval(this, obj, objEval);
            if (objEval == null) {
                break;
            }
            i++;
        }
        if (obj2 == null) {
            return false;
        }
        Segement[] segementArr2 = this.segments;
        Segement segement = segementArr2[segementArr2.length - 1];
        if (!(segement instanceof PropertySegement)) {
            if (segement instanceof ArrayAccessSegement) {
                return ((ArrayAccessSegement) segement).remove(this, obj2);
            }
            throw new UnsupportedOperationException();
        }
        PropertySegement propertySegement = (PropertySegement) segement;
        if ((obj2 instanceof Collection) && segementArr2.length > 1) {
            Segement segement2 = segementArr2[segementArr2.length - 2];
            if ((segement2 instanceof RangeSegement) || (segement2 instanceof MultiIndexSegement)) {
                Iterator it = ((Collection) obj2).iterator();
                while (it.hasNext()) {
                    if (propertySegement.remove(this, it.next())) {
                        z = true;
                    }
                }
                return z;
            }
        }
        return propertySegement.remove(this, obj2);
    }

    public boolean removeArrayItem(JSONPath jSONPath, Object obj, int i) {
        if (!(obj instanceof List)) {
            throw new JSONPathException("unsupported set operation." + obj.getClass());
        }
        List list = (List) obj;
        if (i >= 0) {
            if (i >= list.size()) {
                return false;
            }
            list.remove(i);
            return true;
        }
        int size = list.size() + i;
        if (size < 0) {
            return false;
        }
        list.remove(size);
        return true;
    }

    protected boolean removePropertyValue(Object obj, String str) {
        if (obj instanceof Map) {
            return ((Map) obj).remove(str) != null;
        }
        ObjectDeserializer deserializer = this.parserConfig.getDeserializer(obj.getClass());
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer == null) {
            throw new UnsupportedOperationException();
        }
        FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
        if (fieldDeserializer == null) {
            return false;
        }
        fieldDeserializer.setValue(obj, (String) null);
        return true;
    }

    public boolean set(Object obj, Object obj2) {
        return set(obj, obj2, true);
    }

    public boolean setArrayItem(JSONPath jSONPath, Object obj, int i, Object obj2) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (i >= 0) {
                list.set(i, obj2);
            } else {
                list.set(list.size() + i, obj2);
            }
            return true;
        }
        Class<?> cls = obj.getClass();
        if (!cls.isArray()) {
            throw new JSONPathException("unsupported set operation." + cls);
        }
        int length = Array.getLength(obj);
        if (i >= 0) {
            if (i < length) {
                Array.set(obj, i, obj2);
            }
        } else if (Math.abs(i) <= length) {
            Array.set(obj, length + i, obj2);
        }
        return true;
    }

    protected boolean setPropertyValue(Object obj, String str, Object obj2) {
        if (obj instanceof Map) {
            ((Map) obj).put(str, obj2);
            return true;
        }
        if (obj instanceof List) {
            for (Object obj3 : (List) obj) {
                if (obj3 != null) {
                    setPropertyValue(obj3, str, obj2);
                }
            }
            return true;
        }
        ObjectDeserializer deserializer = this.parserConfig.getDeserializer(obj.getClass());
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer == null) {
            throw new UnsupportedOperationException();
        }
        FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
        if (fieldDeserializer == null) {
            return false;
        }
        fieldDeserializer.setValue(obj, obj2);
        return true;
    }

    public int size(Object obj) {
        if (obj == null) {
            return -1;
        }
        init();
        int i = 0;
        Object objEval = obj;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                return evalSize(objEval);
            }
            objEval = segementArr[i].eval(this, obj, objEval);
            i++;
        }
    }

    @Override // com.alibaba.fastjson.JSONAware
    public String toJSONString() {
        return JSON.toJSONString(this.path);
    }

    public JSONPath(String str, SerializeConfig serializeConfig, ParserConfig parserConfig) {
        if (str == null || str.length() == 0) {
            throw new JSONPathException("json-path can not be null or empty");
        }
        this.path = str;
        this.serializeConfig = serializeConfig;
        this.parserConfig = parserConfig;
    }

    public static Map<String, Object> paths(Object obj, SerializeConfig serializeConfig) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        paths(identityHashMap, "/", obj, serializeConfig);
        HashMap map = new HashMap();
        for (Map.Entry entry : identityHashMap.entrySet()) {
            map.put(entry.getValue(), entry.getKey());
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004b  */
    public boolean set(Object obj, Object obj2, boolean z) {
        Class<?> cls;
        JavaBeanDeserializer javaBeanDeserializer;
        if (obj == null) {
            return false;
        }
        init();
        Object obj3 = obj;
        Object obj4 = null;
        int i = 0;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                obj3 = obj4;
                break;
            }
            Segement segement = segementArr[i];
            Object objEval = segement.eval(this, obj, obj3);
            if (objEval == null) {
                Segement[] segementArr2 = this.segments;
                Segement segement2 = i < segementArr2.length - 1 ? segementArr2[i + 1] : null;
                if (segement2 instanceof PropertySegement) {
                    if (segement instanceof PropertySegement) {
                        String str = ((PropertySegement) segement).propertyName;
                        JavaBeanDeserializer javaBeanDeserializer2 = getJavaBeanDeserializer(obj3.getClass());
                        if (javaBeanDeserializer2 != null) {
                            cls = javaBeanDeserializer2.getFieldDeserializer(str).fieldInfo.fieldClass;
                            javaBeanDeserializer = getJavaBeanDeserializer(cls);
                        } else {
                            cls = null;
                            javaBeanDeserializer = null;
                        }
                    } else {
                        cls = null;
                        javaBeanDeserializer = null;
                    }
                    if (javaBeanDeserializer == null) {
                        objEval = new JSONObject();
                    } else {
                        if (javaBeanDeserializer.beanInfo.defaultConstructor == null) {
                            return false;
                        }
                        objEval = javaBeanDeserializer.createInstance((DefaultJSONParser) null, cls);
                    }
                } else {
                    objEval = segement2 instanceof ArrayAccessSegement ? new JSONArray() : null;
                }
                if (objEval != null) {
                    if (!(segement instanceof PropertySegement)) {
                        if (!(segement instanceof ArrayAccessSegement)) {
                            break;
                        }
                        ((ArrayAccessSegement) segement).setValue(this, obj3, objEval);
                    } else {
                        ((PropertySegement) segement).setValue(this, obj3, objEval);
                    }
                } else {
                    break;
                }
            }
            i++;
            obj4 = obj3;
            obj3 = objEval;
        }
        if (obj3 == null) {
            return false;
        }
        Segement[] segementArr3 = this.segments;
        Segement segement3 = segementArr3[segementArr3.length - 1];
        if (segement3 instanceof PropertySegement) {
            ((PropertySegement) segement3).setValue(this, obj3, obj2);
            return true;
        }
        if (segement3 instanceof ArrayAccessSegement) {
            return ((ArrayAccessSegement) segement3).setValue(this, obj3, obj2);
        }
        throw new UnsupportedOperationException();
    }

    public static boolean contains(Object obj, String str) {
        if (obj == null) {
            return false;
        }
        return compile(str).contains(obj);
    }

    public static Object eval(Object obj, String str) {
        return compile(str).eval(obj);
    }

    public static int size(Object obj, String str) {
        JSONPath jSONPathCompile = compile(str);
        return jSONPathCompile.evalSize(jSONPathCompile.eval(obj));
    }

    private static void paths(Map<Object, String> map, String str, Object obj, SerializeConfig serializeConfig) {
        StringBuilder sb;
        StringBuilder sb2;
        StringBuilder sb3;
        StringBuilder sb4;
        if (obj == null || map.containsKey(obj)) {
            return;
        }
        map.put(obj, str);
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                if (key instanceof String) {
                    if (str.equals("/")) {
                        sb4 = new StringBuilder();
                    } else {
                        sb4 = new StringBuilder();
                        sb4.append(str);
                    }
                    sb4.append("/");
                    sb4.append(key);
                    paths(map, sb4.toString(), entry.getValue(), serializeConfig);
                }
            }
            return;
        }
        int i = 0;
        if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                if (str.equals("/")) {
                    sb3 = new StringBuilder();
                } else {
                    sb3 = new StringBuilder();
                    sb3.append(str);
                }
                sb3.append("/");
                sb3.append(i);
                paths(map, sb3.toString(), obj2, serializeConfig);
                i++;
            }
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            while (i < length) {
                Object obj3 = Array.get(obj, i);
                if (str.equals("/")) {
                    sb2 = new StringBuilder();
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(str);
                }
                sb2.append("/");
                sb2.append(i);
                paths(map, sb2.toString(), obj3, serializeConfig);
                i++;
            }
            return;
        }
        if (ParserConfig.isPrimitive2(cls) || cls.isEnum()) {
            return;
        }
        ObjectSerializer objectWriter = serializeConfig.getObjectWriter(cls);
        if (objectWriter instanceof JavaBeanSerializer) {
            try {
                for (Map.Entry<String, Object> entry2 : ((JavaBeanSerializer) objectWriter).getFieldValuesMap(obj).entrySet()) {
                    String key2 = entry2.getKey();
                    if (key2 instanceof String) {
                        if (str.equals("/")) {
                            sb = new StringBuilder();
                            sb.append("/");
                            sb.append(key2);
                        } else {
                            sb = new StringBuilder();
                            sb.append(str);
                            sb.append("/");
                            sb.append(key2);
                        }
                        paths(map, sb.toString(), entry2.getValue(), serializeConfig);
                    }
                }
            } catch (Exception e2) {
                throw new JSONException("toJSON error", e2);
            }
        }
    }

    public static boolean containsValue(Object obj, String str, Object obj2) {
        return compile(str).containsValue(obj, obj2);
    }

    public static boolean remove(Object obj, String str) {
        return compile(str).remove(obj);
    }

    public static void arrayAdd(Object obj, String str, Object... objArr) {
        compile(str).arrayAdd(obj, objArr);
    }

    public static boolean set(Object obj, String str, Object obj2) {
        return compile(str).set(obj, obj2);
    }
}

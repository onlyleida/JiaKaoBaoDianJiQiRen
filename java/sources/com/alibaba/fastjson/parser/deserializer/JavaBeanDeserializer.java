package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes5.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    protected final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    static boolean isSetFlag(int i, int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int i2 = i / 32;
        int i3 = i % 32;
        if (i2 < iArr.length) {
            if (((1 << i3) & iArr[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    protected static void parseArray(Collection collection, ObjectDeserializer objectDeserializer, DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            }
            if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() != ',') {
            jSONLexerBase.nextToken(16);
        } else {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        }
    }

    protected void check(JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new JSONException("syntax error");
        }
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object objNewInstance;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
        JavaBeanInfo javaBeanInfo = this.beanInfo;
        Constructor<?> constructor = javaBeanInfo.defaultConstructor;
        Object obj = null;
        if (constructor == null && javaBeanInfo.factoryMethod == null) {
            return null;
        }
        Method method = javaBeanInfo.factoryMethod;
        if (method != null && javaBeanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            if (javaBeanInfo.defaultConstructorParameterSize == 0) {
                objNewInstance = constructor != null ? constructor.newInstance(new Object[0]) : method.invoke(null, new Object[0]);
            } else {
                ParseContext context = defaultJSONParser.getContext();
                if (context == null || context.object == null) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                if (!(type instanceof Class)) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                String name = ((Class) type).getName();
                String strSubstring = name.substring(0, name.lastIndexOf(36));
                Object obj2 = context.object;
                String name2 = obj2.getClass().getName();
                if (!name2.equals(strSubstring)) {
                    ParseContext parseContext = context.parent;
                    if (parseContext != null && parseContext.object != null && (("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2)) && parseContext.object.getClass().getName().equals(strSubstring))) {
                        obj = parseContext.object;
                    }
                    obj2 = obj;
                }
                if (obj2 == null) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                objNewInstance = constructor.newInstance(obj2);
            }
            if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                for (FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == String.class) {
                        try {
                            fieldInfo.set(objNewInstance, "");
                        } catch (Exception e2) {
                            throw new JSONException("create instance error, class " + this.clazz.getName(), e2);
                        }
                    }
                }
            }
            return objNewInstance;
        } catch (JSONException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new JSONException("create instance error, class " + this.clazz.getName(), e4);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        Enum<?> enumScanEnum;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new JSONException("error");
        }
        T t = (T) createInstance(defaultJSONParser, type);
        int i = 0;
        int length = this.sortedFieldDeserializers.length;
        while (true) {
            if (i >= length) {
                jSONLexer.nextToken(16);
                return t;
            }
            char c = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == Integer.TYPE) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanInt(c));
            } else if (cls == String.class) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanString(c));
            } else if (cls == Long.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanLong(c));
            } else if (cls.isEnum()) {
                char current = jSONLexer.getCurrent();
                if (current == '\"' || current == 'n') {
                    enumScanEnum = jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c);
                } else if (current < '0' || current > '9') {
                    enumScanEnum = scanEnum(jSONLexer, c);
                } else {
                    enumScanEnum = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c));
                }
                fieldDeserializer.setValue(t, enumScanEnum);
            } else if (cls == Boolean.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanBoolean(c));
            } else if (cls == Float.TYPE) {
                fieldDeserializer.setValue(t, Float.valueOf(jSONLexer.scanFloat(c)));
            } else if (cls == Double.TYPE) {
                fieldDeserializer.setValue(t, Double.valueOf(jSONLexer.scanDouble(c)));
            } else if (cls == Date.class && jSONLexer.getCurrent() == '1') {
                fieldDeserializer.setValue(t, new Date(jSONLexer.scanLong(c)));
            } else {
                jSONLexer.nextToken(14);
                fieldDeserializer.setValue(t, defaultJSONParser.parseObject(fieldDeserializer.fieldInfo.fieldType));
                check(jSONLexer, c == ']' ? 15 : 16);
            }
            i++;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public FieldDeserializer getFieldDeserializer(String str) {
        return getFieldDeserializer(str, null);
    }

    public Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    protected JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        JSONType jSONType = javaBeanInfo.jsonType;
        if (jSONType == null) {
            return null;
        }
        for (Class<?> cls : jSONType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    protected Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    protected Enum<?> scanEnum(JSONLexer jSONLexer, char c) {
        throw new JSONException("illegal enum. " + jSONLexer.info());
    }

    public FieldDeserializer smartMatch(String str) {
        return smartMatch(str, null);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean));
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, int i) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    public FieldDeserializer getFieldDeserializer(String str, int[] iArr) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedFieldDeserializers.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int iCompareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i = i2 + 1;
            } else {
                if (iCompareTo <= 0) {
                    if (isSetFlag(i2, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i2];
                }
                length = i2 - 1;
            }
        }
        Map<String, FieldDeserializer> map = this.alterNameFieldDeserializers;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0087 A[PHI: r2
      0x0087: PHI (r2v4 com.alibaba.fastjson.parser.deserializer.FieldDeserializer) = 
      (r2v3 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
      (r2v3 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
      (r2v30 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
      (r2v3 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
     binds: [B:10:0x0032, B:31:0x007e, B:34:0x0084, B:14:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v3 */
    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map, int[] iArr) {
        ?? r17;
        JSONLexer jSONLexer;
        JSONLexer jSONLexer2 = defaultJSONParser.lexer;
        int i = Feature.DisableFieldSmartMatch.mask;
        FieldDeserializer fieldDeserializer = (jSONLexer2.isEnabled(i) || (i & this.beanInfo.parserFeatures) != 0) ? getFieldDeserializer(str) : smartMatch(str, iArr);
        int i2 = Feature.SupportNonPublicField.mask;
        if (fieldDeserializer != null || (!jSONLexer2.isEnabled(i2) && (i2 & this.beanInfo.parserFeatures) == 0)) {
            r17 = 1;
        } else {
            if (this.extraFieldDeserializers == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(1, 0.75f, 1);
                for (Field field : this.clazz.getDeclaredFields()) {
                    String name = field.getName();
                    if (getFieldDeserializer(name) == null) {
                        int modifiers = field.getModifiers();
                        if ((modifiers & 16) == 0 && (modifiers & 8) == 0) {
                            concurrentHashMap.put(name, field);
                        }
                    }
                }
                this.extraFieldDeserializers = concurrentHashMap;
            }
            Object obj2 = this.extraFieldDeserializers.get(str);
            if (obj2 == null) {
                r17 = 1;
            } else if (obj2 instanceof FieldDeserializer) {
                fieldDeserializer = (FieldDeserializer) obj2;
                r17 = 1;
            } else {
                Field field2 = (Field) obj2;
                field2.setAccessible(true);
                r17 = 1;
                fieldDeserializer = new DefaultFieldDeserializer(defaultJSONParser.getConfig(), this.clazz, new FieldInfo(str, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0, 0));
                this.extraFieldDeserializers.put(str, fieldDeserializer);
            }
        }
        if (fieldDeserializer != null) {
            int i3 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i3 >= fieldDeserializerArr.length) {
                    i3 = -1;
                    break;
                }
                if (fieldDeserializerArr[i3] == fieldDeserializer) {
                    break;
                }
                i3++;
            }
            if (i3 != -1) {
                jSONLexer = jSONLexer2;
                if (iArr != null && str.startsWith("_") && isSetFlag(i3, iArr)) {
                    defaultJSONParser.parseExtra(obj, str);
                    return false;
                }
            } else {
                jSONLexer = jSONLexer2;
            }
            jSONLexer.nextTokenWithColon(fieldDeserializer.getFastMatchToken());
            fieldDeserializer.parseField(defaultJSONParser, obj, type, map);
            return r17;
        }
        if (!jSONLexer2.isEnabled(Feature.IgnoreNotMatch)) {
            throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
        }
        for (FieldDeserializer fieldDeserializer2 : this.sortedFieldDeserializers) {
            FieldInfo fieldInfo = fieldDeserializer2.fieldInfo;
            if (fieldInfo.unwrapped && (fieldDeserializer2 instanceof DefaultFieldDeserializer)) {
                if (fieldInfo.field != null) {
                    DefaultFieldDeserializer defaultFieldDeserializer = (DefaultFieldDeserializer) fieldDeserializer2;
                    ObjectDeserializer fieldValueDeserilizer = defaultFieldDeserializer.getFieldValueDeserilizer(defaultJSONParser.getConfig());
                    if (fieldValueDeserilizer instanceof JavaBeanDeserializer) {
                        FieldDeserializer fieldDeserializer3 = ((JavaBeanDeserializer) fieldValueDeserilizer).getFieldDeserializer(str);
                        if (fieldDeserializer3 != null) {
                            try {
                                Object objCreateInstance = fieldInfo.field.get(obj);
                                if (objCreateInstance == null) {
                                    objCreateInstance = ((JavaBeanDeserializer) fieldValueDeserilizer).createInstance(defaultJSONParser, fieldInfo.fieldType);
                                    fieldDeserializer2.setValue(obj, objCreateInstance);
                                }
                                jSONLexer2.nextTokenWithColon(defaultFieldDeserializer.getFastMatchToken());
                                fieldDeserializer3.parseField(defaultJSONParser, objCreateInstance, type, map);
                                return r17;
                            } catch (Exception e2) {
                                throw new JSONException("parse unwrapped field error.", e2);
                            }
                        }
                    } else if (fieldValueDeserilizer instanceof MapDeserializer) {
                        MapDeserializer mapDeserializer = (MapDeserializer) fieldValueDeserilizer;
                        try {
                            Map<Object, Object> mapCreateMap = (Map) fieldInfo.field.get(obj);
                            if (mapCreateMap == null) {
                                mapCreateMap = mapDeserializer.createMap(fieldInfo.fieldType);
                                fieldDeserializer2.setValue(obj, mapCreateMap);
                            }
                            jSONLexer2.nextTokenWithColon();
                            mapCreateMap.put(str, defaultJSONParser.parse(str));
                            return r17;
                        } catch (Exception e3) {
                            throw new JSONException("parse unwrapped field error.", e3);
                        }
                    }
                } else if (fieldInfo.method.getParameterTypes().length == 2) {
                    jSONLexer2.nextTokenWithColon();
                    Object obj3 = defaultJSONParser.parse(str);
                    try {
                        Method method = fieldInfo.method;
                        Object[] objArr = new Object[2];
                        objArr[0] = str;
                        objArr[r17] = obj3;
                        method.invoke(obj, objArr);
                        return r17;
                    } catch (Exception e4) {
                        throw new JSONException("parse unwrapped field error.", e4);
                    }
                }
            }
        }
        defaultJSONParser.parseExtra(obj, str);
        return false;
    }

    protected Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    protected Enum scanEnum(JSONLexerBase jSONLexerBase, char[] cArr, ObjectDeserializer objectDeserializer) {
        EnumDeserializer enumDeserializer = objectDeserializer instanceof EnumDeserializer ? (EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long jScanFieldSymbol = jSONLexerBase.scanFieldSymbol(cArr);
        if (jSONLexerBase.matchStat > 0) {
            return enumDeserializer.getEnumByHashCode(jScanFieldSymbol);
        }
        return null;
    }

    public FieldDeserializer smartMatch(String str, int[] iArr) {
        boolean z;
        String strReplaceAll = null;
        if (str == null) {
            return null;
        }
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            boolean zStartsWith = str.startsWith("is");
            for (int i = 0; i < this.sortedFieldDeserializers.length; i++) {
                if (!isSetFlag(i, iArr)) {
                    FieldDeserializer fieldDeserializer2 = this.sortedFieldDeserializers[i];
                    FieldInfo fieldInfo = fieldDeserializer2.fieldInfo;
                    if ((fieldInfo.parserFeatures & Feature.DisableFieldSmartMatch.mask) != 0) {
                        return null;
                    }
                    Class<?> cls = fieldInfo.fieldClass;
                    String str2 = fieldInfo.name;
                    if (str2.equalsIgnoreCase(str) || (zStartsWith && ((cls == Boolean.TYPE || cls == Boolean.class) && str2.equalsIgnoreCase(str.substring(2))))) {
                        fieldDeserializer = fieldDeserializer2;
                        break;
                    }
                }
            }
        }
        if (fieldDeserializer != null) {
            return fieldDeserializer;
        }
        int i2 = 0;
        while (true) {
            z = true;
            if (i2 >= str.length()) {
                z = false;
                break;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt == '_') {
                strReplaceAll = str.replaceAll("_", "");
                break;
            }
            if (cCharAt == '-') {
                strReplaceAll = str.replaceAll("-", "");
                break;
            }
            i2++;
        }
        if (!z) {
            return fieldDeserializer;
        }
        FieldDeserializer fieldDeserializer3 = getFieldDeserializer(strReplaceAll, iArr);
        if (fieldDeserializer3 != null) {
            return fieldDeserializer3;
        }
        for (int i3 = 0; i3 < this.sortedFieldDeserializers.length; i3++) {
            if (!isSetFlag(i3, iArr)) {
                FieldDeserializer fieldDeserializer4 = this.sortedFieldDeserializers[i3];
                if (fieldDeserializer4.fieldInfo.name.equalsIgnoreCase(strReplaceAll)) {
                    return fieldDeserializer4;
                }
            }
        }
        return fieldDeserializer3;
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15931. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:99)
        */
    protected <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r25, java.lang.reflect.Type r26, java.lang.Object r27, java.lang.Object r28, int r29, int[] r30) {
        /*
            Method dump skipped, instruction units count: 1593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) {
        this.clazz = javaBeanInfo.clazz;
        this.beanInfo = javaBeanInfo;
        FieldInfo[] fieldInfoArr = javaBeanInfo.sortedFields;
        this.sortedFieldDeserializers = new FieldDeserializer[fieldInfoArr.length];
        int length = fieldInfoArr.length;
        HashMap map = null;
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            FieldDeserializer fieldDeserializerCreateFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, javaBeanInfo, fieldInfo);
            this.sortedFieldDeserializers[i] = fieldDeserializerCreateFieldDeserializer;
            for (String str : fieldInfo.alternateNames) {
                if (map == null) {
                    map = new HashMap();
                }
                map.put(str, fieldDeserializerCreateFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = map;
        FieldInfo[] fieldInfoArr2 = javaBeanInfo.fields;
        this.fieldDeserializers = new FieldDeserializer[fieldInfoArr2.length];
        int length2 = fieldInfoArr2.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    public Object createInstance(Map<String, Object> map, ParserConfig parserConfig) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        JavaBeanInfo javaBeanInfo = this.beanInfo;
        if (javaBeanInfo.creatorConstructor == null && javaBeanInfo.factoryMethod == null) {
            Object objCreateInstance = createInstance((DefaultJSONParser) null, this.clazz);
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                FieldDeserializer fieldDeserializerSmartMatch = smartMatch(key);
                if (fieldDeserializerSmartMatch != null) {
                    fieldDeserializerSmartMatch.setValue(objCreateInstance, TypeUtils.cast(value, fieldDeserializerSmartMatch.fieldInfo.fieldType, parserConfig));
                }
            }
            Method method = this.beanInfo.buildMethod;
            if (method == null) {
                return objCreateInstance;
            }
            try {
                return method.invoke(objCreateInstance, new Object[0]);
            } catch (Exception e2) {
                throw new JSONException("build object error", e2);
            }
        }
        FieldInfo[] fieldInfoArr = javaBeanInfo.fields;
        int length = fieldInfoArr.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = fieldInfoArr[i];
            Object objValueOf = map.get(fieldInfo.name);
            if (objValueOf == null) {
                Class<?> cls = fieldInfo.fieldClass;
                if (cls == Integer.TYPE) {
                    objValueOf = 0;
                } else if (cls == Long.TYPE) {
                    objValueOf = 0L;
                } else if (cls == Short.TYPE) {
                    objValueOf = (short) 0;
                } else if (cls == Byte.TYPE) {
                    objValueOf = (byte) 0;
                } else if (cls == Float.TYPE) {
                    objValueOf = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
                } else if (cls == Double.TYPE) {
                    objValueOf = Double.valueOf(0.0d);
                } else if (cls == Character.TYPE) {
                    objValueOf = '0';
                } else if (cls == Boolean.TYPE) {
                    objValueOf = Boolean.FALSE;
                }
            }
            objArr[i] = objValueOf;
        }
        JavaBeanInfo javaBeanInfo2 = this.beanInfo;
        Constructor<?> constructor = javaBeanInfo2.creatorConstructor;
        if (constructor != null) {
            try {
                return constructor.newInstance(objArr);
            } catch (Exception e3) {
                throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e3);
            }
        }
        Method method2 = javaBeanInfo2.factoryMethod;
        if (method2 == null) {
            return null;
        }
        try {
            return method2.invoke(null, objArr);
        } catch (Exception e4) {
            throw new JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e4);
        }
    }
}

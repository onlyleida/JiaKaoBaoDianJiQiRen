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
import java.util.Iterator;
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

    public JavaBeanDeserializer(ParserConfig r1, Class<?> r2) {
        this(r1, r2, r2);
    }

    static boolean isSetFlag(int r3, int[] r4) {
        if (r4 != null) goto L5;
        return false;
    L5:
        int r1 = r3 / 32;
        int r5 = r3 % 32;
        if (r1 >= r4.length) goto L10;
        int r6 = 1 << r5;
        if ((r6 & r4[r1]) == 0) goto L10;
        return true;
    L10:
        return false;
    }

    protected static void parseArray(Collection r6, ObjectDeserializer r7, DefaultJSONParser r8, Type r9, Object r10) {
        JSONLexerBase r11 = (JSONLexerBase) r8.lexer;
        int r0 = r11.token();
        if (r0 != 8) goto L7;
        r11.nextToken(16);
        r11.token();
        return;
    L7:
        if (r0 == 14) goto L10;
        r8.throwException(r0);
    L10:
        if (r11.getCurrent() != '[') goto L12;
        r11.next();
        r11.setToken(14);
    L14:
        if (r11.token() != 15) goto L17;
        r11.nextToken();
        return;
    L17:
        int r1 = 0;
    L18:
        r6.add(r7.deserialze(r8, r9, Integer.valueOf(r1)));
        r1 = r1 + 1;
        if (r11.token() != 16) goto L24;
        if (r11.getCurrent() == '[') goto L22;
        r11.nextToken(14);
        goto L18
    L22:
        r11.next();
        r11.setToken(14);
        goto L18
    L24:
        int r12 = r11.token();
        if (r12 == 15) goto L28;
        r8.throwException(r12);
    L28:
        if (r11.getCurrent() != ',') goto L30;
        r11.next();
        r11.setToken(16);
        return;
    L30:
        r11.nextToken(16);
        return;
    L12:
        r11.nextToken(14);
        goto L14
    }

    protected void check(JSONLexer r1, int r2) {
        if (r1.token() != r2) goto L6;
        return;
    L6:
        throw new JSONException("syntax error");
    }

    public Object createInstance(DefaultJSONParser r11, Type r12) {
        int r3 = 0;
        if ((r12 instanceof Class) == true) goto L5;
    L8:
        JavaBeanInfo r1 = this.beanInfo;
        Constructor<?> r4 = r1.defaultConstructor;
        Object r5 = null;
        if (r4 == null) goto L11;
    L13:
        Method r6 = r1.factoryMethod;
        if (r6 != null) goto L16;
    L79:
    L75:
        e = move-exception;
        throw e;
    L72:
        e = move-exception;
        throw new JSONException("create instance error, class " + this.clazz.getName(), e);
    L19:
        if (r1.defaultConstructorParameterSize != 0) goto L23;
        if (r4 == null) goto L22;
        Object r13 = r4.newInstance(new Object[0]);     // Catch: Exception -> L72 JSONException -> L75
    L52:
        if (r11 != null) goto L54;
    L65:
        return r13;
    L54:
        if (r11.lexer.isEnabled(Feature.InitStringFieldAsEmpty) == false) goto L65;
        FieldInfo[] r14 = this.beanInfo.fields;
        int r2 = r14.length;
    L56:
        if (r3 >= r2) goto L65;
        FieldInfo r7 = r14[r3];
        if (r7.fieldClass != String.class) goto L64;
        r7.set(r13, "");     // Catch: Exception -> L61
    L61:
        e = move-exception;
        throw new JSONException("create instance error, class " + this.clazz.getName(), e);
    L64:
        r3 = r3 + 1;
        goto L56
    L22:
        r13 = r6.invoke(null, new Object[0]);     // Catch: Exception -> L72 JSONException -> L75
        goto L52
    L23:
        ParseContext r8 = r11.getContext();     // Catch: Exception -> L72 JSONException -> L75
        if (r8 == null) goto L71;
        if (r8.object == null) goto L71;
        if ((r12 instanceof Class) == false) goto L69;
        String r15 = ((Class) r12).getName();     // Catch: Exception -> L72 JSONException -> L75
        String r16 = r15.substring(0, r15.lastIndexOf(36));     // Catch: Exception -> L72 JSONException -> L75
        Object r9 = r8.object;     // Catch: Exception -> L72 JSONException -> L75
        String r10 = r9.getClass().getName();     // Catch: Exception -> L72 JSONException -> L75
        if (r10.equals(r16) == true) goto L50;
        ParseContext r17 = r8.parent;     // Catch: Exception -> L72 JSONException -> L75
        if (r17 != null) goto L35;
    L49:
        r9 = r5;
        goto L50
    L35:
        if (r17.object == null) goto L49;
        if ("java.util.ArrayList".equals(r10) == true) goto L47;
        if ("java.util.List".equals(r10) == true) goto L47;
        if ("java.util.Collection".equals(r10) == true) goto L47;
        if ("java.util.Map".equals(r10) == true) goto L47;
        if ("java.util.HashMap".equals(r10) == false) goto L49;
    L47:
        if (r17.object.getClass().getName().equals(r16) == false) goto L49;
        r5 = r17.object;     // Catch: Exception -> L72 JSONException -> L75
    L50:
        if (r9 == null) goto L67;
        r13 = r4.newInstance(new Object[]{r9});     // Catch: Exception -> L72 JSONException -> L75
        goto L52
    L67:
        throw new JSONException("can't create non-static inner class instance.");     // Catch: Exception -> L72 JSONException -> L75
    L69:
        throw new JSONException("can't create non-static inner class instance.");     // Catch: Exception -> L72 JSONException -> L75
    L71:
        throw new JSONException("can't create non-static inner class instance.");     // Catch: Exception -> L72 JSONException -> L75
    L16:
        if (r1.defaultConstructorParameterSize <= 0) goto L79;
        return null;
    L11:
        if (r1.factoryMethod != null) goto L13;
        return null;
    L5:
        if (this.clazz.isInterface() == false) goto L8;
        return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) r12}, new JSONObject());
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser r2, Type r3, Object r4) {
        return (T) deserialze(r2, r3, r4, 0);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser r9, Type r10, Object r11, Object r12) {
        JSONLexer r13 = r9.lexer;
        if (r13.token() != 14) goto L57;
        T r14 = (T) createInstance(r9, r10);
        int r15 = 0;
        int r1 = this.sortedFieldDeserializers.length;
    L5:
        int r2 = 16;
        if (r15 >= r1) goto L54;
        if (r15 != (r1 - 1)) goto L10;
        char r3 = ']';
    L11:
        FieldDeserializer r5 = this.sortedFieldDeserializers[r15];
        Class<?> r6 = r5.fieldInfo.fieldClass;
        if (r6 != Integer.TYPE) goto L15;
        r5.setValue(r14, r13.scanInt(r3));
    L53:
        r15 = r15 + 1;
        goto L5
    L15:
        if (r6 != String.class) goto L18;
        r5.setValue(r14, r13.scanString(r3));
        goto L53
    L18:
        if (r6 != Long.TYPE) goto L21;
        r5.setValue(r14, r13.scanLong(r3));
        goto L53
    L21:
        if (r6.isEnum() == false) goto L36;
        char r4 = r13.getCurrent();
        if (r4 != '\"') goto L25;
    L33:
        Enum<?> r7 = r13.scanEnum(r6, r9.getSymbolTable(), r3);
    L34:
        r5.setValue(r14, r7);
        goto L53
    L25:
        if (r4 == 'n') goto L33;
        if (r4 >= '0') goto L30;
    L32:
        r7 = scanEnum(r13, r3);
        goto L34
    L30:
        if (r4 > '9') goto L32;
        r7 = ((EnumDeserializer) ((DefaultFieldDeserializer) r5).getFieldValueDeserilizer(r9.getConfig())).valueOf(r13.scanInt(r3));
        goto L34
    L36:
        if (r6 != Boolean.TYPE) goto L39;
        r5.setValue(r14, r13.scanBoolean(r3));
        goto L53
    L39:
        if (r6 != Float.TYPE) goto L42;
        r5.setValue(r14, Float.valueOf(r13.scanFloat(r3)));
        goto L53
    L42:
        if (r6 != Double.TYPE) goto L45;
        r5.setValue(r14, Double.valueOf(r13.scanDouble(r3)));
        goto L53
    L45:
        if (r6 == Date.class) goto L47;
    L49:
        r13.nextToken(14);
        r5.setValue(r14, r9.parseObject(r5.fieldInfo.fieldType));
        if (r3 != ']') goto L52;
        r2 = 15;
    L52:
        check(r13, r2);
        goto L53
    L47:
        if (r13.getCurrent() != '1') goto L49;
        r5.setValue(r14, new Date(r13.scanLong(r3)));
        goto L53
    L10:
        r3 = ',';
        goto L11
    L54:
        r13.nextToken(16);
        return r14;
    L57:
        throw new JSONException("error");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public FieldDeserializer getFieldDeserializer(String r2) {
        return getFieldDeserializer(r2, null);
    }

    public Type getFieldType(int r2) {
        return this.sortedFieldDeserializers[r2].fieldInfo.fieldType;
    }

    protected JavaBeanDeserializer getSeeAlso(ParserConfig r7, JavaBeanInfo r8, String r9) {
        JSONType r10 = r8.jsonType;
        if (r10 != null) goto L5;
        return null;
    L5:
        Class<?>[] r11 = r10.seeAlso();
        int r1 = r11.length;
        int r2 = 0;
    L6:
        if (r2 >= r1) goto L16;
        ObjectDeserializer r3 = r7.getDeserializer(r11[r2]);
        if ((r3 instanceof JavaBeanDeserializer) == false) goto L15;
        JavaBeanDeserializer r4 = (JavaBeanDeserializer) r3;
        JavaBeanInfo r5 = r4.beanInfo;
        if (r5.typeName.equals(r9) == true) goto L11;
        JavaBeanDeserializer r6 = getSeeAlso(r7, r5, r9);
        if (r6 == null) goto L15;
        return r6;
    L11:
        return r4;
    L15:
        r2 = r2 + 1;
        goto L6
    L16:
        return null;
    }

    public boolean parseField(DefaultJSONParser r8, String r9, Object r10, Type r11, Map<String, Object> r12) {
        return parseField(r8, r9, r10, r11, r12, null);
    }

    protected Object parseRest(DefaultJSONParser r9, Type r10, Object r11, Object r12, int r13) {
        return parseRest(r9, r10, r11, r12, r13, new int[0]);
    }

    protected Enum<?> scanEnum(JSONLexer r3, char r4) {
        throw new JSONException("illegal enum. " + r3.info());
    }

    public FieldDeserializer smartMatch(String r2) {
        return smartMatch(r2, null);
    }

    public JavaBeanDeserializer(ParserConfig r4, Class<?> r5, Type r6) {
        this(r4, JavaBeanInfo.build(r5, r6, r4.propertyNamingStrategy, r4.fieldBased, r4.compatibleWithJavaBean));
    }

    public <T> T deserialze(DefaultJSONParser r8, Type r9, Object r10, int r11) {
        return (T) deserialze(r8, r9, r10, null, r11, null);
    }

    public FieldDeserializer getFieldDeserializer(String r6, int[] r7) {
        if (r6 != null) goto L5;
        return null;
    L5:
        int r1 = 0;
        int r2 = this.sortedFieldDeserializers.length - 1;
    L6:
        if (r1 > r2) goto L17;
        int r3 = (r1 + r2) >>> 1;
        int r4 = this.sortedFieldDeserializers[r3].fieldInfo.name.compareTo(r6);
        if (r4 < 0) goto L9;
        if (r4 <= 0) goto L13;
        r2 = r3 - 1;
        goto L6
    L13:
        if (isSetFlag(r3, r7) == false) goto L16;
        return null;
    L16:
        return this.sortedFieldDeserializers[r3];
    L9:
        r1 = r3 + 1;
        goto L6
    L17:
        Map<String, FieldDeserializer> r8 = this.alterNameFieldDeserializers;
        if (r8 != null) goto L20;
        return null;
    L20:
        return r8.get(r6);
    }

    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v3 */
    public boolean parseField(DefaultJSONParser r22, String r23, Object r24, Type r25, Map<String, Object> r26, int[] r27) {
        JSONLexer r10 = r22.lexer;
        int r2 = Feature.DisableFieldSmartMatch.mask;
        if (r10.isEnabled(r2) == false) goto L5;
    L8:
        FieldDeserializer r3 = getFieldDeserializer(r23);
    L9:
        int r4 = Feature.SupportNonPublicField.mask;
        if (r3 == null) goto L12;
    L35:
        ?? r17 = 1;
    L37:
        if (r3 == null) goto L39;
        int r5 = 0;
    L85:
        FieldDeserializer[] r6 = this.sortedFieldDeserializers;
        if (r5 >= r6.length) goto L91;
        if (r6[r5] == r3) goto L92;
        r5 = r5 + 1;
    L92:
        if (r5 == (-1)) goto L101;
        JSONLexer r7 = r10;
        if (r27 != null) goto L96;
    L102:
        r7.nextTokenWithColon(r3.getFastMatchToken());
        r3.parseField(r22, r24, r25, r26);
        return r17;
    L96:
        if (r23.startsWith("_") == false) goto L102;
        if (isSetFlag(r5, r27) == false) goto L102;
        r22.parseExtra(r24, r23);
        return false;
    L101:
        r7 = r10;
        goto L102
    L91:
        r5 = -1;
        goto L92
    L39:
        if (r10.isEnabled(Feature.IgnoreNotMatch) == false) goto L83;
        FieldDeserializer[] r8 = this.sortedFieldDeserializers;
        int r9 = r8.length;
        int r11 = 0;
    L41:
        if (r11 >= r9) goto L80;
        FieldDeserializer r12 = r8[r11];
        FieldInfo r13 = r12.fieldInfo;
        if (r13.unwrapped == false) goto L79;
        if ((r12 instanceof DefaultFieldDeserializer) == false) goto L79;
        if (r13.field == null) goto L72;
        DefaultFieldDeserializer r14 = (DefaultFieldDeserializer) r12;
        ObjectDeserializer r15 = r14.getFieldValueDeserilizer(r22.getConfig());
        if ((r15 instanceof JavaBeanDeserializer) == false) goto L61;
        FieldDeserializer r16 = ((JavaBeanDeserializer) r15).getFieldDeserializer(r23);
        if (r16 == null) goto L79;
        Object r18 = r13.field.get(r24);     // Catch: Exception -> L57
        if (r18 != null) goto L55;
        r18 = ((JavaBeanDeserializer) r15).createInstance(r22, r13.fieldType);     // Catch: Exception -> L57
        r12.setValue(r24, r18);     // Catch: Exception -> L57
    L55:
        r10.nextTokenWithColon(r14.getFastMatchToken());     // Catch: Exception -> L57
        r16.parseField(r22, r18, r25, r26);     // Catch: Exception -> L57
        return r17;
    L57:
        e = move-exception;
        throw new JSONException("parse unwrapped field error.", e);
    L61:
        if ((r15 instanceof MapDeserializer) == false) goto L79;
        MapDeserializer r19 = (MapDeserializer) r15;
        Map<Object, Object> r20 = (Map) r13.field.get(r24);     // Catch: Exception -> L68
        if (r20 != null) goto L66;
        r20 = r19.createMap(r13.fieldType);     // Catch: Exception -> L68
        r12.setValue(r24, r20);     // Catch: Exception -> L68
    L66:
        r10.nextTokenWithColon();     // Catch: Exception -> L68
        r20.put(r23, r22.parse(r23));     // Catch: Exception -> L68
        return r17;
    L68:
        e = move-exception;
        throw new JSONException("parse unwrapped field error.", e);
    L72:
        if (r13.method.getParameterTypes().length != 2) goto L79;
        r10.nextTokenWithColon();
        Object r0 = r22.parse(r23);
        Method r21 = r13.method;     // Catch: Exception -> L76
        Object[] r28 = new Object[2];     // Catch: Exception -> L76
        r28[0] = r23;     // Catch: Exception -> L76
        r28[r17] = r0;     // Catch: Exception -> L76
        r21.invoke(r24, r28);     // Catch: Exception -> L76
        return r17;
    L76:
        e = move-exception;
        throw new JSONException("parse unwrapped field error.", e);
    L79:
        r11 = r11 + 1;
        goto L41
    L80:
        r22.parseExtra(r24, r23);
        return false;
    L83:
        throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + r23);
    L12:
        if (r10.isEnabled(r4) == true) goto L16;
        if ((r4 & this.beanInfo.parserFeatures) == 0) goto L35;
    L16:
        if (this.extraFieldDeserializers != null) goto L30;
        ConcurrentHashMap r29 = new ConcurrentHashMap(1, 0.75f, 1);
        Field[] r30 = this.clazz.getDeclaredFields();
        int r31 = r30.length;
        int r32 = 0;
    L18:
        if (r32 >= r31) goto L29;
        Field r33 = r30[r32];
        String r34 = r33.getName();
        if (getFieldDeserializer(r34) != null) goto L28;
        int r110 = r33.getModifiers();
        if ((r110 & 16) != 0) goto L28;
        if ((r110 & 8) != 0) goto L28;
        r29.put(r34, r33);
    L28:
        r32 = r32 + 1;
        goto L18
    L29:
        this.extraFieldDeserializers = r29;
    L30:
        Object r35 = this.extraFieldDeserializers.get(r23);
        if (r35 == null) goto L35;
        if ((r35 instanceof FieldDeserializer) == false) goto L36;
        r3 = (FieldDeserializer) r35;
        goto L35
    L36:
        Field r36 = (Field) r35;
        r36.setAccessible(true);
        r17 = 1;
        r3 = new DefaultFieldDeserializer(r22.getConfig(), this.clazz, new FieldInfo(r23, r36.getDeclaringClass(), r36.getType(), r36.getGenericType(), r36, 0, 0, 0));
        this.extraFieldDeserializers.put(r23, r3);
        goto L37
    L5:
        if ((r2 & this.beanInfo.parserFeatures) != 0) goto L8;
        r3 = smartMatch(r23, r27);
        goto L9
    }

    protected Object parseRest(DefaultJSONParser r1, Type r2, Object r3, Object r4, int r5, int[] r6) {
        return deserialze(r1, r2, r3, r4, r5, r6);
    }

    protected Enum scanEnum(JSONLexerBase r5, char[] r6, ObjectDeserializer r7) {
        if ((r7 instanceof EnumDeserializer) == false) goto L5;
        EnumDeserializer r8 = (EnumDeserializer) r7;
    L6:
        if (r8 != null) goto L9;
        r5.matchStat = -1;
        return null;
    L9:
        long r2 = r5.scanFieldSymbol(r6);
        if (r5.matchStat > 0) goto L12;
        return null;
    L12:
        return r8.getEnumByHashCode(r2);
    L5:
        r8 = null;
        goto L6
    }

    public FieldDeserializer smartMatch(String r10, int[] r11) {
        String r0 = null;
        if (r10 != null) goto L5;
        return null;
    L5:
        FieldDeserializer r1 = getFieldDeserializer(r10, r11);
        int r2 = 0;
        if (r1 != null) goto L28;
        boolean r3 = r10.startsWith("is");
        int r4 = 0;
    L9:
        if (r4 >= this.sortedFieldDeserializers.length) goto L28;
        if (isSetFlag(r4, r11) == true) goto L27;
        FieldDeserializer r5 = this.sortedFieldDeserializers[r4];
        FieldInfo r6 = r5.fieldInfo;
        if ((r6.parserFeatures & Feature.DisableFieldSmartMatch.mask) != 0) goto L15;
        Class<?> r7 = r6.fieldClass;
        String r8 = r6.name;
        if (r8.equalsIgnoreCase(r10) == true) goto L26;
        if (r3 == false) goto L27;
        if (r7 == Boolean.TYPE) goto L25;
        if (r7 != Boolean.class) goto L27;
    L25:
        if (r8.equalsIgnoreCase(r10.substring(2)) == false) goto L27;
    L26:
        r1 = r5;
        goto L28
    L15:
        return null;
    L27:
        r4 = r4 + 1;
    L28:
        if (r1 != null) goto L52;
        int r9 = 0;
    L30:
        boolean r12 = true;
        if (r9 >= r10.length()) goto L39;
        char r13 = r10.charAt(r9);
        if (r13 == '_') goto L34;
        if (r13 == '-') goto L37;
        r9 = r9 + 1;
        goto L30
    L37:
        r0 = r10.replaceAll("-", "");
    L40:
        if (r12 == false) goto L68;
        FieldDeserializer r14 = getFieldDeserializer(r0, r11);
        if (r14 == null) goto L44;
        return r14;
    L44:
        if (r2 >= this.sortedFieldDeserializers.length) goto L71;
        if (isSetFlag(r2, r11) == true) goto L51;
        FieldDeserializer r15 = this.sortedFieldDeserializers[r2];
        if (r15.fieldInfo.name.equalsIgnoreCase(r0) == false) goto L51;
        return r15;
    L51:
        r2 = r2 + 1;
        goto L44
    L71:
        return r14;
    L68:
        return r1;
    L34:
        r0 = r10.replaceAll("_", "");
        goto L40
    L39:
        r12 = false;
        goto L40
    L52:
        return r1;
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15931. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:99)
        */
    protected <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r25, java.lang.reflect.Type r26, java.lang.Object r27, java.lang.Object r28, int r29, int[] r30) {
        /*  JADX ERROR: Simple mode code generation failed
            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00b2: INVOKE (r0v98 ?? I:java.lang.Enum) = (r6v16 java.lang.Class<?>), (r0v88 java.lang.String) STATIC call: java.lang.Enum.valueOf(java.lang.Class, java.lang.String):java.lang.Enum A[Catch: all -> 0x004b, IllegalArgumentException -> 0x00ba, DECLARE_VAR, MD:<T extends java.lang.Enum<T>>:(java.lang.Class<T extends java.lang.Enum<T>>, java.lang.String):T extends java.lang.Enum<T> (c), TRY_ENTER, TRY_LEAVE] (LINE:26) in method: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):T, file: classes5.dex
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
            	at jadx.core.codegen.MethodGen.generateSimpleCode(MethodGen.java:348)
            	at jadx.core.codegen.MethodGen.addSimpleMethodCode(MethodGen.java:316)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:279)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.ArgType.getPrimitiveType()" because "type" is null
            	at jadx.core.codegen.ClassGen.useType(ClassGen.java:564)
            	at jadx.core.codegen.InsnGen.useType(InsnGen.java:269)
            	at jadx.core.codegen.InsnGen.declareVar(InsnGen.java:166)
            	at jadx.core.codegen.InsnGen.declareVar(InsnGen.java:159)
            	at jadx.core.codegen.InsnGen.assignVar(InsnGen.java:152)
            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:299)
            	... 11 more
            */
        /*
            Method dump skipped, instruction units count: 1593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    public JavaBeanDeserializer(ParserConfig r10, JavaBeanInfo r11) {
        this.clazz = r11.clazz;
        this.beanInfo = r11;
        FieldInfo[] r0 = r11.sortedFields;
        this.sortedFieldDeserializers = new FieldDeserializer[r0.length];
        int r1 = r0.length;
        int r2 = 0;
        HashMap r3 = null;
        int r4 = 0;
    L3:
        if (r4 >= r1) goto L11;
        FieldInfo r5 = r11.sortedFields[r4];
        FieldDeserializer r6 = r10.createFieldDeserializer(r10, r11, r5);
        this.sortedFieldDeserializers[r4] = r6;
        String[] r7 = r5.alternateNames;
        int r8 = r7.length;
        int r9 = 0;
    L5:
        if (r9 >= r8) goto L10;
        String r12 = r7[r9];
        if (r3 != null) goto L9;
        r3 = new HashMap();
    L9:
        r3.put(r12, r6);
        r9 = r9 + 1;
        goto L5
    L10:
        r4 = r4 + 1;
        goto L3
    L11:
        this.alterNameFieldDeserializers = r3;
        FieldInfo[] r13 = r11.fields;
        this.fieldDeserializers = new FieldDeserializer[r13.length];
        int r14 = r13.length;
    L12:
        if (r2 >= r14) goto L14;
        FieldDeserializer r15 = getFieldDeserializer(r11.fields[r2].name);
        this.fieldDeserializers[r2] = r15;
        r2 = r2 + 1;
        goto L12
    }

    public Object createInstance(Map<String, Object> r9, ParserConfig r10) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        JavaBeanInfo r0 = this.beanInfo;
        if (r0.creatorConstructor == null) goto L5;
    L21:
        FieldInfo[] r11 = r0.fields;
        int r1 = r11.length;
        Object[] r2 = new Object[r1];
        int r4 = 0;
    L22:
        if (r4 >= r1) goto L50;
        FieldInfo r5 = r11[r4];
        Object r6 = r9.get(r5.name);
        if (r6 != null) goto L49;
        Class<?> r7 = r5.fieldClass;
        if (r7 != Integer.TYPE) goto L29;
        r6 = 0;
        goto L49
    L29:
        if (r7 != Long.TYPE) goto L32;
        r6 = 0L;
        goto L49
    L32:
        if (r7 != Short.TYPE) goto L35;
        r6 = (short) 0;
        goto L49
    L35:
        if (r7 != Byte.TYPE) goto L38;
        r6 = (byte) 0;
        goto L49
    L38:
        if (r7 != Float.TYPE) goto L41;
        r6 = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
        goto L49
    L41:
        if (r7 != Double.TYPE) goto L44;
        r6 = Double.valueOf(0.0d);
        goto L49
    L44:
        if (r7 != Character.TYPE) goto L47;
        r6 = '0';
        goto L49
    L47:
        if (r7 != Boolean.TYPE) goto L49;
        r6 = Boolean.FALSE;
    L49:
        r2[r4] = r6;
        r4 = r4 + 1;
        goto L22
    L50:
        JavaBeanInfo r12 = this.beanInfo;
        Constructor<?> r13 = r12.creatorConstructor;
        if (r13 != null) goto L67;
        Method r14 = r12.factoryMethod;
        if (r14 != null) goto L69;
        return null;
    L69:
        return r14.invoke(null, r2);
    L61:
        e = move-exception;
        throw new JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e);
    L67:
        return r13.newInstance(r2);
    L54:
        e = move-exception;
        throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e);
    L5:
        if (r0.factoryMethod != null) goto L21;
        Object r3 = createInstance(null, this.clazz);
        Iterator<Map.Entry<String, Object>> r15 = r9.entrySet().iterator();
    L8:
        if (r15.hasNext() == false) goto L13;
        Map.Entry<String, Object> r8 = r15.next();
        String r16 = r8.getKey();
        Object r17 = r8.getValue();
        FieldDeserializer r18 = smartMatch(r16);
        if (r18 == null) goto L8;
        r18.setValue(r3, TypeUtils.cast(r17, r18.fieldInfo.fieldType, r10));
        goto L8
    L13:
        Method r19 = this.beanInfo.buildMethod;
        if (r19 != null) goto L65;
        return r3;
    L65:
        return r19.invoke(r3, new Object[0]);
    L17:
        e = move-exception;
        throw new JSONException("build object error", e);
    }
}

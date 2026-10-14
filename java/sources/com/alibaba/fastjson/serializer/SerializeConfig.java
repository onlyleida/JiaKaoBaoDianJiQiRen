package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONAware;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONStreamAware;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec;
import com.alibaba.fastjson.parser.deserializer.OptionalCodec;
import com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.IdentityHashMap;
import com.alibaba.fastjson.util.ServiceLoader;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Clob;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.xml.datatype.XMLGregorianCalendar;

/* JADX INFO: loaded from: classes5.dex */
public class SerializeConfig {
    private boolean asm;
    private ASMSerializerFactory asmFactory;
    private final boolean fieldBased;
    public PropertyNamingStrategy propertyNamingStrategy;
    private final IdentityHashMap<Type, ObjectSerializer> serializers;
    protected String typeKey;
    public static final SerializeConfig globalInstance = new SerializeConfig();
    private static boolean awtError = false;
    private static boolean jdk8Error = false;
    private static boolean oracleJdbcError = false;
    private static boolean springfoxError = false;
    private static boolean guavaError = false;

    public SerializeConfig() {
        this(1024);
    }

    private final JavaBeanSerializer createASMSerializer(SerializeBeanInfo serializeBeanInfo) throws Exception {
        JavaBeanSerializer javaBeanSerializerCreateJavaBeanSerializer = this.asmFactory.createJavaBeanSerializer(serializeBeanInfo);
        int i = 0;
        while (true) {
            FieldSerializer[] fieldSerializerArr = javaBeanSerializerCreateJavaBeanSerializer.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                return javaBeanSerializerCreateJavaBeanSerializer;
            }
            Class<?> cls = fieldSerializerArr[i].fieldInfo.fieldClass;
            if (cls.isEnum() && !(getObjectWriter(cls) instanceof EnumSerializer)) {
                javaBeanSerializerCreateJavaBeanSerializer.writeDirect = false;
            }
            i++;
        }
    }

    public static SerializeConfig getGlobalInstance() {
        return globalInstance;
    }

    public void addFilter(Class<?> cls, SerializeFilter serializeFilter) {
        Object objectWriter = getObjectWriter(cls);
        if (objectWriter instanceof SerializeFilterable) {
            SerializeFilterable serializeFilterable = (SerializeFilterable) objectWriter;
            if (this == globalInstance || serializeFilterable != MapSerializer.instance) {
                serializeFilterable.addFilter(serializeFilter);
                return;
            }
            MapSerializer mapSerializer = new MapSerializer();
            put((Type) cls, (ObjectSerializer) mapSerializer);
            mapSerializer.addFilter(serializeFilter);
        }
    }

    public void config(Class<?> cls, SerializerFeature serializerFeature, boolean z) {
        ObjectSerializer objectWriter = getObjectWriter(cls, false);
        if (objectWriter == null) {
            SerializeBeanInfo serializeBeanInfoBuildBeanInfo = TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
            if (z) {
                serializeBeanInfoBuildBeanInfo.features = serializerFeature.mask | serializeBeanInfoBuildBeanInfo.features;
            } else {
                serializeBeanInfoBuildBeanInfo.features = (~serializerFeature.mask) & serializeBeanInfoBuildBeanInfo.features;
            }
            put((Type) cls, createJavaBeanSerializer(serializeBeanInfoBuildBeanInfo));
            return;
        }
        if (objectWriter instanceof JavaBeanSerializer) {
            SerializeBeanInfo serializeBeanInfo = ((JavaBeanSerializer) objectWriter).beanInfo;
            int i = serializeBeanInfo.features;
            if (z) {
                serializeBeanInfo.features = serializerFeature.mask | i;
            } else {
                serializeBeanInfo.features = (~serializerFeature.mask) & i;
            }
            if (i == serializeBeanInfo.features || objectWriter.getClass() == JavaBeanSerializer.class) {
                return;
            }
            put((Type) cls, createJavaBeanSerializer(serializeBeanInfo));
        }
    }

    public void configEnumAsJavaBean(Class<? extends Enum>... clsArr) {
        for (Class<? extends Enum> cls : clsArr) {
            put((Type) cls, createJavaBeanSerializer(cls));
        }
    }

    public final ObjectSerializer createJavaBeanSerializer(Class<?> cls) {
        SerializeBeanInfo serializeBeanInfoBuildBeanInfo = TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy, this.fieldBased);
        return (serializeBeanInfoBuildBeanInfo.fields.length == 0 && Iterable.class.isAssignableFrom(cls)) ? MiscCodec.instance : createJavaBeanSerializer(serializeBeanInfoBuildBeanInfo);
    }

    public final ObjectSerializer get(Type type) {
        return this.serializers.get(type);
    }

    public ObjectSerializer getObjectWriter(Class<?> cls) {
        return getObjectWriter(cls, true);
    }

    public String getTypeKey() {
        return this.typeKey;
    }

    public boolean isAsmEnable() {
        return this.asm;
    }

    public boolean put(Object obj, Object obj2) {
        return put((Type) obj, (ObjectSerializer) obj2);
    }

    public void setAsmEnable(boolean z) {
        if (ASMUtils.IS_ANDROID) {
            return;
        }
        this.asm = z;
    }

    public void setTypeKey(String str) {
        this.typeKey = str;
    }

    public SerializeConfig(boolean z) {
        this(1024, z);
    }

    private ObjectSerializer getObjectWriter(Class<?> cls, boolean z) {
        ClassLoader classLoader;
        ObjectSerializer objectSerializer = this.serializers.get(cls);
        if (objectSerializer == null) {
            try {
                for (Object obj : ServiceLoader.load(AutowiredObjectSerializer.class, Thread.currentThread().getContextClassLoader())) {
                    if (obj instanceof AutowiredObjectSerializer) {
                        AutowiredObjectSerializer autowiredObjectSerializer = (AutowiredObjectSerializer) obj;
                        Iterator<Type> it = autowiredObjectSerializer.getAutowiredFor().iterator();
                        while (it.hasNext()) {
                            put(it.next(), (ObjectSerializer) autowiredObjectSerializer);
                        }
                    }
                }
            } catch (ClassCastException unused) {
            }
            objectSerializer = this.serializers.get(cls);
        }
        if (objectSerializer == null && (classLoader = JSON.class.getClassLoader()) != Thread.currentThread().getContextClassLoader()) {
            try {
                for (Object obj2 : ServiceLoader.load(AutowiredObjectSerializer.class, classLoader)) {
                    if (obj2 instanceof AutowiredObjectSerializer) {
                        AutowiredObjectSerializer autowiredObjectSerializer2 = (AutowiredObjectSerializer) obj2;
                        Iterator<Type> it2 = autowiredObjectSerializer2.getAutowiredFor().iterator();
                        while (it2.hasNext()) {
                            put(it2.next(), (ObjectSerializer) autowiredObjectSerializer2);
                        }
                    }
                }
            } catch (ClassCastException unused2) {
            }
            objectSerializer = this.serializers.get(cls);
        }
        if (objectSerializer != null) {
            return objectSerializer;
        }
        String name = cls.getName();
        if (Map.class.isAssignableFrom(cls)) {
            put((Type) cls, MapSerializer.instance);
        } else if (List.class.isAssignableFrom(cls)) {
            put((Type) cls, ListSerializer.instance);
        } else if (Collection.class.isAssignableFrom(cls)) {
            put((Type) cls, CollectionCodec.instance);
        } else if (Date.class.isAssignableFrom(cls)) {
            put((Type) cls, DateCodec.instance);
        } else if (JSONAware.class.isAssignableFrom(cls)) {
            put((Type) cls, JSONAwareSerializer.instance);
        } else if (JSONSerializable.class.isAssignableFrom(cls)) {
            put((Type) cls, JSONSerializableSerializer.instance);
        } else if (JSONStreamAware.class.isAssignableFrom(cls)) {
            put((Type) cls, MiscCodec.instance);
        } else if (cls.isEnum() || (cls.getSuperclass() != null && cls.getSuperclass().isEnum())) {
            JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
            if (jSONType == null || !jSONType.serializeEnumAsJavaBean()) {
                put((Type) cls, EnumSerializer.instance);
            } else {
                put((Type) cls, createJavaBeanSerializer(cls));
            }
        } else if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            put((Type) cls, new ArraySerializer(componentType, getObjectWriter(componentType)));
        } else if (Throwable.class.isAssignableFrom(cls)) {
            SerializeBeanInfo serializeBeanInfoBuildBeanInfo = TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
            serializeBeanInfoBuildBeanInfo.features |= SerializerFeature.WriteClassName.mask;
            put((Type) cls, new JavaBeanSerializer(serializeBeanInfoBuildBeanInfo));
        } else if (TimeZone.class.isAssignableFrom(cls) || Map.Entry.class.isAssignableFrom(cls)) {
            put((Type) cls, MiscCodec.instance);
        } else if (Appendable.class.isAssignableFrom(cls)) {
            put((Type) cls, AppendableSerializer.instance);
        } else if (Charset.class.isAssignableFrom(cls)) {
            put((Type) cls, ToStringSerializer.instance);
        } else if (Enumeration.class.isAssignableFrom(cls)) {
            put((Type) cls, EnumerationSerializer.instance);
        } else if (Calendar.class.isAssignableFrom(cls) || XMLGregorianCalendar.class.isAssignableFrom(cls)) {
            put((Type) cls, CalendarCodec.instance);
        } else if (Clob.class.isAssignableFrom(cls)) {
            put((Type) cls, ClobSeriliazer.instance);
        } else if (TypeUtils.isPath(cls)) {
            put((Type) cls, ToStringSerializer.instance);
        } else if (Iterator.class.isAssignableFrom(cls)) {
            put((Type) cls, MiscCodec.instance);
        } else {
            if (name.startsWith("java.awt.") && AwtCodec.support(cls)) {
                if (!awtError) {
                    try {
                        Type cls2 = Class.forName("java.awt.Color");
                        ObjectSerializer objectSerializer2 = AwtCodec.instance;
                        put(cls2, objectSerializer2);
                        put(Class.forName("java.awt.Font"), objectSerializer2);
                        put(Class.forName("java.awt.Point"), objectSerializer2);
                        put(Class.forName("java.awt.Rectangle"), objectSerializer2);
                    } catch (Throwable unused3) {
                        awtError = true;
                    }
                }
                return AwtCodec.instance;
            }
            if (!jdk8Error && (name.startsWith("java.time.") || name.startsWith("java.util.Optional") || name.equals("java.util.concurrent.atomic.LongAdder") || name.equals("java.util.concurrent.atomic.DoubleAdder"))) {
                try {
                    Type cls3 = Class.forName("java.time.LocalDateTime");
                    ObjectSerializer objectSerializer3 = Jdk8DateCodec.instance;
                    put(cls3, objectSerializer3);
                    put(Class.forName("java.time.LocalDate"), objectSerializer3);
                    put(Class.forName("java.time.LocalTime"), objectSerializer3);
                    put(Class.forName("java.time.ZonedDateTime"), objectSerializer3);
                    put(Class.forName("java.time.OffsetDateTime"), objectSerializer3);
                    put(Class.forName("java.time.OffsetTime"), objectSerializer3);
                    put(Class.forName("java.time.ZoneOffset"), objectSerializer3);
                    put(Class.forName("java.time.ZoneRegion"), objectSerializer3);
                    put(Class.forName("java.time.Period"), objectSerializer3);
                    put(Class.forName("java.time.Duration"), objectSerializer3);
                    put(Class.forName("java.time.Instant"), objectSerializer3);
                    put(Class.forName("java.util.Optional"), OptionalCodec.instance);
                    put(Class.forName("java.util.OptionalDouble"), OptionalCodec.instance);
                    put(Class.forName("java.util.OptionalInt"), OptionalCodec.instance);
                    put(Class.forName("java.util.OptionalLong"), OptionalCodec.instance);
                    Type cls4 = Class.forName("java.util.concurrent.atomic.LongAdder");
                    ObjectSerializer objectSerializer4 = AdderSerializer.instance;
                    put(cls4, objectSerializer4);
                    put(Class.forName("java.util.concurrent.atomic.DoubleAdder"), objectSerializer4);
                    ObjectSerializer objectSerializer5 = this.serializers.get(cls);
                    if (objectSerializer5 != null) {
                        return objectSerializer5;
                    }
                } catch (Throwable unused4) {
                    jdk8Error = true;
                }
            }
            if (!oracleJdbcError && name.startsWith("oracle.sql.")) {
                try {
                    Type cls5 = Class.forName("oracle.sql.DATE");
                    ObjectSerializer objectSerializer6 = DateCodec.instance;
                    put(cls5, objectSerializer6);
                    put(Class.forName("oracle.sql.TIMESTAMP"), objectSerializer6);
                    ObjectSerializer objectSerializer7 = this.serializers.get(cls);
                    if (objectSerializer7 != null) {
                        return objectSerializer7;
                    }
                } catch (Throwable unused5) {
                    oracleJdbcError = true;
                }
            }
            if (!springfoxError && name.equals("springfox.documentation.spring.web.json.Json")) {
                try {
                    put(Class.forName("springfox.documentation.spring.web.json.Json"), SwaggerJsonSerializer.instance);
                    ObjectSerializer objectSerializer8 = this.serializers.get(cls);
                    if (objectSerializer8 != null) {
                        return objectSerializer8;
                    }
                } catch (ClassNotFoundException unused6) {
                    springfoxError = true;
                }
            }
            if (!guavaError && name.startsWith("com.google.common.collect.")) {
                try {
                    put(Class.forName("com.google.common.collect.HashMultimap"), GuavaCodec.instance);
                    put(Class.forName("com.google.common.collect.LinkedListMultimap"), GuavaCodec.instance);
                    put(Class.forName("com.google.common.collect.ArrayListMultimap"), GuavaCodec.instance);
                    put(Class.forName("com.google.common.collect.TreeMultimap"), GuavaCodec.instance);
                    ObjectSerializer objectSerializer9 = this.serializers.get(cls);
                    if (objectSerializer9 != null) {
                        return objectSerializer9;
                    }
                } catch (ClassNotFoundException unused7) {
                    guavaError = true;
                }
            }
            if (name.equals("net.sf.json.JSONNull")) {
                try {
                    put(Class.forName("net.sf.json.JSONNull"), MiscCodec.instance);
                } catch (ClassNotFoundException unused8) {
                }
                ObjectSerializer objectSerializer10 = this.serializers.get(cls);
                if (objectSerializer10 != null) {
                    return objectSerializer10;
                }
            }
            Class<?>[] interfaces = cls.getInterfaces();
            if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
                return AnnotationSerializer.instance;
            }
            if (TypeUtils.isProxy(cls)) {
                ObjectSerializer objectWriter = getObjectWriter(cls.getSuperclass());
                put((Type) cls, objectWriter);
                return objectWriter;
            }
            if (z) {
                put((Type) cls, createJavaBeanSerializer(cls));
            }
        }
        return this.serializers.get(cls);
    }

    public boolean put(Type type, ObjectSerializer objectSerializer) {
        return this.serializers.put(type, objectSerializer);
    }

    public SerializeConfig(int i) {
        this(i, false);
    }

    public SerializeConfig(int i, boolean z) {
        this.asm = !ASMUtils.IS_ANDROID;
        this.typeKey = JSON.DEFAULT_TYPE_KEY;
        this.fieldBased = z;
        this.serializers = new IdentityHashMap<>(1024);
        try {
            if (this.asm) {
                this.asmFactory = new ASMSerializerFactory();
            }
        } catch (Throwable unused) {
            this.asm = false;
        }
        put(Boolean.class, (ObjectSerializer) BooleanCodec.instance);
        put(Character.class, (ObjectSerializer) CharacterCodec.instance);
        put(Byte.class, (ObjectSerializer) IntegerCodec.instance);
        put(Short.class, (ObjectSerializer) IntegerCodec.instance);
        put(Integer.class, (ObjectSerializer) IntegerCodec.instance);
        put(Long.class, (ObjectSerializer) LongCodec.instance);
        put(Float.class, (ObjectSerializer) FloatCodec.instance);
        put(Double.class, (ObjectSerializer) DoubleSerializer.instance);
        put(BigDecimal.class, (ObjectSerializer) BigDecimalCodec.instance);
        put(BigInteger.class, (ObjectSerializer) BigIntegerCodec.instance);
        put(String.class, (ObjectSerializer) StringCodec.instance);
        put(byte[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(short[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(int[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(long[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(float[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(double[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(boolean[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(char[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(Object[].class, (ObjectSerializer) ObjectArrayCodec.instance);
        MiscCodec miscCodec = MiscCodec.instance;
        put(Class.class, (ObjectSerializer) miscCodec);
        put(SimpleDateFormat.class, (ObjectSerializer) miscCodec);
        put(Currency.class, (ObjectSerializer) new MiscCodec());
        put(TimeZone.class, (ObjectSerializer) miscCodec);
        put(InetAddress.class, (ObjectSerializer) miscCodec);
        put(Inet4Address.class, (ObjectSerializer) miscCodec);
        put(Inet6Address.class, (ObjectSerializer) miscCodec);
        put(InetSocketAddress.class, (ObjectSerializer) miscCodec);
        put(File.class, (ObjectSerializer) miscCodec);
        AppendableSerializer appendableSerializer = AppendableSerializer.instance;
        put(Appendable.class, (ObjectSerializer) appendableSerializer);
        put(StringBuffer.class, (ObjectSerializer) appendableSerializer);
        put(StringBuilder.class, (ObjectSerializer) appendableSerializer);
        ToStringSerializer toStringSerializer = ToStringSerializer.instance;
        put(Charset.class, (ObjectSerializer) toStringSerializer);
        put(Pattern.class, (ObjectSerializer) toStringSerializer);
        put(Locale.class, (ObjectSerializer) toStringSerializer);
        put(URI.class, (ObjectSerializer) toStringSerializer);
        put(URL.class, (ObjectSerializer) toStringSerializer);
        put(UUID.class, (ObjectSerializer) toStringSerializer);
        AtomicCodec atomicCodec = AtomicCodec.instance;
        put(AtomicBoolean.class, (ObjectSerializer) atomicCodec);
        put(AtomicInteger.class, (ObjectSerializer) atomicCodec);
        put(AtomicLong.class, (ObjectSerializer) atomicCodec);
        ReferenceCodec referenceCodec = ReferenceCodec.instance;
        put(AtomicReference.class, (ObjectSerializer) referenceCodec);
        put(AtomicIntegerArray.class, (ObjectSerializer) atomicCodec);
        put(AtomicLongArray.class, (ObjectSerializer) atomicCodec);
        put(WeakReference.class, (ObjectSerializer) referenceCodec);
        put(SoftReference.class, (ObjectSerializer) referenceCodec);
    }

    public ObjectSerializer createJavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        Method method;
        JSONType jSONType = serializeBeanInfo.jsonType;
        boolean z = false;
        if (jSONType != null) {
            Class<?> clsSerializer = jSONType.serializer();
            if (clsSerializer != Void.class) {
                try {
                    Object objNewInstance = clsSerializer.newInstance();
                    if (objNewInstance instanceof ObjectSerializer) {
                        return (ObjectSerializer) objNewInstance;
                    }
                } catch (Throwable unused) {
                }
            }
            if (!jSONType.asm()) {
                this.asm = false;
            }
            for (SerializerFeature serializerFeature : jSONType.serialzeFeatures()) {
                if (SerializerFeature.WriteNonStringValueAsString == serializerFeature || SerializerFeature.WriteEnumUsingToString == serializerFeature || SerializerFeature.NotWriteDefaultValue == serializerFeature) {
                    this.asm = false;
                    break;
                }
            }
        }
        Class<?> cls = serializeBeanInfo.beanType;
        if (!Modifier.isPublic(cls.getModifiers())) {
            return new JavaBeanSerializer(serializeBeanInfo);
        }
        boolean z2 = this.asm && !this.fieldBased;
        if ((z2 && this.asmFactory.classLoader.isExternalClass(cls)) || cls == Serializable.class || cls == Object.class) {
            z2 = false;
        }
        if (z2 && !ASMUtils.checkName(cls.getSimpleName())) {
            z2 = false;
        }
        if (!z2) {
            z = z2;
            break;
        }
        FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        int length = fieldInfoArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = z2;
                break;
            }
            FieldInfo fieldInfo = fieldInfoArr[i];
            Field field = fieldInfo.field;
            if ((field != null && !field.getType().equals(fieldInfo.fieldClass)) || ((method = fieldInfo.method) != null && !method.getReturnType().equals(fieldInfo.fieldClass))) {
                break;
            }
            JSONField annotation = fieldInfo.getAnnotation();
            if (annotation != null) {
                if (!ASMUtils.checkName(annotation.name()) || annotation.format().length() != 0 || annotation.jsonDirect() || annotation.serializeUsing() != Void.class || annotation.unwrapped()) {
                    break;
                }
                for (SerializerFeature serializerFeature2 : annotation.serialzeFeatures()) {
                    if (SerializerFeature.WriteNonStringValueAsString == serializerFeature2 || SerializerFeature.WriteEnumUsingToString == serializerFeature2 || SerializerFeature.NotWriteDefaultValue == serializerFeature2) {
                        z2 = false;
                        break;
                    }
                }
                if (TypeUtils.isAnnotationPresentOneToMany(method)) {
                    z = true;
                    break;
                }
            }
            i++;
        }
        if (z) {
            try {
                JavaBeanSerializer javaBeanSerializerCreateASMSerializer = createASMSerializer(serializeBeanInfo);
                if (javaBeanSerializerCreateASMSerializer != null) {
                    return javaBeanSerializerCreateASMSerializer;
                }
            } catch (ClassCastException | ClassFormatError | ClassNotFoundException unused2) {
            } catch (Throwable th) {
                throw new JSONException("create asm serializer error, class " + cls, th);
            }
        }
        return new JavaBeanSerializer(serializeBeanInfo);
    }
}

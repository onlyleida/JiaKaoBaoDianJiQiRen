package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONPOJOBuilder;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public class JavaBeanInfo {
    public final Method buildMethod;
    public final Class<?> builderClass;
    public final Class<?> clazz;
    public final Constructor<?> creatorConstructor;
    public final Constructor<?> defaultConstructor;
    public final int defaultConstructorParameterSize;
    public final Method factoryMethod;
    public final FieldInfo[] fields;
    public final JSONType jsonType;
    public final int parserFeatures;
    public final FieldInfo[] sortedFields;
    public final String typeKey;
    public final String typeName;

    public JavaBeanInfo(Class<?> cls, Class<?> cls2, Constructor<?> constructor, Constructor<?> constructor2, Method method, Method method2, JSONType jSONType, List<FieldInfo> list) {
        this.clazz = cls;
        this.builderClass = cls2;
        this.defaultConstructor = constructor;
        this.creatorConstructor = constructor2;
        this.factoryMethod = method;
        this.parserFeatures = TypeUtils.getParserFeatures(cls);
        this.buildMethod = method2;
        this.jsonType = jSONType;
        if (jSONType != null) {
            String strTypeName = jSONType.typeName();
            String strTypeKey = jSONType.typeKey();
            this.typeKey = strTypeKey.length() > 0 ? strTypeKey : null;
            if (strTypeName.length() != 0) {
                this.typeName = strTypeName;
            } else {
                this.typeName = cls.getName();
            }
        } else {
            this.typeName = cls.getName();
            this.typeKey = null;
        }
        FieldInfo[] fieldInfoArr = new FieldInfo[list.size()];
        this.fields = fieldInfoArr;
        list.toArray(fieldInfoArr);
        FieldInfo[] fieldInfoArr2 = new FieldInfo[fieldInfoArr.length];
        System.arraycopy(fieldInfoArr, 0, fieldInfoArr2, 0, fieldInfoArr.length);
        Arrays.sort(fieldInfoArr2);
        this.sortedFields = Arrays.equals(fieldInfoArr, fieldInfoArr2) ? fieldInfoArr : fieldInfoArr2;
        if (constructor != null) {
            this.defaultConstructorParameterSize = constructor.getParameterTypes().length;
        } else if (method != null) {
            this.defaultConstructorParameterSize = method.getParameterTypes().length;
        } else {
            this.defaultConstructorParameterSize = 0;
        }
    }

    static boolean add(List<FieldInfo> list, FieldInfo fieldInfo) {
        int size = list.size() - 1;
        while (size >= 0) {
            FieldInfo fieldInfo2 = list.get(size);
            if (fieldInfo2.name.equals(fieldInfo.name) && (!fieldInfo2.getOnly || fieldInfo.getOnly)) {
                if (fieldInfo2.fieldClass.isAssignableFrom(fieldInfo.fieldClass) || fieldInfo2.compareTo(fieldInfo) < 0) {
                    list.remove(size);
                    break;
                }
                return false;
            }
            size--;
        }
        list.add(fieldInfo);
        return true;
    }

    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy) {
        return build(cls, type, propertyNamingStrategy, false, TypeUtils.compatibleWithJavaBean);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x006f  */
    /* JADX WARN: Code duplicated, block: B:35:0x007e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:51:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x0012  */
    private static void computeFields(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, List<FieldInfo> list, Field[] fieldArr) {
        Iterator<FieldInfo> it;
        String name;
        JSONField jSONField;
        int i;
        int i2;
        int i3;
        for (Field field : fieldArr) {
            int modifiers = field.getModifiers();
            if ((modifiers & 8) == 0) {
                boolean z = true;
                if ((modifiers & 16) != 0) {
                    Class<?> type2 = field.getType();
                    if (Map.class.isAssignableFrom(type2) || Collection.class.isAssignableFrom(type2) || AtomicLong.class.equals(type2) || AtomicInteger.class.equals(type2) || AtomicBoolean.class.equals(type2)) {
                        it = list.iterator();
                        do {
                            if (it.hasNext()) {
                                z = false;
                                break;
                            }
                        } while (!it.next().name.equals(field.getName()));
                        if (z) {
                            name = field.getName();
                            jSONField = (JSONField) field.getAnnotation(JSONField.class);
                            if (jSONField != null) {
                                i = 0;
                                i2 = 0;
                                i3 = 0;
                            } else if (!jSONField.deserialize()) {
                                int iOrdinal = jSONField.ordinal();
                                int iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                int iOf2 = Feature.of(jSONField.parseFeatures());
                                if (jSONField.name().length() != 0) {
                                    name = jSONField.name();
                                }
                                i = iOrdinal;
                                i2 = iOf;
                                i3 = iOf2;
                            }
                            if (propertyNamingStrategy != null) {
                                name = propertyNamingStrategy.translate(name);
                            }
                            add(list, new FieldInfo(name, null, field, cls, type, i, i2, i3, null, jSONField, null));
                        }
                    }
                } else {
                    it = list.iterator();
                    do {
                        if (it.hasNext()) {
                            z = false;
                            break;
                        }
                    } while (!it.next().name.equals(field.getName()));
                    if (z) {
                        name = field.getName();
                        jSONField = (JSONField) field.getAnnotation(JSONField.class);
                        if (jSONField != null) {
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                        } else if (!jSONField.deserialize()) {
                            int iOrdinal2 = jSONField.ordinal();
                            int iOf3 = SerializerFeature.of(jSONField.serialzeFeatures());
                            int iOf4 = Feature.of(jSONField.parseFeatures());
                            if (jSONField.name().length() != 0) {
                                name = jSONField.name();
                            }
                            i = iOrdinal2;
                            i2 = iOf3;
                            i3 = iOf4;
                        }
                        if (propertyNamingStrategy != null) {
                            name = propertyNamingStrategy.translate(name);
                        }
                        add(list, new FieldInfo(name, null, field, cls, type, i, i2, i3, null, jSONField, null));
                    }
                }
            }
        }
    }

    public static Class<?> getBuilderClass(JSONType jSONType) {
        Class<?> clsBuilder;
        if (jSONType == null || (clsBuilder = jSONType.builder()) == Void.class) {
            return null;
        }
        return clsBuilder;
    }

    public static Constructor<?> getCreatorConstructor(Class<?> cls) {
        Constructor<?> constructor = null;
        for (Constructor<?> constructor2 : cls.getDeclaredConstructors()) {
            if (((JSONCreator) constructor2.getAnnotation(JSONCreator.class)) != null) {
                if (constructor != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                constructor = constructor2;
            }
        }
        return constructor;
    }

    static Constructor<?> getDefaultConstructor(Class<?> cls) {
        Constructor<?> constructor = null;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        for (Constructor<?> constructor2 : declaredConstructors) {
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
        }
        if (constructor != null || !cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return constructor;
        }
        for (Constructor<?> constructor3 : declaredConstructors) {
            Class<?>[] parameterTypes = constructor3.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(cls.getDeclaringClass())) {
                return constructor3;
            }
        }
        return constructor;
    }

    private static Method getFactoryMethod(Class<?> cls, Method[] methodArr) {
        Method method = null;
        for (Method method2 : methodArr) {
            if (Modifier.isStatic(method2.getModifiers()) && cls.isAssignableFrom(method2.getReturnType()) && ((JSONCreator) method2.getAnnotation(JSONCreator.class)) != null) {
                if (method != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                method = method2;
            }
        }
        return method;
    }

    private static FieldInfo getField(List<FieldInfo> list, String str) {
        for (FieldInfo fieldInfo : list) {
            if (fieldInfo.name.equals(str)) {
                return fieldInfo;
            }
            Field field = fieldInfo.field;
            if (field != null && fieldInfo.getAnnotation() != null && field.getName().equals(str)) {
                return fieldInfo;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x036c  */
    /* JADX WARN: Code duplicated, block: B:185:0x0466  */
    /* JADX WARN: Code duplicated, block: B:187:0x0470  */
    /* JADX WARN: Code duplicated, block: B:201:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:203:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:204:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:207:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:211:0x0501 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:213:0x0505  */
    /* JADX WARN: Code duplicated, block: B:215:0x0511  */
    /* JADX WARN: Code duplicated, block: B:217:0x0517  */
    /* JADX WARN: Code duplicated, block: B:218:0x051b  */
    /* JADX WARN: Code duplicated, block: B:220:0x0539  */
    /* JADX WARN: Code duplicated, block: B:221:0x055e  */
    /* JADX WARN: Code duplicated, block: B:222:0x0567  */
    /* JADX WARN: Code duplicated, block: B:223:0x0572  */
    /* JADX WARN: Code duplicated, block: B:227:0x0582  */
    /* JADX WARN: Code duplicated, block: B:229:0x059c  */
    /* JADX WARN: Code duplicated, block: B:82:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:83:0x01ed A[PHI: r14 r26 r29 r30 r31 r32 r33
      0x01ed: PHI (r14v21 java.lang.Class<?>) = 
      (r11v16 java.lang.Class<?>)
      (r11v16 java.lang.Class<?>)
      (r11v16 java.lang.Class<?>)
      (r14v18 java.lang.Class<?>)
      (r14v22 java.lang.Class<?>)
     binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]
      0x01ed: PHI (r26v15 int) = (r4v28 int), (r4v28 int), (r4v28 int), (r26v13 int), (r26v16 int) binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]
      0x01ed: PHI (r29v16 int) = (r3v56 int), (r3v56 int), (r3v56 int), (r29v14 int), (r29v17 int) binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]
      0x01ed: PHI (r30v5 java.lang.reflect.Method[]) = 
      (r5v20 java.lang.reflect.Method[])
      (r5v20 java.lang.reflect.Method[])
      (r5v20 java.lang.reflect.Method[])
      (r30v3 java.lang.reflect.Method[])
      (r30v6 java.lang.reflect.Method[])
     binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]
      0x01ed: PHI (r31v10 java.lang.Class<?>) = 
      (r6v24 java.lang.Class<?>)
      (r6v24 java.lang.Class<?>)
      (r6v24 java.lang.Class<?>)
      (r31v8 java.lang.Class<?>)
      (r31v11 java.lang.Class<?>)
     binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]
      0x01ed: PHI (r32v8 java.lang.reflect.Method[]) = 
      (r9v23 java.lang.reflect.Method[])
      (r9v23 java.lang.reflect.Method[])
      (r9v23 java.lang.reflect.Method[])
      (r32v6 java.lang.reflect.Method[])
      (r32v9 java.lang.reflect.Method[])
     binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]
      0x01ed: PHI (r33v18 java.lang.reflect.Field[]) = 
      (r10v20 java.lang.reflect.Field[])
      (r10v20 java.lang.reflect.Field[])
      (r10v20 java.lang.reflect.Field[])
      (r33v16 java.lang.reflect.Field[])
      (r33v19 java.lang.reflect.Field[])
     binds: [B:101:0x0294, B:104:0x02a0, B:107:0x02af, B:97:0x0234, B:82:0x01e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Instruction removed from duplicated block: B:204:0x04ae, please report this as an issue */
    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean z, boolean z2) {
        Class<?> cls2;
        ArrayList arrayList;
        Method factoryMethod;
        JSONField jSONField;
        JSONField jSONField2;
        Class<?> cls3;
        Method[] methodArr;
        Field[] fieldArr;
        Class<?> cls4;
        char c;
        int i;
        int i2;
        JSONField jSONField3;
        String strTranslate;
        Field[] fieldArr2;
        JSONField jSONField4;
        Field[] fieldArr3;
        Class<?> cls5;
        int i3;
        int i4;
        Method[] methodArr2;
        char cCharAt;
        String strDecapitalize;
        Field[] fieldArr4;
        Field field;
        JSONField jSONField5;
        JSONField jSONField6;
        int i5;
        int i6;
        int i7;
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        Class<?> builderClass = getBuilderClass(jSONType);
        Field[] declaredFields = cls.getDeclaredFields();
        Method[] methods = cls.getMethods();
        Constructor<?> defaultConstructor = getDefaultConstructor(builderClass == null ? cls : builderClass);
        Method method = null;
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                computeFields(cls, type, propertyNamingStrategy, arrayList2, superclass.getDeclaredFields());
            }
            return new JavaBeanInfo(cls, builderClass, defaultConstructor, null, null, null, jSONType, arrayList2);
        }
        boolean z3 = cls.isInterface() || Modifier.isAbstract(cls.getModifiers());
        if (defaultConstructor == null || z3) {
            Constructor<?> creatorConstructor = getCreatorConstructor(cls);
            String str = "illegal json creator";
            if (creatorConstructor != null && !z3) {
                TypeUtils.setAccessible(creatorConstructor);
                Class<?>[] parameterTypes = creatorConstructor.getParameterTypes();
                if (parameterTypes.length > 0) {
                    Annotation[][] parameterAnnotations = creatorConstructor.getParameterAnnotations();
                    int i8 = 0;
                    while (i8 < parameterTypes.length) {
                        Annotation[] annotationArr = parameterAnnotations[i8];
                        int length = annotationArr.length;
                        int i9 = 0;
                        while (true) {
                            if (i9 >= length) {
                                jSONField2 = null;
                                break;
                            }
                            Annotation annotation = annotationArr[i9];
                            if (annotation instanceof JSONField) {
                                jSONField2 = (JSONField) annotation;
                                break;
                            }
                            i9++;
                        }
                        if (jSONField2 == null) {
                            throw new JSONException(str);
                        }
                        ArrayList arrayList3 = arrayList2;
                        add(arrayList3, new FieldInfo(jSONField2.name(), cls, parameterTypes[i8], creatorConstructor.getGenericParameterTypes()[i8], TypeUtils.getField(cls, jSONField2.name(), declaredFields), jSONField2.ordinal(), SerializerFeature.of(jSONField2.serialzeFeatures()), Feature.of(jSONField2.parseFeatures())));
                        i8++;
                        parameterTypes = parameterTypes;
                        str = str;
                        arrayList2 = arrayList3;
                        parameterAnnotations = parameterAnnotations;
                    }
                }
                return new JavaBeanInfo(cls, builderClass, null, creatorConstructor, null, null, jSONType, arrayList2);
            }
            cls2 = Object.class;
            arrayList = arrayList2;
            factoryMethod = getFactoryMethod(cls, methods);
            if (factoryMethod != null) {
                TypeUtils.setAccessible(factoryMethod);
                Class<?>[] parameterTypes2 = factoryMethod.getParameterTypes();
                if (parameterTypes2.length > 0) {
                    Annotation[][] parameterAnnotations2 = factoryMethod.getParameterAnnotations();
                    int i10 = 0;
                    while (i10 < parameterTypes2.length) {
                        Annotation[] annotationArr2 = parameterAnnotations2[i10];
                        int length2 = annotationArr2.length;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= length2) {
                                jSONField = null;
                                break;
                            }
                            Annotation annotation2 = annotationArr2[i11];
                            if (annotation2 instanceof JSONField) {
                                jSONField = (JSONField) annotation2;
                                break;
                            }
                            i11++;
                        }
                        if (jSONField == null) {
                            throw new JSONException("illegal json creator");
                        }
                        add(arrayList, new FieldInfo(jSONField.name(), cls, parameterTypes2[i10], factoryMethod.getGenericParameterTypes()[i10], TypeUtils.getField(cls, jSONField.name(), declaredFields), jSONField.ordinal(), SerializerFeature.of(jSONField.serialzeFeatures()), Feature.of(jSONField.parseFeatures())));
                        i10++;
                        parameterAnnotations2 = parameterAnnotations2;
                        parameterTypes2 = parameterTypes2;
                    }
                    return new JavaBeanInfo(cls, builderClass, null, null, factoryMethod, null, jSONType, arrayList);
                }
            } else if (!z3) {
                throw new JSONException("default constructor not found. " + cls);
            }
        } else {
            factoryMethod = null;
            cls2 = Object.class;
            arrayList = arrayList2;
        }
        if (defaultConstructor != null) {
            TypeUtils.setAccessible(defaultConstructor);
        }
        if (builderClass != null) {
            JSONPOJOBuilder jSONPOJOBuilder = (JSONPOJOBuilder) builderClass.getAnnotation(JSONPOJOBuilder.class);
            String strWithPrefix = jSONPOJOBuilder != null ? jSONPOJOBuilder.withPrefix() : null;
            if (strWithPrefix == null || strWithPrefix.length() == 0) {
                strWithPrefix = "with";
            }
            String str2 = strWithPrefix;
            Method[] methods2 = builderClass.getMethods();
            int length3 = methods2.length;
            int i12 = 0;
            while (i12 < length3) {
                Method method2 = methods2[i12];
                if (!Modifier.isStatic(method2.getModifiers()) && method2.getReturnType().equals(builderClass)) {
                    JSONField superMethodAnnotation = (JSONField) method2.getAnnotation(JSONField.class);
                    if (superMethodAnnotation == null) {
                        superMethodAnnotation = TypeUtils.getSuperMethodAnnotation(cls, method2);
                    }
                    JSONField jSONField7 = superMethodAnnotation;
                    if (jSONField7 == null) {
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                    } else if (jSONField7.deserialize()) {
                        int iOrdinal = jSONField7.ordinal();
                        int iOf = SerializerFeature.of(jSONField7.serialzeFeatures());
                        int iOf2 = Feature.of(jSONField7.parseFeatures());
                        if (jSONField7.name().length() != 0) {
                            i12 = i12;
                            length3 = length3;
                            methods2 = methods2;
                            cls2 = cls2;
                            methods = methods;
                            declaredFields = declaredFields;
                            builderClass = builderClass;
                            add(arrayList, new FieldInfo(jSONField7.name(), method2, null, cls, type, iOrdinal, iOf, iOf2, jSONField7, null, null));
                        } else {
                            i5 = iOrdinal;
                            i6 = iOf;
                            i7 = iOf2;
                        }
                    } else {
                        i12 = i12;
                        length3 = length3;
                        methods2 = methods2;
                        cls2 = cls2;
                        methods = methods;
                        declaredFields = declaredFields;
                        builderClass = builderClass;
                    }
                    String name = method2.getName();
                    if (name.startsWith(str2) && name.length() > str2.length()) {
                        char cCharAt2 = name.charAt(str2.length());
                        if (Character.isUpperCase(cCharAt2)) {
                            StringBuilder sb = new StringBuilder(name.substring(str2.length()));
                            sb.setCharAt(0, Character.toLowerCase(cCharAt2));
                            add(arrayList, new FieldInfo(sb.toString(), method2, null, cls, type, i5, i6, i7, jSONField7, null, null));
                        }
                    }
                } else {
                    i12 = i12;
                    length3 = length3;
                    methods2 = methods2;
                    cls2 = cls2;
                    methods = methods;
                    declaredFields = declaredFields;
                    builderClass = builderClass;
                }
                i12++;
                builderClass = builderClass;
                str2 = str2;
                length3 = length3;
                methods2 = methods2;
                cls2 = cls2;
                methods = methods;
                declaredFields = declaredFields;
            }
            cls3 = cls2;
            methodArr = methods;
            fieldArr = declaredFields;
            cls4 = builderClass;
            c = 0;
            if (cls4 != null) {
                JSONPOJOBuilder jSONPOJOBuilder2 = (JSONPOJOBuilder) cls4.getAnnotation(JSONPOJOBuilder.class);
                String strBuildMethod = jSONPOJOBuilder2 != null ? jSONPOJOBuilder2.buildMethod() : null;
                if (strBuildMethod == null || strBuildMethod.length() == 0) {
                    strBuildMethod = "build";
                }
                try {
                    method = cls4.getMethod(strBuildMethod, new Class[0]);
                } catch (NoSuchMethodException | SecurityException unused) {
                }
                if (method == null) {
                    try {
                        method = cls4.getMethod("create", new Class[0]);
                    } catch (NoSuchMethodException | SecurityException unused2) {
                    }
                }
                if (method == null) {
                    throw new JSONException("buildMethod not found.");
                }
                TypeUtils.setAccessible(method);
            }
        } else {
            cls3 = cls2;
            methodArr = methods;
            fieldArr = declaredFields;
            cls4 = builderClass;
            c = 0;
        }
        Method[] methodArr3 = methodArr;
        int length4 = methodArr3.length;
        int i13 = 0;
        while (true) {
            i = 4;
            i2 = 3;
            if (i13 >= length4) {
                break;
            }
            Method method3 = methodArr3[i13];
            int iOrdinal2 = 0;
            int iOf3 = 0;
            int iOf4 = 0;
            String name2 = method3.getName();
            if (Modifier.isStatic(method3.getModifiers())) {
                i3 = i13;
                i4 = length4;
                methodArr2 = methodArr3;
                cls5 = cls3;
            } else {
                Class<?> returnType = method3.getReturnType();
                if (returnType.equals(Void.TYPE) || returnType.equals(method3.getDeclaringClass())) {
                    Class<?> cls6 = cls3;
                    if (method3.getDeclaringClass() == cls6) {
                        cls5 = cls6;
                        i3 = i13;
                        i4 = length4;
                        methodArr2 = methodArr3;
                    } else {
                        Class<?>[] parameterTypes3 = method3.getParameterTypes();
                        if (parameterTypes3.length == 0 || parameterTypes3.length > 2) {
                            cls5 = cls6;
                            i3 = i13;
                            i4 = length4;
                            methodArr2 = methodArr3;
                        } else {
                            JSONField jSONField8 = (JSONField) method3.getAnnotation(JSONField.class);
                            if (jSONField8 != null && parameterTypes3.length == 2 && parameterTypes3[c] == String.class && parameterTypes3[1] == cls6) {
                                cls5 = cls6;
                                i3 = i13;
                                i4 = length4;
                                methodArr2 = methodArr3;
                                add(arrayList, new FieldInfo("", method3, null, cls, type, 0, 0, 0, jSONField8, null, null));
                            } else {
                                cls5 = cls6;
                                i3 = i13;
                                i4 = length4;
                                methodArr2 = methodArr3;
                                if (parameterTypes3.length == 1) {
                                    JSONField superMethodAnnotation2 = jSONField8 == null ? TypeUtils.getSuperMethodAnnotation(cls, method3) : jSONField8;
                                    if (superMethodAnnotation2 != null || name2.length() >= 4) {
                                        if (superMethodAnnotation2 == null) {
                                            if (superMethodAnnotation2 == null || name2.startsWith("set")) {
                                                cCharAt = name2.charAt(3);
                                                if (!Character.isUpperCase(cCharAt) || cCharAt > 512) {
                                                    if (TypeUtils.compatibleWithJavaBean) {
                                                        strDecapitalize = TypeUtils.decapitalize(name2.substring(3));
                                                    } else {
                                                        strDecapitalize = Character.toLowerCase(name2.charAt(3)) + name2.substring(4);
                                                    }
                                                } else if (cCharAt == '_') {
                                                    strDecapitalize = name2.substring(4);
                                                } else if (cCharAt == 'f') {
                                                    strDecapitalize = name2.substring(3);
                                                } else if (name2.length() >= 5 && Character.isUpperCase(name2.charAt(4))) {
                                                    strDecapitalize = TypeUtils.decapitalize(name2.substring(3));
                                                }
                                                fieldArr4 = fieldArr;
                                                field = TypeUtils.getField(cls, strDecapitalize, fieldArr4);
                                                if (field != null && parameterTypes3[0] == Boolean.TYPE) {
                                                    field = TypeUtils.getField(cls, "is" + Character.toUpperCase(strDecapitalize.charAt(0)) + strDecapitalize.substring(1), fieldArr4);
                                                }
                                                if (field != null) {
                                                    jSONField6 = (JSONField) field.getAnnotation(JSONField.class);
                                                    if (jSONField6 == null) {
                                                        jSONField5 = jSONField6;
                                                    } else if (jSONField6.deserialize()) {
                                                        iOrdinal2 = jSONField6.ordinal();
                                                        iOf3 = SerializerFeature.of(jSONField6.serialzeFeatures());
                                                        iOf4 = Feature.of(jSONField6.parseFeatures());
                                                        if (jSONField6.name().length() != 0) {
                                                            add(arrayList, new FieldInfo(jSONField6.name(), method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField6, null));
                                                            fieldArr = fieldArr4;
                                                            cls4 = cls4;
                                                        } else {
                                                            jSONField5 = jSONField6;
                                                        }
                                                    } else {
                                                        fieldArr = fieldArr4;
                                                    }
                                                    if (propertyNamingStrategy != null) {
                                                        strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                    }
                                                    fieldArr = fieldArr4;
                                                    add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                } else {
                                                    jSONField5 = null;
                                                }
                                                if (propertyNamingStrategy != null) {
                                                    strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                }
                                                fieldArr = fieldArr4;
                                                add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                            }
                                        } else if (superMethodAnnotation2.deserialize()) {
                                            iOrdinal2 = superMethodAnnotation2.ordinal();
                                            int iOf5 = SerializerFeature.of(superMethodAnnotation2.serialzeFeatures());
                                            int iOf6 = Feature.of(superMethodAnnotation2.parseFeatures());
                                            if (superMethodAnnotation2.name().length() != 0) {
                                                add(arrayList, new FieldInfo(superMethodAnnotation2.name(), method3, null, cls, type, iOrdinal2, iOf5, iOf6, superMethodAnnotation2, null, null));
                                            } else {
                                                iOf3 = iOf5;
                                                iOf4 = iOf6;
                                                if (superMethodAnnotation2 == null) {
                                                    cCharAt = name2.charAt(3);
                                                    if (Character.isUpperCase(cCharAt)) {
                                                        if (TypeUtils.compatibleWithJavaBean) {
                                                            strDecapitalize = TypeUtils.decapitalize(name2.substring(3));
                                                        } else {
                                                            strDecapitalize = Character.toLowerCase(name2.charAt(3)) + name2.substring(4);
                                                        }
                                                        fieldArr4 = fieldArr;
                                                        field = TypeUtils.getField(cls, strDecapitalize, fieldArr4);
                                                        if (field != null) {
                                                        }
                                                        if (field != null) {
                                                            jSONField6 = (JSONField) field.getAnnotation(JSONField.class);
                                                            if (jSONField6 == null) {
                                                                jSONField5 = jSONField6;
                                                            } else if (jSONField6.deserialize()) {
                                                                fieldArr = fieldArr4;
                                                            } else {
                                                                iOrdinal2 = jSONField6.ordinal();
                                                                iOf3 = SerializerFeature.of(jSONField6.serialzeFeatures());
                                                                iOf4 = Feature.of(jSONField6.parseFeatures());
                                                                if (jSONField6.name().length() != 0) {
                                                                    add(arrayList, new FieldInfo(jSONField6.name(), method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField6, null));
                                                                    fieldArr = fieldArr4;
                                                                    cls4 = cls4;
                                                                } else {
                                                                    jSONField5 = jSONField6;
                                                                }
                                                            }
                                                            if (propertyNamingStrategy != null) {
                                                                strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                            }
                                                            fieldArr = fieldArr4;
                                                            add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                        } else {
                                                            jSONField5 = null;
                                                        }
                                                        if (propertyNamingStrategy != null) {
                                                            strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                        }
                                                        fieldArr = fieldArr4;
                                                        add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                    } else {
                                                        if (TypeUtils.compatibleWithJavaBean) {
                                                            strDecapitalize = TypeUtils.decapitalize(name2.substring(3));
                                                        } else {
                                                            strDecapitalize = Character.toLowerCase(name2.charAt(3)) + name2.substring(4);
                                                        }
                                                        fieldArr4 = fieldArr;
                                                        field = TypeUtils.getField(cls, strDecapitalize, fieldArr4);
                                                        if (field != null) {
                                                        }
                                                        if (field != null) {
                                                            jSONField6 = (JSONField) field.getAnnotation(JSONField.class);
                                                            if (jSONField6 == null) {
                                                                jSONField5 = jSONField6;
                                                            } else if (jSONField6.deserialize()) {
                                                                fieldArr = fieldArr4;
                                                            } else {
                                                                iOrdinal2 = jSONField6.ordinal();
                                                                iOf3 = SerializerFeature.of(jSONField6.serialzeFeatures());
                                                                iOf4 = Feature.of(jSONField6.parseFeatures());
                                                                if (jSONField6.name().length() != 0) {
                                                                    add(arrayList, new FieldInfo(jSONField6.name(), method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField6, null));
                                                                    fieldArr = fieldArr4;
                                                                    cls4 = cls4;
                                                                } else {
                                                                    jSONField5 = jSONField6;
                                                                }
                                                            }
                                                            if (propertyNamingStrategy != null) {
                                                                strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                            }
                                                            fieldArr = fieldArr4;
                                                            add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                        } else {
                                                            jSONField5 = null;
                                                        }
                                                        if (propertyNamingStrategy != null) {
                                                            strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                        }
                                                        fieldArr = fieldArr4;
                                                        add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                    }
                                                } else {
                                                    cCharAt = name2.charAt(3);
                                                    if (Character.isUpperCase(cCharAt)) {
                                                        if (TypeUtils.compatibleWithJavaBean) {
                                                            strDecapitalize = TypeUtils.decapitalize(name2.substring(3));
                                                        } else {
                                                            strDecapitalize = Character.toLowerCase(name2.charAt(3)) + name2.substring(4);
                                                        }
                                                        fieldArr4 = fieldArr;
                                                        field = TypeUtils.getField(cls, strDecapitalize, fieldArr4);
                                                        if (field != null) {
                                                        }
                                                        if (field != null) {
                                                            jSONField6 = (JSONField) field.getAnnotation(JSONField.class);
                                                            if (jSONField6 == null) {
                                                                jSONField5 = jSONField6;
                                                            } else if (jSONField6.deserialize()) {
                                                                fieldArr = fieldArr4;
                                                            } else {
                                                                iOrdinal2 = jSONField6.ordinal();
                                                                iOf3 = SerializerFeature.of(jSONField6.serialzeFeatures());
                                                                iOf4 = Feature.of(jSONField6.parseFeatures());
                                                                if (jSONField6.name().length() != 0) {
                                                                    add(arrayList, new FieldInfo(jSONField6.name(), method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField6, null));
                                                                    fieldArr = fieldArr4;
                                                                    cls4 = cls4;
                                                                } else {
                                                                    jSONField5 = jSONField6;
                                                                }
                                                            }
                                                            if (propertyNamingStrategy != null) {
                                                                strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                            }
                                                            fieldArr = fieldArr4;
                                                            add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                        } else {
                                                            jSONField5 = null;
                                                        }
                                                        if (propertyNamingStrategy != null) {
                                                            strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                        }
                                                        fieldArr = fieldArr4;
                                                        add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                    } else {
                                                        if (TypeUtils.compatibleWithJavaBean) {
                                                            strDecapitalize = TypeUtils.decapitalize(name2.substring(3));
                                                        } else {
                                                            strDecapitalize = Character.toLowerCase(name2.charAt(3)) + name2.substring(4);
                                                        }
                                                        fieldArr4 = fieldArr;
                                                        field = TypeUtils.getField(cls, strDecapitalize, fieldArr4);
                                                        if (field != null) {
                                                        }
                                                        if (field != null) {
                                                            jSONField6 = (JSONField) field.getAnnotation(JSONField.class);
                                                            if (jSONField6 == null) {
                                                                jSONField5 = jSONField6;
                                                            } else if (jSONField6.deserialize()) {
                                                                fieldArr = fieldArr4;
                                                            } else {
                                                                iOrdinal2 = jSONField6.ordinal();
                                                                iOf3 = SerializerFeature.of(jSONField6.serialzeFeatures());
                                                                iOf4 = Feature.of(jSONField6.parseFeatures());
                                                                if (jSONField6.name().length() != 0) {
                                                                    add(arrayList, new FieldInfo(jSONField6.name(), method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField6, null));
                                                                    fieldArr = fieldArr4;
                                                                    cls4 = cls4;
                                                                } else {
                                                                    jSONField5 = jSONField6;
                                                                }
                                                            }
                                                            if (propertyNamingStrategy != null) {
                                                                strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                            }
                                                            fieldArr = fieldArr4;
                                                            add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                        } else {
                                                            jSONField5 = null;
                                                        }
                                                        if (propertyNamingStrategy != null) {
                                                            strDecapitalize = propertyNamingStrategy.translate(strDecapitalize);
                                                        }
                                                        fieldArr = fieldArr4;
                                                        add(arrayList, new FieldInfo(strDecapitalize, method3, field, cls, type, iOrdinal2, iOf3, iOf4, superMethodAnnotation2, jSONField5, null));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    i3 = i13;
                    i4 = length4;
                    methodArr2 = methodArr3;
                    cls5 = cls3;
                }
            }
            i13 = i3 + 1;
            cls4 = cls4;
            methodArr3 = methodArr2;
            cls3 = cls5;
            length4 = i4;
            c = 0;
        }
        Class<?> cls7 = cls4;
        computeFields(cls, type, propertyNamingStrategy, arrayList, cls.getFields());
        Method[] methods3 = cls.getMethods();
        int length5 = methods3.length;
        int i14 = 0;
        while (i14 < length5) {
            Method method4 = methods3[i14];
            String name3 = method4.getName();
            if (name3.length() >= i && !Modifier.isStatic(method4.getModifiers()) && name3.startsWith("get") && Character.isUpperCase(name3.charAt(i2)) && method4.getParameterTypes().length == 0 && ((Collection.class.isAssignableFrom(method4.getReturnType()) || Map.class.isAssignableFrom(method4.getReturnType()) || AtomicBoolean.class == method4.getReturnType() || AtomicInteger.class == method4.getReturnType() || AtomicLong.class == method4.getReturnType()) && ((jSONField3 = (JSONField) method4.getAnnotation(JSONField.class)) == null || !jSONField3.deserialize()))) {
                if (jSONField3 == null || jSONField3.name().length() <= 0) {
                    strTranslate = Character.toLowerCase(name3.charAt(i2)) + name3.substring(i);
                    fieldArr2 = fieldArr;
                    Field field2 = TypeUtils.getField(cls, strTranslate, fieldArr2);
                    if (field2 == null || (jSONField4 = (JSONField) field2.getAnnotation(JSONField.class)) == null || jSONField4.deserialize()) {
                    }
                    fieldArr3 = fieldArr2;
                } else {
                    strTranslate = jSONField3.name();
                    fieldArr2 = fieldArr;
                }
                if (getField(arrayList, strTranslate) != null) {
                    fieldArr3 = fieldArr2;
                } else {
                    if (propertyNamingStrategy != null) {
                        strTranslate = propertyNamingStrategy.translate(strTranslate);
                    }
                    fieldArr3 = fieldArr2;
                    i14 = i14;
                    length5 = length5;
                    methods3 = methods3;
                    add(arrayList, new FieldInfo(strTranslate, method4, null, cls, type, 0, 0, 0, jSONField3, null, null));
                }
                i14++;
                length5 = length5;
                methods3 = methods3;
                fieldArr = fieldArr3;
                i2 = 3;
                i = 4;
            } else {
                fieldArr3 = fieldArr;
            }
            i14++;
            length5 = length5;
            methods3 = methods3;
            fieldArr = fieldArr3;
            i2 = 3;
            i = 4;
        }
        return new JavaBeanInfo(cls, cls7, defaultConstructor, null, factoryMethod, method, jSONType, arrayList);
    }
}

package com.nirvana.tools.jsoner;

import android.text.TextUtils;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes6.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f13620a;
    boolean b;
    private Class c;

    public b(Field field) {
        Annotation annotation = field.getAnnotation(JsonerTag.class);
        if (annotation != null) {
            JsonerTag jsonerTag = (JsonerTag) annotation;
            this.f13620a = jsonerTag.keyName();
            this.b = jsonerTag.isExcluded();
        }
        if (TextUtils.isEmpty(this.f13620a)) {
            this.f13620a = field.getName();
        }
        this.c = field.getType();
    }

    private static boolean a(Class cls) {
        return Integer.TYPE.equals(cls) || Integer.class.equals(cls) || int[].class.equals(cls) || Integer[].class.equals(cls) || Short.TYPE.equals(cls) || Short.class.equals(cls) || short[].class.equals(cls) || Short[].class.equals(cls) || Long.TYPE.equals(cls) || Long.class.equals(cls) || long[].class.equals(cls) || Long[].class.equals(cls) || Float.TYPE.equals(cls) || Float.class.equals(cls) || float[].class.equals(cls) || Float[].class.equals(cls) || Double.TYPE.equals(cls) || Double.class.equals(cls) || double[].class.equals(cls) || Double[].class.equals(cls);
    }

    private static boolean b(Class cls) {
        return String.class.equals(cls) || StringBuilder.class.equals(cls) || String[].class.equals(cls) || StringBuilder[].class.equals(cls) || StringBuffer.class.equals(cls) || CharSequence.class.equals(cls) || StringBuffer[].class.equals(cls) || CharSequence[].class.equals(cls);
    }

    private static boolean c(Class cls) {
        return Byte.TYPE.equals(cls) || Byte.class.equals(cls) || byte[].class.equals(cls) || Byte[].class.equals(cls) || Character.TYPE.equals(cls) || Character.class.equals(cls) || char[].class.equals(cls) || Character[].class.equals(cls);
    }

    private static boolean d(Class cls) {
        return Boolean.TYPE.equals(cls) || Boolean.class.equals(cls) || boolean[].class.equals(cls) || Boolean[].class.equals(cls);
    }

    public final boolean a() {
        return d(this.c) || c(this.c) || a(this.c) || b(this.c);
    }
}

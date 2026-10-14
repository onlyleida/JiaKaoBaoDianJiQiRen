package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* JADX INFO: loaded from: classes6.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f14885a = new n();

    private n() {
    }

    public final String a(Constructor<?> constructor) {
        r.e(constructor, "constructor");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        r.d(parameterTypes, "constructor.parameterTypes");
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            Class<?> parameterType = parameterTypes[i];
            i++;
            r.d(parameterType, "parameterType");
            sb.append(ReflectClassUtilKt.b(parameterType));
        }
        sb.append(")V");
        String string = sb.toString();
        r.d(string, "sb.toString()");
        return string;
    }

    public final String b(Field field) {
        r.e(field, "field");
        Class<?> type = field.getType();
        r.d(type, "field.type");
        return ReflectClassUtilKt.b(type);
    }

    public final String c(Method method) {
        r.e(method, "method");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        r.d(parameterTypes, "method.parameterTypes");
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            Class<?> parameterType = parameterTypes[i];
            i++;
            r.d(parameterType, "parameterType");
            sb.append(ReflectClassUtilKt.b(parameterType));
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        r.d(returnType, "method.returnType");
        sb.append(ReflectClassUtilKt.b(returnType));
        String string = sb.toString();
        r.d(string, "sb.toString()");
        return string;
    }
}

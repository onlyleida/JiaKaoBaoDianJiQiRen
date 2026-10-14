package kotlin.reflect.jvm.internal.calls;

import androidx.exifinterface.media.ExifInterface;
import com.mobile.auth.gatewayauth.Constant;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.k;
import kotlin.collections.s;
import kotlin.collections.v;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00004\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001aI\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0000¢\u0006\u0002\u0010\u000b\u001a$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002\u001a\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002¨\u0006\u0014"}, d2 = {"createAnnotationInstance", ExifInterface.GPS_DIRECTION_TRUE, "", "annotationClass", "Ljava/lang/Class;", "values", "", "", "methods", "", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;", "throwIllegalArgumentType", "", "index", "", Constant.PROTOCOL_WEBVIEW_NAME, "expectedJvmType", "transformKotlinToJvm", "expectedType", "kotlin-reflection"}, k = 2, mv = {1, 5, 1})
public final class AnnotationConstructorCallerKt {

    @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0003*\u00020\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00060\u00062,\u0010\u0007\u001a(\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001 \u0002*\u0014\u0012\u000e\b\u0001\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\b0\bH\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", ExifInterface.GPS_DIRECTION_TRUE, "<anonymous parameter 0>", "method", "Ljava/lang/reflect/Method;", "args", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
    static final class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Class f14741a;
        final /* synthetic */ Lazy b;
        final /* synthetic */ KProperty c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Lazy f14742d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ KProperty f14743e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ AnnotationConstructorCallerKt$createAnnotationInstance$2 f14744f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Map f14745g;

        a(Class cls, Lazy lazy, KProperty kProperty, Lazy lazy2, KProperty kProperty2, AnnotationConstructorCallerKt$createAnnotationInstance$2 annotationConstructorCallerKt$createAnnotationInstance$2, Map map) {
            this.f14741a = cls;
            this.b = lazy;
            this.c = kProperty;
            this.f14742d = lazy2;
            this.f14743e = kProperty2;
            this.f14744f = annotationConstructorCallerKt$createAnnotationInstance$2;
            this.f14745g = map;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            r.d(method, "method");
            String name = method.getName();
            if (name != null) {
                int iHashCode = name.hashCode();
                if (iHashCode != -1776922004) {
                    if (iHashCode != 147696667) {
                        if (iHashCode == 1444986633 && name.equals("annotationType")) {
                            return this.f14741a;
                        }
                    } else if (name.equals("hashCode")) {
                        return this.f14742d.getValue();
                    }
                } else if (name.equals("toString")) {
                    return this.b.getValue();
                }
            }
            if (r.a(name, "equals") && objArr != null && objArr.length == 1) {
                return Boolean.valueOf(this.f14744f.invoke2(k.U(objArr)));
            }
            if (this.f14745g.containsKey(name)) {
                return this.f14745g.get(name);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Method is not supported: ");
            sb.append(method);
            sb.append(" (args: ");
            if (objArr == null) {
                objArr = new Object[0];
            }
            sb.append(ArraysKt___ArraysKt.h0(objArr));
            sb.append(')');
            throw new KotlinReflectionInternalError(sb.toString());
        }
    }

    public static final /* synthetic */ Void a(int i, String str, Class cls) {
        e(i, str, cls);
        throw null;
    }

    public static final <T> T c(final Class<T> annotationClass, final Map<String, ? extends Object> values, List<Method> methods) {
        r.e(annotationClass, "annotationClass");
        r.e(values, "values");
        r.e(methods, "methods");
        AnnotationConstructorCallerKt$createAnnotationInstance$2 annotationConstructorCallerKt$createAnnotationInstance$2 = new AnnotationConstructorCallerKt$createAnnotationInstance$2(annotationClass, methods, values);
        Lazy lazyB = i.b(new Function0<Integer>() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final int invoke2() {
                int iHashCode;
                int iHashCode2 = 0;
                for (Map.Entry entry : values.entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof boolean[]) {
                        iHashCode = Arrays.hashCode((boolean[]) value);
                    } else if (value instanceof char[]) {
                        iHashCode = Arrays.hashCode((char[]) value);
                    } else if (value instanceof byte[]) {
                        iHashCode = Arrays.hashCode((byte[]) value);
                    } else if (value instanceof short[]) {
                        iHashCode = Arrays.hashCode((short[]) value);
                    } else if (value instanceof int[]) {
                        iHashCode = Arrays.hashCode((int[]) value);
                    } else if (value instanceof float[]) {
                        iHashCode = Arrays.hashCode((float[]) value);
                    } else if (value instanceof long[]) {
                        iHashCode = Arrays.hashCode((long[]) value);
                    } else if (value instanceof double[]) {
                        iHashCode = Arrays.hashCode((double[]) value);
                    } else {
                        iHashCode = value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode();
                    }
                    iHashCode2 += iHashCode ^ (str.hashCode() * 127);
                }
                return iHashCode2;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Integer invoke() {
                return Integer.valueOf(invoke2());
            }
        });
        T t = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), new Class[]{annotationClass}, new a(annotationClass, i.b(new Function0<String>() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$toString$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() throws IOException {
                StringBuilder sb = new StringBuilder();
                sb.append('@');
                sb.append(annotationClass.getCanonicalName());
                s.k0(values.entrySet(), sb, ", ", "(", ")", 0, null, new Function1<Map.Entry<? extends String, ? extends Object>, CharSequence>() { // from class: kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final CharSequence invoke2(Map.Entry<String, ? extends Object> entry) {
                        String string;
                        r.e(entry, "entry");
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof boolean[]) {
                            string = Arrays.toString((boolean[]) value);
                        } else if (value instanceof char[]) {
                            string = Arrays.toString((char[]) value);
                        } else if (value instanceof byte[]) {
                            string = Arrays.toString((byte[]) value);
                        } else if (value instanceof short[]) {
                            string = Arrays.toString((short[]) value);
                        } else if (value instanceof int[]) {
                            string = Arrays.toString((int[]) value);
                        } else if (value instanceof float[]) {
                            string = Arrays.toString((float[]) value);
                        } else if (value instanceof long[]) {
                            string = Arrays.toString((long[]) value);
                        } else if (value instanceof double[]) {
                            string = Arrays.toString((double[]) value);
                        } else {
                            string = value instanceof Object[] ? Arrays.toString((Object[]) value) : value.toString();
                        }
                        return key + '=' + string;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends Object> entry) {
                        return invoke2((Map.Entry<String, ? extends Object>) entry);
                    }
                }, 48, null);
                String string = sb.toString();
                r.d(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
        }), null, lazyB, null, annotationConstructorCallerKt$createAnnotationInstance$2, values));
        Objects.requireNonNull(t, "null cannot be cast to non-null type T");
        return t;
    }

    public static /* synthetic */ Object d(Class cls, Map map, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            Set setKeySet = map.keySet();
            ArrayList arrayList = new ArrayList(v.u(setKeySet, 10));
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(cls.getDeclaredMethod((String) it.next(), new Class[0]));
            }
            list = arrayList;
        }
        return c(cls, map, list);
    }

    private static final Void e(int i, String str, Class<?> cls) {
        KClass kClassB;
        String strE;
        if (r.a(cls, Class.class)) {
            kClassB = kotlin.jvm.internal.v.b(KClass.class);
        } else {
            kClassB = (cls.isArray() && r.a(cls.getComponentType(), Class.class)) ? kotlin.jvm.internal.v.b(KClass[].class) : kotlin.jvm.a.e(cls);
        }
        if (r.a(kClassB.e(), kotlin.jvm.internal.v.b(Object[].class).e())) {
            StringBuilder sb = new StringBuilder();
            sb.append(kClassB.e());
            sb.append('<');
            Class<?> componentType = kotlin.jvm.a.b(kClassB).getComponentType();
            r.d(componentType, "kotlinClass.java.componentType");
            sb.append(kotlin.jvm.a.e(componentType).e());
            sb.append('>');
            strE = sb.toString();
        } else {
            strE = kClassB.e();
        }
        throw new IllegalArgumentException("Argument #" + i + ' ' + str + " is not of the required type " + strE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(Object obj, Class<?> cls) {
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof KClass) {
            obj = kotlin.jvm.a.b((KClass) obj);
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr instanceof Class[]) {
                return null;
            }
            if (objArr instanceof KClass[]) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                KClass[] kClassArr = (KClass[]) obj;
                ArrayList arrayList = new ArrayList(kClassArr.length);
                for (KClass kClass : kClassArr) {
                    arrayList.add(kotlin.jvm.a.b(kClass));
                }
                obj = arrayList.toArray(new Class[0]);
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T>");
            } else {
                obj = objArr;
            }
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }
}

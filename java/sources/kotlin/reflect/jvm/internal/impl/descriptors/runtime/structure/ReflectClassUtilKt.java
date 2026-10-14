package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class ReflectClassUtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<KClass<? extends Object>> f14980a;
    private static final Map<Class<? extends Object>, Class<? extends Object>> b;
    private static final Map<Class<? extends Object>, Class<? extends Object>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Class<? extends Function<?>>, Integer> f14981d;

    static {
        int i = 0;
        List<KClass<? extends Object>> listM = kotlin.collections.u.m(kotlin.jvm.internal.v.b(Boolean.TYPE), kotlin.jvm.internal.v.b(Byte.TYPE), kotlin.jvm.internal.v.b(Character.TYPE), kotlin.jvm.internal.v.b(Double.TYPE), kotlin.jvm.internal.v.b(Float.TYPE), kotlin.jvm.internal.v.b(Integer.TYPE), kotlin.jvm.internal.v.b(Long.TYPE), kotlin.jvm.internal.v.b(Short.TYPE));
        f14980a = listM;
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listM, 10));
        Iterator<T> it = listM.iterator();
        while (it.hasNext()) {
            KClass kClass = (KClass) it.next();
            arrayList.add(kotlin.l.a(kotlin.jvm.a.c(kClass), kotlin.jvm.a.d(kClass)));
        }
        b = o0.q(arrayList);
        List<KClass<? extends Object>> list = f14980a;
        ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            KClass kClass2 = (KClass) it2.next();
            arrayList2.add(kotlin.l.a(kotlin.jvm.a.d(kClass2), kotlin.jvm.a.c(kClass2)));
        }
        c = o0.q(arrayList2);
        List listM2 = kotlin.collections.u.m(Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class);
        ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(listM2, 10));
        for (Object obj : listM2) {
            int i2 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            arrayList3.add(kotlin.l.a((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        f14981d = o0.q(arrayList3);
    }

    public static final kotlin.reflect.jvm.internal.impl.name.b a(Class<?> cls) {
        kotlin.jvm.internal.r.e(cls, "<this>");
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException(kotlin.jvm.internal.r.m("Can't compute ClassId for primitive type: ", cls));
        }
        if (cls.isArray()) {
            throw new IllegalArgumentException(kotlin.jvm.internal.r.m("Can't compute ClassId for array type: ", cls));
        }
        if (cls.getEnclosingMethod() == null && cls.getEnclosingConstructor() == null) {
            String simpleName = cls.getSimpleName();
            kotlin.jvm.internal.r.d(simpleName, "simpleName");
            if (!(simpleName.length() == 0)) {
                Class<?> declaringClass = cls.getDeclaringClass();
                kotlin.reflect.jvm.internal.impl.name.b bVarD = declaringClass == null ? null : a(declaringClass).d(kotlin.reflect.jvm.internal.impl.name.f.g(cls.getSimpleName()));
                if (bVarD == null) {
                    bVarD = kotlin.reflect.jvm.internal.impl.name.b.m(new kotlin.reflect.jvm.internal.impl.name.c(cls.getName()));
                }
                kotlin.jvm.internal.r.d(bVarD, "declaringClass?.classId?…Id.topLevel(FqName(name))");
                return bVarD;
            }
        }
        kotlin.reflect.jvm.internal.impl.name.c cVar = new kotlin.reflect.jvm.internal.impl.name.c(cls.getName());
        return new kotlin.reflect.jvm.internal.impl.name.b(cVar.e(), kotlin.reflect.jvm.internal.impl.name.c.k(cVar.g()), true);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final String b(Class<?> cls) {
        kotlin.jvm.internal.r.e(cls, "<this>");
        if (!cls.isPrimitive()) {
            if (cls.isArray()) {
                String name = cls.getName();
                kotlin.jvm.internal.r.d(name, "name");
                return kotlin.text.t.w(name, '.', '/', false, 4, null);
            }
            StringBuilder sb = new StringBuilder();
            sb.append('L');
            String name2 = cls.getName();
            kotlin.jvm.internal.r.d(name2, "name");
            sb.append(kotlin.text.t.w(name2, '.', '/', false, 4, null));
            sb.append(';');
            return sb.toString();
        }
        String name3 = cls.getName();
        if (name3 != null) {
            switch (name3.hashCode()) {
                case -1325958191:
                    if (name3.equals("double")) {
                        return "D";
                    }
                    break;
                case 104431:
                    if (name3.equals("int")) {
                        return "I";
                    }
                    break;
                case 3039496:
                    if (name3.equals("byte")) {
                        return "B";
                    }
                    break;
                case 3052374:
                    if (name3.equals("char")) {
                        return "C";
                    }
                    break;
                case 3327612:
                    if (name3.equals("long")) {
                        return "J";
                    }
                    break;
                case 3625364:
                    if (name3.equals("void")) {
                        return ExifInterface.GPS_MEASUREMENT_INTERRUPTED;
                    }
                    break;
                case 64711720:
                    if (name3.equals("boolean")) {
                        return "Z";
                    }
                    break;
                case 97526364:
                    if (name3.equals("float")) {
                        return "F";
                    }
                    break;
                case 109413500:
                    if (name3.equals("short")) {
                        return ExifInterface.LATITUDE_SOUTH;
                    }
                    break;
            }
        }
        throw new IllegalArgumentException(kotlin.jvm.internal.r.m("Unsupported primitive type: ", cls));
    }

    public static final List<Type> c(Type type) {
        kotlin.jvm.internal.r.e(type, "<this>");
        if (!(type instanceof ParameterizedType)) {
            return kotlin.collections.u.j();
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        if (parameterizedType.getOwnerType() != null) {
            return SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.s(SequencesKt__SequencesKt.h(type, new Function1<ParameterizedType, ParameterizedType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt$parameterizedTypeArguments$1
                @Override // kotlin.jvm.functions.Function1
                public final ParameterizedType invoke(ParameterizedType it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    Type ownerType = it.getOwnerType();
                    if (ownerType instanceof ParameterizedType) {
                        return (ParameterizedType) ownerType;
                    }
                    return null;
                }
            }), new Function1<ParameterizedType, Sequence<? extends Type>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt$parameterizedTypeArguments$2
                @Override // kotlin.jvm.functions.Function1
                public final Sequence<Type> invoke(ParameterizedType it) {
                    kotlin.jvm.internal.r.e(it, "it");
                    Type[] actualTypeArguments = it.getActualTypeArguments();
                    kotlin.jvm.internal.r.d(actualTypeArguments, "it.actualTypeArguments");
                    return ArraysKt___ArraysKt.o(actualTypeArguments);
                }
            }));
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        kotlin.jvm.internal.r.d(actualTypeArguments, "actualTypeArguments");
        return ArraysKt___ArraysKt.h0(actualTypeArguments);
    }

    public static final Class<?> d(Class<?> cls) {
        kotlin.jvm.internal.r.e(cls, "<this>");
        return b.get(cls);
    }

    public static final ClassLoader e(Class<?> cls) {
        kotlin.jvm.internal.r.e(cls, "<this>");
        ClassLoader classLoader = cls.getClassLoader();
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        kotlin.jvm.internal.r.d(systemClassLoader, "getSystemClassLoader()");
        return systemClassLoader;
    }

    public static final Class<?> f(Class<?> cls) {
        kotlin.jvm.internal.r.e(cls, "<this>");
        return c.get(cls);
    }

    public static final boolean g(Class<?> cls) {
        kotlin.jvm.internal.r.e(cls, "<this>");
        return Enum.class.isAssignableFrom(cls);
    }
}

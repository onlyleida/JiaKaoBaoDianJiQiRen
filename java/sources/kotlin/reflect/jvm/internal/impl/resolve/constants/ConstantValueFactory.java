package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class ConstantValueFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConstantValueFactory f15493a = new ConstantValueFactory();

    private ConstantValueFactory() {
    }

    private final b a(List<?> list, final PrimitiveType primitiveType) {
        List listM0 = CollectionsKt___CollectionsKt.M0(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = listM0.iterator();
        while (it.hasNext()) {
            g<?> gVarC = c(it.next());
            if (gVarC != null) {
                arrayList.add(gVarC);
            }
        }
        return new b(arrayList, new Function1<z, a0>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory$createArrayValue$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(z module) {
                kotlin.jvm.internal.r.e(module, "module");
                f0 f0VarO = module.k().O(primitiveType);
                kotlin.jvm.internal.r.d(f0VarO, "module.builtIns.getPrimi…KotlinType(componentType)");
                return f0VarO;
            }
        });
    }

    public final b b(List<? extends g<?>> value, final a0 type) {
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(type, "type");
        return new b(value, new Function1<z, a0>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory$createArrayValue$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(z it) {
                kotlin.jvm.internal.r.e(it, "it");
                return type;
            }
        });
    }

    public final g<?> c(Object obj) {
        if (obj instanceof Byte) {
            return new d(((Number) obj).byteValue());
        }
        if (obj instanceof Short) {
            return new s(((Number) obj).shortValue());
        }
        if (obj instanceof Integer) {
            return new l(((Number) obj).intValue());
        }
        if (obj instanceof Long) {
            return new p(((Number) obj).longValue());
        }
        if (obj instanceof Character) {
            return new e(((Character) obj).charValue());
        }
        if (obj instanceof Float) {
            return new k(((Number) obj).floatValue());
        }
        if (obj instanceof Double) {
            return new h(((Number) obj).doubleValue());
        }
        if (obj instanceof Boolean) {
            return new c(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            return new t((String) obj);
        }
        if (obj instanceof byte[]) {
            return a(ArraysKt___ArraysKt.b0((byte[]) obj), PrimitiveType.BYTE);
        }
        if (obj instanceof short[]) {
            return a(ArraysKt___ArraysKt.i0((short[]) obj), PrimitiveType.SHORT);
        }
        if (obj instanceof int[]) {
            return a(ArraysKt___ArraysKt.f0((int[]) obj), PrimitiveType.INT);
        }
        if (obj instanceof long[]) {
            return a(ArraysKt___ArraysKt.g0((long[]) obj), PrimitiveType.LONG);
        }
        if (obj instanceof char[]) {
            return a(ArraysKt___ArraysKt.c0((char[]) obj), PrimitiveType.CHAR);
        }
        if (obj instanceof float[]) {
            return a(ArraysKt___ArraysKt.e0((float[]) obj), PrimitiveType.FLOAT);
        }
        if (obj instanceof double[]) {
            return a(ArraysKt___ArraysKt.d0((double[]) obj), PrimitiveType.DOUBLE);
        }
        if (obj instanceof boolean[]) {
            return a(ArraysKt___ArraysKt.j0((boolean[]) obj), PrimitiveType.BOOLEAN);
        }
        if (obj == null) {
            return new q();
        }
        return null;
    }
}

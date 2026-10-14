package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.x0;

/* JADX INFO: loaded from: classes6.dex */
public final class w {
    public static final <T> T a(i<T> iVar, T possiblyPrimitiveType, boolean z) {
        kotlin.jvm.internal.r.e(iVar, "<this>");
        kotlin.jvm.internal.r.e(possiblyPrimitiveType, "possiblyPrimitiveType");
        return z ? iVar.b(possiblyPrimitiveType) : possiblyPrimitiveType;
    }

    public static final <T> T b(x0 x0Var, kotlin.reflect.jvm.internal.impl.types.model.g type, i<T> typeFactory, v mode) {
        kotlin.jvm.internal.r.e(x0Var, "<this>");
        kotlin.jvm.internal.r.e(type, "type");
        kotlin.jvm.internal.r.e(typeFactory, "typeFactory");
        kotlin.jvm.internal.r.e(mode, "mode");
        kotlin.reflect.jvm.internal.impl.types.model.k kVarW = x0Var.W(type);
        if (!x0Var.i0(kVarW)) {
            return null;
        }
        PrimitiveType primitiveTypeD = x0Var.D(kVarW);
        boolean z = true;
        if (primitiveTypeD != null) {
            T tC = typeFactory.c(primitiveTypeD);
            if (!x0Var.G(type) && !kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.m.b(x0Var, type)) {
                z = false;
            }
            return (T) a(typeFactory, tC, z);
        }
        PrimitiveType primitiveTypeO = x0Var.O(kVarW);
        if (primitiveTypeO != null) {
            return typeFactory.a(kotlin.jvm.internal.r.m("[", JvmPrimitiveType.get(primitiveTypeO).getDesc()));
        }
        if (x0Var.h(kVarW)) {
            kotlin.reflect.jvm.internal.impl.name.d dVarB0 = x0Var.b0(kVarW);
            kotlin.reflect.jvm.internal.impl.name.b bVarO = dVarB0 == null ? null : kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a.o(dVarB0);
            if (bVarO != null) {
                if (!mode.a()) {
                    List<kotlin.reflect.jvm.internal.impl.builtins.jvm.c.a> listJ = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a.j();
                    if (!(listJ instanceof Collection) || !listJ.isEmpty()) {
                        Iterator<T> it = listJ.iterator();
                        do {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                        } while (!kotlin.jvm.internal.r.a(((kotlin.reflect.jvm.internal.impl.builtins.jvm.c.a) it.next()).d(), bVarO));
                    } else {
                        z = false;
                        break;
                    }
                    if (z) {
                        return null;
                    }
                }
                String strF = kotlin.reflect.jvm.internal.impl.resolve.jvm.d.b(bVarO).f();
                kotlin.jvm.internal.r.d(strF, "byClassId(classId).internalName");
                return typeFactory.e(strF);
            }
        }
        return null;
    }
}

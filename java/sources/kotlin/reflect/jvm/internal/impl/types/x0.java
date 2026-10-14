package kotlin.reflect.jvm.internal.impl.types;

import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
public interface x0 extends kotlin.reflect.jvm.internal.impl.types.model.m {

    public static final class a {
        public static kotlin.reflect.jvm.internal.impl.types.model.g a(x0 x0Var, kotlin.reflect.jvm.internal.impl.types.model.g receiver) {
            kotlin.jvm.internal.r.e(x0Var, "this");
            kotlin.jvm.internal.r.e(receiver, "receiver");
            kotlin.reflect.jvm.internal.impl.types.model.h hVarC = x0Var.c(receiver);
            return hVarC == null ? receiver : x0Var.e(hVarC, true);
        }
    }

    PrimitiveType D(kotlin.reflect.jvm.internal.impl.types.model.k kVar);

    PrimitiveType O(kotlin.reflect.jvm.internal.impl.types.model.k kVar);

    kotlin.reflect.jvm.internal.impl.types.model.g P(kotlin.reflect.jvm.internal.impl.types.model.l lVar);

    kotlin.reflect.jvm.internal.impl.name.d b0(kotlin.reflect.jvm.internal.impl.types.model.k kVar);

    boolean h(kotlin.reflect.jvm.internal.impl.types.model.k kVar);

    kotlin.reflect.jvm.internal.impl.types.model.g k0(kotlin.reflect.jvm.internal.impl.types.model.g gVar);

    boolean o0(kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.name.c cVar);

    kotlin.reflect.jvm.internal.impl.types.model.g x0(kotlin.reflect.jvm.internal.impl.types.model.g gVar);

    boolean z(kotlin.reflect.jvm.internal.impl.types.model.k kVar);
}

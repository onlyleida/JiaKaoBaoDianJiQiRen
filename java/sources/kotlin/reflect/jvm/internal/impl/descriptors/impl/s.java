package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.v0;

/* JADX INFO: loaded from: classes6.dex */
public final class s {
    public static final MemberScope a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, v0 typeSubstitution, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(dVar, "<this>");
        kotlin.jvm.internal.r.e(typeSubstitution, "typeSubstitution");
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return r.f14953a.a(dVar, typeSubstitution, kotlinTypeRefiner);
    }

    public static final MemberScope b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(dVar, "<this>");
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return r.f14953a.b(dVar, kotlinTypeRefiner);
    }
}

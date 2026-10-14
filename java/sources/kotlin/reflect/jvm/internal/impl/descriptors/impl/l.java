package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class l extends w {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(kotlin.reflect.jvm.internal.impl.descriptors.z module, kotlin.reflect.jvm.internal.impl.name.c fqName) {
        super(module, fqName);
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.jvm.internal.r.e(fqName, "fqName");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public MemberScope.a m() {
        return MemberScope.a.b;
    }
}

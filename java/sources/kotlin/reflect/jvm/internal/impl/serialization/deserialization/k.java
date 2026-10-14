package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.impl.w;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;

/* JADX INFO: loaded from: classes6.dex */
public abstract class k extends w {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.m f15600g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(kotlin.reflect.jvm.internal.impl.name.c fqName, kotlin.reflect.jvm.internal.impl.storage.m storageManager, z module) {
        super(module, fqName);
        kotlin.jvm.internal.r.e(fqName, "fqName");
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        kotlin.jvm.internal.r.e(module, "module");
        this.f15600g = storageManager;
    }

    public abstract e B0();

    public boolean G0(kotlin.reflect.jvm.internal.impl.name.f name) {
        kotlin.jvm.internal.r.e(name, "name");
        MemberScope memberScopeM = m();
        return (memberScopeM instanceof DeserializedMemberScope) && ((DeserializedMemberScope) memberScopeM).r().contains(name);
    }

    public abstract void H0(g gVar);
}

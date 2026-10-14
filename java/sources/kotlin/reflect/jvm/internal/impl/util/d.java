package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
final class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f15734a = new d();
    private static final String b = "second parameter must be of type KProperty<*> or its supertype";

    private d() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String a() {
        return b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public String b(u uVar) {
        return b.a.a(this, uVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.b
    public boolean c(u functionDescriptor) {
        r.e(functionDescriptor, "functionDescriptor");
        v0 secondParameter = functionDescriptor.f().get(1);
        ReflectionTypes.b bVar = ReflectionTypes.f14775d;
        r.d(secondParameter, "secondParameter");
        a0 a0VarA = bVar.a(DescriptorUtilsKt.l(secondParameter));
        if (a0VarA == null) {
            return false;
        }
        a0 type = secondParameter.getType();
        r.d(type, "secondParameter.type");
        return TypeUtilsKt.m(a0VarA, TypeUtilsKt.p(type));
    }
}

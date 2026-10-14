package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
final class g implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f15737a = new g();
    private static final String b = "should not have varargs or parameters with default values";

    private g() {
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
        List<v0> listF = functionDescriptor.f();
        r.d(listF, "functionDescriptor.valueParameters");
        if (!(listF instanceof Collection) || !listF.isEmpty()) {
            for (v0 it : listF) {
                r.d(it, "it");
                if (!(!DescriptorUtilsKt.a(it) && it.t0() == null)) {
                    return false;
                }
            }
        }
        return true;
    }
}

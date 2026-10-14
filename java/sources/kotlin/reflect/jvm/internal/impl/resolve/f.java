package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f extends g {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.g
    public void b(CallableMemberDescriptor first, CallableMemberDescriptor second) {
        r.e(first, "first");
        r.e(second, "second");
        e(first, second);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.g
    public void c(CallableMemberDescriptor fromSuper, CallableMemberDescriptor fromCurrent) {
        r.e(fromSuper, "fromSuper");
        r.e(fromCurrent, "fromCurrent");
        e(fromSuper, fromCurrent);
    }

    protected abstract void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2);
}

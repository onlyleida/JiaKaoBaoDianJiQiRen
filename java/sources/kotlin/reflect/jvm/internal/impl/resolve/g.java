package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g {
    public abstract void a(CallableMemberDescriptor callableMemberDescriptor);

    public abstract void b(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2);

    public abstract void c(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2);

    public void d(CallableMemberDescriptor member, Collection<? extends CallableMemberDescriptor> overridden) {
        r.e(member, "member");
        r.e(overridden, "overridden");
        member.z0(overridden);
    }
}

package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    public static final CallableMemberDescriptor a(Collection<? extends CallableMemberDescriptor> descriptors) {
        Integer numD;
        r.e(descriptors, "descriptors");
        descriptors.isEmpty();
        CallableMemberDescriptor callableMemberDescriptor = null;
        for (CallableMemberDescriptor callableMemberDescriptor2 : descriptors) {
            if (callableMemberDescriptor == null || ((numD = kotlin.reflect.jvm.internal.impl.descriptors.r.d(callableMemberDescriptor.getVisibility(), callableMemberDescriptor2.getVisibility())) != null && numD.intValue() < 0)) {
                callableMemberDescriptor = callableMemberDescriptor2;
            }
        }
        r.c(callableMemberDescriptor);
        return callableMemberDescriptor;
    }
}

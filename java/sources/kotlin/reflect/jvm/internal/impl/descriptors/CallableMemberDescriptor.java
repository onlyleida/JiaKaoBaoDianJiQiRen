package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public interface CallableMemberDescriptor extends a, w {

    public enum Kind {
        DECLARATION,
        FAKE_OVERRIDE,
        DELEGATION,
        SYNTHESIZED;

        public boolean isReal() {
            return this != FAKE_OVERRIDE;
        }
    }

    CallableMemberDescriptor N(k kVar, Modality modality, s sVar, Kind kind, boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.k
    CallableMemberDescriptor a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends CallableMemberDescriptor> d();

    Kind g();

    void z0(Collection<? extends CallableMemberDescriptor> collection);
}

package kotlin.reflect.jvm.internal.impl.types;

/* JADX INFO: loaded from: classes6.dex */
final class d0 extends n {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(f0 delegate) {
        super(delegate);
        kotlin.jvm.internal.r.e(delegate, "delegate");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m, kotlin.reflect.jvm.internal.impl.types.a0
    public boolean J0() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.m
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public d0 T0(f0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        return new d0(delegate);
    }
}
